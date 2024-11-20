.class final Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Firestore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/ktx/FirestoreKt;->snapshots(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/MetadataChanges;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lcom/google/firebase/firestore/QuerySnapshot;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lcom/google/firebase/firestore/QuerySnapshot;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.firebase.firestore.ktx.FirestoreKt$snapshots$2"
    f = "Firestore.kt"
    i = {}
    l = {
        0x1bb
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

.field final synthetic $this_snapshots:Lcom/google/firebase/firestore/Query;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$ij7Tajv_wtYyuQQPPQQBIyM2enQ(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;->invokeSuspend$lambda-0(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/MetadataChanges;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/Query;",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;->$this_snapshots:Lcom/google/firebase/firestore/Query;

    iput-object p2, p0, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;->$metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 3
    .param p0, "$$this$callbackFlow"    # Lkotlinx/coroutines/channels/ProducerScope;
    .param p1, "snapshot"    # Lcom/google/firebase/firestore/QuerySnapshot;
    .param p2, "exception"    # Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 437
    if-eqz p2, :cond_0

    .line 438
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const-string v1, "Error getting Query snapshot"

    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 439
    :cond_0
    if-eqz p1, :cond_1

    .line 440
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;

    iget-object v1, p0, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;->$this_snapshots:Lcom/google/firebase/firestore/Query;

    iget-object v2, p0, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;->$metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    invoke-direct {v0, v1, v2, p2}, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;-><init>(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/MetadataChanges;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 434
    iget v1, p0, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;->label:I

    packed-switch v1, :pswitch_data_0

    .line 444
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 434
    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    .line 436
    .local v2, "$this$callbackFlow":Lkotlinx/coroutines/channels/ProducerScope;
    iget-object v3, v1, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;->$this_snapshots:Lcom/google/firebase/firestore/Query;

    sget-object v4, Lcom/google/firebase/firestore/util/Executors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v5, v1, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;->$metadataChanges:Lcom/google/firebase/firestore/MetadataChanges;

    new-instance v6, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2}, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/firebase/firestore/Query;->addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v3

    const-string v4, "addSnapshotListener(BACK\u2026apshot)\n        }\n      }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    nop

    .line 443
    .local v3, "registration":Lcom/google/firebase/firestore/ListenerRegistration;
    new-instance v4, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2$1;

    invoke-direct {v4, v3}, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2$1;-><init>(Lcom/google/firebase/firestore/ListenerRegistration;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x1

    iput v6, v1, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;->label:I

    invoke-static {v2, v4, v5}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$callbackFlow":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v3    # "registration":Lcom/google/firebase/firestore/ListenerRegistration;
    if-ne v2, v0, :cond_0

    .line 434
    return-object v0

    .line 443
    :cond_0
    move-object v0, v1

    .line 444
    .end local v1    # "this":Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;
    .restart local v0    # "this":Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
