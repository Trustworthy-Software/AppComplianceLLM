.class public Lorg/mapsforge/map/view/FrameBufferHA2;
.super Lorg/mapsforge/map/view/FrameBuffer;
.source "FrameBufferHA2.java"


# instance fields
.field private final allowSwap:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

.field private final lmBitmap:Lorg/mapsforge/map/view/FrameBufferBitmap;

.field private lmMapPosition:Lorg/mapsforge/core/model/MapPosition;

.field private final odBitmap:Lorg/mapsforge/map/view/FrameBufferBitmap;


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/model/FrameBufferModel;Lorg/mapsforge/map/model/DisplayModel;Lorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 1
    .param p1, "frameBufferModel"    # Lorg/mapsforge/map/model/FrameBufferModel;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p3, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/mapsforge/map/view/FrameBuffer;-><init>(Lorg/mapsforge/map/model/FrameBufferModel;Lorg/mapsforge/map/model/DisplayModel;Lorg/mapsforge/core/graphics/GraphicFactory;)V

    .line 37
    new-instance v0, Lorg/mapsforge/map/view/FrameBufferBitmap;

    invoke-direct {v0}, Lorg/mapsforge/map/view/FrameBufferBitmap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->lmBitmap:Lorg/mapsforge/map/view/FrameBufferBitmap;

    .line 38
    new-instance v0, Lorg/mapsforge/map/view/FrameBufferBitmap;

    invoke-direct {v0}, Lorg/mapsforge/map/view/FrameBufferBitmap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->odBitmap:Lorg/mapsforge/map/view/FrameBufferBitmap;

    .line 40
    new-instance v0, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    invoke-direct {v0}, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->allowSwap:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    .line 47
    invoke-virtual {v0}, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;->disable()V

    .line 48
    return-void
.end method

