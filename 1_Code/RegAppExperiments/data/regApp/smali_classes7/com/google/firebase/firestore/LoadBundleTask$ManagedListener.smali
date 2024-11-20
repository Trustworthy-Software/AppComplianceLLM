.class Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;
.super Ljava/lang/Object;
.source "LoadBundleTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/LoadBundleTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagedListener"
.end annotation


# instance fields
.field executor:Ljava/util/concurrent/Executor;

.field listener:Lcom/google/firebase/firestore/OnProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/OnProgressListener<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/OnProgressListener;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/firestore/OnProgressListener<",
            "Lcom/google/firebase/firestore/LoadBundleTaskProgress;",
            ">;)V"
        }
    .end annotation

    .line 565
    .local p2, "listener":Lcom/google/firebase/firestore/OnProgressListener;, "Lcom/google/firebase/firestore/OnProgressListener<Lcom/google/firebase/firestore/LoadBundleTaskProgress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;->executor:Ljava/util/concurrent/Executor;

    .line 567
    iput-object p2, p0, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;->listener:Lcom/google/firebase/firestore/OnProgressListener;

    .line 568
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 584
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 585
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 587
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;

    .line 588
    .local v0, "that":Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;
    iget-object v1, p0, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;->listener:Lcom/google/firebase/firestore/OnProgressListener;

    iget-object v2, v0, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;->listener:Lcom/google/firebase/firestore/OnProgressListener;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 585
    .end local v0    # "that":Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;->listener:Lcom/google/firebase/firestore/OnProgressListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invokeAsync(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V
    .locals 2
    .param p1, "snapshot"    # Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    .line 575
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 576
    return-void
.end method

.method synthetic lambda$invokeAsync$0$com-google-firebase-firestore-LoadBundleTask$ManagedListener(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V
    .locals 1
    .param p1, "snapshot"    # Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    .line 575
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;->listener:Lcom/google/firebase/firestore/OnProgressListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/OnProgressListener;->onProgress(Ljava/lang/Object;)V

    return-void
.end method
