.class public Lorg/osmdroid/views/MapController;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Lorg/osmdroid/api/IMapController;
.implements Lorg/osmdroid/views/MapView$OnFirstLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/MapController$ReplayController;,
        Lorg/osmdroid/views/MapController$ReplayType;,
        Lorg/osmdroid/views/MapController$ZoomAnimationListener;,
        Lorg/osmdroid/views/MapController$MapAnimatorListener;
    }
.end annotation


# instance fields
.field private mCurrentAnimator:Landroid/animation/Animator;

.field protected final mMapView:Lorg/osmdroid/views/MapView;

.field private mReplayController:Lorg/osmdroid/views/MapController$ReplayController;

.field private mTargetZoomLevel:D

.field private mZoomInAnimationOld:Landroid/view/animation/ScaleAnimation;

.field private mZoomOutAnimationOld:Landroid/view/animation/ScaleAnimation;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/views/MapController;->mTargetZoomLevel:D

    .line 60
    iput-object p1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    .line 63
    new-instance v0, Lorg/osmdroid/views/MapController$ReplayController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/osmdroid/views/MapController$ReplayController;-><init>(Lorg/osmdroid/views/MapController;Lorg/osmdroid/views/MapController$1;)V

    iput-object v0, p0, Lorg/osmdroid/views/MapController;->mReplayController:Lorg/osmdroid/views/MapController$ReplayController;

    .line 64
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p1, p0}, Lorg/osmdroid/views/MapView;->addOnFirstLayoutListener(Lorg/osmdroid/views/MapView$OnFirstLayoutListener;)V

    .line 69
    :cond_0
    nop

    .line 80
    return-void
.end method


# virtual methods
.method public animateTo(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 192
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mReplayController:Lorg/osmdroid/views/MapController$ReplayController;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/MapController$ReplayController;->animateTo(II)V

    .line 194
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    .line 199
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapScrollX()J

    move-result-wide v0

    long-to-int v0, v0

    .line 200
    .local v0, "xStart":I
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getMapScrollY()J

    move-result-wide v1

    long-to-int v1, v1

    .line 202
    .local v1, "yStart":I
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v8, p1, v2

    .line 203
    .local v8, "dx":I
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v9, p2, v2

    .line 205
    .local v9, "dy":I
    if-ne v8, v0, :cond_1

    if-eq v9, v1, :cond_2

    .line 206
    :cond_1
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getScroller()Landroid/widget/Scroller;

    move-result-object v2

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getAnimationSpeedDefault()I

    move-result v7

    move v3, v0

    move v4, v1

    move v5, v8

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 207
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 210
    .end local v0    # "xStart":I
    .end local v1    # "yStart":I
    .end local v8    # "dx":I
    .end local v9    # "dy":I
    :cond_2
    return-void
.end method

.method public animateTo(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 1
    .param p1, "point"    # Lorg/osmdroid/api/IGeoPoint;

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/osmdroid/views/MapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;)V

    .line 130
    return-void
.end method

.method public animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;)V
    .locals 1
    .param p1, "pPoint"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "pZoom"    # Ljava/lang/Double;
    .param p3, "pSpeed"    # Ljava/lang/Long;

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/MapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Float;)V

    .line 184
    return-void
.end method

.method public animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Float;)V
    .locals 6
    .param p1, "point"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "pZoom"    # Ljava/lang/Double;
    .param p3, "pSpeed"    # Ljava/lang/Long;
    .param p4, "pOrientation"    # Ljava/lang/Float;

    .line 137
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/MapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Boolean;)V

    .line 138
    return-void
.end method

.method public animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 11
    .param p1, "point"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "pZoom"    # Ljava/lang/Double;
    .param p3, "pSpeed"    # Ljava/lang/Long;
    .param p4, "pOrientation"    # Ljava/lang/Float;
    .param p5, "pClockwise"    # Ljava/lang/Boolean;

    .line 146
    move-object v9, p0

    iget-object v0, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v1, v9, Lorg/osmdroid/views/MapController;->mReplayController:Lorg/osmdroid/views/MapController$ReplayController;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/MapController$ReplayController;->animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Boolean;)V

    .line 148
    return-void

    .line 150
    :cond_0
    nop

    .line 151
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    iget-object v0, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getCurrentCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    .line 152
    .local v4, "currentCenter":Lorg/osmdroid/api/IGeoPoint;
    new-instance v10, Lorg/osmdroid/views/MapController$MapAnimatorListener;

    iget-object v0, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    .line 154
    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v0, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    .line 156
    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v10

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/views/MapController$MapAnimatorListener;-><init>(Lorg/osmdroid/views/MapController;Ljava/lang/Double;Ljava/lang/Double;Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;)V

    .line 157
    .local v0, "mapAnimatorListener":Lorg/osmdroid/views/MapController$MapAnimatorListener;
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 158
    .local v1, "mapAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    if-nez p3, :cond_1

    .line 161
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->getAnimationSpeedDefault()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 166
    :goto_0
    iget-object v2, v9, Lorg/osmdroid/views/MapController;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_2

    .line 167
    invoke-virtual {v0, v2}, Lorg/osmdroid/views/MapController$MapAnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 169
    :cond_2
    iput-object v1, v9, Lorg/osmdroid/views/MapController;->mCurrentAnimator:Landroid/animation/Animator;

    .line 170
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 171
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onAnimationEnd()V
    .locals 2

    .line 448
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v0, v0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 449
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->resetMultiTouchScale()V

    .line 450
    nop

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/MapController;->mCurrentAnimator:Landroid/animation/Animator;

    .line 458
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 459
    return-void
