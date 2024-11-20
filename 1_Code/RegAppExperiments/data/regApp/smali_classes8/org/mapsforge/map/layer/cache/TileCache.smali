.class public interface abstract Lorg/mapsforge/map/layer/cache/TileCache;
.super Ljava/lang/Object;
.source "TileCache.java"

# interfaces
.implements Lorg/mapsforge/map/model/common/ObservableInterface;


# virtual methods
.method public abstract containsKey(Lorg/mapsforge/map/layer/queue/Job;)Z
.end method

.method public abstract destroy()V
.end method

.method public abstract get(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;
.end method

.method public abstract getCapacity()I
.end method

.method public abstract getCapacityFirstLevel()I
.end method

.method public abstract getImmediately(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;
.end method

.method public abstract purge()V
.end method

.method public abstract put(Lorg/mapsforge/map/layer/queue/Job;Lorg/mapsforge/core/graphics/TileBitmap;)V
.end method

.method public abstract setWorkingSet(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/mapsforge/map/layer/queue/Job;",
            ">;)V"
        }
    .end annotation
.end method
