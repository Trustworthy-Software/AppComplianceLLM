.class public abstract Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;
.super Ljava/lang/Object;
.source "LatchedLazyFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$DummyExecutionException;
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
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TX;"
        }
    .end annotation
.end field

.field private final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ExecutionException;",
            ">;"
        }
    .end annotation
.end field

.field private volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$DummyExecutionException;

    const-string v1, "started"

    invoke-direct {v0, v1}, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$DummyExecutionException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->STARTED:Ljava/util/concurrent/ExecutionException;

    .line 51
    new-instance v0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$DummyExecutionException;

    const-string v1, "cancelled"

    invoke-direct {v0, v1}, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$DummyExecutionException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->CANCELLED:Ljava/util/concurrent/ExecutionException;

    .line 52
    new-instance v0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$DummyExecutionException;

    const-string v1, "done"

    invoke-direct {v0, v1}, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$DummyExecutionException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->DONE:Ljava/util/concurrent/ExecutionException;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    .local p0, "this":Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;, "Lorg/mapsforge/map/layer/hills/LatchedLazyFuture<TX;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static synthetic access$000(Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;)V
    .locals 0
    .param p0, "x0"    # Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->internalCalc()V

    return-void
.end method

.method private internalCalc()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;, "Lorg/mapsforge/map/layer/hills/LatchedLazyFuture<TX;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->thread:Ljava/lang/Thread;

    .line 119
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->calculate()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->result:Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->STARTED:Ljava/util/concurrent/ExecutionException;

    sget-object v3, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->DONE:Ljava/util/concurrent/ExecutionException;

    invoke-static {v1, v2, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_1
    iget-object v2, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->STARTED:Ljava/util/concurrent/ExecutionException;

    invoke-static {v2, v3, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    nop

    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_0
    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->thread:Ljava/lang/Thread;

    .line 127
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 128
    goto :goto_1

    .line 121
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v2, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->STARTED:Ljava/util/concurrent/ExecutionException;

    new-instance v4, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v4, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2, v3, v4}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    nop

    .end local v1    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 129
    :goto_1
    return-void

    .line 126
    :goto_2
    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->thread:Ljava/lang/Thread;

    .line 127
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 128
    throw v1
.end method

.method private throwIfException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;, "Lorg/mapsforge/map/layer/hills/LatchedLazyFuture<TX;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutionException;

    .line 101
    .local v0, "executionException":Ljava/util/concurrent/ExecutionException;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$DummyExecutionException;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    throw v0

    .line 103
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
    .locals 5
    .param p1, "mayInterruptIfRunning"    # Z

    .line 65
    .local p0, "this":Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;, "Lorg/mapsforge/map/layer/hills/LatchedLazyFuture<TX;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->CANCELLED:Ljava/util/concurrent/ExecutionException;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->DONE:Ljava/util/concurrent/ExecutionException;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    return v0

    .line 67
    :cond_1
    if-eqz p1, :cond_2

    .line 68
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->thread:Ljava/lang/Thread;

    .line 69
    .local v0, "t":Ljava/lang/Thread;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->STARTED:Ljava/util/concurrent/ExecutionException;

    invoke-static {v3, v4, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 71
    return v2

    .line 74
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_2
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 3
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

    .line 90
    .local p0, "this":Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;, "Lorg/mapsforge/map/layer/hills/LatchedLazyFuture<TX;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    sget-object v2, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->STARTED:Ljava/util/concurrent/ExecutionException;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->internalCalc()V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 95
    :goto_0
    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->throwIfException()V

    .line 96
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
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

    .line 107
    .local p0, "this":Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;, "Lorg/mapsforge/map/layer/hills/LatchedLazyFuture<TX;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    sget-object v2, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->STARTED:Ljava/util/concurrent/ExecutionException;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->internalCalc()V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 112
    :goto_0
    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->throwIfException()V

    .line 113
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 79
    .local p0, "this":Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;, "Lorg/mapsforge/map/layer/hills/LatchedLazyFuture<TX;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->CANCELLED:Ljava/util/concurrent/ExecutionException;

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

    .line 84
    .local p0, "this":Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;, "Lorg/mapsforge/map/layer/hills/LatchedLazyFuture<TX;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutionException;

    .line 85
    .local v0, "state":Ljava/util/concurrent/ExecutionException;
    if-eqz v0, :cond_0

    sget-object v1, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->STARTED:Ljava/util/concurrent/ExecutionException;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public withRunningThread()Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mapsforge/map/layer/hills/LatchedLazyFuture<",
            "TX;>;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;, "Lorg/mapsforge/map/layer/hills/LatchedLazyFuture<TX;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->DONE:Ljava/util/concurrent/ExecutionException;

    if-ne v0, v1, :cond_0

    return-object p0

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->state:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    sget-object v2, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->STARTED:Ljava/util/concurrent/ExecutionException;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    new-instance v0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$1;

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

    invoke-direct {v0, p0, v1}, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$1;-><init>(Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;Ljava/lang/String;)V

    .line 151
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    return-object p0

    .line 155
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_1
    return-object p0
.end method