.method private swapBitmaps()V
    .locals 3

    .line 154
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->allowSwap:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->allowSwap:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    invoke-virtual {v1}, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->odBitmap:Lorg/mapsforge/map/view/FrameBufferBitmap;

    iget-object v2, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->lmBitmap:Lorg/mapsforge/map/view/FrameBufferBitmap;

    invoke-static {v1, v2}, Lorg/mapsforge/map/view/FrameBufferBitmap;->swap(Lorg/mapsforge/map/view/FrameBufferBitmap;Lorg/mapsforge/map/view/FrameBufferBitmap;)V

    .line 157
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->frameBufferModel:Lorg/mapsforge/map/model/FrameBufferModel;

    iget-object v2, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->lmMapPosition:Lorg/mapsforge/core/model/MapPosition;

    invoke-virtual {v1, v2}, Lorg/mapsforge/map/model/FrameBufferModel;->setMapPosition(Lorg/mapsforge/core/model/MapPosition;)V

    .line 158
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->allowSwap:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    invoke-virtual {v1}, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;->disable()V

    .line 160
    :cond_0
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public adjustMatrix(FFFLorg/mapsforge/core/model/Dimension;FF)V
    .locals 3
    .param p1, "diffX"    # F
    .param p2, "diffY"    # F
    .param p3, "scaleFactor"    # F
    .param p4, "mapViewDimension"    # Lorg/mapsforge/core/model/Dimension;
    .param p5, "pivotDistanceX"    # F
    .param p6, "pivotDistanceY"    # F

    .line 52
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->dimension:Lorg/mapsforge/core/model/Dimension;

    if-nez v1, :cond_0

    .line 54
    monitor-exit v0

    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    invoke-interface {v1}, Lorg/mapsforge/core/graphics/Matrix;->reset()V

    .line 57
    invoke-virtual {p0, p4}, Lorg/mapsforge/map/view/FrameBufferHA2;->centerFrameBufferToMapView(Lorg/mapsforge/core/model/Dimension;)V

    .line 58
    const/4 v1, 0x0

    cmpl-float v2, p5, v1

    if-nez v2, :cond_1

    cmpl-float v1, p6, v1

    if-nez v1, :cond_1

    .line 61
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    invoke-interface {v1, p1, p2}, Lorg/mapsforge/core/graphics/Matrix;->translate(FF)V

    .line 64
    :cond_1
    invoke-virtual {p0, p3, p5, p6}, Lorg/mapsforge/map/view/FrameBufferHA2;->scale(FFF)V

    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->odBitmap:Lorg/mapsforge/map/view/FrameBufferBitmap;

    invoke-virtual {v0}, Lorg/mapsforge/map/view/FrameBufferBitmap;->destroy()V

    .line 70
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->lmBitmap:Lorg/mapsforge/map/view/FrameBufferBitmap;

    invoke-virtual {v0}, Lorg/mapsforge/map/view/FrameBufferBitmap;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 68
    .end local p0    # "this":Lorg/mapsforge/map/view/FrameBufferHA2;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public draw(Lorg/mapsforge/core/graphics/GraphicContext;)V
    .locals 3
    .param p1, "graphicContext"    # Lorg/mapsforge/core/graphics/GraphicContext;

    .line 86
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/DisplayModel;->getBackgroundColor()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/mapsforge/core/graphics/GraphicContext;->fillColor(I)V

    .line 88
    invoke-direct {p0}, Lorg/mapsforge/map/view/FrameBufferHA2;->swapBitmaps()V

    .line 90
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->odBitmap:Lorg/mapsforge/map/view/FrameBufferBitmap;

    invoke-virtual {v1}, Lorg/mapsforge/map/view/FrameBufferBitmap;->lock()Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v1

    .line 92
    .local v1, "b":Lorg/mapsforge/core/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 93
    iget-object v2, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    invoke-interface {p1, v1, v2}, Lorg/mapsforge/core/graphics/GraphicContext;->drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/core/graphics/Matrix;)V

    .line 95
    .end local v1    # "b":Lorg/mapsforge/core/graphics/Bitmap;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->odBitmap:Lorg/mapsforge/map/view/FrameBufferBitmap;

    invoke-virtual {v0}, Lorg/mapsforge/map/view/FrameBufferBitmap;->release()V

    .line 101
    return-void

    .line 95
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public frameFinished(Lorg/mapsforge/core/model/MapPosition;)V
    .locals 2
    .param p1, "framePosition"    # Lorg/mapsforge/core/model/MapPosition;

    .line 107
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->allowSwap:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    monitor-enter v0

    .line 108
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->lmMapPosition:Lorg/mapsforge/core/model/MapPosition;

    .line 109
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->lmBitmap:Lorg/mapsforge/map/view/FrameBufferBitmap;

    invoke-virtual {v1}, Lorg/mapsforge/map/view/FrameBufferBitmap;->release()V

    .line 110
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->allowSwap:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    invoke-virtual {v1}, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;->enable()V

    .line 111
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDrawingBitmap()Lorg/mapsforge/core/graphics/Bitmap;
    .locals 3

    .line 125
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->allowSwap:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->allowSwap:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    invoke-virtual {v1}, Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;->waitDisabled()V

    .line 127
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->lmBitmap:Lorg/mapsforge/map/view/FrameBufferBitmap;

    invoke-virtual {v1}, Lorg/mapsforge/map/view/FrameBufferBitmap;->lock()Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v1

    .line 128
    .local v1, "b":Lorg/mapsforge/core/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 129
    iget-object v2, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v2}, Lorg/mapsforge/map/model/DisplayModel;->getBackgroundColor()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/mapsforge/core/graphics/Bitmap;->setBackgroundColor(I)V

    .line 131
    :cond_0
    monitor-exit v0

    return-object v1

    .line 132
    .end local v1    # "b":Lorg/mapsforge/core/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDimension(Lorg/mapsforge/core/model/Dimension;)V
    .locals 5
    .param p1, "dimension"    # Lorg/mapsforge/core/model/Dimension;

    .line 136
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->dimension:Lorg/mapsforge/core/model/Dimension;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->dimension:Lorg/mapsforge/core/model/Dimension;

    invoke-virtual {v1, p1}, Lorg/mapsforge/core/model/Dimension;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    monitor-exit v0

    return-void

    .line 140
    :cond_0
    iput-object p1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->dimension:Lorg/mapsforge/core/model/Dimension;

    .line 141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->allowSwap:Lorg/mapsforge/map/view/FrameBufferBitmap$Lock;

    monitor-enter v1

    .line 144
    :try_start_1
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->odBitmap:Lorg/mapsforge/map/view/FrameBufferBitmap;

    iget-object v2, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v3, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v3}, Lorg/mapsforge/map/model/DisplayModel;->getBackgroundColor()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Lorg/mapsforge/map/view/FrameBufferBitmap;->create(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/core/model/Dimension;IZ)V

    .line 145
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->lmBitmap:Lorg/mapsforge/map/view/FrameBufferBitmap;

    iget-object v2, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v3, p0, Lorg/mapsforge/map/view/FrameBufferHA2;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v3}, Lorg/mapsforge/map/model/DisplayModel;->getBackgroundColor()I

    move-result v3

    invoke-virtual {v0, v2, p1, v3, v4}, Lorg/mapsforge/map/view/FrameBufferBitmap;->create(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/core/model/Dimension;IZ)V

    .line 146
    monitor-exit v1

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 141
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
