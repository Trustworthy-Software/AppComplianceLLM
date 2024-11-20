.class public final synthetic Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/ListenerRegistration;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public final synthetic f$1:Lcom/google/firebase/firestore/core/AsyncEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/core/AsyncEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/firestore/FirebaseFirestore;

    iput-object p2, p0, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda3;->f$1:Lcom/google/firebase/firestore/core/AsyncEventListener;

    return-void
.end method


# virtual methods
.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda3;->f$1:Lcom/google/firebase/firestore/core/AsyncEventListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->lambda$addSnapshotsInSyncListener$5$com-google-firebase-firestore-FirebaseFirestore(Lcom/google/firebase/firestore/core/AsyncEventListener;)V

    return-void
.end method
