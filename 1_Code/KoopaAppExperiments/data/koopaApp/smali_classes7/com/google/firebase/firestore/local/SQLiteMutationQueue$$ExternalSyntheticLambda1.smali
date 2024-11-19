.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    check-cast p2, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    invoke-static {p1, p2}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->lambda$getAllMutationBatchesAffectingDocumentKeys$9(Lcom/google/firebase/firestore/model/mutation/MutationBatch;Lcom/google/firebase/firestore/model/mutation/MutationBatch;)I

    move-result p1

    return p1
.end method
