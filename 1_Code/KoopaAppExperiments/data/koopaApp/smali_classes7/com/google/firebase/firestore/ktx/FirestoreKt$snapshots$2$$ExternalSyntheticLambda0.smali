.class public final synthetic Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/ktx/FirestoreKt$snapshots$2;->$r8$lambda$ij7Tajv_wtYyuQQPPQQBIyM2enQ(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
