.class public Lcom/google/firebase/firestore/LoadBundleTask;
.super Lcom/google/android/gms/tasks/Task;
.source "LoadBundleTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/tasks/Task<",
        "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
        ">;"
    }
.end annotation


# instance fields
.field private final completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;"
        }
    .end annotation
.end field

.field private final delegate:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final progressListeners:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;",
            ">;"
        }
    .end annotation
.end field

.field private snapshot:Lcom/google/firebase/firestore/LoadBundleTaskProgress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/tasks/Task;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->lock:Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->INITIAL:Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    iput-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->snapshot:Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    .line 70
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    .line 72
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->progressListeners:Ljava/util/Queue;

    .line 73
    return-void
.end method

.method private removeOnProgressListener(Lcom/google/firebase/firestore/OnProgressListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/OnProgressListener<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;)V"
        }
    .end annotation

    .line 503
    .local p1, "listener":Lcom/google/firebase/firestore/OnProgressListener;, "Lcom/google/firebase/firestore/OnProgressListener<Lcom/google/firebase/firestore/LoadBundleTaskProgress;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/firestore/LoadBundleTask;->progressListeners:Ljava/util/Queue;

    new-instance v2, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/OnProgressListener;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 505
    monitor-exit v0

    .line 506
    return-void

    .line 505
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "onCanceledListener"    # Lcom/google/android/gms/tasks/OnCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "onCanceledListener"    # Lcom/google/android/gms/tasks/OnCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "onCanceledListener"    # Lcom/google/android/gms/tasks/OnCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;"
        }
    .end annotation

    .line 280
    .local p2, "onCompleteListener":Lcom/google/android/gms/tasks/OnCompleteListener;, "Lcom/google/android/gms/tasks/OnCompleteListener<Lcom/google/firebase/firestore/LoadBundleTaskProgress;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;"
        }
    .end annotation

    .line 245
    .local p1, "onCompleteListener":Lcom/google/android/gms/tasks/OnCompleteListener;, "Lcom/google/android/gms/tasks/OnCompleteListener<Lcom/google/firebase/firestore/LoadBundleTaskProgress;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;"
        }
    .end annotation

    .line 262
    .local p2, "onCompleteListener":Lcom/google/android/gms/tasks/OnCompleteListener;, "Lcom/google/android/gms/tasks/OnCompleteListener<Lcom/google/firebase/firestore/LoadBundleTaskProgress;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "onFailureListener"    # Lcom/google/android/gms/tasks/OnFailureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "onFailureListener"    # Lcom/google/android/gms/tasks/OnFailureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "onFailureListener"    # Lcom/google/android/gms/tasks/OnFailureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public addOnProgressListener(Landroid/app/Activity;Lcom/google/firebase/firestore/OnProgressListener;)Lcom/google/firebase/firestore/LoadBundleTask;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/firestore/OnProgressListener<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;)",
            "Lcom/google/firebase/firestore/LoadBundleTask;"
        }
    .end annotation

    .line 488
    .local p2, "listener":Lcom/google/firebase/firestore/OnProgressListener;, "Lcom/google/firebase/firestore/OnProgressListener<Lcom/google/firebase/firestore/LoadBundleTaskProgress;>;"
    new-instance v0, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/OnProgressListener;)V

    .line 489
    .local v0, "managedListener":Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;
    iget-object v1, p0, Lcom/google/firebase/firestore/LoadBundleTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/firestore/LoadBundleTask;->progressListeners:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 491
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/ActivityLifecycleObserver;->of(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/ActivityLifecycleObserver;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/LoadBundleTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lcom/google/firebase/firestore/LoadBundleTask$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/LoadBundleTask;Lcom/google/firebase/firestore/OnProgressListener;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/ActivityLifecycleObserver;->onStopCallOnce(Ljava/lang/Runnable;)Lcom/google/android/gms/common/api/internal/ActivityLifecycleObserver;

    .line 493
    return-object p0

    .line 491
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public addOnProgressListener(Lcom/google/firebase/firestore/OnProgressListener;)Lcom/google/firebase/firestore/LoadBundleTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/OnProgressListener<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;)",
            "Lcom/google/firebase/firestore/LoadBundleTask;"
        }
    .end annotation

    .line 448
    .local p1, "listener":Lcom/google/firebase/firestore/OnProgressListener;, "Lcom/google/firebase/firestore/OnProgressListener<Lcom/google/firebase/firestore/LoadBundleTaskProgress;>;"
    new-instance v0, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/OnProgressListener;)V

    .line 449
    .local v0, "managedListener":Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;
    iget-object v1, p0, Lcom/google/firebase/firestore/LoadBundleTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/firestore/LoadBundleTask;->progressListeners:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 451
    monitor-exit v1

    .line 452
    return-object p0

    .line 451
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addOnProgressListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/OnProgressListener;)Lcom/google/firebase/firestore/LoadBundleTask;
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/firestore/OnProgressListener<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;)",
            "Lcom/google/firebase/firestore/LoadBundleTask;"
        }
    .end annotation

    .line 466
    .local p2, "listener":Lcom/google/firebase/firestore/OnProgressListener;, "Lcom/google/firebase/firestore/OnProgressListener<Lcom/google/firebase/firestore/LoadBundleTaskProgress;>;"
    new-instance v0, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/OnProgressListener;)V

    .line 467
    .local v0, "managedListener":Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;
    iget-object v1, p0, Lcom/google/firebase/firestore/LoadBundleTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/firestore/LoadBundleTask;->progressListeners:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 469
    monitor-exit v1

    .line 470
    return-object p0

    .line 469
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;"
        }
    .end annotation

    .line 180
    .local p2, "onSuccessListener":Lcom/google/android/gms/tasks/OnSuccessListener;, "Lcom/google/android/gms/tasks/OnSuccessListener<-Lcom/google/firebase/firestore/LoadBundleTaskProgress;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;"
        }
    .end annotation

    .line 143
    .local p1, "onSuccessListener":Lcom/google/android/gms/tasks/OnSuccessListener;, "Lcom/google/android/gms/tasks/OnSuccessListener<-Lcom/google/firebase/firestore/LoadBundleTaskProgress;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;"
        }
    .end annotation

    .line 161
    .local p2, "onSuccessListener":Lcom/google/android/gms/tasks/OnSuccessListener;, "Lcom/google/android/gms/tasks/OnSuccessListener<-Lcom/google/firebase/firestore/LoadBundleTaskProgress;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            "TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 345
    .local p1, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<Lcom/google/firebase/firestore/LoadBundleTaskProgress;TTContinuationResult;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            "TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 360
    .local p2, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<Lcom/google/firebase/firestore/LoadBundleTaskProgress;TTContinuationResult;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 375
    .local p1, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<Lcom/google/firebase/firestore/LoadBundleTaskProgress;Lcom/google/android/gms/tasks/Task<TTContinuationResult;>;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 390
    .local p2, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<Lcom/google/firebase/firestore/LoadBundleTaskProgress;Lcom/google/android/gms/tasks/Task<TTContinuationResult;>;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/google/firebase/firestore/LoadBundleTaskProgress;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    return-object v0
