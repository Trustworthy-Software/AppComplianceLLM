.class public Lorg/mapsforge/map/datastore/MultiMapDataStore;
.super Lorg/mapsforge/map/datastore/MapDataStore;
.source "MultiMapDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;
    }
.end annotation


# instance fields
.field private boundingBox:Lorg/mapsforge/core/model/BoundingBox;

.field private final dataPolicy:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

.field private final mapDatabases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/map/datastore/MapDataStore;",
            ">;"
        }
    .end annotation
.end field

.field private startPosition:Lorg/mapsforge/core/model/LatLong;

.field private startZoomLevel:B


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;)V
    .locals 1
    .param p1, "dataPolicy"    # Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    .line 52
    invoke-direct {p0}, Lorg/mapsforge/map/datastore/MapDataStore;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->dataPolicy:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    .line 55
    return-void
.end method

.method private readLabels(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 6
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;
    .param p3, "deduplicate"    # Z

    .line 181
    new-instance v0, Lorg/mapsforge/map/datastore/MapReadResult;

    invoke-direct {v0}, Lorg/mapsforge/map/datastore/MapReadResult;-><init>()V

    .line 182
    .local v0, "mapReadResult":Lorg/mapsforge/map/datastore/MapReadResult;
    iget-object v1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 183
    .local v2, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v2, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    invoke-virtual {v2, p1, p2}, Lorg/mapsforge/map/datastore/MapDataStore;->readLabels(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v3

    .line 185
    .local v3, "result":Lorg/mapsforge/map/datastore/MapReadResult;
    if-nez v3, :cond_0

    .line 186
    goto :goto_0

    .line 188
    :cond_0
    iget-boolean v4, v0, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    iget-boolean v5, v3, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    and-int/2addr v4, v5

    .line 189
    .local v4, "isWater":Z
    iput-boolean v4, v0, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    .line 190
    invoke-virtual {v0, v3, p3}, Lorg/mapsforge/map/datastore/MapReadResult;->add(Lorg/mapsforge/map/datastore/MapReadResult;Z)V

    .line 192
    .end local v2    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    .end local v3    # "result":Lorg/mapsforge/map/datastore/MapReadResult;
    .end local v4    # "isWater":Z
    :cond_1
    goto :goto_0

    .line 193
    :cond_2
    return-object v0
.end method

.method private readLabels(Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 6
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "deduplicate"    # Z

    .line 146
    new-instance v0, Lorg/mapsforge/map/datastore/MapReadResult;

    invoke-direct {v0}, Lorg/mapsforge/map/datastore/MapReadResult;-><init>()V

    .line 147
    .local v0, "mapReadResult":Lorg/mapsforge/map/datastore/MapReadResult;
    iget-object v1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 148
    .local v2, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v2, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    invoke-virtual {v2, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->readLabels(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v3

    .line 150
    .local v3, "result":Lorg/mapsforge/map/datastore/MapReadResult;
    if-nez v3, :cond_0

    .line 151
    goto :goto_0

    .line 153
    :cond_0
    iget-boolean v4, v0, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    iget-boolean v5, v3, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    and-int/2addr v4, v5

    .line 154
    .local v4, "isWater":Z
    iput-boolean v4, v0, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    .line 155
    invoke-virtual {v0, v3, p2}, Lorg/mapsforge/map/datastore/MapReadResult;->add(Lorg/mapsforge/map/datastore/MapReadResult;Z)V

    .line 157
    .end local v2    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    .end local v3    # "result":Lorg/mapsforge/map/datastore/MapReadResult;
    .end local v4    # "isWater":Z
    :cond_1
    goto :goto_0

    .line 158
    :cond_2
    return-object v0
.end method

.method private readMapData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 6
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;
    .param p3, "deduplicate"    # Z

    .line 249
    new-instance v0, Lorg/mapsforge/map/datastore/MapReadResult;

    invoke-direct {v0}, Lorg/mapsforge/map/datastore/MapReadResult;-><init>()V

    .line 250
    .local v0, "mapReadResult":Lorg/mapsforge/map/datastore/MapReadResult;
    iget-object v1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 251
    .local v2, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v2, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    invoke-virtual {v2, p1, p2}, Lorg/mapsforge/map/datastore/MapDataStore;->readMapData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v3

    .line 253
    .local v3, "result":Lorg/mapsforge/map/datastore/MapReadResult;
    if-nez v3, :cond_0

    .line 254
    goto :goto_0

    .line 256
    :cond_0
    iget-boolean v4, v0, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    iget-boolean v5, v3, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    and-int/2addr v4, v5

    .line 257
    .local v4, "isWater":Z
    iput-boolean v4, v0, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    .line 258
    invoke-virtual {v0, v3, p3}, Lorg/mapsforge/map/datastore/MapReadResult;->add(Lorg/mapsforge/map/datastore/MapReadResult;Z)V

    .line 260
    .end local v2    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    .end local v3    # "result":Lorg/mapsforge/map/datastore/MapReadResult;
    .end local v4    # "isWater":Z
    :cond_1
    goto :goto_0

    .line 261
    :cond_2
    return-object v0
.end method

.method private readMapData(Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 6
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "deduplicate"    # Z

    .line 215
    new-instance v0, Lorg/mapsforge/map/datastore/MapReadResult;

    invoke-direct {v0}, Lorg/mapsforge/map/datastore/MapReadResult;-><init>()V

    .line 216
    .local v0, "mapReadResult":Lorg/mapsforge/map/datastore/MapReadResult;
    iget-object v1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 217
    .local v2, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v2, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    invoke-virtual {v2, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->readMapData(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v3

    .line 219
    .local v3, "result":Lorg/mapsforge/map/datastore/MapReadResult;
    if-nez v3, :cond_0

    .line 220
    goto :goto_0

    .line 222
    :cond_0
    iget-boolean v4, v0, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    iget-boolean v5, v3, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    and-int/2addr v4, v5

    .line 223
    .local v4, "isWater":Z
    iput-boolean v4, v0, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    .line 224
    invoke-virtual {v0, v3, p2}, Lorg/mapsforge/map/datastore/MapReadResult;->add(Lorg/mapsforge/map/datastore/MapReadResult;Z)V

    .line 226
    .end local v2    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    .end local v3    # "result":Lorg/mapsforge/map/datastore/MapReadResult;
    .end local v4    # "isWater":Z
    :cond_1
    goto :goto_0

    .line 227
    :cond_2
    return-object v0
.end method

.method private readPoiData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 6
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;
    .param p3, "deduplicate"    # Z

    .line 319
    new-instance v0, Lorg/mapsforge/map/datastore/MapReadResult;

    invoke-direct {v0}, Lorg/mapsforge/map/datastore/MapReadResult;-><init>()V

    .line 320
    .local v0, "mapReadResult":Lorg/mapsforge/map/datastore/MapReadResult;
    iget-object v1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 321
    .local v2, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v2, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    invoke-virtual {v2, p1, p2}, Lorg/mapsforge/map/datastore/MapDataStore;->readPoiData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v3

    .line 323
    .local v3, "result":Lorg/mapsforge/map/datastore/MapReadResult;
    if-nez v3, :cond_0

    .line 324
    goto :goto_0

    .line 326
    :cond_0
    iget-boolean v4, v0, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    iget-boolean v5, v3, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    and-int/2addr v4, v5

    .line 327
    .local v4, "isWater":Z
    iput-boolean v4, v0, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    .line 328
    invoke-virtual {v0, v3, p3}, Lorg/mapsforge/map/datastore/MapReadResult;->add(Lorg/mapsforge/map/datastore/MapReadResult;Z)V

    .line 330
    .end local v2    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    .end local v3    # "result":Lorg/mapsforge/map/datastore/MapReadResult;
    .end local v4    # "isWater":Z
    :cond_1
    goto :goto_0

    .line 331
    :cond_2
    return-object v0
.end method

.method private readPoiData(Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 6
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "deduplicate"    # Z

    .line 284
    new-instance v0, Lorg/mapsforge/map/datastore/MapReadResult;

    invoke-direct {v0}, Lorg/mapsforge/map/datastore/MapReadResult;-><init>()V

    .line 285
    .local v0, "mapReadResult":Lorg/mapsforge/map/datastore/MapReadResult;
    iget-object v1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 286
    .local v2, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v2, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    invoke-virtual {v2, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->readPoiData(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v3

    .line 288
    .local v3, "result":Lorg/mapsforge/map/datastore/MapReadResult;
    if-nez v3, :cond_0

    .line 289
    goto :goto_0

    .line 291
    :cond_0
    iget-boolean v4, v0, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    iget-boolean v5, v3, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    and-int/2addr v4, v5

    .line 292
    .local v4, "isWater":Z
    iput-boolean v4, v0, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    .line 293
    invoke-virtual {v0, v3, p2}, Lorg/mapsforge/map/datastore/MapReadResult;->add(Lorg/mapsforge/map/datastore/MapReadResult;Z)V

    .line 295
    .end local v2    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    .end local v3    # "result":Lorg/mapsforge/map/datastore/MapReadResult;
    .end local v4    # "isWater":Z
    :cond_1
    goto :goto_0

    .line 296
    :cond_2
    return-object v0
.end method


# virtual methods
.method public addMapDataStore(Lorg/mapsforge/map/datastore/MapDataStore;ZZ)V
    .locals 2
    .param p1, "mapDataStore"    # Lorg/mapsforge/map/datastore/MapDataStore;
    .param p2, "useStartZoomLevel"    # Z
    .param p3, "useStartPosition"    # Z

    .line 66
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1}, Lorg/mapsforge/map/datastore/MapDataStore;->startZoomLevel()Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->startZoomLevel:B

    .line 73
    :cond_0
    if-eqz p3, :cond_1

    .line 74
    invoke-virtual {p1}, Lorg/mapsforge/map/datastore/MapDataStore;->startPosition()Lorg/mapsforge/core/model/LatLong;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->startPosition:Lorg/mapsforge/core/model/LatLong;

    .line 76
    :cond_1
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    if-nez v0, :cond_2

    .line 77
    invoke-virtual {p1}, Lorg/mapsforge/map/datastore/MapDataStore;->boundingBox()Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p1}, Lorg/mapsforge/map/datastore/MapDataStore;->boundingBox()Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mapsforge/core/model/BoundingBox;->extendBoundingBox(Lorg/mapsforge/core/model/BoundingBox;)Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    .line 81
    :goto_0
    return-void

    .line 67
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duplicate map database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public boundingBox()Lorg/mapsforge/core/model/BoundingBox;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 91
    .local v1, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v1}, Lorg/mapsforge/map/datastore/MapDataStore;->close()V

    .line 92
    .end local v1    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public getDataTimestamp(Lorg/mapsforge/core/model/Tile;)J
    .locals 6
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 105
    sget-object v0, Lorg/mapsforge/map/datastore/MultiMapDataStore$1;->$SwitchMap$org$mapsforge$map$datastore$MultiMapDataStore$DataPolicy:[I

    iget-object v1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->dataPolicy:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    invoke-virtual {v1}, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid data policy for multi map database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :pswitch_0
    const-wide/16 v0, 0x0

    .line 116
    .local v0, "result":J
    iget-object v2, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 117
    .local v3, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v3, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    invoke-virtual {v3, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->getDataTimestamp(Lorg/mapsforge/core/model/Tile;)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 120
    .end local v3    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    :cond_0
    goto :goto_0

    .line 121
    :cond_1
    return-wide v0

    .line 107
    .end local v0    # "result":J
    :pswitch_1
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 108
    .local v1, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v1, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    invoke-virtual {v1, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->getDataTimestamp(Lorg/mapsforge/core/model/Tile;)J

    move-result-wide v2

    return-wide v2

    .line 111
    .end local v1    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    :cond_2
    goto :goto_1

    .line 112
    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public readLabels(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 3
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 128
    sget-object v0, Lorg/mapsforge/map/datastore/MultiMapDataStore$1;->$SwitchMap$org$mapsforge$map$datastore$MultiMapDataStore$DataPolicy:[I

    iget-object v1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->dataPolicy:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    invoke-virtual {v1}, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid data policy for multi map database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->readLabels(Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 137
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->readLabels(Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 130
    :pswitch_2
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 131
    .local v1, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v1, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v1, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->readLabels(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 134
    .end local v1    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    :cond_0
    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readLabels(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 3
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;

    .line 163
    sget-object v0, Lorg/mapsforge/map/datastore/MultiMapDataStore$1;->$SwitchMap$org$mapsforge$map$datastore$MultiMapDataStore$DataPolicy:[I

    iget-object v1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->dataPolicy:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    invoke-virtual {v1}, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid data policy for multi map database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->readLabels(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 172
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->readLabels(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 165
    :pswitch_2
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 166
    .local v1, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v1, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v1, p1, p2}, Lorg/mapsforge/map/datastore/MapDataStore;->readLabels(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 169
    .end local v1    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    :cond_0
    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readMapData(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 3
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 198
    sget-object v0, Lorg/mapsforge/map/datastore/MultiMapDataStore$1;->$SwitchMap$org$mapsforge$map$datastore$MultiMapDataStore$DataPolicy:[I

    iget-object v1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->dataPolicy:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    invoke-virtual {v1}, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid data policy for multi map database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->readMapData(Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 207
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->readMapData(Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 200
    :pswitch_2
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 201
    .local v1, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v1, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {v1, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->readMapData(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 204
    .end local v1    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    :cond_0
    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readMapData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 3
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;

    .line 232
    sget-object v0, Lorg/mapsforge/map/datastore/MultiMapDataStore$1;->$SwitchMap$org$mapsforge$map$datastore$MultiMapDataStore$DataPolicy:[I

    iget-object v1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->dataPolicy:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    invoke-virtual {v1}, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 245
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid data policy for multi map database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->readMapData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 241
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->readMapData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 234
    :pswitch_2
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 235
    .local v1, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v1, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v1, p1, p2}, Lorg/mapsforge/map/datastore/MapDataStore;->readMapData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 238
    .end local v1    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    :cond_0
    goto :goto_0

    .line 239
    :cond_1
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readPoiData(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 3
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 266
    sget-object v0, Lorg/mapsforge/map/datastore/MultiMapDataStore$1;->$SwitchMap$org$mapsforge$map$datastore$MultiMapDataStore$DataPolicy:[I

    iget-object v1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->dataPolicy:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    invoke-virtual {v1}, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid data policy for multi map database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->readPoiData(Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 275
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->readPoiData(Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 268
    :pswitch_2
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 269
    .local v1, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v1, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {v1, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->readPoiData(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 272
    .end local v1    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    :cond_0
    goto :goto_0

    .line 273
    :cond_1
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readPoiData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 3
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;

    .line 301
    sget-object v0, Lorg/mapsforge/map/datastore/MultiMapDataStore$1;->$SwitchMap$org$mapsforge$map$datastore$MultiMapDataStore$DataPolicy:[I

    iget-object v1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->dataPolicy:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    invoke-virtual {v1}, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid data policy for multi map database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->readPoiData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 310
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mapsforge/map/datastore/MultiMapDataStore;->readPoiData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Z)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 303
    :pswitch_2
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 304
    .local v1, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v1, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    invoke-virtual {v1, p1, p2}, Lorg/mapsforge/map/datastore/MapDataStore;->readPoiData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0

    .line 307
    .end local v1    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    :cond_0
    goto :goto_0

    .line 308
    :cond_1
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStartPosition(Lorg/mapsforge/core/model/LatLong;)V
    .locals 0
    .param p1, "startPosition"    # Lorg/mapsforge/core/model/LatLong;

    .line 335
    iput-object p1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->startPosition:Lorg/mapsforge/core/model/LatLong;

    .line 336
    return-void
.end method

.method public setStartZoomLevel(B)V
    .locals 0
    .param p1, "startZoomLevel"    # B

    .line 339
    iput-byte p1, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->startZoomLevel:B

    .line 340
    return-void
.end method

.method public startPosition()Lorg/mapsforge/core/model/LatLong;
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->startPosition:Lorg/mapsforge/core/model/LatLong;

    if-eqz v0, :cond_0

    .line 345
    return-object v0

    .line 347
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v0}, Lorg/mapsforge/core/model/BoundingBox;->getCenterPoint()Lorg/mapsforge/core/model/LatLong;

    move-result-object v0

    return-object v0

    .line 350
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public startZoomLevel()Ljava/lang/Byte;
    .locals 1

    .line 355
    iget-byte v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->startZoomLevel:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public supportsTile(Lorg/mapsforge/core/model/Tile;)Z
    .locals 3
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 360
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MultiMapDataStore;->mapDatabases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/datastore/MapDataStore;

    .line 361
    .local v1, "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    invoke-virtual {v1, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    const/4 v0, 0x1

    return v0

    .line 364
    .end local v1    # "mdb":Lorg/mapsforge/map/datastore/MapDataStore;
    :cond_0
    goto :goto_0

    .line 365
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
