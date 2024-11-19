.class public Lorg/mapsforge/map/layer/renderer/TileDependencies;
.super Ljava/lang/Object;
.source "TileDependencies.java"


# instance fields
.field overlapData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/mapsforge/core/model/Tile;",
            "Ljava/util/Map<",
            "Lorg/mapsforge/core/model/Tile;",
            "Ljava/util/Set<",
            "Lorg/mapsforge/core/mapelements/MapElementContainer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field tilesInProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/mapsforge/core/model/Tile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->overlapData:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->tilesInProgress:Ljava/util/Set;

    .line 31
    return-void
.end method


# virtual methods
.method addOverlappingElement(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/mapelements/MapElementContainer;)V
    .locals 2
    .param p1, "from"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "to"    # Lorg/mapsforge/core/model/Tile;
    .param p3, "element"    # Lorg/mapsforge/core/mapelements/MapElementContainer;

    .line 42
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->overlapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->overlapData:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->overlapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->overlapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_1
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->overlapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method declared-synchronized addTileInProgress(Lorg/mapsforge/core/model/Tile;)V
    .locals 1
    .param p1, "tileInProgress"    # Lorg/mapsforge/core/model/Tile;

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->tilesInProgress:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 92
    .end local p0    # "this":Lorg/mapsforge/map/layer/renderer/TileDependencies;
    .end local p1    # "tileInProgress":Lorg/mapsforge/core/model/Tile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getOverlappingElements(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Ljava/util/Set;
    .locals 2
    .param p1, "from"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "to"    # Lorg/mapsforge/core/model/Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/core/model/Tile;",
            "Lorg/mapsforge/core/model/Tile;",
            ")",
            "Ljava/util/Set<",
            "Lorg/mapsforge/core/mapelements/MapElementContainer;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->overlapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->overlapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->overlapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method declared-synchronized isTileInProgress(Lorg/mapsforge/core/model/Tile;)Z
    .locals 1
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->tilesInProgress:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 89
    .end local p0    # "this":Lorg/mapsforge/map/layer/renderer/TileDependencies;
    .end local p1    # "tile":Lorg/mapsforge/core/model/Tile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method removeTileData(Lorg/mapsforge/core/model/Tile;)V
    .locals 1
    .param p1, "from"    # Lorg/mapsforge/core/model/Tile;

    .line 72
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->overlapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method removeTileData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)V
    .locals 1
    .param p1, "from"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "to"    # Lorg/mapsforge/core/model/Tile;

    .line 82
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->overlapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->overlapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    return-void
.end method

.method declared-synchronized removeTileInProgress(Lorg/mapsforge/core/model/Tile;)V
    .locals 1
    .param p1, "tileFinished"    # Lorg/mapsforge/core/model/Tile;

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileDependencies;->tilesInProgress:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 96
    .end local p0    # "this":Lorg/mapsforge/map/layer/renderer/TileDependencies;
    .end local p1    # "tileFinished":Lorg/mapsforge/core/model/Tile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
