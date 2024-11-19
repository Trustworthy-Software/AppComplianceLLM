.class public final synthetic Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/DocumentReference;

.field public final synthetic f$1:Lcom/google/firebase/firestore/EventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/EventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/firestore/DocumentReference;

    iput-object p2, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda2;->f$1:Lcom/google/firebase/firestore/EventListener;

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentReference$$ExternalSyntheticLambda2;->f$1:Lcom/google/firebase/firestore/EventListener;

    check-cast p1, Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/firestore/DocumentReference;->lambda$addSnapshotListenerInternal$2$com-google-firebase-firestore-DocumentReference(Lcom/google/firebase/firestore/EventListener;Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
