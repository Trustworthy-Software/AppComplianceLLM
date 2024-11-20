.class Lorg/mapsforge/map/layer/hills/HgtCache$Lru;
.super Ljava/lang/Object;
.source "HgtCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/layer/hills/HgtCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Lru"
.end annotation


# instance fields
.field private final lru:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/util/concurrent/Future<",
            "Lorg/mapsforge/core/graphics/HillshadingBitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private size:I

.field final synthetic this$0:Lorg/mapsforge/map/layer/hills/HgtCache;


# direct methods
.method constructor <init>(Lorg/mapsforge/map/layer/hills/HgtCache;I)V
    .locals 1
    .param p1, "this$0"    # Lorg/mapsforge/map/layer/hills/HgtCache;
    .param p2, "size"    # I

    .line 104
    iput-object p1, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->size:I

    .line 106
    if-lez p2, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->lru:Ljava/util/LinkedHashSet;

    .line 107
    return-void
.end method


# virtual methods
.method evict(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lorg/mapsforge/core/graphics/HillshadingBitmap;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p1, "loadingFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    iget v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->size:I

    if-lez v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->lru:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->lru:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 136
    :cond_0
    :goto_0
    return-void
.end method

.method public getSize()I
    .locals 1

    .line 85
    iget v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->size:I

    return v0
.end method

.method markUsed(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lorg/mapsforge/core/graphics/HillshadingBitmap;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/mapsforge/core/graphics/HillshadingBitmap;",
            ">;"
        }
    .end annotation

    .line 114
    .local p1, "freshlyUsed":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    iget v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->size:I

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    .line 115
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->lru:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->lru:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->lru:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->lru:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    iget v2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->size:I

    if-le v1, v2, :cond_0

    .line 119
    iget-object v1, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->lru:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 120
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 121
    .local v2, "evicted":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 122
    monitor-exit v0

    return-object v2

    .line 124
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;>;"
    .end local v2    # "evicted":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 127
    :cond_1
    return-object p1
.end method

.method public setSize(I)V
    .locals 3
    .param p1, "size"    # I

    .line 90
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->size:I

    .line 92
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->lru:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->lru:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->lru:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 94
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;>;"
    :goto_0
    iget-object v2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$Lru;->lru:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 96
    .local v2, "evicted":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 97
    .end local v2    # "evicted":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;"
    goto :goto_0

    .line 98
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<Lorg/mapsforge/core/graphics/HillshadingBitmap;>;>;"
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 99
    :cond_1
    :goto_1
    return-void
.end method
