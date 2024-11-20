.class public Lcom/google/firebase/firestore/local/QueryEngine;
.super Ljava/lang/Object;
.source "QueryEngine.java"


# static fields
.field private static final DEFAULT_INDEX_AUTO_CREATION_MIN_COLLECTION_SIZE:I = 0x64

.field private static final DEFAULT_RELATIVE_INDEX_READ_COST_PER_DOCUMENT:D = 2.0

.field private static final LOG_TAG:Ljava/lang/String; = "QueryEngine"


# instance fields
.field private indexAutoCreationEnabled:Z

.field private indexAutoCreationMinCollectionSize:I

.field private indexManager:Lcom/google/firebase/firestore/local/IndexManager;

.field private initialized:Z

.field private localDocumentsView:Lcom/google/firebase/firestore/local/LocalDocumentsView;

.field private relativeIndexReadCostPerDocument:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/local/QueryEngine;->indexAutoCreationEnabled:Z

    .line 81
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/firebase/firestore/local/QueryEngine;->indexAutoCreationMinCollectionSize:I

    .line 83
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lcom/google/firebase/firestore/local/QueryEngine;->relativeIndexReadCostPerDocument:D

    return-void
.end method

.method private appendRemainingResults(Ljava/lang/Iterable;Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 4
    .param p2, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p3, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            ")",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 317
    .local p1, "indexedResults":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/firebase/firestore/model/Document;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/QueryEngine;->localDocumentsView:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    .line 318
    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 319
    .local v0, "remainingResults":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/Document;

    .line 320
    .local v2, "entry":Lcom/google/firebase/firestore/model/Document;
    invoke-interface {v2}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 321
    .end local v2    # "entry":Lcom/google/firebase/firestore/model/Document;
    goto :goto_0

    .line 322
    :cond_0
    return-object v0
.end method

.method private applyQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/database/collection/ImmutableSortedMap;)Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 5
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;)",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 245
    .local p2, "documents":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    new-instance v0, Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 246
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    .local v0, "queryResults":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/Document;>;"
    invoke-virtual {p2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 248
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/Document;

    .line 249
    .local v3, "document":Lcom/google/firebase/firestore/model/Document;
    invoke-virtual {p1, v3}, Lcom/google/firebase/firestore/core/Query;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    invoke-virtual {v0, v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    .line 252
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    .end local v3    # "document":Lcom/google/firebase/firestore/model/Document;
    :cond_0
    goto :goto_0

    .line 253
    :cond_1
    return-object v0
.end method

.method private createCacheIndexes(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/local/QueryContext;I)V
    .locals 7
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "context"    # Lcom/google/firebase/firestore/local/QueryContext;
    .param p3, "resultSize"    # I

    .line 124
    invoke-virtual {p2}, Lcom/google/firebase/firestore/local/QueryContext;->getDocumentReadCount()I

    move-result v0

    iget v1, p0, Lcom/google/firebase/firestore/local/QueryEngine;->indexAutoCreationMinCollectionSize:I

    const-string v2, "QueryEngine"

    if-ge v0, v1, :cond_0

    .line 125
    nop

    .line 129
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/local/QueryEngine;->indexAutoCreationMinCollectionSize:I

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 125
    const-string v1, "SDK will not create cache indexes for query: %s, since it only creates cache indexes for collection contains more than or equal to %s documents."

    invoke-static {v2, v1, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    return-void

    .line 134
    :cond_0
    nop

    .line 137
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p2}, Lcom/google/firebase/firestore/local/QueryContext;->getDocumentReadCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 139
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 134
    const-string v1, "Query: %s, scans %s local documents and returns %s documents as results."

    invoke-static {v2, v1, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p2}, Lcom/google/firebase/firestore/local/QueryContext;->getDocumentReadCount()I

    move-result v0

    int-to-double v0, v0

    iget-wide v3, p0, Lcom/google/firebase/firestore/local/QueryEngine;->relativeIndexReadCostPerDocument:D

    int-to-double v5, p3

    mul-double/2addr v3, v5

    cmpl-double v0, v0, v3

    if-lez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/google/firebase/firestore/local/QueryEngine;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/firestore/local/IndexManager;->createTargetIndexes(Lcom/google/firebase/firestore/core/Target;)V

    .line 143
    nop

    .line 147
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 143
    const-string v1, "The SDK decides to create cache indexes for query: %s, as using cache indexes may help improve performance."

    invoke-static {v2, v1, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_1
    return-void
.end method

.method private executeFullCollectionScan(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/local/QueryContext;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 3
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "context"    # Lcom/google/firebase/firestore/local/QueryContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/local/QueryContext;",
            ")",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 304
    invoke-static {}, Lcom/google/firebase/firestore/util/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "QueryEngine"

    const-string v2, "Using full collection scan to execute query: %s"

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/QueryEngine;->localDocumentsView:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    sget-object v1, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->NONE:Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Lcom/google/firebase/firestore/local/QueryContext;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method private needsRefill(Lcom/google/firebase/firestore/core/Query;ILcom/google/firebase/database/collection/ImmutableSortedSet;Lcom/google/firebase/firestore/model/SnapshotVersion;)Z
    .locals 4
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "expectedDocumentCount"    # I
    .param p4, "limboFreeSnapshotVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "I",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            ")Z"
        }
    .end annotation

    .line 274
    .local p3, "sortedPreviousResults":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/Document;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->hasLimit()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 276
    return v1

    .line 279
    :cond_0
    invoke-virtual {p3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_1

    .line 281
    return v2

    .line 291
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->getLimitType()Lcom/google/firebase/firestore/core/Query$LimitType;

    move-result-object v0

    sget-object v3, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    if-ne v0, v3, :cond_2

    .line 292
    invoke-virtual {p3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->getMaxEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/Document;

    goto :goto_0

    .line 293
    :cond_2
    invoke-virtual {p3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->getMinEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/Document;

    :goto_0
    nop

    .line 294
    .local v0, "documentAtLimitEdge":Lcom/google/firebase/firestore/model/Document;
    if-nez v0, :cond_3

    .line 296
    return v1

    .line 298
    :cond_3
    invoke-interface {v0}, Lcom/google/firebase/firestore/model/Document;->hasPendingWrites()Z

    move-result v3

    if-nez v3, :cond_4

    .line 299
    invoke-interface {v0}, Lcom/google/firebase/firestore/model/Document;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v3

    if-lez v3, :cond_5

    :cond_4
    move v1, v2

    .line 298
    :cond_5
    return v1
.end method

.method private performQueryUsingIndex(Lcom/google/firebase/firestore/core/Query;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 10
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            ")",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 156
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->matchesAllDocuments()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 158
    return-object v1

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    .line 162
    .local v0, "target":Lcom/google/firebase/firestore/core/Target;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/QueryEngine;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-interface {v2, v0}, Lcom/google/firebase/firestore/local/IndexManager;->getIndexType(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/IndexManager$IndexType;

    move-result-object v2

    .line 164
    .local v2, "indexType":Lcom/google/firebase/firestore/local/IndexManager$IndexType;
    sget-object v3, Lcom/google/firebase/firestore/local/IndexManager$IndexType;->NONE:Lcom/google/firebase/firestore/local/IndexManager$IndexType;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/IndexManager$IndexType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    return-object v1

    .line 169
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->hasLimit()Z

    move-result v1

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/firebase/firestore/local/IndexManager$IndexType;->PARTIAL:Lcom/google/firebase/firestore/local/IndexManager$IndexType;

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/local/IndexManager$IndexType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {p1, v3, v4}, Lcom/google/firebase/firestore/core/Query;->limitToFirst(J)Lcom/google/firebase/firestore/core/Query;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/local/QueryEngine;->performQueryUsingIndex(Lcom/google/firebase/firestore/core/Query;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    return-object v1

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/local/QueryEngine;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-interface {v1, v0}, Lcom/google/firebase/firestore/local/IndexManager;->getDocumentsMatchingTarget(Lcom/google/firebase/firestore/core/Target;)Ljava/util/List;

    move-result-object v1

    .line 180
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    const/4 v5, 0x0

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    const-string v7, "index manager must return results for partial and full indexes."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v5, p0, Lcom/google/firebase/firestore/local/QueryEngine;->localDocumentsView:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    .line 183
    invoke-virtual {v5, v1}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getDocuments(Ljava/lang/Iterable;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v5

    .line 184
    .local v5, "indexedDocuments":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    iget-object v6, p0, Lcom/google/firebase/firestore/local/QueryEngine;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-interface {v6, v0}, Lcom/google/firebase/firestore/local/IndexManager;->getMinOffset(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v6

    .line 186
    .local v6, "offset":Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    invoke-direct {p0, p1, v5}, Lcom/google/firebase/firestore/local/QueryEngine;->applyQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/database/collection/ImmutableSortedMap;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v7

    .line 187
    .local v7, "previousResults":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/Document;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v9

    invoke-direct {p0, p1, v8, v7, v9}, Lcom/google/firebase/firestore/local/QueryEngine;->needsRefill(Lcom/google/firebase/firestore/core/Query;ILcom/google/firebase/database/collection/ImmutableSortedSet;Lcom/google/firebase/firestore/model/SnapshotVersion;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 192
    invoke-virtual {p1, v3, v4}, Lcom/google/firebase/firestore/core/Query;->limitToFirst(J)Lcom/google/firebase/firestore/core/Query;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/local/QueryEngine;->performQueryUsingIndex(Lcom/google/firebase/firestore/core/Query;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v3

    return-object v3

    .line 195
    :cond_4
    invoke-direct {p0, v7, p1, v6}, Lcom/google/firebase/firestore/local/QueryEngine;->appendRemainingResults(Ljava/lang/Iterable;Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v3

    return-object v3
.end method

.method private performQueryUsingRemoteKeys(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/database/collection/ImmutableSortedSet;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 5
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p3, "lastLimboFreeSnapshotVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            ")",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 206
    .local p2, "remoteKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->matchesAllDocuments()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 208
    return-object v1

    .line 211
    :cond_0
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {p3, v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    return-object v1

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/local/QueryEngine;->localDocumentsView:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    .line 218
    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getDocuments(Ljava/lang/Iterable;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 219
    .local v0, "documents":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/local/QueryEngine;->applyQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/database/collection/ImmutableSortedMap;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    .line 221
    .local v2, "previousResults":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/Document;>;"
    invoke-virtual {p2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v3

    invoke-direct {p0, p1, v3, v2, p3}, Lcom/google/firebase/firestore/local/QueryEngine;->needsRefill(Lcom/google/firebase/firestore/core/Query;ILcom/google/firebase/database/collection/ImmutableSortedSet;Lcom/google/firebase/firestore/model/SnapshotVersion;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    return-object v1

    .line 225
    :cond_2
    invoke-static {}, Lcom/google/firebase/firestore/util/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    nop

    .line 229
    invoke-virtual {p3}, Lcom/google/firebase/firestore/model/SnapshotVersion;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 226
    const-string v3, "QueryEngine"

    const-string v4, "Re-using previous result from %s to execute query: %s"

    invoke-static {v3, v4, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    :cond_3
    nop

    .line 236
    const/4 v1, -0x1

    invoke-static {p3, v1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->createSuccessor(Lcom/google/firebase/firestore/model/SnapshotVersion;I)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v1

    .line 233
    invoke-direct {p0, v2, p1, v1}, Lcom/google/firebase/firestore/local/QueryEngine;->appendRemainingResults(Ljava/lang/Iterable;Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/database/collection/ImmutableSortedSet;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 3
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "lastLimboFreeSnapshotVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 99
    .local p3, "remoteKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/QueryEngine;->initialized:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "initialize() not called"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/QueryEngine;->performQueryUsingIndex(Lcom/google/firebase/firestore/core/Query;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 102
    .local v0, "result":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    if-eqz v0, :cond_0

    .line 103
    return-object v0

    .line 106
    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lcom/google/firebase/firestore/local/QueryEngine;->performQueryUsingRemoteKeys(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/database/collection/ImmutableSortedSet;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    return-object v0

    .line 111
    :cond_1
    new-instance v1, Lcom/google/firebase/firestore/local/QueryContext;

    invoke-direct {v1}, Lcom/google/firebase/firestore/local/QueryContext;-><init>()V

    .line 112
    .local v1, "context":Lcom/google/firebase/firestore/local/QueryContext;
    invoke-direct {p0, p1, v1}, Lcom/google/firebase/firestore/local/QueryEngine;->executeFullCollectionScan(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/local/QueryContext;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/google/firebase/firestore/local/QueryEngine;->indexAutoCreationEnabled:Z

    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->size()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/google/firebase/firestore/local/QueryEngine;->createCacheIndexes(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/local/QueryContext;I)V

    .line 116
    :cond_2
    return-object v0
.end method

.method public initialize(Lcom/google/firebase/firestore/local/LocalDocumentsView;Lcom/google/firebase/firestore/local/IndexManager;)V
    .locals 1
    .param p1, "localDocumentsView"    # Lcom/google/firebase/firestore/local/LocalDocumentsView;
    .param p2, "indexManager"    # Lcom/google/firebase/firestore/local/IndexManager;

    .line 86
    iput-object p1, p0, Lcom/google/firebase/firestore/local/QueryEngine;->localDocumentsView:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    .line 87
    iput-object p2, p0, Lcom/google/firebase/firestore/local/QueryEngine;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/local/QueryEngine;->initialized:Z

    .line 89
    return-void
.end method

.method public setIndexAutoCreationEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 92
    iput-boolean p1, p0, Lcom/google/firebase/firestore/local/QueryEngine;->indexAutoCreationEnabled:Z

    .line 93
    return-void
.end method

.method setIndexAutoCreationMinCollectionSize(I)V
    .locals 0
    .param p1, "newMin"    # I

    .line 327
    iput p1, p0, Lcom/google/firebase/firestore/local/QueryEngine;->indexAutoCreationMinCollectionSize:I

    .line 328
    return-void
.end method

.method setRelativeIndexReadCostPerDocument(D)V
    .locals 0
    .param p1, "newCost"    # D

    .line 332
    iput-wide p1, p0, Lcom/google/firebase/firestore/local/QueryEngine;->relativeIndexReadCostPerDocument:D

    .line 333
    return-void
.end method
