.class public abstract Lorg/mapsforge/map/layer/hills/SyncLazyFuture;
.super Ljava/lang/Object;
.source "SyncLazyFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/layer/hills/SyncLazyFuture$DummyExecutionException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TX;>;"
    }
.end annotation


# static fields
.field private static final CANCELLED:Ljava/util/concurrent/ExecutionException;

.field private static final DONE:Ljava/util/concurrent/ExecutionException;

.field private static final STARTED:Ljava/util/concurrent/ExecutionException;


# instance fields
.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TX;"
        }
    .end annotation
.end field

.field private volatile state:Ljava/util/concurrent/ExecutionException;

.field private volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture$DummyExecutionException;

    const-string v1, "started"

    invoke-direct {v0, v1}, Lorg/mapsforge/map/layer/hills/SyncLazyFuture$DummyExecutionException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->STARTED:Ljava/util/concurrent/ExecutionException;

    .line 51
    new-instance v0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture$DummyExecutionException;

    const-string v1, "cancelled"

    invoke-direct {v0, v1}, Lorg/mapsforge/map/layer/hills/SyncLazyFuture$DummyExecutionException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->CANCELLED:Ljava/util/concurrent/ExecutionException;

    .line 52
    new-instance v0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture$DummyExecutionException;

    const-string v1, "done"

    invoke-direct {v0, v1}, Lorg/mapsforge/map/layer/hills/SyncLazyFuture$DummyExecutionException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->DONE:Ljava/util/concurrent/ExecutionException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    .local p0, "this":Lorg/mapsforge/map/layer/hills/SyncLazyFuture;, "Lorg/mapsforge/map/layer/hills/SyncLazyFuture<TX;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;

    return-void
.end method

.method static synthetic access$000(Lorg/mapsforge/map/layer/hills/SyncLazyFuture;)V
    .locals 0
    .param p0, "x0"    # Lorg/mapsforge/map/layer/hills/SyncLazyFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->internalCalc()V

    return-void
.end method

.method private internalCalc()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 126
    .local p0, "this":Lorg/mapsforge/map/layer/hills/SyncLazyFuture;, "Lorg/mapsforge/map/layer/hills/SyncLazyFuture<TX;>;"
    sget-object v0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->STARTED:Ljava/util/concurrent/ExecutionException;

    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;

    .line 128
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->thread:Ljava/lang/Thread;

    .line 129
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->calculate()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->result:Ljava/lang/Object;

    .line 130
    sget-object v1, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->DONE:Ljava/util/concurrent/ExecutionException;

    iput-object v1, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_1
    iput-object v1, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_0
    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->thread:Ljava/lang/Thread;

    .line 137
    goto :goto_1

    .line 131
    :catch_1
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 138
    :goto_1
    return-void

    .line 136
    :goto_2
    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->thread:Ljava/lang/Thread;

    .line 137
    throw v1
.end method

.method private throwIfException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/mapsforge/map/layer/hills/SyncLazyFuture;, "Lorg/mapsforge/map/layer/hills/SyncLazyFuture<TX;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;

    .line 107
    .local v0, "executionException":Ljava/util/concurrent/ExecutionException;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture$DummyExecutionException;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    throw v0

    .line 110
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract calculate()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public cancel(Z)Z
    .locals 6
    .param p1, "mayInterruptIfRunning"    # Z

    .line 66
    .local p0, "this":Lorg/mapsforge/map/layer/hills/SyncLazyFuture;, "Lorg/mapsforge/map/layer/hills/SyncLazyFuture<TX;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;

    sget-object v1, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->CANCELLED:Ljava/util/concurrent/ExecutionException;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;

    sget-object v3, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->DONE:Ljava/util/concurrent/ExecutionException;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    return v4

    .line 68
    :cond_1
    if-eqz p1, :cond_2

    .line 69
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->thread:Ljava/lang/Thread;

    .line 70
    .local v0, "t":Ljava/lang/Thread;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;

    sget-object v5, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->STARTED:Ljava/util/concurrent/ExecutionException;

    if-ne v3, v5, :cond_2

    .line 71
    iput-object v1, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 73
    return v2

    .line 76
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_2
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    move v0, v2

    .line 77
    .local v0, "ret":Z
    iput-object v1, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;

    .line 78
    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/mapsforge/map/layer/hills/SyncLazyFuture;, "Lorg/mapsforge/map/layer/hills/SyncLazyFuture<TX;>;"
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->STARTED:Ljava/util/concurrent/ExecutionException;

    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;

    .line 97
    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->internalCalc()V

    .line 100
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->throwIfException()V

    .line 102
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->result:Ljava/lang/Object;

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/mapsforge/map/layer/hills/SyncLazyFuture;, "Lorg/mapsforge/map/layer/hills/SyncLazyFuture<TX;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 115
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 84
    .local p0, "this":Lorg/mapsforge/map/layer/hills/SyncLazyFuture;, "Lorg/mapsforge/map/layer/hills/SyncLazyFuture<TX;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;

    sget-object v1, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->CANCELLED:Ljava/util/concurrent/ExecutionException;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDone()Z
    .locals 2

    .line 89
    .local p0, "this":Lorg/mapsforge/map/layer/hills/SyncLazyFuture;, "Lorg/mapsforge/map/layer/hills/SyncLazyFuture<TX;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;

    sget-object v1, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->STARTED:Ljava/util/concurrent/ExecutionException;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public withRunningThread()Lorg/mapsforge/map/layer/hills/SyncLazyFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mapsforge/map/layer/hills/SyncLazyFuture<",
            "TX;>;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/mapsforge/map/layer/hills/SyncLazyFuture;, "Lorg/mapsforge/map/layer/hills/SyncLazyFuture<TX;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture;->state:Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    return-object p0

    .line 149
    :cond_0
    new-instance v0, Lorg/mapsforge/map/layer/hills/SyncLazyFuture$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".withRunningThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/mapsforge/map/layer/hills/SyncLazyFuture$1;-><init>(Lorg/mapsforge/map/layer/hills/SyncLazyFuture;Ljava/lang/String;)V

    .line 159
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 160
    return-object p0
.end method
