.class final Lorg/mapsforge/map/layer/queue/QueueItemScheduler;
.super Ljava/lang/Object;
.source "QueueItemScheduler.java"


# static fields
.field static final PENALTY_PER_ZOOM_LEVEL:D = 10.0


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static calculatePriority(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/MapPosition;I)D
    .locals 24
    .param p0, "tile"    # Lorg/mapsforge/core/model/Tile;
    .param p1, "mapPosition"    # Lorg/mapsforge/core/model/MapPosition;
    .param p2, "tileSize"    # I

    .line 35
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Lorg/mapsforge/core/model/Tile;->tileY:I

    int-to-long v3, v3

    iget-byte v5, v0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v3, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->tileYToLatitude(JB)D

    move-result-wide v3

    .line 36
    .local v3, "tileLatitude":D
    iget v5, v0, Lorg/mapsforge/core/model/Tile;->tileX:I

    int-to-long v5, v5

    iget-byte v7, v0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v5, v6, v7}, Lorg/mapsforge/core/util/MercatorProjection;->tileXToLongitude(JB)D

    move-result-wide v5

    .line 38
    .local v5, "tileLongitude":D
    div-int/lit8 v7, v2, 0x2

    .line 39
    .local v7, "halfTileSize":I
    iget-byte v8, v1, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    invoke-static {v8, v2}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v8

    .line 40
    .local v8, "mapSize":J
    invoke-static {v5, v6, v8, v9}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v10

    int-to-double v12, v7

    add-double/2addr v10, v12

    .line 42
    .local v10, "tilePixelX":D
    invoke-static {v3, v4, v8, v9}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v12

    int-to-double v14, v7

    add-double/2addr v12, v14

    .line 45
    .local v12, "tilePixelY":D
    iget-object v14, v1, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    .line 46
    .local v14, "latLong":Lorg/mapsforge/core/model/LatLong;
    move-wide v15, v3

    .end local v3    # "tileLatitude":D
    .local v15, "tileLatitude":D
    iget-wide v3, v14, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v3, v4, v8, v9}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v3

    .line 47
    .local v3, "mapPixelX":D
    move-wide/from16 v17, v5

    .end local v5    # "tileLongitude":D
    .local v17, "tileLongitude":D
    iget-wide v5, v14, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v5, v6, v8, v9}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v5

    .line 49
    .local v5, "mapPixelY":D
    move/from16 v19, v7

    move-wide/from16 v20, v8

    .end local v7    # "halfTileSize":I
    .end local v8    # "mapSize":J
    .local v19, "halfTileSize":I
    .local v20, "mapSize":J
    sub-double v7, v10, v3

    move-wide/from16 v22, v3

    .end local v3    # "mapPixelX":D
    .local v22, "mapPixelX":D
    sub-double v3, v12, v5

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    .line 50
    .local v3, "diffPixel":D
    iget-byte v7, v0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget-byte v8, v1, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 52
    .local v7, "diffZoom":I
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    int-to-double v0, v2

    mul-double/2addr v0, v8

    int-to-double v8, v7

    mul-double/2addr v0, v8

    add-double/2addr v0, v3

    return-wide v0
.end method

.method static schedule(Ljava/util/Collection;Lorg/mapsforge/core/model/MapPosition;I)V
    .locals 4
    .param p1, "mapPosition"    # Lorg/mapsforge/core/model/MapPosition;
    .param p2, "tileSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/mapsforge/map/layer/queue/Job;",
            ">(",
            "Ljava/util/Collection<",
            "Lorg/mapsforge/map/layer/queue/QueueItem<",
            "TT;>;>;",
            "Lorg/mapsforge/core/model/MapPosition;",
            "I)V"
        }
    .end annotation

    .line 29
    .local p0, "queueItems":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mapsforge/map/layer/queue/QueueItem<TT;>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/layer/queue/QueueItem;

    .line 30
    .local v1, "queueItem":Lorg/mapsforge/map/layer/queue/QueueItem;, "Lorg/mapsforge/map/layer/queue/QueueItem<TT;>;"
    iget-object v2, v1, Lorg/mapsforge/map/layer/queue/QueueItem;->object:Lorg/mapsforge/map/layer/queue/Job;

    iget-object v2, v2, Lorg/mapsforge/map/layer/queue/Job;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-static {v2, p1, p2}, Lorg/mapsforge/map/layer/queue/QueueItemScheduler;->calculatePriority(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/MapPosition;I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/mapsforge/map/layer/queue/QueueItem;->setPriority(D)V

    .line 31
    .end local v1    # "queueItem":Lorg/mapsforge/map/layer/queue/QueueItem;, "Lorg/mapsforge/map/layer/queue/QueueItem<TT;>;"
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
