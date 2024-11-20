.class public Lcom/google/firebase/firestore/util/BackgroundQueue;
.super Ljava/lang/Object;
.source "BackgroundQueue.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private completedTasks:Ljava/util/concurrent/Semaphore;

.field private pendingTaskCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/BackgroundQueue;->completedTasks:Ljava/util/concurrent/Semaphore;

    .line 31
    iput v1, p0, Lcom/google/firebase/firestore/util/BackgroundQueue;->pendingTaskCount:I

    return-void
.end method


# virtual methods
.method public drain()V
    .locals 3

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/util/BackgroundQueue;->completedTasks:Ljava/util/concurrent/Semaphore;

    iget v1, p0, Lcom/google/firebase/firestore/util/BackgroundQueue;->pendingTaskCount:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/util/BackgroundQueue;->pendingTaskCount:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 51
    const-string v1, "Interrupted while waiting for background task"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    .line 53
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 36
    iget v0, p0, Lcom/google/firebase/firestore/util/BackgroundQueue;->pendingTaskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/firestore/util/BackgroundQueue;->pendingTaskCount:I

    .line 37
    sget-object v0, Lcom/google/firebase/firestore/util/Executors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/firestore/util/BackgroundQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/util/BackgroundQueue$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method synthetic lambda$execute$0$com-google-firebase-firestore-util-BackgroundQueue(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 39
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 40
    iget-object v0, p0, Lcom/google/firebase/firestore/util/BackgroundQueue;->completedTasks:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 41
    return-void
.end method
