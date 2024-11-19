.class public Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;
.super Landroidx/privacysandbox/ads/adservices/topics/TopicsManager;
.source "TopicsManagerImplCommon.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicsManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicsManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,54:1\n314#2,11:55\n*S KotlinDebug\n*F\n+ 1 TopicsManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon\n*L\n28#1:55,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0017\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0010\u00a2\u0006\u0002\u0008\tJ\u0015\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008\u000eJ\u0019\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0008H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0006H\u0083@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;",
        "Landroidx/privacysandbox/ads/adservices/topics/TopicsManager;",
        "mTopicsManager",
        "Landroid/adservices/topics/TopicsManager;",
        "(Landroid/adservices/topics/TopicsManager;)V",
        "convertRequest",
        "Landroid/adservices/topics/GetTopicsRequest;",
        "request",
        "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;",
        "convertRequest$ads_adservices_release",
        "convertResponse",
        "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;",
        "response",
        "Landroid/adservices/topics/GetTopicsResponse;",
        "convertResponse$ads_adservices_release",
        "getTopics",
        "(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getTopicsAsyncInternal",
        "getTopicsRequest",
        "(Landroid/adservices/topics/GetTopicsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final mTopicsManager:Landroid/adservices/topics/TopicsManager;


# direct methods
.method public constructor <init>(Landroid/adservices/topics/TopicsManager;)V
    .locals 1
    .param p1, "mTopicsManager"    # Landroid/adservices/topics/TopicsManager;

    const-string v0, "mTopicsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/topics/TopicsManager;-><init>()V

    .line 17
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;->mTopicsManager:Landroid/adservices/topics/TopicsManager;

    .line 16
    return-void
.end method

.method public static final synthetic access$getMTopicsManager$p(Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;)Landroid/adservices/topics/TopicsManager;
    .locals 1
    .param p0, "$this"    # Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;

    .line 13
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;->mTopicsManager:Landroid/adservices/topics/TopicsManager;

    return-object v0
.end method

.method public static final synthetic access$getTopicsAsyncInternal(Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;Landroid/adservices/topics/GetTopicsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;
    .param p1, "getTopicsRequest"    # Landroid/adservices/topics/GetTopicsRequest;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;->getTopicsAsyncInternal(Landroid/adservices/topics/GetTopicsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic getTopics$suspendImpl(Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;",
            "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon$getTopics$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon$getTopics$1;

    iget v1, v0, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon$getTopics$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon$getTopics$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon$getTopics$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon$getTopics$1;

    invoke-direct {v0, p0, p2}, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon$getTopics$1;-><init>(Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon$getTopics$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 21
    iget v2, p2, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon$getTopics$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p2, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon$getTopics$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .local p0, "$this":Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;
    .local p1, "request":Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;
    invoke-virtual {p0, p1}, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;->convertRequest$ads_adservices_release(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;)Landroid/adservices/topics/GetTopicsRequest;

    move-result-object v2

    iput-object p0, p2, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon$getTopics$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p2, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon$getTopics$1;->label:I

    invoke-direct {p0, v2, p2}, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;->getTopicsAsyncInternal(Landroid/adservices/topics/GetTopicsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p0    # "$this":Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;
    .end local p1    # "request":Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;
    if-ne p1, v1, :cond_1

    .line 21
    return-object v1

    .line 22
    :cond_1
    :goto_1
    check-cast p1, Landroid/adservices/topics/GetTopicsResponse;

    invoke-virtual {p0, p1}, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;->convertResponse$ads_adservices_release(Landroid/adservices/topics/GetTopicsResponse;)Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getTopicsAsyncInternal(Landroid/adservices/topics/GetTopicsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "getTopicsRequest"    # Landroid/adservices/topics/GetTopicsRequest;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/topics/GetTopicsRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/adservices/topics/GetTopicsResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    .line 55
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v1, p2

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 56
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 62
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 63
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "continuation":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 30
    .local v5, "$i$a$-suspendCancellableCoroutine-TopicsManagerImplCommon$getTopicsAsyncInternal$2":I
    invoke-static {p0}, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;->access$getMTopicsManager$p(Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;)Landroid/adservices/topics/TopicsManager;

    move-result-object v6

    .line 31
    new-instance v7, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Api33Ext4Impl$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Api33Ext4Impl$$ExternalSyntheticLambda0;-><init>()V

    .line 33
    move-object v8, v4

    check-cast v8, Lkotlin/coroutines/Continuation;

    invoke-static {v8}, Landroidx/core/os/OutcomeReceiverKt;->asOutcomeReceiver(Lkotlin/coroutines/Continuation;)Landroid/os/OutcomeReceiver;

    move-result-object v8

    .line 30
    invoke-virtual {v6, p1, v7, v8}, Landroid/adservices/topics/TopicsManager;->getTopics(Landroid/adservices/topics/GetTopicsRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 35
    nop

    .line 63
    .end local v4    # "continuation":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-TopicsManagerImplCommon$getTopicsAsyncInternal$2":I
    nop

    .line 64
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 55
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 65
    :cond_0
    nop

    .line 35
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    return-object v1
.end method


# virtual methods
.method public convertRequest$ads_adservices_release(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;)Landroid/adservices/topics/GetTopicsRequest;
    .locals 2
    .param p1, "request"    # Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/adservices/topics/GetTopicsRequest$Builder;

    invoke-direct {v0}, Landroid/adservices/topics/GetTopicsRequest$Builder;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;->getAdsSdkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/topics/GetTopicsRequest$Builder;->setAdsSdkName(Ljava/lang/String;)Landroid/adservices/topics/GetTopicsRequest$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/adservices/topics/GetTopicsRequest$Builder;->build()Landroid/adservices/topics/GetTopicsRequest;

    move-result-object v0

    const-string v1, "Builder()\n            .s\u2026ame)\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    return-object v0
.end method

.method public final convertResponse$ads_adservices_release(Landroid/adservices/topics/GetTopicsResponse;)Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;
    .locals 10
    .param p1, "response"    # Landroid/adservices/topics/GetTopicsResponse;

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 49
    .local v0, "topics":Ljava/util/List;
    invoke-virtual {p1}, Landroid/adservices/topics/GetTopicsResponse;->getTopics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/topics/Topic;

    .line 50
    .local v2, "topic":Landroid/adservices/topics/Topic;
    new-instance v9, Landroidx/privacysandbox/ads/adservices/topics/Topic;

    invoke-virtual {v2}, Landroid/adservices/topics/Topic;->getTaxonomyVersion()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/adservices/topics/Topic;->getModelVersion()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/adservices/topics/Topic;->getTopicId()I

    move-result v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroidx/privacysandbox/ads/adservices/topics/Topic;-><init>(JJI)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    .end local v2    # "topic":Landroid/adservices/topics/Topic;
    :cond_0
    new-instance v1, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;

    invoke-direct {v1, v0}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getTopics(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;->getTopics$suspendImpl(Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
