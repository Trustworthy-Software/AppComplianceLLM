.class public Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;
.super Lorg/mapsforge/map/layer/labels/LabelLayer;
.source "ThreadedLabelLayer.java"


# instance fields
.field executorService:Ljava/util/concurrent/ExecutorService;

.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field requestedLowerRight:Lorg/mapsforge/core/model/Tile;

.field requestedUpperLeft:Lorg/mapsforge/core/model/Tile;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/layer/labels/LabelStore;)V
    .locals 1
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "labelStore"    # Lorg/mapsforge/map/layer/labels/LabelStore;

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/map/layer/labels/LabelLayer;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/layer/labels/LabelStore;)V

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 48
    return-void
.end method


# virtual methods
.method public draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
    .locals 4
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p2, "zoomLevel"    # B
    .param p3, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p4, "topLeftPoint"    # Lorg/mapsforge/core/model/Point;

    .line 52
    iget-object v0, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/mapsforge/map/util/LayerUtil;->getUpperLeft(Lorg/mapsforge/core/model/BoundingBox;BI)Lorg/mapsforge/core/model/Tile;

    move-result-object v0

    .line 53
    .local v0, "newUpperLeft":Lorg/mapsforge/core/model/Tile;
    iget-object v1, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v1}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v1

    invoke-static {p1, p2, v1}, Lorg/mapsforge/map/util/LayerUtil;->getLowerRight(Lorg/mapsforge/core/model/BoundingBox;BI)Lorg/mapsforge/core/model/Tile;

    move-result-object v1

    .line 54
    .local v1, "newLowerRight":Lorg/mapsforge/core/model/Tile;
    iget-object v2, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->upperLeft:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v0, v2}, Lorg/mapsforge/core/model/Tile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->lowerRight:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v1, v2}, Lorg/mapsforge/core/model/Tile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->lastLabelStoreVersion:I

    iget-object v3, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->labelStore:Lorg/mapsforge/map/layer/labels/LabelStore;

    .line 55
    invoke-interface {v3}, Lorg/mapsforge/map/layer/labels/LabelStore;->getVersion()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 56
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->getData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)V

    .line 59
    :cond_1
    iget-object v2, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->upperLeft:Lorg/mapsforge/core/model/Tile;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->upperLeft:Lorg/mapsforge/core/model/Tile;

    iget-object v3, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->lowerRight:Lorg/mapsforge/core/model/Tile;

    invoke-static {v2, v3, v0, v1}, Lorg/mapsforge/core/model/Tile;->tileAreasOverlap(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    invoke-virtual {p0, p3, p4}, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->draw(Lorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V

    .line 64
    :cond_2
    return-void
.end method

.method protected getData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)V
    .locals 2
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;

    .line 67
    iget-object v0, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->requestedUpperLeft:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {p1, v0}, Lorg/mapsforge/core/model/Tile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->requestedLowerRight:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {p2, v0}, Lorg/mapsforge/core/model/Tile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    iput-object p1, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->requestedUpperLeft:Lorg/mapsforge/core/model/Tile;

    .line 73
    iput-object p2, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->requestedLowerRight:Lorg/mapsforge/core/model/Tile;

    .line 75
    iget-object v0, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 78
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 81
    :cond_1
    iget-object v0, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;-><init>(Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->future:Ljava/util/concurrent/Future;

    .line 100
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 105
    return-void
.end method