.end method

.method public getResult(Ljava/lang/Class;)Lcom/google/firebase/firestore/LoadBundleTaskProgress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            "^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 118
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/google/firebase/firestore/LoadBundleTask;->getResult()Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/LoadBundleTask;->getResult(Ljava/lang/Class;)Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    move-result-object p1

    return-object p1
.end method

.method public isCanceled()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v0

    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$addOnProgressListener$0$com-google-firebase-firestore-LoadBundleTask(Lcom/google/firebase/firestore/OnProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/firebase/firestore/OnProgressListener;

    .line 492
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/LoadBundleTask;->removeOnProgressListener(Lcom/google/firebase/firestore/OnProgressListener;)V

    return-void
.end method

.method public onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            "TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 411
    .local p1, "successContinuation":Lcom/google/android/gms/tasks/SuccessContinuation;, "Lcom/google/android/gms/tasks/SuccessContinuation<Lcom/google/firebase/firestore/LoadBundleTaskProgress;TTContinuationResult;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            "TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 432
    .local p2, "successContinuation":Lcom/google/android/gms/tasks/SuccessContinuation;, "Lcom/google/android/gms/tasks/SuccessContinuation<Lcom/google/firebase/firestore/LoadBundleTaskProgress;TTContinuationResult;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->delegate:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 11
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 529
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_0
    new-instance v10, Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    iget-object v1, p0, Lcom/google/firebase/firestore/LoadBundleTask;->snapshot:Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    .line 532
    invoke-virtual {v1}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->getDocumentsLoaded()I

    move-result v2

    iget-object v1, p0, Lcom/google/firebase/firestore/LoadBundleTask;->snapshot:Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    .line 533
    invoke-virtual {v1}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->getTotalDocuments()I

    move-result v3

    iget-object v1, p0, Lcom/google/firebase/firestore/LoadBundleTask;->snapshot:Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    .line 534
    invoke-virtual {v1}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->getBytesLoaded()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/firebase/firestore/LoadBundleTask;->snapshot:Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    .line 535
    invoke-virtual {v1}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->getTotalBytes()J

    move-result-wide v6

    sget-object v9, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;->ERROR:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    move-object v1, v10

    move-object v8, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;-><init>(IIJJLjava/lang/Exception;Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;)V

    move-object v1, v10

    .line 538
    .local v1, "snapshot":Lcom/google/firebase/firestore/LoadBundleTaskProgress;
    iput-object v1, p0, Lcom/google/firebase/firestore/LoadBundleTask;->snapshot:Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    .line 539
    iget-object v2, p0, Lcom/google/firebase/firestore/LoadBundleTask;->progressListeners:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;

    .line 540
    .local v3, "listener":Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;
    invoke-virtual {v3, v1}, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;->invokeAsync(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V

    .line 541
    .end local v3    # "listener":Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;
    goto :goto_0

    .line 542
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/firestore/LoadBundleTask;->progressListeners:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 543
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 546
    return-void

    .line 543
    .end local v1    # "snapshot":Lcom/google/firebase/firestore/LoadBundleTaskProgress;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setResult(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V
    .locals 4
    .param p1, "result"    # Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    .line 511
    nop

    .line 512
    invoke-virtual {p1}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->getTaskState()Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;->SUCCESS:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected success, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 513
    invoke-virtual {p1}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->getTaskState()Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 511
    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/firestore/LoadBundleTask;->snapshot:Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    .line 516
    iget-object v1, p0, Lcom/google/firebase/firestore/LoadBundleTask;->progressListeners:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;

    .line 517
    .local v2, "listener":Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;
    iget-object v3, p0, Lcom/google/firebase/firestore/LoadBundleTask;->snapshot:Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;->invokeAsync(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V

    .line 518
    .end local v2    # "listener":Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;
    goto :goto_0

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/LoadBundleTask;->progressListeners:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 520
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 523
    return-void

    .line 520
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateProgress(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V
    .locals 3
    .param p1, "progressUpdate"    # Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    .line 551
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/firestore/LoadBundleTask;->snapshot:Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    .line 553
    iget-object v1, p0, Lcom/google/firebase/firestore/LoadBundleTask;->progressListeners:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;

    .line 554
    .local v2, "listener":Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;
    invoke-virtual {v2, p1}, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;->invokeAsync(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V

    .line 555
    .end local v2    # "listener":Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;
    goto :goto_0

    .line 556
    :cond_0
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
