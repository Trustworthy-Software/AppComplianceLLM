.class Lorg/osmdroid/views/MapController$ReplayController;
.super Ljava/lang/Object;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReplayController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;
    }
.end annotation


# instance fields
.field private mReplayList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/osmdroid/views/MapController;


# direct methods
.method private constructor <init>(Lorg/osmdroid/views/MapController;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lorg/osmdroid/views/MapController$ReplayController;->this$0:Lorg/osmdroid/views/MapController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/views/MapController;Lorg/osmdroid/views/MapController$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/osmdroid/views/MapController;
    .param p2, "x1"    # Lorg/osmdroid/views/MapController$1;

    .line 571
    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapController$ReplayController;-><init>(Lorg/osmdroid/views/MapController;)V

    return-void
.end method


# virtual methods
.method public animateTo(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 581
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    new-instance v1, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    sget-object v2, Lorg/osmdroid/views/MapController$ReplayType;->AnimateToPoint:Lorg/osmdroid/views/MapController$ReplayType;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;-><init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 582
    return-void
.end method

.method public animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 12
    .param p1, "geoPoint"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "pZoom"    # Ljava/lang/Double;
    .param p3, "pSpeed"    # Ljava/lang/Long;
    .param p4, "pOrientation"    # Ljava/lang/Float;
    .param p5, "pClockwise"    # Ljava/lang/Boolean;

    .line 576
    move-object v9, p0

    iget-object v10, v9, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    new-instance v11, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    sget-object v2, Lorg/osmdroid/views/MapController$ReplayType;->AnimateToGeoPoint:Lorg/osmdroid/views/MapController$ReplayType;

    const/4 v3, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;-><init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Boolean;)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 578
    return-void
.end method

.method public replayCalls()V
    .locals 9

    .line 598
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    .line 599
    .local v1, "replay":Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;
    sget-object v2, Lorg/osmdroid/views/MapController$1;->$SwitchMap$org$osmdroid$views$MapController$ReplayType:[I

    invoke-static {v1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$100(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Lorg/osmdroid/views/MapController$ReplayType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/osmdroid/views/MapController$ReplayType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 613
    :pswitch_0
    invoke-static {v1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$700(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 614
    iget-object v2, p0, Lorg/osmdroid/views/MapController$ReplayController;->this$0:Lorg/osmdroid/views/MapController;

    invoke-static {v1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$700(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$700(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Lorg/osmdroid/views/MapController;->zoomToSpan(II)V

    goto :goto_1

    .line 609
    :pswitch_1
    invoke-static {v1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$200(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 610
    iget-object v2, p0, Lorg/osmdroid/views/MapController$ReplayController;->this$0:Lorg/osmdroid/views/MapController;

    invoke-static {v1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$200(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/MapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    goto :goto_1

    .line 605
    :pswitch_2
    invoke-static {v1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$700(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 606
    iget-object v2, p0, Lorg/osmdroid/views/MapController$ReplayController;->this$0:Lorg/osmdroid/views/MapController;

    invoke-static {v1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$700(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$700(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Lorg/osmdroid/views/MapController;->animateTo(II)V

    goto :goto_1

    .line 601
    :pswitch_3
    invoke-static {v1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$200(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 602
    iget-object v3, p0, Lorg/osmdroid/views/MapController$ReplayController;->this$0:Lorg/osmdroid/views/MapController;

    invoke-static {v1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$200(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v4

    invoke-static {v1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$300(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$400(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$500(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$600(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lorg/osmdroid/views/MapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Boolean;)V

    .line 617
    .end local v1    # "replay":Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;
    :cond_0
    :goto_1
    goto :goto_0

    .line 618
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 619
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCenter(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 4
    .param p1, "geoPoint"    # Lorg/osmdroid/api/IGeoPoint;

    .line 585
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    new-instance v1, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    sget-object v2, Lorg/osmdroid/views/MapController$ReplayType;->SetCenterPoint:Lorg/osmdroid/views/MapController$ReplayType;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;-><init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 586
    return-void
.end method

.method public zoomToSpan(DD)V
    .locals 8
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 593
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    new-instance v1, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    sget-object v2, Lorg/osmdroid/views/MapController$ReplayType;->ZoomToSpanPoint:Lorg/osmdroid/views/MapController$ReplayType;

    new-instance v3, Landroid/graphics/Point;

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double v6, p1, v4

    double-to-int v6, v6

    mul-double/2addr v4, p3

    double-to-int v4, v4

    invoke-direct {v3, v6, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;-><init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 594
    return-void
.end method

.method public zoomToSpan(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 589
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    new-instance v1, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    sget-object v2, Lorg/osmdroid/views/MapController$ReplayType;->ZoomToSpanPoint:Lorg/osmdroid/views/MapController$ReplayType;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;-><init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 590
    return-void
.end method
