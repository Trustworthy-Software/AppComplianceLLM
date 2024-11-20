.class Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$DelayedStartFactory;
.super Ljava/lang/Object;
.source "AsyncQueue.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedStartFactory"
.end annotation


# instance fields
.field private delegate:Ljava/lang/Runnable;

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$1:Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;)V
    .locals 1

    .line 224
    iput-object p1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$DelayedStartFactory;->this$1:Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$DelayedStartFactory;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;Lcom/google/firebase/firestore/util/AsyncQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;
    .param p2, "x1"    # Lcom/google/firebase/firestore/util/AsyncQueue$1;

    .line 224
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$DelayedStartFactory;-><init>(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 240
    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$DelayedStartFactory;->delegate:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Only one thread may be created in an AsyncQueue."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iput-object p1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$DelayedStartFactory;->delegate:Ljava/lang/Runnable;

    .line 242
    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$DelayedStartFactory;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 243
    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$DelayedStartFactory;->this$1:Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;

    invoke-static {v0}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->access$300(Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$DelayedStartFactory;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 235
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor$DelayedStartFactory;->delegate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 236
    return-void
.end method
