.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

.field public final synthetic f$1:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda5;->f$0:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda5;->f$1:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda5;->f$0:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda5;->f$1:Landroid/database/sqlite/SQLiteStatement;

    check-cast p1, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->lambda$createV8CollectionParentsIndex$10(Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;Landroid/database/sqlite/SQLiteStatement;Lcom/google/firebase/firestore/model/ResourcePath;)V

    return-void
.end method
