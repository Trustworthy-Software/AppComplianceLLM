.class Lcom/google/firebase/firestore/local/MemoryIndexManager;
.super Ljava/lang/Object;
.source "MemoryIndexManager.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/IndexManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;
    }
.end annotation


# instance fields
.field private final collectionParentsIndex:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryIndexManager;->collectionParentsIndex:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    .line 38
    return-void
.end method


# virtual methods
.method public addFieldIndex(Lcom/google/firebase/firestore/model/FieldIndex;)V
    .locals 0
    .param p1, "index"    # Lcom/google/firebase/firestore/model/FieldIndex;

    .line 56
    return-void
.end method

.method public addToCollectionParentIndex(Lcom/google/firebase/firestore/model/ResourcePath;)V
    .locals 1
    .param p1, "collectionPath"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 45
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryIndexManager;->collectionParentsIndex:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;->add(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    .line 46
    return-void
.end method

.method public createTargetIndexes(Lcom/google/firebase/firestore/core/Target;)V
    .locals 0
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 69
    return-void
.end method

.method public deleteAllFieldIndexes()V
    .locals 0

    .line 66
    return-void
.end method

.method public deleteFieldIndex(Lcom/google/firebase/firestore/model/FieldIndex;)V
    .locals 0
    .param p1, "index"    # Lcom/google/firebase/firestore/model/FieldIndex;

    .line 61
    return-void
.end method

.method public getCollectionParents(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "collectionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/ResourcePath;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryIndexManager;->collectionParentsIndex:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;->getEntries(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentsMatchingTarget(Lcom/google/firebase/firestore/core/Target;)Ljava/util/List;
    .locals 1
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Target;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFieldIndexes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldIndexes(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "collectionGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIndexType(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/IndexManager$IndexType;
    .locals 1
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 114
    sget-object v0, Lcom/google/firebase/firestore/local/IndexManager$IndexType;->NONE:Lcom/google/firebase/firestore/local/IndexManager$IndexType;

    return-object v0
.end method

.method public getMinOffset(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .locals 1
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 104
    sget-object v0, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->NONE:Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    return-object v0
.end method

.method public getMinOffset(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .locals 1
    .param p1, "collectionGroup"    # Ljava/lang/String;

    .line 109
    sget-object v0, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->NONE:Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    return-object v0
.end method

.method public getNextCollectionGroupToUpdate()Ljava/lang/String;
    .locals 1

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public start()V
    .locals 0

    .line 41
    return-void
.end method

.method public updateCollectionGroup(Ljava/lang/String;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)V
    .locals 0
    .param p1, "collectionGroup"    # Ljava/lang/String;
    .param p2, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    .line 88
    return-void
.end method

.method public updateIndexEntries(Lcom/google/firebase/database/collection/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p1, "documents":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    return-void
.end method
