.class public final synthetic Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/core/FirestoreClient;

.field public final synthetic f$1:Lcom/google/firebase/firestore/TransactionOptions;

.field public final synthetic f$2:Lcom/google/firebase/firestore/util/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/util/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/firestore/core/FirestoreClient;

    iput-object p2, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda2;->f$1:Lcom/google/firebase/firestore/TransactionOptions;

    iput-object p3, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda2;->f$2:Lcom/google/firebase/firestore/util/Function;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/firestore/core/FirestoreClient;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda2;->f$1:Lcom/google/firebase/firestore/TransactionOptions;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda2;->f$2:Lcom/google/firebase/firestore/util/Function;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/core/FirestoreClient;->lambda$transaction$13$com-google-firebase-firestore-core-FirestoreClient(Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/util/Function;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
