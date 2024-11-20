.class public Lorg/mapsforge/core/util/WorkingSetCache;
.super Lorg/mapsforge/core/util/LRUCache;
.source "WorkingSetCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapsforge/core/util/LRUCache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 31
    .local p0, "this":Lorg/mapsforge/core/util/WorkingSetCache;, "Lorg/mapsforge/core/util/WorkingSetCache<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/mapsforge/core/util/LRUCache;-><init>(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public setWorkingSet(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TK;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/mapsforge/core/util/WorkingSetCache;, "Lorg/mapsforge/core/util/WorkingSetCache<TK;TV;>;"
    .local p1, "workingSet":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    monitor-enter p1

    .line 42
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 43
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lorg/mapsforge/core/util/WorkingSetCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    nop

    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 45
    :cond_0
    monitor-exit p1

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
