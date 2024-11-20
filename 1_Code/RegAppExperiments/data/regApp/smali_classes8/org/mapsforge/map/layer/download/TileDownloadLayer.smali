.class public Lorg/mapsforge/map/layer/download/TileDownloadLayer;
.super Lorg/mapsforge/map/layer/TileLayer;
.source "TileDownloadLayer.java"

# interfaces
.implements Lorg/mapsforge/map/model/common/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mapsforge/map/layer/TileLayer<",
        "Lorg/mapsforge/map/layer/download/DownloadJob;",
        ">;",
        "Lorg/mapsforge/map/model/common/Observer;"
    }
.end annotation


# static fields
.field private static final DOWNLOAD_THREADS_MAX:I = 0x8


# instance fields
.field private cacheTimeToLive:J

.field private final graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

.field private started:Z

.field private final tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

.field private tileDownloadThreads:[Lorg/mapsforge/map/layer/download/TileDownloadThread;

.field private final tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/map/layer/download/tilesource/TileSource;Lorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 2
    .param p1, "tileCache"    # Lorg/mapsforge/map/layer/cache/TileCache;
    .param p2, "mapViewPosition"    # Lorg/mapsforge/map/model/IMapViewPosition;
    .param p3, "tileSource"    # Lorg/mapsforge/map/layer/download/tilesource/TileSource;
    .param p4, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 43
    invoke-interface {p4}, Lorg/mapsforge/core/graphics/GraphicFactory;->createMatrix()Lorg/mapsforge/core/graphics/Matrix;

    move-result-object v0

    invoke-interface {p3}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->hasAlpha()Z

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mapsforge/map/layer/TileLayer;-><init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/core/graphics/Matrix;Z)V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->cacheTimeToLive:J

    .line 45
    iput-object p1, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    .line 46
    iput-object p3, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    .line 47
    invoke-interface {p3}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->getDefaultTimeToLive()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->cacheTimeToLive:J

    .line 48
    iput-object p4, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 49
    return-void
.end method


