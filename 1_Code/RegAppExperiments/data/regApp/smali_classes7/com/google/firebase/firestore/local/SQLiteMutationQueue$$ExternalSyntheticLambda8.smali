.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda8;->f$0:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    iput p2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda8;->f$0:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    iget v1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda8;->f$1:I

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->lambda$lookupMutationBatch$3$com-google-firebase-firestore-local-SQLiteMutationQueue(ILandroid/database/Cursor;)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object p1

    return-object p1
.end method
