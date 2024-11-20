.class Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;
.super Ljava/lang/Object;
.source "ThrottledForwardingExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final availableSlots:Ljava/util/concurrent/Semaphore;

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "maximumConcurrency"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;->availableSlots:Ljava/util/concurrent/Semaphore;

    .line 39
    iput-object p2, p0, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 40
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 50
    iget-object v0, p0, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;->availableSlots:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 59
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    goto :goto_1

    .line 61
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 63
    :goto_1
    return-void
.end method

.method synthetic lambda$execute$0$com-google-firebase-firestore-util-ThrottledForwardingExecutor(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 54
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 55
    iget-object v0, p0, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;->availableSlots:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 56
    return-void
.end method
