.class public Lorg/mapsforge/map/android/input/TouchGestureHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchGestureHandler.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private doubleTapEnabled:Z

.field private flingLastX:I

.field private flingLastY:I

.field private final flinger:Landroid/widget/Scroller;

.field private focusX:F

.field private focusY:F

.field private final handler:Landroid/os/Handler;

.field private isInDoubleTap:Z

.field private isInScale:Z

.field private final mapView:Lorg/mapsforge/map/android/view/MapView;

.field private pivot:Lorg/mapsforge/core/model/LatLong;

.field private scaleEnabled:Z

.field private scaleFactorCumulative:F


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/android/view/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/mapsforge/map/android/view/MapView;

    .line 59
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->doubleTapEnabled:Z

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->handler:Landroid/os/Handler;

    .line 56
    iput-boolean v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->scaleEnabled:Z

    .line 60
    iput-object p1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    .line 61
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lorg/mapsforge/map/android/view/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->flinger:Landroid/widget/Scroller;

    .line 62
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public isDoubleTapEnabled()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->doubleTapEnabled:Z

    return v0
.end method

.method public isScaleEnabled()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->scaleEnabled:Z

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 89
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->scaleEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 90
    return v2

    .line 93
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 94
    .local v1, "action":I
    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 100
    :pswitch_0
    iget-boolean v4, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->isInDoubleTap:Z

    if-eqz v4, :cond_3

    .line 101
    iget-object v4, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v4}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v4

    iget-object v4, v4, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    .line 102
    .local v4, "mapViewPosition":Lorg/mapsforge/map/model/IMapViewPosition;
    iget-boolean v5, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->doubleTapEnabled:Z

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lorg/mapsforge/map/model/IMapViewPosition;->getZoomLevel()B

    move-result v5

    invoke-interface {v4}, Lorg/mapsforge/map/model/IMapViewPosition;->getZoomLevelMax()B

    move-result v6

    if-ge v5, v6, :cond_2

    .line 103
    iget-object v5, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v5}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v5

    iget-object v5, v5, Lorg/mapsforge/map/model/Model;->mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

    invoke-virtual {v5}, Lorg/mapsforge/map/model/MapViewDimension;->getDimension()Lorg/mapsforge/core/model/Dimension;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mapsforge/core/model/Dimension;->getCenter()Lorg/mapsforge/core/model/Point;

    move-result-object v11

    .line 104
    .local v11, "center":Lorg/mapsforge/core/model/Point;
    const/4 v12, 0x1

    .line 105
    .local v12, "zoomLevelDiff":B
    iget-wide v5, v11, Lorg/mapsforge/core/model/Point;->x:D

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-double v7, v7

    sub-double/2addr v5, v7

    int-to-double v7, v12

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double v13, v5, v7

    .line 106
    .local v13, "moveHorizontal":D
    iget-wide v5, v11, Lorg/mapsforge/core/model/Point;->y:D

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-double v7, v7

    sub-double/2addr v5, v7

    int-to-double v7, v12

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double v15, v5, v7

    .line 107
    .local v15, "moveVertical":D
    iget-object v5, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v5}, Lorg/mapsforge/map/android/view/MapView;->getMapViewProjection()Lorg/mapsforge/map/util/MapViewProjection;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/mapsforge/map/util/MapViewProjection;->fromPixels(DD)Lorg/mapsforge/core/model/LatLong;

    move-result-object v10

    .line 108
    .local v10, "pivot":Lorg/mapsforge/core/model/LatLong;
    if-eqz v10, :cond_1

    .line 109
    iget-object v5, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v5}, Lorg/mapsforge/map/android/view/MapView;->onMoveEvent()V

    .line 110
    iget-object v5, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v5}, Lorg/mapsforge/map/android/view/MapView;->onZoomEvent()V

    .line 111
    invoke-interface {v4, v10}, Lorg/mapsforge/map/model/IMapViewPosition;->setPivot(Lorg/mapsforge/core/model/LatLong;)V

    .line 112
    move-object v5, v4

    move-wide v6, v13

    move-wide v8, v15

    move-object/from16 v17, v10

    .end local v10    # "pivot":Lorg/mapsforge/core/model/LatLong;
    .local v17, "pivot":Lorg/mapsforge/core/model/LatLong;
    move v10, v12

    invoke-interface/range {v5 .. v10}, Lorg/mapsforge/map/model/IMapViewPosition;->moveCenterAndZoom(DDB)V

    goto :goto_0

    .line 108
    .end local v17    # "pivot":Lorg/mapsforge/core/model/LatLong;
    .restart local v10    # "pivot":Lorg/mapsforge/core/model/LatLong;
    :cond_1
    move-object/from16 v17, v10

    .line 115
    .end local v10    # "pivot":Lorg/mapsforge/core/model/LatLong;
    .end local v11    # "center":Lorg/mapsforge/core/model/Point;
    .end local v12    # "zoomLevelDiff":B
    .end local v13    # "moveHorizontal":D
    .end local v15    # "moveVertical":D
    :cond_2
    :goto_0
    iput-boolean v2, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->isInDoubleTap:Z

    .line 116
    return v3

    .line 96
    .end local v4    # "mapViewPosition":Lorg/mapsforge/map/model/IMapViewPosition;
    :pswitch_1
    iput-boolean v3, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->isInDoubleTap:Z

    .line 97
    nop

    .line 121
    :cond_3
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->isInScale:Z

    .line 127
    iget-object v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->flinger:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 128
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 14
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 133
    move-object v0, p0

    iget-boolean v1, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->isInScale:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 134
    iget-object v4, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->flinger:Landroid/widget/Scroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p3

    neg-float v7, v1

    float-to-int v7, v7

    move/from16 v13, p4

    neg-float v8, v13

    float-to-int v8, v8

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/high16 v11, -0x80000000

    const v12, 0x7fffffff

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 135
    iput v2, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->flingLastY:I

    iput v2, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->flingLastX:I

    .line 136
    iget-object v2, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->handler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 137
    iget-object v2, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return v3

    .line 133
    :cond_0
    move/from16 v1, p3

    move/from16 v13, p4

    .line 140
    return v2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 146
    iget-boolean v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->isInScale:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->isInDoubleTap:Z

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Lorg/mapsforge/core/model/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    .line 148
    .local v0, "tapXY":Lorg/mapsforge/core/model/Point;
    iget-object v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/map/android/view/MapView;->getMapViewProjection()Lorg/mapsforge/map/util/MapViewProjection;

    move-result-object v1

    iget-wide v2, v0, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v4, v0, Lorg/mapsforge/core/model/Point;->y:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/mapsforge/map/util/MapViewProjection;->fromPixels(DD)Lorg/mapsforge/core/model/LatLong;

    move-result-object v1

    .line 149
    .local v1, "tapLatLong":Lorg/mapsforge/core/model/LatLong;
    if-eqz v1, :cond_1

    .line 150
    iget-object v2, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/map/android/view/MapView;->getLayerManager()Lorg/mapsforge/map/layer/LayerManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mapsforge/map/layer/LayerManager;->getLayers()Lorg/mapsforge/map/layer/Layers;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mapsforge/map/layer/Layers;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 151
    iget-object v3, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v3}, Lorg/mapsforge/map/android/view/MapView;->getLayerManager()Lorg/mapsforge/map/layer/LayerManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mapsforge/map/layer/LayerManager;->getLayers()Lorg/mapsforge/map/layer/Layers;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/mapsforge/map/layer/Layers;->get(I)Lorg/mapsforge/map/layer/Layer;

    move-result-object v3

    .line 152
    .local v3, "layer":Lorg/mapsforge/map/layer/Layer;
    iget-object v4, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v4}, Lorg/mapsforge/map/android/view/MapView;->getMapViewProjection()Lorg/mapsforge/map/util/MapViewProjection;

    move-result-object v4

    invoke-virtual {v3}, Lorg/mapsforge/map/layer/Layer;->getPosition()Lorg/mapsforge/core/model/LatLong;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mapsforge/map/util/MapViewProjection;->toPixels(Lorg/mapsforge/core/model/LatLong;)Lorg/mapsforge/core/model/Point;

    move-result-object v4

    .line 153
    .local v4, "layerXY":Lorg/mapsforge/core/model/Point;
    invoke-virtual {v3, v1, v4, v0}, Lorg/mapsforge/map/layer/Layer;->onLongPress(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    goto :goto_1

    .line 150
    .end local v3    # "layer":Lorg/mapsforge/map/layer/Layer;
    .end local v4    # "layerXY":Lorg/mapsforge/core/model/Point;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 159
    .end local v0    # "tapXY":Lorg/mapsforge/core/model/Point;
    .end local v1    # "tapLatLong":Lorg/mapsforge/core/model/LatLong;
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 163
    iget v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->scaleFactorCumulative:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->scaleFactorCumulative:F

    .line 164
    iget-object v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    iget-object v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->pivot:Lorg/mapsforge/core/model/LatLong;

    invoke-interface {v0, v1}, Lorg/mapsforge/map/model/IMapViewPosition;->setPivot(Lorg/mapsforge/core/model/LatLong;)V

    .line 165
    iget-object v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    iget v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->scaleFactorCumulative:F

    float-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lorg/mapsforge/map/model/IMapViewPosition;->setScaleFactorAdjustment(D)V

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 171
    iget-boolean v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->scaleEnabled:Z

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    return v0

    .line 175
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->isInScale:Z

    .line 176
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->scaleFactorCumulative:F

    .line 179
    iget-boolean v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->isInDoubleTap:Z

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/map/android/view/MapView;->onZoomEvent()V

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->pivot:Lorg/mapsforge/core/model/LatLong;

    goto :goto_0

    .line 183
    :cond_1
    iget-object v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/map/android/view/MapView;->onMoveEvent()V

    .line 184
    iget-object v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/map/android/view/MapView;->onZoomEvent()V

    .line 185
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    iput v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->focusX:F

    .line 186
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    iput v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->focusY:F

    .line 187
    iget-object v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/map/android/view/MapView;->getMapViewProjection()Lorg/mapsforge/map/util/MapViewProjection;

    move-result-object v1

    iget v2, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->focusX:F

    float-to-double v2, v2

    iget v4, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->focusY:F

    float-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/mapsforge/map/util/MapViewProjection;->fromPixels(DD)Lorg/mapsforge/core/model/LatLong;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->pivot:Lorg/mapsforge/core/model/LatLong;

    .line 189
    :goto_0
    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 18
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 194
    move-object/from16 v0, p0

    iget v1, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->scaleFactorCumulative:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    .line 196
    .local v1, "zoomLevelOffset":D
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_1

    .line 198
    const-wide/16 v5, 0x0

    cmpg-double v5, v1, v5

    if-gez v5, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .local v5, "zoomLevelDiff":B
    goto :goto_1

    .line 200
    .end local v5    # "zoomLevelDiff":B
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 203
    .restart local v5    # "zoomLevelDiff":B
    :goto_1
    iget-object v6, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v6}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v6

    iget-object v12, v6, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    .line 204
    .local v12, "mapViewPosition":Lorg/mapsforge/map/model/IMapViewPosition;
    if-eqz v5, :cond_7

    iget-object v6, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->pivot:Lorg/mapsforge/core/model/LatLong;

    if-eqz v6, :cond_7

    .line 206
    const-wide/16 v6, 0x0

    .local v6, "moveHorizontal":D
    const-wide/16 v8, 0x0

    .line 207
    .local v8, "moveVertical":D
    iget-object v10, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v10}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v10

    iget-object v10, v10, Lorg/mapsforge/map/model/Model;->mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

    invoke-virtual {v10}, Lorg/mapsforge/map/model/MapViewDimension;->getDimension()Lorg/mapsforge/core/model/Dimension;

    move-result-object v10

    invoke-virtual {v10}, Lorg/mapsforge/core/model/Dimension;->getCenter()Lorg/mapsforge/core/model/Point;

    move-result-object v13

    .line 208
    .local v13, "center":Lorg/mapsforge/core/model/Point;
    if-lez v5, :cond_4

    .line 210
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_2
    if-gt v10, v5, :cond_3

    .line 211
    invoke-interface {v12}, Lorg/mapsforge/map/model/IMapViewPosition;->getZoomLevel()B

    move-result v11

    add-int/2addr v11, v10

    invoke-interface {v12}, Lorg/mapsforge/map/model/IMapViewPosition;->getZoomLevelMax()B

    move-result v14

    if-le v11, v14, :cond_2

    .line 212
    move-wide/from16 v16, v1

    goto :goto_3

    .line 214
    :cond_2
    iget-wide v14, v13, Lorg/mapsforge/core/model/Point;->x:D

    iget v11, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->focusX:F

    float-to-double v3, v11

    sub-double/2addr v14, v3

    int-to-double v3, v10

    move-wide/from16 v16, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .end local v1    # "zoomLevelOffset":D
    .local v16, "zoomLevelOffset":D
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v14, v3

    add-double/2addr v6, v14

    .line 215
    iget-wide v3, v13, Lorg/mapsforge/core/model/Point;->y:D

    iget v11, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->focusY:F

    float-to-double v14, v11

    sub-double/2addr v3, v14

    int-to-double v14, v10

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double/2addr v3, v14

    add-double/2addr v8, v3

    .line 210
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v1, v16

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    goto :goto_2

    .end local v16    # "zoomLevelOffset":D
    .restart local v1    # "zoomLevelOffset":D
    :cond_3
    move-wide/from16 v16, v1

    .end local v1    # "zoomLevelOffset":D
    .end local v10    # "i":I
    .restart local v16    # "zoomLevelOffset":D
    :goto_3
    move-wide v1, v6

    move-wide v3, v8

    goto :goto_6

    .line 219
    .end local v16    # "zoomLevelOffset":D
    .restart local v1    # "zoomLevelOffset":D
    :cond_4
    move-wide/from16 v16, v1

    .end local v1    # "zoomLevelOffset":D
    .restart local v16    # "zoomLevelOffset":D
    const/4 v1, -0x1

    .local v1, "i":I
    :goto_4
    if-lt v1, v5, :cond_6

    .line 220
    invoke-interface {v12}, Lorg/mapsforge/map/model/IMapViewPosition;->getZoomLevel()B

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {v12}, Lorg/mapsforge/map/model/IMapViewPosition;->getZoomLevelMin()B

    move-result v3

    if-ge v2, v3, :cond_5

    .line 221
    goto :goto_5

    .line 223
    :cond_5
    iget-wide v2, v13, Lorg/mapsforge/core/model/Point;->x:D

    iget v4, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->focusX:F

    float-to-double v10, v4

    sub-double/2addr v2, v10

    add-int/lit8 v4, v1, 0x1

    int-to-double v10, v4

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v2, v10

    sub-double/2addr v6, v2

    .line 224
    iget-wide v2, v13, Lorg/mapsforge/core/model/Point;->y:D

    iget v4, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->focusY:F

    float-to-double v10, v4

    sub-double/2addr v2, v10

    add-int/lit8 v4, v1, 0x1

    int-to-double v10, v4

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v2, v10

    sub-double/2addr v8, v2

    .line 219
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 227
    .end local v1    # "i":I
    :cond_6
    :goto_5
    move-wide v1, v6

    move-wide v3, v8

    .end local v6    # "moveHorizontal":D
    .end local v8    # "moveVertical":D
    .local v1, "moveHorizontal":D
    .local v3, "moveVertical":D
    :goto_6
    iget-object v6, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->pivot:Lorg/mapsforge/core/model/LatLong;

    invoke-interface {v12, v6}, Lorg/mapsforge/map/model/IMapViewPosition;->setPivot(Lorg/mapsforge/core/model/LatLong;)V

    .line 228
    move-object v6, v12

    move-wide v7, v1

    move-wide v9, v3

    move v11, v5

    invoke-interface/range {v6 .. v11}, Lorg/mapsforge/map/model/IMapViewPosition;->moveCenterAndZoom(DDB)V

    .line 229
    .end local v1    # "moveHorizontal":D
    .end local v3    # "moveVertical":D
    .end local v13    # "center":Lorg/mapsforge/core/model/Point;
    goto :goto_7

    .line 204
    .end local v16    # "zoomLevelOffset":D
    .local v1, "zoomLevelOffset":D
    :cond_7
    move-wide/from16 v16, v1

    .line 231
    .end local v1    # "zoomLevelOffset":D
    .restart local v16    # "zoomLevelOffset":D
    invoke-interface {v12, v5}, Lorg/mapsforge/map/model/IMapViewPosition;->zoom(B)V

    .line 234
    :goto_7
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->isInDoubleTap:Z

    .line 235
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 239
    iget-boolean v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->isInScale:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->onMoveEvent()V

    .line 241
    iget-object v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v0

    iget-object v2, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    neg-float v0, p3

    float-to-double v3, v0

    neg-float v0, p4

    float-to-double v5, v0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/mapsforge/map/model/IMapViewPosition;->moveCenter(DDZ)V

    .line 242
    return v1

    .line 244
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 249
    new-instance v0, Lorg/mapsforge/core/model/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    .line 250
    .local v0, "tapXY":Lorg/mapsforge/core/model/Point;
    iget-object v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/map/android/view/MapView;->getMapViewProjection()Lorg/mapsforge/map/util/MapViewProjection;

    move-result-object v1

    iget-wide v2, v0, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v4, v0, Lorg/mapsforge/core/model/Point;->y:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/mapsforge/map/util/MapViewProjection;->fromPixels(DD)Lorg/mapsforge/core/model/LatLong;

    move-result-object v1

    .line 251
    .local v1, "tapLatLong":Lorg/mapsforge/core/model/LatLong;
    if-eqz v1, :cond_1

    .line 252
    iget-object v2, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/map/android/view/MapView;->getLayerManager()Lorg/mapsforge/map/layer/LayerManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mapsforge/map/layer/LayerManager;->getLayers()Lorg/mapsforge/map/layer/Layers;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mapsforge/map/layer/Layers;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 253
    iget-object v4, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v4}, Lorg/mapsforge/map/android/view/MapView;->getLayerManager()Lorg/mapsforge/map/layer/LayerManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mapsforge/map/layer/LayerManager;->getLayers()Lorg/mapsforge/map/layer/Layers;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/mapsforge/map/layer/Layers;->get(I)Lorg/mapsforge/map/layer/Layer;

    move-result-object v4

    .line 254
    .local v4, "layer":Lorg/mapsforge/map/layer/Layer;
    iget-object v5, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v5}, Lorg/mapsforge/map/android/view/MapView;->getMapViewProjection()Lorg/mapsforge/map/util/MapViewProjection;

    move-result-object v5

    invoke-virtual {v4}, Lorg/mapsforge/map/layer/Layer;->getPosition()Lorg/mapsforge/core/model/LatLong;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mapsforge/map/util/MapViewProjection;->toPixels(Lorg/mapsforge/core/model/LatLong;)Lorg/mapsforge/core/model/Point;

    move-result-object v5

    .line 255
    .local v5, "layerXY":Lorg/mapsforge/core/model/Point;
    invoke-virtual {v4, v1, v5, v0}, Lorg/mapsforge/map/layer/Layer;->onTap(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 256
    return v3

    .line 252
    .end local v4    # "layer":Lorg/mapsforge/map/layer/Layer;
    .end local v5    # "layerXY":Lorg/mapsforge/core/model/Point;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 260
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public run()V
    .locals 6

    .line 265
    iget-object v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->flinger:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->flinger:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 266
    .local v0, "flingerRunning":Z
    :goto_0
    iget-object v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v1

    iget-object v1, v1, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    iget v2, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->flingLastX:I

    iget-object v3, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->flinger:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->flingLastY:I

    iget-object v5, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->flinger:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/mapsforge/map/model/IMapViewPosition;->moveCenter(DD)V

    .line 267
    iget-object v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->flinger:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->flingLastX:I

    .line 268
    iget-object v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->flinger:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->flingLastY:I

    .line 269
    if-eqz v0, :cond_1

    .line 270
    iget-object v1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    :cond_1
    return-void
.end method

.method public setDoubleTapEnabled(Z)V
    .locals 0
    .param p1, "doubleTapEnabled"    # Z

    .line 279
    iput-boolean p1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->doubleTapEnabled:Z

    .line 280
    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0
    .param p1, "scaleEnabled"    # Z

    .line 290
    iput-boolean p1, p0, Lorg/mapsforge/map/android/input/TouchGestureHandler;->scaleEnabled:Z

    .line 291
    return-void
.end method
