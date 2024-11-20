.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda7;->f$0:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda7;->f$0:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$ExternalSyntheticLambda7;->f$2:I

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->lambda$getAllMutationBatchesAffectingQuery$10$com-google-firebase-firestore-local-SQLiteMutationQueue(Ljava/util/List;ILandroid/database/Cursor;)V

    return-void
.end method
