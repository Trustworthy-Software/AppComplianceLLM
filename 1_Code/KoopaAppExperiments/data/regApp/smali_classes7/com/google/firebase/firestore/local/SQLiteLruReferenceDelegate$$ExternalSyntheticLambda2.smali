.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;[ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda2;->f$1:[I

    iput-object p3, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda2;->f$1:[I

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->lambda$removeOrphanedDocuments$2$com-google-firebase-firestore-local-SQLiteLruReferenceDelegate([ILjava/util/List;Landroid/database/Cursor;)V

    return-void
.end method
