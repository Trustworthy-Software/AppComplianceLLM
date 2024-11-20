.class Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapViewGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/MapView;


# direct methods
.method private constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 0

    .line 1514
    iput-object p1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/MapView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/osmdroid/views/MapView;
    .param p2, "x1"    # Lorg/osmdroid/views/MapView$1;

    .line 1514
    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;-><init>(Lorg/osmdroid/views/MapView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1520
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    iget-boolean v0, v0, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    if-eqz v0, :cond_1

    .line 1521
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lorg/osmdroid/views/MapView;->access$300(Lorg/osmdroid/views/MapView;)Landroid/widget/Scroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lorg/osmdroid/views/MapView;->access$300(Lorg/osmdroid/views/MapView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1523
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    .line 1526
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-interface {v0, p1, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->onDown(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1527
    return v1

    .line 1530
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lorg/osmdroid/views/MapView;->access$400(Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/CustomZoomButtonsController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1531
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lorg/osmdroid/views/MapView;->access$400(Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/CustomZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/CustomZoomButtonsController;->activate()V

    .line 1533
    :cond_3
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 14
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 1540
    move-object v0, p0

    iget-object v1, v0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v1}, Lorg/osmdroid/views/MapView;->access$500(Lorg/osmdroid/views/MapView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v1}, Lorg/osmdroid/views/MapView;->access$600(Lorg/osmdroid/views/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, p3

    move/from16 v13, p4

    goto :goto_1

    .line 1547
    :cond_0
    iget-object v1, v0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v3

    iget-object v8, v0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    .line 1548
    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-interface/range {v3 .. v8}, Lorg/osmdroid/views/overlay/OverlayManager;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 1549
    return v3

    .line 1552
    :cond_1
    iget-object v1, v0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v1}, Lorg/osmdroid/views/MapView;->access$700(Lorg/osmdroid/views/MapView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1553
    iget-object v1, v0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v1, v2}, Lorg/osmdroid/views/MapView;->access$702(Lorg/osmdroid/views/MapView;Z)Z

    .line 1554
    return v2

    .line 1557
    :cond_2
    iget-object v1, v0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    iput-boolean v3, v1, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    .line 1558
    iget-object v1, v0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v1}, Lorg/osmdroid/views/MapView;->access$300(Lorg/osmdroid/views/MapView;)Landroid/widget/Scroller;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1559
    iget-object v1, v0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v1}, Lorg/osmdroid/views/MapView;->access$300(Lorg/osmdroid/views/MapView;)Landroid/widget/Scroller;

    move-result-object v4

    iget-object v1, v0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getMapScrollX()J

    move-result-wide v1

    long-to-int v5, v1

    iget-object v1, v0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getMapScrollY()J

    move-result-wide v1

    long-to-int v6, v1

    move/from16 v1, p3

    float-to-int v2, v1

    neg-int v7, v2

    move/from16 v13, p4

    float-to-int v2, v13

    neg-int v8, v2

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/high16 v11, -0x80000000

    const v12, 0x7fffffff

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1558
    :cond_3
    move/from16 v1, p3

    move/from16 v13, p4

    .line 1562
    :goto_0
    return v3

    .line 1540
    :cond_4
    move/from16 v1, p3

    move/from16 v13, p4

    .line 1542
    :goto_1
    iget-object v3, v0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v3, v2}, Lorg/osmdroid/views/MapView;->access$602(Lorg/osmdroid/views/MapView;Z)Z

    .line 1543
    return v2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1567
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lorg/osmdroid/views/MapView;->access$800(Lorg/osmdroid/views/MapView;)Lorg/metalev/multitouch/controller/MultiTouchController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lorg/osmdroid/views/MapView;->access$800(Lorg/osmdroid/views/MapView;)Lorg/metalev/multitouch/controller/MultiTouchController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController;->isPinching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1568
    return-void

    .line 1570
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-interface {v0, p1, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    .line 1571
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 1576
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v1

    iget-object v6, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lorg/osmdroid/views/overlay/OverlayManager;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1578
    return v1

    .line 1581
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    float-to-int v2, p3

    float-to-int v3, p4

    invoke-virtual {v0, v2, v3}, Lorg/osmdroid/views/MapView;->scrollBy(II)V

    .line 1582
    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1587
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-interface {v0, p1, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->onShowPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1588
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1592
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-interface {v0, p1, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    const/4 v0, 0x1

    return v0

    .line 1596
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
