.class final Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;
.super Ljava/lang/Object;
.source "MemoryRemoteDocumentCache.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/RemoteDocumentCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable;
    }
.end annotation


# instance fields
.field private docs:Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private indexManager:Lcom/google/firebase/firestore/local/IndexManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentCollections;->emptyDocumentMap()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->docs:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;

    .line 37
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->docs:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/SnapshotVersion;)V
    .locals 5
    .param p1, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .param p2, "readTime"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 55
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "setIndexManager() not called"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 57
    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    new-array v1, v2, [Ljava/lang/Object;

    .line 56
    const-string v2, "Cannot add document to the RemoteDocumentCache with a read time of zero"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->docs:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->mutableCopy()Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/firebase/firestore/model/MutableDocument;->setReadTime(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->docs:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 61
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->getCollectionPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/firestore/local/IndexManager;->addToCollectionParentIndex(Lcom/google/firebase/firestore/model/ResourcePath;)V

    .line 62
    return-void
.end method

.method public get(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 2
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 79
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->docs:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/Document;

    .line 80
    .local v0, "doc":Lcom/google/firebase/firestore/model/Document;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/firebase/firestore/model/Document;->mutableCopy()Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->newInvalidDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 85
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 87
    .local v2, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->get(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .end local v2    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_0

    .line 89
    :cond_0
    return-object v0
.end method

.method public getAll(Ljava/lang/String;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;I)Ljava/util/Map;
    .locals 2
    .param p1, "collectionGroup"    # Ljava/lang/String;
    .param p2, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "I)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAll(String, IndexOffset, int) is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getByteSize(Lcom/google/firebase/firestore/local/LocalSerializer;)J
    .locals 6
    .param p1, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 153
    const-wide/16 v0, 0x0

    .line 154
    .local v0, "count":J
    new-instance v2, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable;-><init>(Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$1;)V

    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/Document;

    .line 155
    .local v3, "doc":Lcom/google/firebase/firestore/model/Document;
    invoke-virtual {p1, v3}, Lcom/google/firebase/firestore/local/LocalSerializer;->encodeMaybeDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/proto/MaybeDocument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getSerializedSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 156
    .end local v3    # "doc":Lcom/google/firebase/firestore/model/Document;
    goto :goto_0

    .line 157
    :cond_0
    return-wide v0
.end method

.method getDocuments()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable;-><init>(Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$1;)V

    return-object v0
.end method

.method public getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Ljava/util/Set;)Ljava/util/Map;
    .locals 1
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .param p3    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 145
    .local p3, "mutatedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Ljava/util/Set;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Ljava/util/Set;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;
    .locals 8
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .param p3    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4, "context"    # Lcom/google/firebase/firestore/local/QueryContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;",
            "Lcom/google/firebase/firestore/local/QueryContext;",
            ")",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 105
    .local p3, "mutatedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/ResourcePath;->append(Ljava/lang/String;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-static {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    .line 110
    .local v1, "prefix":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->docs:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    .line 112
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 114
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/Document;

    .line 116
    .local v4, "doc":Lcom/google/firebase/firestore/model/Document;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 117
    .local v5, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/model/ResourcePath;->isPrefixOf(Lcom/google/firebase/firestore/model/BasePath;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 119
    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_1

    .line 124
    goto :goto_0

    .line 127
    :cond_1
    invoke-static {v4}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->fromDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->compareTo(Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)I

    move-result v6

    if-gtz v6, :cond_2

    .line 129
    goto :goto_0

    .line 132
    :cond_2
    invoke-interface {v4}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1, v4}, Lcom/google/firebase/firestore/core/Query;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 133
    goto :goto_0

    .line 136
    :cond_3
    invoke-interface {v4}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v6

    invoke-interface {v4}, Lcom/google/firebase/firestore/model/Document;->mutableCopy()Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    .end local v4    # "doc":Lcom/google/firebase/firestore/model/Document;
    .end local v5    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_0

    .line 139
    :cond_4
    :goto_1
    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "setIndexManager() not called"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentCollections;->emptyDocumentMap()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 69
    .local v0, "deletedDocs":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 70
    .local v2, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v3, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->docs:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v3, v2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->docs:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 71
    sget-object v3, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 72
    invoke-static {v2, v3}, Lcom/google/firebase/firestore/model/MutableDocument;->newNoDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 73
    .end local v2    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_1

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-interface {v1, v0}, Lcom/google/firebase/firestore/local/IndexManager;->updateIndexEntries(Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    .line 75
    return-void
.end method

.method public setIndexManager(Lcom/google/firebase/firestore/local/IndexManager;)V
    .locals 0
    .param p1, "indexManager"    # Lcom/google/firebase/firestore/local/IndexManager;

    .line 50
    iput-object p1, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    .line 51
    return-void
.end method
