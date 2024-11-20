.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/SortedSet;

.field public final synthetic f$1:Lcom/google/firebase/firestore/model/FieldIndex;

.field public final synthetic f$2:Lcom/google/firebase/firestore/model/DocumentKey;


# direct methods
.method public synthetic constructor <init>(Ljava/util/SortedSet;Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda5;->f$0:Ljava/util/SortedSet;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda5;->f$1:Lcom/google/firebase/firestore/model/FieldIndex;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda5;->f$2:Lcom/google/firebase/firestore/model/DocumentKey;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda5;->f$0:Ljava/util/SortedSet;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda5;->f$1:Lcom/google/firebase/firestore/model/FieldIndex;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda5;->f$2:Lcom/google/firebase/firestore/model/DocumentKey;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->lambda$getExistingIndexEntries$6(Ljava/util/SortedSet;Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/model/DocumentKey;Landroid/database/Cursor;)V

    return-void
.end method
