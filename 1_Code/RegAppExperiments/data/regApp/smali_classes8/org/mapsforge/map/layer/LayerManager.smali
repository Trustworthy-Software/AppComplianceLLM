.class public Lorg/mapsforge/map/layer/LayerManager;
.super Lorg/mapsforge/map/util/PausableThread;
.source "LayerManager.java"

# interfaces
.implements Lorg/mapsforge/map/layer/Redrawer;


# static fields
.field private static final MILLISECONDS_PER_FRAME:I = 0x1e


# instance fields
.field private final drawingCanvas:Lorg/mapsforge/core/graphics/Canvas;

.field private final layers:Lorg/mapsforge/map/layer/Layers;

.field private final mapView:Lorg/mapsforge/map/view/MapView;

.field private final mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

.field private redrawNeeded:Z


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/view/MapView;Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 2
    .param p1, "mapView"    # Lorg/mapsforge/map/view/MapView;
    .param p2, "mapViewPosition"    # Lorg/mapsforge/map/model/IMapViewPosition;
    .param p3, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 44
    invoke-direct {p0}, Lorg/mapsforge/map/util/PausableThread;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/mapsforge/map/layer/LayerManager;->mapView:Lorg/mapsforge/map/view/MapView;

    .line 47
    iput-object p2, p0, Lorg/mapsforge/map/layer/LayerManager;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    .line 49
    invoke-interface {p3}, Lorg/mapsforge/core/graphics/GraphicFactory;->createCanvas()Lorg/mapsforge/core/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/LayerManager;->drawingCanvas:Lorg/mapsforge/core/graphics/Canvas;

    .line 50
    new-instance v0, Lorg/mapsforge/map/layer/Layers;

    invoke-interface {p1}, Lorg/mapsforge/map/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v1

    iget-object v1, v1, Lorg/mapsforge/map/model/Model;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-direct {v0, p0, v1}, Lorg/mapsforge/map/layer/Layers;-><init>(Lorg/mapsforge/map/layer/Redrawer;Lorg/mapsforge/map/model/DisplayModel;)V

    iput-object v0, p0, Lorg/mapsforge/map/layer/LayerManager;->layers:Lorg/mapsforge/map/layer/Layers;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/layer/LayerManager;->waitForWork:Z

    .line 52
    return-void
.end method