.end method

.method protected onAnimationStart()V
    .locals 2

    .line 444
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v0, v0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 445
    return-void
.end method

.method public onFirstLayout(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 84
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mReplayController:Lorg/osmdroid/views/MapController$ReplayController;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapController$ReplayController;->replayCalls()V

    .line 85
    return-void
.end method

.method public scrollBy(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 214
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/MapView;->scrollBy(II)V

    .line 215
    return-void
.end method

.method public setCenter(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 1
    .param p1, "point"    # Lorg/osmdroid/api/IGeoPoint;

    .line 223
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mReplayController:Lorg/osmdroid/views/MapController$ReplayController;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapController$ReplayController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 225
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapView;->setExpectedCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 228
    return-void
.end method

.method public setZoom(D)D
    .locals 2
    .param p1, "pZoomlevel"    # D

    .line 278
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/MapView;->setZoomLevel(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public setZoom(I)I
    .locals 2
    .param p1, "zoomlevel"    # I

    .line 270
    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapController;->setZoom(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public stopAnimation(Z)V
    .locals 2
    .param p1, "jumpToTarget"    # Z

    .line 244
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getScroller()Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    if-eqz p1, :cond_0

    .line 246
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    .line 247
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getScroller()Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/MapController;->stopPanning()V

    .line 252
    :cond_1
    :goto_0
    nop

    .line 253
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mCurrentAnimator:Landroid/animation/Animator;

    .line 254
    .local v0, "currentAnimator":Landroid/animation/Animator;
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v1, v1, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    if-eqz p1, :cond_2

    .line 256
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_1

    .line 258
    :cond_2
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 261
    .end local v0    # "currentAnimator":Landroid/animation/Animator;
    :cond_3
    :goto_1
    nop

    .line 266
    return-void
.end method

.method public stopPanning()V
    .locals 2

    .line 232
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    .line 233
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getScroller()Landroid/widget/Scroller;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 234
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapController;->zoomIn(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomIn(Ljava/lang/Long;)Z
    .locals 4
    .param p1, "animationSpeed"    # Ljava/lang/Long;

    .line 291
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-virtual {p0, v0, v1, p1}, Lorg/osmdroid/views/MapController;->zoomTo(DLjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomInFixing(II)Z
    .locals 1
    .param p1, "xPixel"    # I
    .param p2, "yPixel"    # I

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/MapController;->zoomInFixing(IILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomInFixing(IILjava/lang/Long;)Z
    .locals 10
    .param p1, "xPixel"    # I
    .param p2, "yPixel"    # I
    .param p3, "zoomAnimation"    # Ljava/lang/Long;

    .line 302
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double v5, v0, v2

    move-object v4, p0

    move v7, p1

    move v8, p2

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lorg/osmdroid/views/MapController;->zoomToFixing(DIILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapController;->zoomOut(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomOut(Ljava/lang/Long;)Z
    .locals 4
    .param p1, "animationSpeed"    # Ljava/lang/Long;

    .line 312
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1, p1}, Lorg/osmdroid/views/MapController;->zoomTo(DLjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomOutFixing(II)Z
    .locals 10
    .param p1, "xPixel"    # I
    .param p2, "yPixel"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v5, v0, v2

    const/4 v9, 0x0

    move-object v4, p0

    move v7, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lorg/osmdroid/views/MapController;->zoomToFixing(DIILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomTo(D)Z
    .locals 1
    .param p1, "pZoomLevel"    # D

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/MapController;->zoomTo(DLjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomTo(DLjava/lang/Long;)Z
    .locals 7
    .param p1, "pZoomLevel"    # D
    .param p3, "animationSpeed"    # Ljava/lang/Long;

    .line 357
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/MapController;->zoomToFixing(DIILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomTo(I)Z
    .locals 1
    .param p1, "zoomLevel"    # I

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/views/MapController;->zoomTo(ILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomTo(ILjava/lang/Long;)Z
    .locals 2
    .param p1, "zoomLevel"    # I
    .param p2, "animationSpeed"    # Ljava/lang/Long;

    .line 339
    int-to-double v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lorg/osmdroid/views/MapController;->zoomTo(DLjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomToFixing(DII)Z
    .locals 6
    .param p1, "zoomLevel"    # D
    .param p3, "xPixel"    # I
    .param p4, "yPixel"    # I

    .line 434
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/MapController;->zoomToFixing(DIILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomToFixing(DIILjava/lang/Long;)Z
    .locals 22
    .param p1, "zoomLevel"    # D
    .param p3, "xPixel"    # I
    .param p4, "yPixel"    # I
    .param p5, "zoomAnimationSpeed"    # Ljava/lang/Long;

    .line 368
    move-object/from16 v9, p0

    iget-object v0, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide/from16 v0, p1

    .line 369
    .end local p1    # "zoomLevel":D
    .local v0, "zoomLevel":D
    :goto_0
    iget-object v2, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()D

    move-result-wide v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()D

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide v2, v0

    :goto_1
    move-wide v10, v2

    .line 371
    .end local v0    # "zoomLevel":D
    .local v10, "zoomLevel":D
    iget-object v0, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v12

    .line 372
    .local v12, "currentZoomLevel":D
    cmpg-double v0, v10, v12

    const/4 v14, 0x1

    const/4 v1, 0x0

    if-gez v0, :cond_2

    iget-object v0, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->canZoomOut()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    cmpl-double v0, v10, v12

    if-lez v0, :cond_4

    iget-object v0, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    .line 373
    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->canZoomIn()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v14

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    move v15, v0

    .line 375
    .local v15, "canZoom":Z
    if-nez v15, :cond_5

    .line 376
    return v1

    .line 378
    :cond_5
    iget-object v0, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v0, v0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 380
    return v1

    .line 382
    :cond_6
    const/4 v0, 0x0

    .line 383
    .local v0, "event":Lorg/osmdroid/events/ZoomEvent;
    iget-object v1, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v1, v1, Lorg/osmdroid/views/MapView;->mListners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v16, v0

    .end local v0    # "event":Lorg/osmdroid/events/ZoomEvent;
    .local v16, "event":Lorg/osmdroid/events/ZoomEvent;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/events/MapListener;

    .line 384
    .local v0, "mapListener":Lorg/osmdroid/events/MapListener;
    if-eqz v16, :cond_7

    move-object/from16 v2, v16

    goto :goto_4

    :cond_7
    new-instance v2, Lorg/osmdroid/events/ZoomEvent;

    iget-object v3, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-direct {v2, v3, v10, v11}, Lorg/osmdroid/events/ZoomEvent;-><init>(Lorg/osmdroid/views/MapView;D)V

    move-object v3, v2

    move-object/from16 v16, v3

    :goto_4
    invoke-interface {v0, v2}, Lorg/osmdroid/events/MapListener;->onZoom(Lorg/osmdroid/events/ZoomEvent;)Z

    .line 385
    .end local v0    # "mapListener":Lorg/osmdroid/events/MapListener;
    goto :goto_3

    .line 386
    :cond_8
    iget-object v0, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    move/from16 v8, p3

    int-to-float v1, v8

    move/from16 v7, p4

    int-to-float v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/MapView;->setMultiTouchScaleInitPoint(FF)V

    .line 387
    iget-object v0, v9, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->startAnimation()V

    .line 389
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sub-double v2, v10, v12

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v6, v0

    .line 390
    .local v6, "end":F
    nop

    .line 391
    new-instance v17, Lorg/osmdroid/views/MapController$MapAnimatorListener;

    .line 392
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v21, v6

    .end local v6    # "end":F
    .local v21, "end":F
    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/views/MapController$MapAnimatorListener;-><init>(Lorg/osmdroid/views/MapController;Ljava/lang/Double;Ljava/lang/Double;Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;)V

    .line 395
    .local v0, "zoomAnimatorListener":Lorg/osmdroid/views/MapController$MapAnimatorListener;
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 396
    .local v1, "zoomToAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 397
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 398
    if-nez p5, :cond_9

    .line 399
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->getAnimationSpeedShort()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_5

    .line 401
    :cond_9
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 404
    :goto_5
    iput-object v1, v9, Lorg/osmdroid/views/MapController;->mCurrentAnimator:Landroid/animation/Animator;

    .line 405
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 406
    return v14

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public zoomToFixing(III)Z
    .locals 1
    .param p1, "zoomLevel"    # I
    .param p2, "xPixel"    # I
    .param p3, "yPixel"    # I

    .line 439
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/MapController;->zoomToFixing(IIILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomToFixing(IIILjava/lang/Long;)Z
    .locals 6
    .param p1, "zoomLevel"    # I
    .param p2, "xPixel"    # I
    .param p3, "yPixel"    # I
    .param p4, "zoomAnimationSpeed"    # Ljava/lang/Long;

    .line 352
    int-to-double v1, p1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/MapController;->zoomToFixing(DIILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomToSpan(DD)V
    .locals 19
    .param p1, "latSpan"    # D
    .param p3, "lonSpan"    # D

    .line 89
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    const-wide/16 v5, 0x0

    cmpg-double v7, v1, v5

    if-lez v7, :cond_4

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    iget-object v5, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v5}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result v5

    if-nez v5, :cond_1

    .line 95
    iget-object v5, v0, Lorg/osmdroid/views/MapController;->mReplayController:Lorg/osmdroid/views/MapController$ReplayController;

    invoke-virtual {v5, v1, v2, v3, v4}, Lorg/osmdroid/views/MapController$ReplayController;->zoomToSpan(DD)V

    .line 96
    return-void

    .line 99
    :cond_1
    iget-object v5, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v5}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v5

    .line 100
    .local v5, "bb":Lorg/osmdroid/util/BoundingBox;
    iget-object v6, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v6}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v6

    invoke-virtual {v6}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v6

    .line 102
    .local v6, "curZoomLevel":D
    invoke-virtual {v5}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v8

    .line 103
    .local v8, "curLatSpan":D
    invoke-virtual {v5}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v10

    .line 105
    .local v10, "curLonSpan":D
    div-double v12, v1, v8

    .line 106
    .local v12, "diffNeededLat":D
    div-double v14, v3, v10

    .line 108
    .local v14, "diffNeededLon":D
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 110
    .local v1, "diffNeeded":D
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v1, v16

    if-lez v18, :cond_2

    .line 111
    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    double-to-float v4, v1

    invoke-static {v4}, Lorg/osmdroid/util/MyMath;->getNextSquareNumberAbove(F)I

    move-result v4

    move-object/from16 v18, v5

    .end local v5    # "bb":Lorg/osmdroid/util/BoundingBox;
    .local v18, "bb":Lorg/osmdroid/util/BoundingBox;
    int-to-double v4, v4

    sub-double v4, v6, v4

    invoke-virtual {v3, v4, v5}, Lorg/osmdroid/views/MapView;->setZoomLevel(D)D

    goto :goto_0

    .line 112
    .end local v18    # "bb":Lorg/osmdroid/util/BoundingBox;
    .restart local v5    # "bb":Lorg/osmdroid/util/BoundingBox;
    :cond_2
    move-object/from16 v18, v5

    .end local v5    # "bb":Lorg/osmdroid/util/BoundingBox;
    .restart local v18    # "bb":Lorg/osmdroid/util/BoundingBox;
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v1, v3

    if-gez v3, :cond_3

    .line 113
    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    const/high16 v4, 0x3f800000    # 1.0f

    double-to-float v5, v1

    div-float/2addr v4, v5

    .line 114
    invoke-static {v4}, Lorg/osmdroid/util/MyMath;->getNextSquareNumberAbove(F)I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v4, v6

    sub-double v4, v4, v16

    .line 113
    invoke-virtual {v3, v4, v5}, Lorg/osmdroid/views/MapView;->setZoomLevel(D)D

    .line 116
    :cond_3
    :goto_0
    return-void

    .line 90
    .end local v1    # "diffNeeded":D
    .end local v6    # "curZoomLevel":D
    .end local v8    # "curLatSpan":D
    .end local v10    # "curLonSpan":D
    .end local v12    # "diffNeededLat":D
    .end local v14    # "diffNeededLon":D
    .end local v18    # "bb":Lorg/osmdroid/util/BoundingBox;
    :cond_4
    :goto_1
    return-void
.end method

.method public zoomToSpan(II)V
    .locals 6
    .param p1, "latSpanE6"    # I
    .param p2, "lonSpanE6"    # I

    .line 121
    int-to-double v0, p1

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v0, v2

    int-to-double v4, p2

    mul-double/2addr v4, v2

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/osmdroid/views/MapController;->zoomToSpan(DD)V

    .line 122
    return-void
.end method
