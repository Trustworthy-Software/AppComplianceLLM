.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->lambda$getNextMutationBatchAfterBatchId$4$com-google-firebase-firestore-local-SQLiteMutationQueue(Landroid/database/Cursor;)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object p1

    return-object p1
.end method
