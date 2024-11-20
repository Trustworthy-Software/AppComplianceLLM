.class public Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;
.super Ljava/lang/Object;
.source "TwoLevelTileCache.java"

# interfaces
.implements Lorg/mapsforge/map/layer/cache/TileCache;


# instance fields
.field private final firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

.field private final secondLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

.field private final workingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/mapsforge/map/layer/queue/Job;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/layer/cache/TileCache;)V
    .locals 1
    .param p1, "firstLevelTileCache"    # Lorg/mapsforge/map/layer/cache/TileCache;
    .param p2, "secondLevelTileCache"    # Lorg/mapsforge/map/layer/cache/TileCache;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    .line 34
    iput-object p2, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->secondLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->workingSet:Ljava/util/Set;

    .line 36
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/mapsforge/map/model/common/Observer;)V
    .locals 1
    .param p1, "observer"    # Lorg/mapsforge/map/model/common/Observer;

    .line 112
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0, p1}, Lorg/mapsforge/map/layer/cache/TileCache;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 113
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->secondLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0, p1}, Lorg/mapsforge/map/layer/cache/TileCache;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 114
    return-void
.end method

.method public containsKey(Lorg/mapsforge/map/layer/queue/Job;)Z
    .locals 1
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;

    .line 40
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0, p1}, Lorg/mapsforge/map/layer/cache/TileCache;->containsKey(Lorg/mapsforge/map/layer/queue/Job;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->secondLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0, p1}, Lorg/mapsforge/map/layer/cache/TileCache;->containsKey(Lorg/mapsforge/map/layer/queue/Job;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public destroy()V
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0}, Lorg/mapsforge/map/layer/cache/TileCache;->destroy()V

    .line 46
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->secondLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0}, Lorg/mapsforge/map/layer/cache/TileCache;->destroy()V

    .line 47
    return-void
.end method

.method public get(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;
    .locals 2
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;

    .line 51
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0, p1}, Lorg/mapsforge/map/layer/cache/TileCache;->get(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v0

    .line 52
    .local v0, "returnBitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    if-eqz v0, :cond_0

    .line 53
    return-object v0

    .line 55
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->secondLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v1, p1}, Lorg/mapsforge/map/layer/cache/TileCache;->get(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v1, p1, v0}, Lorg/mapsforge/map/layer/cache/TileCache;->put(Lorg/mapsforge/map/layer/queue/Job;Lorg/mapsforge/core/graphics/TileBitmap;)V

    .line 58
    return-object v0

    .line 60
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCapacity()I
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0}, Lorg/mapsforge/map/layer/cache/TileCache;->getCapacity()I

    move-result v0

    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->secondLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v1}, Lorg/mapsforge/map/layer/cache/TileCache;->getCapacity()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getCapacityFirstLevel()I
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0}, Lorg/mapsforge/map/layer/cache/TileCache;->getCapacity()I

    move-result v0

    return v0
.end method

.method public getImmediately(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;
    .locals 1
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;

    .line 75
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0, p1}, Lorg/mapsforge/map/layer/cache/TileCache;->get(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v0

    return-object v0
.end method

.method public purge()V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0}, Lorg/mapsforge/map/layer/cache/TileCache;->purge()V

    .line 81
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->secondLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0}, Lorg/mapsforge/map/layer/cache/TileCache;->purge()V

    .line 82
    return-void
.end method

.method public put(Lorg/mapsforge/map/layer/queue/Job;Lorg/mapsforge/core/graphics/TileBitmap;)V
    .locals 1
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;
    .param p2, "bitmap"    # Lorg/mapsforge/core/graphics/TileBitmap;

    .line 86
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->workingSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0, p1, p2}, Lorg/mapsforge/map/layer/cache/TileCache;->put(Lorg/mapsforge/map/layer/queue/Job;Lorg/mapsforge/core/graphics/TileBitmap;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->secondLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0, p1, p2}, Lorg/mapsforge/map/layer/cache/TileCache;->put(Lorg/mapsforge/map/layer/queue/Job;Lorg/mapsforge/core/graphics/TileBitmap;)V

    .line 90
    return-void
.end method

.method public removeObserver(Lorg/mapsforge/map/model/common/Observer;)V
    .locals 1
    .param p1, "observer"    # Lorg/mapsforge/map/model/common/Observer;

    .line 118
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->secondLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0, p1}, Lorg/mapsforge/map/layer/cache/TileCache;->removeObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 119
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0, p1}, Lorg/mapsforge/map/layer/cache/TileCache;->removeObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 120
    return-void
.end method

.method public setWorkingSet(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/mapsforge/map/layer/queue/Job;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p1, "newWorkingSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/map/layer/queue/Job;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->workingSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 95
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->workingSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 96
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->workingSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Lorg/mapsforge/map/layer/cache/TileCache;->setWorkingSet(Ljava/util/Set;)V

    .line 97
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->secondLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->workingSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Lorg/mapsforge/map/layer/cache/TileCache;->setWorkingSet(Ljava/util/Set;)V

    .line 98
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->workingSet:Ljava/util/Set;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->workingSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/layer/queue/Job;

    .line 100
    .local v2, "job":Lorg/mapsforge/map/layer/queue/Job;
    iget-object v3, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v3, v2}, Lorg/mapsforge/map/layer/cache/TileCache;->containsKey(Lorg/mapsforge/map/layer/queue/Job;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->secondLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v3, v2}, Lorg/mapsforge/map/layer/cache/TileCache;->containsKey(Lorg/mapsforge/map/layer/queue/Job;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->secondLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v3, v2}, Lorg/mapsforge/map/layer/cache/TileCache;->get(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v3

    .line 102
    .local v3, "tileBitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    if-eqz v3, :cond_0

    .line 103
    iget-object v4, p0, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;->firstLevelTileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v4, v2, v3}, Lorg/mapsforge/map/layer/cache/TileCache;->put(Lorg/mapsforge/map/layer/queue/Job;Lorg/mapsforge/core/graphics/TileBitmap;)V

    .line 106
    .end local v2    # "job":Lorg/mapsforge/map/layer/queue/Job;
    .end local v3    # "tileBitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    :cond_0
    goto :goto_0

    .line 107
    :cond_1
    monitor-exit v0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
