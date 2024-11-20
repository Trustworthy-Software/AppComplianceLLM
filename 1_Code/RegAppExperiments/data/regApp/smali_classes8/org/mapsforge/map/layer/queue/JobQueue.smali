.class public Lorg/mapsforge/map/layer/queue/JobQueue;
.super Ljava/lang/Object;
.source "JobQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/mapsforge/map/layer/queue/Job;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final QUEUE_CAPACITY:I = 0x80


# instance fields
.field private final assignedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final displayModel:Lorg/mapsforge/map/model/DisplayModel;

.field private isInterrupted:Z

.field private final mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

.field private final queueItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/map/layer/queue/QueueItem<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private scheduleNeeded:Z


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/map/model/DisplayModel;)V
    .locals 1
    .param p1, "mapViewPosition"    # Lorg/mapsforge/map/model/IMapViewPosition;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 36
    .local p0, "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->assignedJobs:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->queueItems:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    .line 38
    iput-object p2, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 39
    return-void
.end method

.method private schedule(I)V
    .locals 2
    .param p1, "tileSize"    # I

    .line 101
    .local p0, "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->queueItems:Ljava/util/List;

    iget-object v1, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v1}, Lorg/mapsforge/map/model/IMapViewPosition;->getMapPosition()Lorg/mapsforge/core/model/MapPosition;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/mapsforge/map/layer/queue/QueueItemScheduler;->schedule(Ljava/util/Collection;Lorg/mapsforge/core/model/MapPosition;I)V

    .line 102
    iget-object v0, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->queueItems:Ljava/util/List;

    sget-object v1, Lorg/mapsforge/map/layer/queue/QueueItemComparator;->INSTANCE:Lorg/mapsforge/map/layer/queue/QueueItemComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 103
    invoke-direct {p0}, Lorg/mapsforge/map/layer/queue/JobQueue;->trimToSize()V

    .line 104
    return-void
.end method

.method private trimToSize()V
    .locals 2

    .line 114
    .local p0, "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->queueItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 116
    .local v0, "queueSize":I
    :goto_0
    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->queueItems:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lorg/mapsforge/map/layer/queue/Job;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .local p0, "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    .local p1, "job":Lorg/mapsforge/map/layer/queue/Job;, "TT;"
    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->assignedJobs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lorg/mapsforge/map/layer/queue/QueueItem;

    invoke-direct {v0, p1}, Lorg/mapsforge/map/layer/queue/QueueItem;-><init>(Lorg/mapsforge/map/layer/queue/Job;)V

    .line 44
    .local v0, "queueItem":Lorg/mapsforge/map/layer/queue/QueueItem;, "Lorg/mapsforge/map/layer/queue/QueueItem<TT;>;"
    iget-object v1, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->queueItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    iget-object v1, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->queueItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->scheduleNeeded:Z

    .line 47
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/queue/JobQueue;->notifyWorkers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v0    # "queueItem":Lorg/mapsforge/map/layer/queue/QueueItem;, "Lorg/mapsforge/map/layer/queue/QueueItem<TT;>;"
    .end local p0    # "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 41
    .end local p1    # "job":Lorg/mapsforge/map/layer/queue/Job;, "TT;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get()Lorg/mapsforge/map/layer/queue/Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .local p0, "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    monitor-enter p0

    .line 56
    const v0, 0x7fffffff

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mapsforge/map/layer/queue/JobQueue;->get(I)Lorg/mapsforge/map/layer/queue/Job;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 56
    .end local p0    # "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(I)Lorg/mapsforge/map/layer/queue/Job;
    .locals 4
    .param p1, "maxAssigned"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .local p0, "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    monitor-enter p0

    .line 68
    nop

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->queueItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->assignedJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->scheduleNeeded:Z

    if-eqz v0, :cond_2

    .line 77
    iput-boolean v1, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->scheduleNeeded:Z

    .line 78
    iget-object v0, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mapsforge/map/layer/queue/JobQueue;->schedule(I)V

    .line 81
    .end local p0    # "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    :cond_2
    iget-object v0, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->queueItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/layer/queue/QueueItem;

    iget-object v0, v0, Lorg/mapsforge/map/layer/queue/QueueItem;->object:Lorg/mapsforge/map/layer/queue/Job;

    .line 82
    .local v0, "job":Lorg/mapsforge/map/layer/queue/Job;, "TT;"
    iget-object v1, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->assignedJobs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-object v0

    .line 69
    .end local v0    # "job":Lorg/mapsforge/map/layer/queue/Job;, "TT;"
    :cond_3
    :goto_0
    const-wide/16 v2, 0xc8

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 70
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->isInterrupted:Z

    if-eqz v0, :cond_0

    .line 71
    iput-boolean v1, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->isInterrupted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 67
    .end local p1    # "maxAssigned":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized interrupt()V
    .locals 1

    .local p0, "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    monitor-enter p0

    .line 87
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->isInterrupted:Z

    .line 88
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/queue/JobQueue;->notifyWorkers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 86
    .end local p0    # "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyWorkers()V
    .locals 1

    .local p0, "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    monitor-enter p0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 91
    .end local p0    # "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lorg/mapsforge/map/layer/queue/Job;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .local p0, "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    .local p1, "job":Lorg/mapsforge/map/layer/queue/Job;, "TT;"
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->assignedJobs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/queue/JobQueue;->notifyWorkers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 95
    .end local p0    # "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    .end local p1    # "job":Lorg/mapsforge/map/layer/queue/Job;, "TT;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    .local p0, "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/queue/JobQueue;->queueItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 110
    .end local p0    # "this":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
