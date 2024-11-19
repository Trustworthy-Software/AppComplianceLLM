.class public Lorg/mapsforge/map/layer/cache/InMemoryTileCache;
.super Ljava/lang/Object;
.source "InMemoryTileCache.java"

# interfaces
.implements Lorg/mapsforge/map/layer/cache/TileCache;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private lruCache:Lorg/mapsforge/map/layer/cache/BitmapLRUCache;

.field private observable:Lorg/mapsforge/map/model/common/Observable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/mapsforge/map/layer/cache/BitmapLRUCache;

    invoke-direct {v0, p1}, Lorg/mapsforge/map/layer/cache/BitmapLRUCache;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/BitmapLRUCache;

    .line 43
    new-instance v0, Lorg/mapsforge/map/model/common/Observable;

    invoke-direct {v0}, Lorg/mapsforge/map/model/common/Observable;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->observable:Lorg/mapsforge/map/model/common/Observable;

    .line 44
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/mapsforge/map/model/common/Observer;)V
    .locals 1
    .param p1, "observer"    # Lorg/mapsforge/map/model/common/Observer;

    .line 128
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->observable:Lorg/mapsforge/map/model/common/Observable;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/model/common/Observable;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 129
    return-void
.end method

.method public declared-synchronized containsKey(Lorg/mapsforge/map/layer/queue/Job;)Z
    .locals 1
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/BitmapLRUCache;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/layer/cache/BitmapLRUCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 48
    .end local p0    # "this":Lorg/mapsforge/map/layer/cache/InMemoryTileCache;
    .end local p1    # "key":Lorg/mapsforge/map/layer/queue/Job;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->purge()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 52
    .end local p0    # "this":Lorg/mapsforge/map/layer/cache/InMemoryTileCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;
    .locals 1
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/BitmapLRUCache;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/layer/cache/BitmapLRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/TileBitmap;

    .line 59
    .local v0, "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/TileBitmap;->incrementRefCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local p0    # "this":Lorg/mapsforge/map/layer/cache/InMemoryTileCache;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 57
    .end local v0    # "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    .end local p1    # "key":Lorg/mapsforge/map/layer/queue/Job;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCapacity()I
    .locals 1

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/BitmapLRUCache;

    iget v0, v0, Lorg/mapsforge/map/layer/cache/BitmapLRUCache;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 67
    .end local p0    # "this":Lorg/mapsforge/map/layer/cache/InMemoryTileCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCapacityFirstLevel()I
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->getCapacity()I

    move-result v0

    return v0
.end method

.method public getImmediately(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;
    .locals 1
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;

    .line 77
    invoke-virtual {p0, p1}, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->get(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v0

    return-object v0
.end method

.method public purge()V
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/BitmapLRUCache;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/cache/BitmapLRUCache;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/core/graphics/TileBitmap;

    .line 83
    .local v1, "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    invoke-interface {v1}, Lorg/mapsforge/core/graphics/TileBitmap;->decrementRefCount()V

    .line 84
    .end local v1    # "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/BitmapLRUCache;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/cache/BitmapLRUCache;->clear()V

    .line 86
    return-void
.end method

.method public declared-synchronized put(Lorg/mapsforge/map/layer/queue/Job;Lorg/mapsforge/core/graphics/TileBitmap;)V
    .locals 4
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;
    .param p2, "bitmap"    # Lorg/mapsforge/core/graphics/TileBitmap;

    monitor-enter p0

    .line 90
    if-eqz p1, :cond_3

    .line 92
    if-eqz p2, :cond_2

    .line 96
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/BitmapLRUCache;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/layer/cache/BitmapLRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/TileBitmap;

    .line 97
    .local v0, "old":Lorg/mapsforge/core/graphics/TileBitmap;
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/TileBitmap;->decrementRefCount()V

    .line 101
    .end local p0    # "this":Lorg/mapsforge/map/layer/cache/InMemoryTileCache;
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/BitmapLRUCache;

    invoke-virtual {v1, p1, p2}, Lorg/mapsforge/map/layer/cache/BitmapLRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    sget-object v1, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "overwriting cached entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 104
    :cond_1
    invoke-interface {p2}, Lorg/mapsforge/core/graphics/TileBitmap;->incrementRefCount()V

    .line 105
    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->observable:Lorg/mapsforge/map/model/common/Observable;

    invoke-virtual {v1}, Lorg/mapsforge/map/model/common/Observable;->notifyObservers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 93
    .end local v0    # "old":Lorg/mapsforge/core/graphics/TileBitmap;
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .end local p1    # "key":Lorg/mapsforge/map/layer/queue/Job;
    .end local p2    # "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeObserver(Lorg/mapsforge/map/model/common/Observer;)V
    .locals 1
    .param p1, "observer"    # Lorg/mapsforge/map/model/common/Observer;

    .line 133
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->observable:Lorg/mapsforge/map/model/common/Observable;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/model/common/Observable;->removeObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 134
    return-void
.end method

.method public declared-synchronized setCapacity(I)V
    .locals 2
    .param p1, "capacity"    # I

    monitor-enter p0

    .line 116
    :try_start_0
    new-instance v0, Lorg/mapsforge/map/layer/cache/BitmapLRUCache;

    invoke-direct {v0, p1}, Lorg/mapsforge/map/layer/cache/BitmapLRUCache;-><init>(I)V

    .line 117
    .local v0, "lruCacheNew":Lorg/mapsforge/map/layer/cache/BitmapLRUCache;
    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/BitmapLRUCache;

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/layer/cache/BitmapLRUCache;->putAll(Ljava/util/Map;)V

    .line 118
    iput-object v0, p0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/BitmapLRUCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 115
    .end local v0    # "lruCacheNew":Lorg/mapsforge/map/layer/cache/BitmapLRUCache;
    .end local p0    # "this":Lorg/mapsforge/map/layer/cache/InMemoryTileCache;
    .end local p1    # "capacity":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setWorkingSet(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/mapsforge/map/layer/queue/Job;",
            ">;)V"
        }
    .end annotation

    .local p1, "jobs":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/map/layer/queue/Job;>;"
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/BitmapLRUCache;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/layer/cache/BitmapLRUCache;->setWorkingSet(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 122
    .end local p0    # "this":Lorg/mapsforge/map/layer/cache/InMemoryTileCache;
    .end local p1    # "jobs":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/map/layer/queue/Job;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
