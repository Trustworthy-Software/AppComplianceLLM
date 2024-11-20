.class public final Lkotlinx/coroutines/tasks/TasksKt;
.super Ljava/lang/Object;
.source "Tasks.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTasks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,167:1\n314#2,11:168\n*S KotlinDebug\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n*L\n139#1:168,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a\u001c\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003\u001a&\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a(\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002\u001a\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\u001a!\u0010\u0008\u001a\u0002H\u0002\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u001a)\u0010\u0008\u001a\u0002H\u0002\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001a+\u0010\u000b\u001a\u0002H\u0002\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "asDeferred",
        "Lkotlinx/coroutines/Deferred;",
        "T",
        "Lcom/google/android/gms/tasks/Task;",
        "cancellationTokenSource",
        "Lcom/google/android/gms/tasks/CancellationTokenSource;",
        "asDeferredImpl",
        "asTask",
        "await",
        "(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitImpl",
        "kotlinx-coroutines-play-services"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$umEsLqlfuPjUr1EQR0-5aVQEp68(Lkotlinx/coroutines/CompletableDeferred;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/tasks/TasksKt;->asDeferredImpl$lambda$0(Lkotlinx/coroutines/CompletableDeferred;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static final synthetic access$awaitImpl(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lcom/google/android/gms/tasks/Task;
    .param p1, "cancellationTokenSource"    # Lcom/google/android/gms/tasks/CancellationTokenSource;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/tasks/TasksKt;->awaitImpl(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final asDeferred(Lcom/google/android/gms/tasks/Task;)Lkotlinx/coroutines/Deferred;
    .locals 1
    .param p0, "$this$asDeferred"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)",
            "Lkotlinx/coroutines/Deferred<",
            "TT;>;"
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlinx/coroutines/tasks/TasksKt;->asDeferredImpl(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public static final asDeferred(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lkotlinx/coroutines/Deferred;
    .locals 1
    .param p0, "$this$asDeferred"    # Lcom/google/android/gms/tasks/Task;
    .param p1, "cancellationTokenSource"    # Lcom/google/android/gms/tasks/CancellationTokenSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;",
            "Lcom/google/android/gms/tasks/CancellationTokenSource;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "TT;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lkotlinx/coroutines/tasks/TasksKt;->asDeferredImpl(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method

.method private static final asDeferredImpl(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lkotlinx/coroutines/Deferred;
    .locals 5
    .param p0, "$this$asDeferredImpl"    # Lcom/google/android/gms/tasks/Task;
    .param p1, "cancellationTokenSource"    # Lcom/google/android/gms/tasks/CancellationTokenSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;",
            "Lcom/google/android/gms/tasks/CancellationTokenSource;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "TT;>;"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    .line 63
    .local v2, "deferred":Lkotlinx/coroutines/CompletableDeferred;
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v3

    .line 65
    .local v3, "e":Ljava/lang/Exception;
    if-nez v3, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/Job;

    invoke-static {v4, v0, v1, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_1
    move-object v0, v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 77
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v0, Lkotlinx/coroutines/tasks/DirectExecutor;->INSTANCE:Lkotlinx/coroutines/tasks/DirectExecutor;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lkotlinx/coroutines/tasks/TasksKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/tasks/TasksKt$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 88
    :goto_0
    if-eqz p1, :cond_3

    .line 89
    new-instance v0, Lkotlinx/coroutines/tasks/TasksKt$asDeferredImpl$2;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/tasks/TasksKt$asDeferredImpl$2;-><init>(Lcom/google/android/gms/tasks/CancellationTokenSource;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0}, Lkotlinx/coroutines/CompletableDeferred;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 94
    :cond_3
    new-instance v0, Lkotlinx/coroutines/tasks/TasksKt$asDeferredImpl$3;

    invoke-direct {v0, v2}, Lkotlinx/coroutines/tasks/TasksKt$asDeferredImpl$3;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    check-cast v0, Lkotlinx/coroutines/Deferred;

    return-object v0
.end method

.method private static final asDeferredImpl$lambda$0(Lkotlinx/coroutines/CompletableDeferred;Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .param p0, "$deferred"    # Lkotlinx/coroutines/CompletableDeferred;
    .param p1, "it"    # Lcom/google/android/gms/tasks/Task;

    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/Job;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {p0, v1}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 85
    :goto_0
    return-void
.end method

.method public static final asTask(Lkotlinx/coroutines/Deferred;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p0, "$this$asTask"    # Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    .line 21
    .local v0, "cancellation":Lcom/google/android/gms/tasks/CancellationTokenSource;
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    .line 23
    .local v1, "source":Lcom/google/android/gms/tasks/TaskCompletionSource;
    new-instance v2, Lkotlinx/coroutines/tasks/TasksKt$asTask$1;

    invoke-direct {v2, v0, p0, v1}, Lkotlinx/coroutines/tasks/TasksKt$asTask$1;-><init>(Lcom/google/android/gms/tasks/CancellationTokenSource;Lkotlinx/coroutines/Deferred;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v2}, Lkotlinx/coroutines/Deferred;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    return-object v2
.end method

.method public static final await(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this$await"    # Lcom/google/android/gms/tasks/Task;
    .param p1, "cancellationTokenSource"    # Lcom/google/android/gms/tasks/CancellationTokenSource;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;",
            "Lcom/google/android/gms/tasks/CancellationTokenSource;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 121
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/tasks/TasksKt;->awaitImpl(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this$await"    # Lcom/google/android/gms/tasks/Task;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/tasks/TasksKt;->awaitImpl(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final awaitImpl(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$awaitImpl"    # Lcom/google/android/gms/tasks/Task;
    .param p1, "cancellationTokenSource"    # Lcom/google/android/gms/tasks/CancellationTokenSource;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;",
            "Lcom/google/android/gms/tasks/CancellationTokenSource;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    if-nez v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 127
    return-object v1

    .line 129
    :cond_0
    new-instance v1, Ljava/util/concurrent/CancellationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was cancelled normally."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_1
    throw v0

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x0

    .line 168
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v1, p2

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 169
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 175
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 176
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 141
    .local v5, "$i$a$-suspendCancellableCoroutine-TasksKt$awaitImpl$2":I
    sget-object v6, Lkotlinx/coroutines/tasks/DirectExecutor;->INSTANCE:Lkotlinx/coroutines/tasks/DirectExecutor;

    check-cast v6, Ljava/util/concurrent/Executor;

    new-instance v7, Lkotlinx/coroutines/tasks/TasksKt$awaitImpl$2$1;

    invoke-direct {v7, v4}, Lkotlinx/coroutines/tasks/TasksKt$awaitImpl$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v7, Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {p0, v6, v7}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 151
    if-eqz p1, :cond_3

    .line 152
    new-instance v6, Lkotlinx/coroutines/tasks/TasksKt$awaitImpl$2$2;

    invoke-direct {v6, p1}, Lkotlinx/coroutines/tasks/TasksKt$awaitImpl$2$2;-><init>(Lcom/google/android/gms/tasks/CancellationTokenSource;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v6}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 156
    :cond_3
    nop

    .line 176
    .end local v4    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-TasksKt$awaitImpl$2":I
    nop

    .line 177
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 168
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_4

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 178
    :cond_4
    nop

    .line 139
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    return-object v1
.end method
