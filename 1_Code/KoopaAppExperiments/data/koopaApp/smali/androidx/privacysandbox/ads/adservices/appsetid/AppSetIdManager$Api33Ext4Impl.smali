.class final Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;
.super Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;
.source "AppSetIdManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api33Ext4Impl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppSetIdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppSetIdManager.kt\nandroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,94:1\n314#2,11:95\n*S KotlinDebug\n*F\n+ 1 AppSetIdManager.kt\nandroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl\n*L\n59#1:95,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0011\u0010\u000c\u001a\u00020\tH\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ\u0011\u0010\u000e\u001a\u00020\u000bH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;",
        "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "mAppSetIdManager",
        "Landroid/adservices/appsetid/AppSetIdManager;",
        "(Landroid/adservices/appsetid/AppSetIdManager;)V",
        "convertResponse",
        "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;",
        "response",
        "Landroid/adservices/appsetid/AppSetId;",
        "getAppSetId",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAppSetIdAsyncInternal",
        "ads-adservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mAppSetIdManager:Landroid/adservices/appsetid/AppSetIdManager;


# direct methods
.method public constructor <init>(Landroid/adservices/appsetid/AppSetIdManager;)V
    .locals 1
    .param p1, "mAppSetIdManager"    # Landroid/adservices/appsetid/AppSetIdManager;

    const-string v0, "mAppSetIdManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;->mAppSetIdManager:Landroid/adservices/appsetid/AppSetIdManager;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    nop

    .line 48
    const-class v0, Landroid/adservices/appsetid/AppSetIdManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "context.getSystemService\u2026:class.java\n            )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/adservices/appsetid/AppSetIdManager;

    .line 47
    invoke-direct {p0, v0}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;-><init>(Landroid/adservices/appsetid/AppSetIdManager;)V

    .line 51
    return-void
.end method

.method public static final synthetic access$getAppSetIdAsyncInternal(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 42
    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;->getAppSetIdAsyncInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getMAppSetIdManager$p(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;)Landroid/adservices/appsetid/AppSetIdManager;
    .locals 1
    .param p0, "$this"    # Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;

    .line 42
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;->mAppSetIdManager:Landroid/adservices/appsetid/AppSetIdManager;

    return-object v0
.end method

.method private final convertResponse(Landroid/adservices/appsetid/AppSetId;)Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;
    .locals 4
    .param p1, "response"    # Landroid/adservices/appsetid/AppSetId;

    .line 68
    invoke-virtual {p1}, Landroid/adservices/appsetid/AppSetId;->getScope()I

    move-result v0

    const-string v1, "response.id"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 69
    new-instance v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;

    invoke-virtual {p1}, Landroid/adservices/appsetid/AppSetId;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3, v2}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;

    invoke-virtual {p1}, Landroid/adservices/appsetid/AppSetId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private final getAppSetIdAsyncInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/adservices/appsetid/AppSetId;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    .line 95
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v1, p1

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 96
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 102
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 103
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "continuation":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 61
    .local v5, "$i$a$-suspendCancellableCoroutine-AppSetIdManager$Api33Ext4Impl$getAppSetIdAsyncInternal$2":I
    invoke-static {p0}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;->access$getMAppSetIdManager$p(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;)Landroid/adservices/appsetid/AppSetIdManager;

    move-result-object v6

    new-instance v7, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Api33Ext4Impl$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Api33Ext4Impl$$ExternalSyntheticLambda0;-><init>()V

    .line 63
    move-object v8, v4

    check-cast v8, Lkotlin/coroutines/Continuation;

    invoke-static {v8}, Landroidx/core/os/OutcomeReceiverKt;->asOutcomeReceiver(Lkotlin/coroutines/Continuation;)Landroid/os/OutcomeReceiver;

    move-result-object v8

    .line 61
    invoke-virtual {v6, v7, v8}, Landroid/adservices/appsetid/AppSetIdManager;->getAppSetId(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 65
    nop

    .line 103
    .end local v4    # "continuation":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-AppSetIdManager$Api33Ext4Impl$getAppSetIdAsyncInternal$2":I
    nop

    .line 104
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 95
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 105
    :cond_0
    nop

    .line 65
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    return-object v1
.end method


# virtual methods
.method public getAppSetId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;

    iget v1, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;

    invoke-direct {v0, p0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;-><init>(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 54
    iget v2, p1, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v1, p1, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v0

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 55
    .local v2, "this":Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;
    iput-object v2, p1, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p1, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;->label:I

    invoke-direct {v2, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;->getAppSetIdAsyncInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v2    # "this":Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;
    if-ne v3, v1, :cond_1

    .line 54
    return-object v1

    .line 55
    :cond_1
    move-object v1, v2

    :goto_1
    check-cast v3, Landroid/adservices/appsetid/AppSetId;

    invoke-direct {v1, v3}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;->convertResponse(Landroid/adservices/appsetid/AppSetId;)Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