# virtual methods
.method protected createJob(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/layer/download/DownloadJob;
    .locals 2
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 135
    new-instance v0, Lorg/mapsforge/map/layer/download/DownloadJob;

    iget-object v1, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    invoke-direct {v0, p1, v1}, Lorg/mapsforge/map/layer/download/DownloadJob;-><init>(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/layer/download/tilesource/TileSource;)V

    return-object v0
.end method

.method protected bridge synthetic createJob(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/layer/queue/Job;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->createJob(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/layer/download/DownloadJob;

    move-result-object p1

    return-object p1
.end method

.method public draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
    .locals 1
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p2, "zoomLevel"    # B
    .param p3, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p4, "topLeftPoint"    # Lorg/mapsforge/core/model/Point;

    .line 53
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    invoke-interface {v0}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->getZoomLevelMin()B

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    invoke-interface {v0}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->getZoomLevelMax()B

    move-result v0

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mapsforge/map/layer/TileLayer;->draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V

    .line 58
    return-void

    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public getCacheTimeToLive()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->cacheTimeToLive:J

    return-wide v0
.end method

.method protected isTileStale(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/graphics/TileBitmap;)Z
    .locals 6
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "bitmap"    # Lorg/mapsforge/core/graphics/TileBitmap;

    .line 163
    invoke-interface {p2}, Lorg/mapsforge/core/graphics/TileBitmap;->isExpired()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 164
    return v1

    .line 165
    :cond_0
    iget-wide v2, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->cacheTimeToLive:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lorg/mapsforge/core/graphics/TileBitmap;->getTimestamp()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->cacheTimeToLive:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onAdd()V
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0, p0}, Lorg/mapsforge/map/layer/cache/TileCache;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 174
    :cond_0
    invoke-super {p0}, Lorg/mapsforge/map/layer/TileLayer;->onAdd()V

    .line 175
    return-void
.end method

.method public onChange()V
    .locals 0

    .line 187
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->requestRedraw()V

    .line 188
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 71
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileDownloadThreads:[Lorg/mapsforge/map/layer/download/TileDownloadThread;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 72
    .local v3, "tileDownloadThread":Lorg/mapsforge/map/layer/download/TileDownloadThread;
    invoke-virtual {v3}, Lorg/mapsforge/map/layer/download/TileDownloadThread;->finish()V

    .line 71
    .end local v3    # "tileDownloadThread":Lorg/mapsforge/map/layer/download/TileDownloadThread;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-super {p0}, Lorg/mapsforge/map/layer/TileLayer;->onDestroy()V

    .line 76
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 79
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileDownloadThreads:[Lorg/mapsforge/map/layer/download/TileDownloadThread;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 80
    .local v3, "tileDownloadThread":Lorg/mapsforge/map/layer/download/TileDownloadThread;
    invoke-virtual {v3}, Lorg/mapsforge/map/layer/download/TileDownloadThread;->pause()V

    .line 79
    .end local v3    # "tileDownloadThread":Lorg/mapsforge/map/layer/download/TileDownloadThread;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method protected onRemove()V
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0, p0}, Lorg/mapsforge/map/layer/cache/TileCache;->removeObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 182
    :cond_0
    invoke-super {p0}, Lorg/mapsforge/map/layer/TileLayer;->onRemove()V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 85
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->started:Z

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->start()V

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileDownloadThreads:[Lorg/mapsforge/map/layer/download/TileDownloadThread;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 89
    .local v3, "tileDownloadThread":Lorg/mapsforge/map/layer/download/TileDownloadThread;
    invoke-virtual {v3}, Lorg/mapsforge/map/layer/download/TileDownloadThread;->proceed()V

    .line 88
    .end local v3    # "tileDownloadThread":Lorg/mapsforge/map/layer/download/TileDownloadThread;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method public setCacheTimeToLive(J)V
    .locals 0
    .param p1, "ttl"    # J

    .line 103
    iput-wide p1, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->cacheTimeToLive:J

    .line 104
    return-void
.end method

.method public declared-synchronized setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V
    .locals 10
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    monitor-enter p0

    .line 108
    :try_start_0
    invoke-super {p0, p1}, Lorg/mapsforge/map/layer/TileLayer;->setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V

    .line 109
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    invoke-interface {v0}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->getParallelRequestsLimit()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 110
    .local v0, "numberOfDownloadThreads":I
    iget-object v1, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    if-eqz v1, :cond_1

    .line 111
    new-array v1, v0, [Lorg/mapsforge/map/layer/download/TileDownloadThread;

    iput-object v1, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileDownloadThreads:[Lorg/mapsforge/map/layer/download/TileDownloadThread;

    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 113
    iget-object v2, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileDownloadThreads:[Lorg/mapsforge/map/layer/download/TileDownloadThread;

    new-instance v9, Lorg/mapsforge/map/layer/download/TileDownloadThread;

    iget-object v4, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    iget-object v5, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    iget-object v7, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v8, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    move-object v3, v9

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, Lorg/mapsforge/map/layer/download/TileDownloadThread;-><init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/layer/queue/JobQueue;Lorg/mapsforge/map/layer/Layer;Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V

    aput-object v9, v2, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local p0    # "this":Lorg/mapsforge/map/layer/download/TileDownloadLayer;
    :cond_0
    goto :goto_2

    .line 117
    :cond_1
    iget-object v1, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileDownloadThreads:[Lorg/mapsforge/map/layer/download/TileDownloadThread;

    if-eqz v1, :cond_2

    .line 118
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 119
    .local v4, "tileDownloadThread":Lorg/mapsforge/map/layer/download/TileDownloadThread;
    invoke-virtual {v4}, Lorg/mapsforge/map/layer/download/TileDownloadThread;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v4    # "tileDownloadThread":Lorg/mapsforge/map/layer/download/TileDownloadThread;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 124
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    .line 107
    .end local v0    # "numberOfDownloadThreads":I
    .end local p1    # "displayModel":Lorg/mapsforge/map/model/DisplayModel;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public start()V
    .locals 4

    .line 127
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->tileDownloadThreads:[Lorg/mapsforge/map/layer/download/TileDownloadThread;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 128
    .local v3, "tileDownloadThread":Lorg/mapsforge/map/layer/download/TileDownloadThread;
    invoke-virtual {v3}, Lorg/mapsforge/map/layer/download/TileDownloadThread;->start()V

    .line 127
    .end local v3    # "tileDownloadThread":Lorg/mapsforge/map/layer/download/TileDownloadThread;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/layer/download/TileDownloadLayer;->started:Z

    .line 131
    return-void
.end method
