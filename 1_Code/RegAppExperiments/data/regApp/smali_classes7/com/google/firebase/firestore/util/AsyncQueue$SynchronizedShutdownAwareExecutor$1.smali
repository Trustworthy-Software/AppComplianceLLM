.class Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$1;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "AsyncQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;-><init>(Lcom/google/firebase/firestore/util/AsyncQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;

.field final synthetic val$this$0:Lcom/google/firebase/firestore/util/AsyncQueue;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;ILjava/util/concurrent/ThreadFactory;Lcom/google/firebase/firestore/util/AsyncQueue;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;
    .param p2, "corePoolSize"    # I
    .param p3, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 258
    iput-object p1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$1;->this$1:Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;

    iput-object p4, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$1;->val$this$0:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 261
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 262
    if-nez p2, :cond_1

    instance-of v0, p1, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 263
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/Future;

    .line 266
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 271
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 272
    .local v1, "ee":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 275
    .end local v1    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 269
    :catch_2
    move-exception v1

    goto :goto_0

    .line 277
    .end local v0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 278
    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$1;->this$1:Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;

    iget-object v0, v0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->this$0:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/util/AsyncQueue;->panic(Ljava/lang/Throwable;)V

    .line 280
    :cond_2
    return-void
.end method
