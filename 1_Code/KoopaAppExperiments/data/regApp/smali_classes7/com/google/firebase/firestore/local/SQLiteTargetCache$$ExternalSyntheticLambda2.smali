.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

.field public final synthetic f$1:Landroid/util/SparseArray;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Landroid/util/SparseArray;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda2;->f$1:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda2;->f$2:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda2;->f$1:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda2;->f$2:[I

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lambda$removeQueries$2$com-google-firebase-firestore-local-SQLiteTargetCache(Landroid/util/SparseArray;[ILandroid/database/Cursor;)V

    return-void
.end method
