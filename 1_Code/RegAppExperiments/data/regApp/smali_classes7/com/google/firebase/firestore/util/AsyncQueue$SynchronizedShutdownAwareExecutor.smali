.class Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;
.super Ljava/lang/Object;
.source "AsyncQueue.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/util/AsyncQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynchronizedShutdownAwareExecutor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$DelayedStartFactory;
    }
.end annotation


# instance fields
.field private final internalExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private isShuttingDown:Z

.field final synthetic this$0:Lcom/google/firebase/firestore/util/AsyncQueue;

.field private final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/util/AsyncQueue;)V
    .locals 4

    .line 249
    iput-object p1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->this$0:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$DelayedStartFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$DelayedStartFactory;-><init>(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;Lcom/google/firebase/firestore/util/AsyncQueue$1;)V

    .line 252
    .local v0, "threadFactory":Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$DelayedStartFactory;
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->thread:Ljava/lang/Thread;

    .line 253
    const-string v2, "FirestoreWorker"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 254
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 255
    new-instance v3, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;)V

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 257
    new-instance v1, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$1;

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$1;-><init>(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;ILjava/util/concurrent/ThreadFactory;Lcom/google/firebase/firestore/util/AsyncQueue;)V

    iput-object v1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->internalExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 285
    const-wide/16 v2, 0x3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 287
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->isShuttingDown:Z

    .line 288
    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/util/concurrent/TimeUnit;

    .line 206
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;
    .param p1, "x1"    # I

    .line 206
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->setCorePoolSize(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;

    .line 206
    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;
    .param p1, "x1"    # Ljava/util/concurrent/Callable;

    .line 206
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->executeAndReportResult(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 206
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->executeAndInitiateShutdown(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;

    .line 206
    invoke-direct {p0}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->isShuttingDown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;

    .line 206
    invoke-direct {p0}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->shutdownNow()V

    return-void
.end method

.method private declared-synchronized executeAndInitiateShutdown(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 349
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 351
    .local v0, "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 352
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 356
    .end local v0    # "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    .end local p0    # "this":Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    .line 357
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->executeAndReportResult(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 364
    .local v0, "t":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->isShuttingDown:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    monitor-exit p0

    return-object v0

    .line 348
    .end local v0    # "t":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;"
    .end local p1    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private executeAndReportResult(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 325
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 327
    .local v0, "completionSource":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<TT;>;"
    :try_start_0
    new-instance v1, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    goto :goto_0

    .line 336
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-class v2, Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Refused to enqueue task after panic"

    invoke-static {v2, v4, v3}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    .end local v1    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized isShuttingDown()Z
    .locals 1

    monitor-enter p0

    .line 292
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->isShuttingDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 292
    .end local p0    # "this":Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$executeAndInitiateShutdown$2(Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 359
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$executeAndReportResult$1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/util/concurrent/Callable;)V
    .locals 2
    .param p0, "completionSource"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p1, "task"    # Ljava/util/concurrent/Callable;

    .line 330
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    nop

    .line 335
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 333
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 374
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->isShuttingDown:Z

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->internalExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 377
    .end local p0    # "this":Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 373
    .end local p1    # "command":Ljava/lang/Runnable;
    .end local p2    # "delay":J
    .end local p4    # "unit":Ljava/util/concurrent/TimeUnit;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setCorePoolSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 387
    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->internalExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setCorePoolSize(I)V

    .line 388
    return-void
.end method

.method private shutdownNow()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->internalExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 383
    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 301
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->isShuttingDown:Z

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->internalExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .end local p0    # "this":Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;
    :cond_0
    monitor-exit p0

    return-void

    .line 300
    .end local p1    # "command":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public executeEvenAfterShutdown(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->internalExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-class v1, Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Refused to enqueue task after panic"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method synthetic lambda$new$0$com-google-firebase-firestore-util-AsyncQueue$SynchronizedShutdownAwareExecutor(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "crashingThread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 255
    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->this$0:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/util/AsyncQueue;->panic(Ljava/lang/Throwable;)V

    return-void
.end method