# virtual methods
.method protected afterRun()V
    .locals 3

    .line 68
    iget-object v0, p0, Lorg/mapsforge/map/layer/LayerManager;->layers:Lorg/mapsforge/map/layer/Layers;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/layer/LayerManager;->layers:Lorg/mapsforge/map/layer/Layers;

    invoke-virtual {v1}, Lorg/mapsforge/map/layer/Layers;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/layer/Layer;

    .line 70
    .local v2, "layer":Lorg/mapsforge/map/layer/Layer;
    invoke-virtual {v2}, Lorg/mapsforge/map/layer/Layer;->onDestroy()V

    .line 71
    .end local v2    # "layer":Lorg/mapsforge/map/layer/Layer;
    goto :goto_0

    .line 72
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Lorg/mapsforge/map/layer/LayerManager;->drawingCanvas:Lorg/mapsforge/core/graphics/Canvas;

    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Canvas;->destroy()V

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected doWork()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 79
    .local v0, "startTime":J
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/mapsforge/map/layer/LayerManager;->redrawNeeded:Z

    .line 81
    iget-object v2, p0, Lorg/mapsforge/map/layer/LayerManager;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v2}, Lorg/mapsforge/map/view/MapView;->getFrameBuffer()Lorg/mapsforge/map/view/FrameBuffer;

    move-result-object v2

    .line 82
    .local v2, "frameBuffer":Lorg/mapsforge/map/view/FrameBuffer;
    invoke-virtual {v2}, Lorg/mapsforge/map/view/FrameBuffer;->getDrawingBitmap()Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v3

    .line 83
    .local v3, "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    if-eqz v3, :cond_3

    .line 84
    iget-object v4, p0, Lorg/mapsforge/map/layer/LayerManager;->drawingCanvas:Lorg/mapsforge/core/graphics/Canvas;

    invoke-interface {v4, v3}, Lorg/mapsforge/core/graphics/Canvas;->setBitmap(Lorg/mapsforge/core/graphics/Bitmap;)V

    .line 86
    iget-object v4, p0, Lorg/mapsforge/map/layer/LayerManager;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v4}, Lorg/mapsforge/map/model/IMapViewPosition;->getMapPosition()Lorg/mapsforge/core/model/MapPosition;

    move-result-object v4

    .line 87
    .local v4, "mapPosition":Lorg/mapsforge/core/model/MapPosition;
    iget-object v5, p0, Lorg/mapsforge/map/layer/LayerManager;->drawingCanvas:Lorg/mapsforge/core/graphics/Canvas;

    invoke-interface {v5}, Lorg/mapsforge/core/graphics/Canvas;->getDimension()Lorg/mapsforge/core/model/Dimension;

    move-result-object v5

    .line 88
    .local v5, "canvasDimension":Lorg/mapsforge/core/model/Dimension;
    iget-object v6, p0, Lorg/mapsforge/map/layer/LayerManager;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v6}, Lorg/mapsforge/map/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v6

    iget-object v6, v6, Lorg/mapsforge/map/model/Model;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v6}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v6

    .line 89
    .local v6, "tileSize":I
    invoke-static {v4, v5, v6}, Lorg/mapsforge/map/util/MapPositionUtil;->getBoundingBox(Lorg/mapsforge/core/model/MapPosition;Lorg/mapsforge/core/model/Dimension;I)Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v7

    .line 90
    .local v7, "boundingBox":Lorg/mapsforge/core/model/BoundingBox;
    invoke-static {v4, v5, v6}, Lorg/mapsforge/map/util/MapPositionUtil;->getTopLeftPoint(Lorg/mapsforge/core/model/MapPosition;Lorg/mapsforge/core/model/Dimension;I)Lorg/mapsforge/core/model/Point;

    move-result-object v8

    .line 92
    .local v8, "topLeftPoint":Lorg/mapsforge/core/model/Point;
    iget-object v9, p0, Lorg/mapsforge/map/layer/LayerManager;->layers:Lorg/mapsforge/map/layer/Layers;

    monitor-enter v9

    .line 93
    :try_start_0
    iget-object v10, p0, Lorg/mapsforge/map/layer/LayerManager;->layers:Lorg/mapsforge/map/layer/Layers;

    invoke-virtual {v10}, Lorg/mapsforge/map/layer/Layers;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/map/layer/Layer;

    .line 94
    .local v11, "layer":Lorg/mapsforge/map/layer/Layer;
    invoke-virtual {v11}, Lorg/mapsforge/map/layer/Layer;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 95
    iget-byte v12, v4, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    iget-object v13, p0, Lorg/mapsforge/map/layer/LayerManager;->drawingCanvas:Lorg/mapsforge/core/graphics/Canvas;

    invoke-virtual {v11, v7, v12, v13, v8}, Lorg/mapsforge/map/layer/Layer;->draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V

    .line 97
    .end local v11    # "layer":Lorg/mapsforge/map/layer/Layer;
    :cond_0
    goto :goto_0

    .line 98
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v9, p0, Lorg/mapsforge/map/layer/LayerManager;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v9}, Lorg/mapsforge/map/model/IMapViewPosition;->animationInProgress()Z

    move-result v9

    if-nez v9, :cond_2

    .line 103
    invoke-virtual {v2, v4}, Lorg/mapsforge/map/view/FrameBuffer;->frameFinished(Lorg/mapsforge/core/model/MapPosition;)V

    .line 104
    iget-object v9, p0, Lorg/mapsforge/map/layer/LayerManager;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v9}, Lorg/mapsforge/map/view/MapView;->repaint()V

    goto :goto_1

    .line 107
    :cond_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/mapsforge/map/layer/LayerManager;->redrawNeeded:Z

    goto :goto_1

    .line 98
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 111
    .end local v4    # "mapPosition":Lorg/mapsforge/core/model/MapPosition;
    .end local v5    # "canvasDimension":Lorg/mapsforge/core/model/Dimension;
    .end local v6    # "tileSize":I
    .end local v7    # "boundingBox":Lorg/mapsforge/core/model/BoundingBox;
    .end local v8    # "topLeftPoint":Lorg/mapsforge/core/model/Point;
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 112
    .local v4, "elapsedMilliseconds":J
    const-wide/16 v6, 0x1e

    sub-long/2addr v6, v4

    .line 114
    .local v6, "timeSleep":J
    const-wide/16 v8, 0x1

    cmp-long v8, v6, v8

    if-lez v8, :cond_4

    invoke-virtual {p0}, Lorg/mapsforge/map/layer/LayerManager;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_4

    .line 115
    invoke-static {v6, v7}, Lorg/mapsforge/map/layer/LayerManager;->sleep(J)V

    .line 117
    :cond_4
    return-void
.end method

.method public getLayers()Lorg/mapsforge/map/layer/Layers;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/mapsforge/map/layer/LayerManager;->layers:Lorg/mapsforge/map/layer/Layers;

    return-object v0
.end method

.method protected getThreadPriority()Lorg/mapsforge/map/util/PausableThread$ThreadPriority;
    .locals 1

    .line 121
    sget-object v0, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;->NORMAL:Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    return-object v0
.end method

.method protected hasWork()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/LayerManager;->redrawNeeded:Z

    return v0
.end method

.method public redrawLayers()V
    .locals 1

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/layer/LayerManager;->redrawNeeded:Z

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
