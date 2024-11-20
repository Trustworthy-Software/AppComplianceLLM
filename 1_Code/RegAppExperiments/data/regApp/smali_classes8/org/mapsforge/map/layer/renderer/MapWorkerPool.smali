.class public Lorg/mapsforge/map/layer/renderer/MapWorkerPool;
.super Ljava/lang/Object;
.source "MapWorkerPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;
    }
.end annotation


# static fields
.field public static DEBUG_TIMING:Z

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final concurrentJobs:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final databaseRenderer:Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;

.field private inShutdown:Z

.field private isRunning:Z

.field private final jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapsforge/map/layer/queue/JobQueue<",
            "Lorg/mapsforge/map/layer/renderer/RendererJob;",
            ">;"
        }
    .end annotation
.end field

.field private final layer:Lorg/mapsforge/map/layer/Layer;

.field private self:Ljava/util/concurrent/ExecutorService;

.field private final tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

.field private final totalExecutions:Ljava/util/concurrent/atomic/AtomicLong;

.field private final totalTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private workers:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->LOGGER:Ljava/util/logging/Logger;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->DEBUG_TIMING:Z

    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/layer/queue/JobQueue;Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;Lorg/mapsforge/map/layer/Layer;)V
    .locals 1
    .param p1, "tileCache"    # Lorg/mapsforge/map/layer/cache/TileCache;
    .param p3, "databaseRenderer"    # Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;
    .param p4, "layer"    # Lorg/mapsforge/map/layer/Layer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/map/layer/cache/TileCache;",
            "Lorg/mapsforge/map/layer/queue/JobQueue<",
            "Lorg/mapsforge/map/layer/renderer/RendererJob;",
            ">;",
            "Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;",
            "Lorg/mapsforge/map/layer/Layer;",
            ")V"
        }
    .end annotation

    .line 52
    .local p2, "jobQueue":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<Lorg/mapsforge/map/layer/renderer/RendererJob;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->concurrentJobs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->totalExecutions:Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->totalTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    iput-object p1, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    .line 54
    iput-object p2, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    .line 55
    iput-object p3, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->databaseRenderer:Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;

    .line 56
    iput-object p4, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->layer:Lorg/mapsforge/map/layer/Layer;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->inShutdown:Z

    .line 58
    iput-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->isRunning:Z

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Z
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    .line 35
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->inShutdown:Z

    return v0
.end method

.method static synthetic access$100(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    .line 35
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->concurrentJobs:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .line 35
    sget-object v0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    .line 35
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->databaseRenderer:Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;

    return-object v0
.end method

.method static synthetic access$400(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Lorg/mapsforge/map/layer/cache/TileCache;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    .line 35
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    return-object v0
.end method

.method static synthetic access$500(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Lorg/mapsforge/map/layer/Layer;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    .line 35
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->layer:Lorg/mapsforge/map/layer/Layer;

    return-object v0
.end method

.method static synthetic access$600(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    .line 35
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->totalExecutions:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$700(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    .line 35
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->totalTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$800(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;)Lorg/mapsforge/map/layer/queue/JobQueue;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    .line 35
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 64
    nop

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->inShutdown:Z

    if-nez v0, :cond_3

    .line 65
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    sget v1, Lorg/mapsforge/core/util/Parameters;->NUMBER_OF_THREADS:I

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/layer/queue/JobQueue;->get(I)Lorg/mapsforge/map/layer/queue/Job;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/layer/renderer/RendererJob;

    .line 66
    .local v0, "rendererJob":Lorg/mapsforge/map/layer/renderer/RendererJob;
    if-nez v0, :cond_0

    .line 67
    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v1, v0}, Lorg/mapsforge/map/layer/cache/TileCache;->containsKey(Lorg/mapsforge/map/layer/queue/Job;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/mapsforge/map/layer/renderer/RendererJob;->labelsOnly:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    iget-object v1, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    invoke-virtual {v1, v0}, Lorg/mapsforge/map/layer/queue/JobQueue;->remove(Lorg/mapsforge/map/layer/queue/Job;)V

    goto :goto_2

    .line 70
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->workers:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;

    invoke-direct {v2, p0, v0}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool$MapWorker;-><init>(Lorg/mapsforge/map/layer/renderer/MapWorkerPool;Lorg/mapsforge/map/layer/renderer/RendererJob;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0    # "rendererJob":Lorg/mapsforge/map/layer/renderer/RendererJob;
    :goto_2
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v1, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "MapWorkerPool rejected"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 75
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catch_1
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "MapWorkerPool interrupted"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    nop

    .line 80
    :goto_3
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 84
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->inShutdown:Z

    .line 87
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->self:Ljava/util/concurrent/ExecutorService;

    .line 88
    sget v0, Lorg/mapsforge/core/util/Parameters;->NUMBER_OF_THREADS:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->workers:Ljava/util/concurrent/ExecutorService;

    .line 89
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->self:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->isRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 82
    .end local p0    # "this":Lorg/mapsforge/map/layer/renderer/MapWorkerPool;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 6

    monitor-enter p0

    .line 94
    :try_start_0
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 95
    monitor-exit p0

    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->inShutdown:Z

    .line 98
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/queue/JobQueue;->interrupt()V

    .line 101
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->self:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 102
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->workers:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    const-wide/16 v0, 0x64

    :try_start_2
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->self:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->self:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 107
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->self:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    sget-object v2, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->LOGGER:Ljava/util/logging/Logger;

    const-string v3, "Shutdown self executor failed"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .end local p0    # "this":Lorg/mapsforge/map/layer/renderer/MapWorkerPool;
    :cond_1
    goto :goto_0

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v3, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Shutdown self executor interrupted"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    :try_start_4
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->workers:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 117
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->workers:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 118
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->workers:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    sget-object v0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Shutdown workers executor failed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    :cond_2
    goto :goto_1

    .line 122
    :catch_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    sget-object v1, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Shutdown workers executor interrupted"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->isRunning:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
