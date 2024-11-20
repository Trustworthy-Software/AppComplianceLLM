.class final Lcom/google/firebase/firestore/local/MemoryTargetCache;
.super Ljava/lang/Object;
.source "MemoryTargetCache.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/TargetCache;


# instance fields
.field private highestSequenceNumber:J

.field private highestTargetId:I

.field private lastRemoteSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

.field private final persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

.field private final references:Lcom/google/firebase/firestore/local/ReferenceSet;

.field private final targets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/core/Target;",
            "Lcom/google/firebase/firestore/local/TargetData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/local/MemoryPersistence;)V
    .locals 2
    .param p1, "persistence"    # Lcom/google/firebase/firestore/local/MemoryPersistence;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->targets:Ljava/util/Map;

    .line 38
    new-instance v0, Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/ReferenceSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->references:Lcom/google/firebase/firestore/local/ReferenceSet;

    .line 44
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->lastRemoteSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->highestSequenceNumber:J

    .line 51
    iput-object p1, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    .line 52
    return-void
.end method


# virtual methods
.method public addMatchingKeys(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V
    .locals 3
    .param p2, "targetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;I)V"
        }
    .end annotation

    .line 144
    .local p1, "keys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->references:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/local/ReferenceSet;->addReferences(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V

    .line 145
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v0

    .line 146
    .local v0, "referenceDelegate":Lcom/google/firebase/firestore/local/ReferenceDelegate;
    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 147
    .local v2, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-interface {v0, v2}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->addReference(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 148
    .end local v2    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public addTargetData(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 5
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 90
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->targets:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v0

    .line 92
    .local v0, "targetId":I
    iget v1, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->highestTargetId:I

    if-le v0, v1, :cond_0

    .line 93
    iput v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->highestTargetId:I

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSequenceNumber()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->highestSequenceNumber:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 96
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSequenceNumber()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->highestSequenceNumber:J

    .line 98
    :cond_1
    return-void
.end method

.method public containsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z
    .locals 1
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 172
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->references:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/ReferenceSet;->containsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v0

    return v0
.end method

.method public forEachTarget(Lcom/google/firebase/firestore/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/Consumer<",
            "Lcom/google/firebase/firestore/local/TargetData;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "consumer":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<Lcom/google/firebase/firestore/local/TargetData;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->targets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/local/TargetData;

    .line 67
    .local v1, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    invoke-interface {p1, v1}, Lcom/google/firebase/firestore/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 68
    .end local v1    # "targetData":Lcom/google/firebase/firestore/local/TargetData;
    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method getByteSize(Lcom/google/firebase/firestore/local/LocalSerializer;)J
    .locals 6
    .param p1, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 176
    const-wide/16 v0, 0x0

    .line 177
    .local v0, "count":J
    iget-object v2, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->targets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 178
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/local/TargetData;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/local/TargetData;

    invoke-virtual {p1, v4}, Lcom/google/firebase/firestore/local/LocalSerializer;->encodeTargetData(Lcom/google/firebase/firestore/local/TargetData;)Lcom/google/firebase/firestore/proto/Target;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/proto/Target;->getSerializedSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 179
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/local/TargetData;>;"
    goto :goto_0

    .line 180
    :cond_0
    return-wide v0
.end method

.method public getHighestListenSequenceNumber()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->highestSequenceNumber:J

    return-wide v0
.end method

.method public getHighestTargetId()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->highestTargetId:I

    return v0
.end method

.method public getLastRemoteSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->lastRemoteSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public getMatchingKeysForTargetId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 1
    .param p1, "targetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->references:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesForId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getTargetCount()J
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->targets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTargetData(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;
    .locals 1
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 137
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->targets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/TargetData;

    return-object v0
.end method

.method public removeMatchingKeys(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V
    .locals 3
    .param p2, "targetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;I)V"
        }
    .end annotation

    .line 153
    .local p1, "keys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->references:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReferences(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V

    .line 154
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v0

    .line 155
    .local v0, "referenceDelegate":Lcom/google/firebase/firestore/local/ReferenceDelegate;
    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 156
    .local v2, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-interface {v0, v2}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->removeReference(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 157
    .end local v2    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method public removeMatchingKeysForTargetId(I)V
    .locals 1
    .param p1, "targetId"    # I

    .line 162
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->references:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReferencesForId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 163
    return-void
.end method

.method removeQueries(JLandroid/util/SparseArray;)I
    .locals 7
    .param p1, "upperBound"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/SparseArray<",
            "*>;)I"
        }
    .end annotation

    .line 119
    .local p3, "activeTargetIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    const/4 v0, 0x0

    .line 120
    .local v0, "removed":I
    iget-object v1, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->targets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 121
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/local/TargetData;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 123
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/local/TargetData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/local/TargetData;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v3

    .line 124
    .local v3, "targetId":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/local/TargetData;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/local/TargetData;->getSequenceNumber()J

    move-result-wide v4

    .line 125
    .local v4, "sequenceNumber":J
    cmp-long v6, v4, p1

    if-gtz v6, :cond_0

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 127
    invoke-virtual {p0, v3}, Lcom/google/firebase/firestore/local/MemoryTargetCache;->removeMatchingKeysForTargetId(I)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    .line 130
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/local/TargetData;>;"
    .end local v3    # "targetId":I
    .end local v4    # "sequenceNumber":J
    :cond_0
    goto :goto_0

    .line 131
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/local/TargetData;>;>;"
    :cond_1
    return v0
.end method

.method public removeTargetData(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 2
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 108
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->targets:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->references:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReferencesForId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 110
    return-void
.end method

.method public setLastRemoteSnapshotVersion(Lcom/google/firebase/firestore/model/SnapshotVersion;)V
    .locals 0
    .param p1, "snapshotVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 83
    iput-object p1, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->lastRemoteSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 84
    return-void
.end method

.method public updateTargetData(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 0
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/local/MemoryTargetCache;->addTargetData(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 104
    return-void
.end method
