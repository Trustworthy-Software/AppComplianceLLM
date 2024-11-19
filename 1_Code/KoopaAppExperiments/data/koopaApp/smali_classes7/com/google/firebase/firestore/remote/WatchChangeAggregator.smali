.class public Lcom/google/firebase/firestore/remote/WatchChangeAggregator;
.super Ljava/lang/Object;
.source "WatchChangeAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;,
        Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WatchChangeAggregator"


# instance fields
.field private pendingDocumentTargetMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private pendingDocumentUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation
.end field

.field private pendingTargetResets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/firebase/firestore/local/QueryPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private final targetMetadataProvider:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;

.field private final targetStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/firebase/firestore/remote/TargetState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;)V
    .locals 1
    .param p1, "targetMetadataProvider"    # Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetStates:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingDocumentUpdates:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingDocumentTargetMapping:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingTargetResets:Ljava/util/Map;

    .line 95
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetMetadataProvider:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;

    .line 96
    return-void
.end method

.method private addDocumentToTarget(ILcom/google/firebase/firestore/model/MutableDocument;)V
    .locals 4
    .param p1, "targetId"    # I
    .param p2, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;

    .line 400
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->isActiveTarget(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    return-void

    .line 405
    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetContainsDocument(ILcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    sget-object v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->MODIFIED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    goto :goto_0

    .line 407
    :cond_1
    sget-object v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ADDED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    :goto_0
    nop

    .line 409
    .local v0, "changeType":Lcom/google/firebase/firestore/core/DocumentViewChange$Type;
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->ensureTargetState(I)Lcom/google/firebase/firestore/remote/TargetState;

    move-result-object v1

    .line 410
    .local v1, "targetState":Lcom/google/firebase/firestore/remote/TargetState;
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/firestore/remote/TargetState;->addDocumentChange(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/core/DocumentViewChange$Type;)V

    .line 412
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingDocumentUpdates:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->ensureDocumentTargetMapping(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    return-void
.end method

.method private applyBloomFilter(Lcom/google/firebase/firestore/remote/BloomFilter;Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;I)Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;
    .locals 3
    .param p1, "bloomFilter"    # Lcom/google/firebase/firestore/remote/BloomFilter;
    .param p2, "watchChange"    # Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;
    .param p3, "currentCount"    # I

    .line 285
    invoke-virtual {p2}, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;->getExistenceFilter()Lcom/google/firebase/firestore/remote/ExistenceFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/ExistenceFilter;->getCount()I

    move-result v0

    .line 287
    .local v0, "expectedCount":I
    invoke-virtual {p2}, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;->getTargetId()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->filterRemovedDocuments(Lcom/google/firebase/firestore/remote/BloomFilter;I)I

    move-result v1

    .line 289
    .local v1, "removedDocumentCount":I
    sub-int v2, p3, v1

    if-ne v0, v2, :cond_0

    .line 290
    sget-object v2, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;->SUCCESS:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    goto :goto_0

    .line 291
    :cond_0
    sget-object v2, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;->FALSE_POSITIVE:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    .line 289
    :goto_0
    return-object v2
.end method

.method private ensureDocumentTargetMapping(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingDocumentTargetMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 485
    .local v0, "targetMapping":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 486
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 487
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingDocumentTargetMapping:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_0
    return-object v0
.end method

.method private ensureTargetState(I)Lcom/google/firebase/firestore/remote/TargetState;
    .locals 3
    .param p1, "targetId"    # I

    .line 473
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/remote/TargetState;

    .line 474
    .local v0, "targetState":Lcom/google/firebase/firestore/remote/TargetState;
    if-nez v0, :cond_0

    .line 475
    new-instance v1, Lcom/google/firebase/firestore/remote/TargetState;

    invoke-direct {v1}, Lcom/google/firebase/firestore/remote/TargetState;-><init>()V

    move-object v0, v1

    .line 476
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_0
    return-object v0
.end method

.method private filterRemovedDocuments(Lcom/google/firebase/firestore/remote/BloomFilter;I)I
    .locals 7
    .param p1, "bloomFilter"    # Lcom/google/firebase/firestore/remote/BloomFilter;
    .param p2, "targetId"    # I

    .line 299
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetMetadataProvider:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;

    .line 300
    invoke-interface {v0, p2}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;->getRemoteKeysForTarget(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    .line 301
    .local v0, "existingKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    const/4 v1, 0x0

    .line 302
    .local v1, "removalCount":I
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 303
    .local v3, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v4, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetMetadataProvider:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;

    invoke-interface {v4}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v4

    .line 304
    .local v4, "databaseId":Lcom/google/firebase/firestore/model/DatabaseId;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "projects/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 306
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/databases/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 308
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/documents/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 310
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/firestore/model/ResourcePath;->canonicalString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 311
    .local v5, "documentPath":Ljava/lang/String;
    invoke-virtual {p1, v5}, Lcom/google/firebase/firestore/remote/BloomFilter;->mightContain(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 312
    const/4 v6, 0x0

    invoke-direct {p0, p2, v3, v6}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->removeDocumentFromTarget(ILcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;)V

    .line 313
    add-int/lit8 v1, v1, 0x1

    .line 315
    .end local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v4    # "databaseId":Lcom/google/firebase/firestore/model/DatabaseId;
    .end local v5    # "documentPath":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 316
    :cond_1
    return v1
.end method

.method private getCurrentDocumentCountForTarget(I)I
    .locals 4
    .param p1, "targetId"    # I

    .line 455
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->ensureTargetState(I)Lcom/google/firebase/firestore/remote/TargetState;

    move-result-object v0

    .line 456
    .local v0, "targetState":Lcom/google/firebase/firestore/remote/TargetState;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/TargetState;->toTargetChange()Lcom/google/firebase/firestore/remote/TargetChange;

    move-result-object v1

    .line 457
    .local v1, "targetChange":Lcom/google/firebase/firestore/remote/TargetChange;
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetMetadataProvider:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;

    invoke-interface {v2, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;->getRemoteKeysForTarget(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v2

    .line 458
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/TargetChange;->getAddedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 459
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/TargetChange;->getRemovedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 457
    return v2
.end method

.method private getTargetIds(Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;)Ljava/util/Collection;
    .locals 5
    .param p1, "targetChange"    # Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getTargetIds()Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "targetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    return-object v0

    .line 180
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v1, "activeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetStates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 182
    .local v3, "id":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->isActiveTarget(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v3    # "id":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 186
    :cond_2
    return-object v1
.end method

.method private isActiveTarget(I)Z
    .locals 1
    .param p1, "targetId"    # I

    .line 498
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->queryDataForActiveTarget(I)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseBloomFilter(Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;)Lcom/google/firebase/firestore/remote/BloomFilter;
    .locals 7
    .param p1, "watchChange"    # Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;

    .line 254
    nop

    .line 255
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;->getExistenceFilter()Lcom/google/firebase/firestore/remote/ExistenceFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/ExistenceFilter;->getUnchangedNames()Lcom/google/firestore/v1/BloomFilter;

    move-result-object v0

    .line 256
    .local v0, "unchangedNames":Lcom/google/firestore/v1/BloomFilter;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/firestore/v1/BloomFilter;->hasBits()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v0}, Lcom/google/firestore/v1/BloomFilter;->getBits()Lcom/google/firestore/v1/BitSequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firestore/v1/BitSequence;->getBitmap()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 263
    .local v2, "bitmap":Lcom/google/protobuf/ByteString;
    nop

    .line 265
    :try_start_0
    invoke-virtual {v0}, Lcom/google/firestore/v1/BloomFilter;->getBits()Lcom/google/firestore/v1/BitSequence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firestore/v1/BitSequence;->getPadding()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/firestore/v1/BloomFilter;->getHashCount()I

    move-result v4

    .line 264
    invoke-static {v2, v3, v4}, Lcom/google/firebase/firestore/remote/BloomFilter;->create(Lcom/google/protobuf/ByteString;II)Lcom/google/firebase/firestore/remote/BloomFilter;

    move-result-object v3
    :try_end_0
    .catch Lcom/google/firebase/firestore/remote/BloomFilter$BloomFilterCreateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .local v3, "bloomFilter":Lcom/google/firebase/firestore/remote/BloomFilter;
    nop

    .line 275
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/BloomFilter;->getBitCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 276
    return-object v1

    .line 279
    :cond_1
    return-object v3

    .line 266
    .end local v3    # "bloomFilter":Lcom/google/firebase/firestore/remote/BloomFilter;
    :catch_0
    move-exception v3

    .line 267
    .local v3, "e":Lcom/google/firebase/firestore/remote/BloomFilter$BloomFilterCreateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Applying bloom filter failed: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 270
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/BloomFilter$BloomFilterCreateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "); ignoring the bloom filter and falling back to full re-query."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 267
    const-string v6, "WatchChangeAggregator"

    invoke-static {v6, v4, v5}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    return-object v1

    .line 257
    .end local v2    # "bitmap":Lcom/google/protobuf/ByteString;
    .end local v3    # "e":Lcom/google/firebase/firestore/remote/BloomFilter$BloomFilterCreateException;
    :cond_2
    :goto_0
    return-object v1
.end method

.method private queryDataForActiveTarget(I)Lcom/google/firebase/firestore/local/TargetData;
    .locals 2
    .param p1, "targetId"    # I

    .line 507
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/remote/TargetState;

    .line 508
    .local v0, "targetState":Lcom/google/firebase/firestore/remote/TargetState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/TargetState;->isPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    const/4 v1, 0x0

    goto :goto_0

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetMetadataProvider:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;

    invoke-interface {v1, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;->getTargetDataForTarget(I)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v1

    .line 508
    :goto_0
    return-object v1
.end method

.method private removeDocumentFromTarget(ILcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;)V
    .locals 3
    .param p1, "targetId"    # I
    .param p2, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p3, "updatedDocument"    # Lcom/google/firebase/firestore/model/MutableDocument;

    .line 425
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->isActiveTarget(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    return-void

    .line 429
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->ensureTargetState(I)Lcom/google/firebase/firestore/remote/TargetState;

    move-result-object v0

    .line 430
    .local v0, "targetState":Lcom/google/firebase/firestore/remote/TargetState;
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetContainsDocument(ILcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    sget-object v1, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-virtual {v0, p2, v1}, Lcom/google/firebase/firestore/remote/TargetState;->addDocumentChange(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/core/DocumentViewChange$Type;)V

    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/remote/TargetState;->removeDocumentChange(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 438
    :goto_0
    invoke-direct {p0, p2}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->ensureDocumentTargetMapping(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    if-eqz p3, :cond_2

    .line 441
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingDocumentUpdates:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_2
    return-void
.end method

.method private resetTarget(I)V
    .locals 4
    .param p1, "targetId"    # I

    .line 518
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetStates:Ljava/util/Map;

    .line 519
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/remote/TargetState;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/TargetState;->isPending()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 518
    const-string v2, "Should only reset active targets"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 521
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/remote/TargetState;

    invoke-direct {v2}, Lcom/google/firebase/firestore/remote/TargetState;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetMetadataProvider:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;

    .line 526
    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;->getRemoteKeysForTarget(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    .line 527
    .local v0, "existingKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 528
    .local v2, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->removeDocumentFromTarget(ILcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;)V

    .line 529
    .end local v2    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_1

    .line 530
    :cond_1
    return-void
.end method

.method private targetContainsDocument(ILcom/google/firebase/firestore/model/DocumentKey;)Z
    .locals 2
    .param p1, "targetId"    # I
    .param p2, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 534
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetMetadataProvider:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;

    .line 535
    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;->getRemoteKeysForTarget(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    .line 536
    .local v0, "existingKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-virtual {v0, p2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public createRemoteEvent(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/remote/RemoteEvent;
    .locals 12
    .param p1, "snapshotVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 325
    .local v0, "targetChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/firebase/firestore/remote/TargetChange;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 326
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/firebase/firestore/remote/TargetState;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 327
    .local v3, "targetId":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/remote/TargetState;

    .line 329
    .local v4, "targetState":Lcom/google/firebase/firestore/remote/TargetState;
    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->queryDataForActiveTarget(I)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v5

    .line 330
    .local v5, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    if-eqz v5, :cond_1

    .line 331
    invoke-virtual {v4}, Lcom/google/firebase/firestore/remote/TargetState;->isCurrent()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/Target;->isDocumentQuery()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 336
    invoke-virtual {v5}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/Target;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v6

    invoke-static {v6}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v6

    .line 337
    .local v6, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v7, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingDocumentUpdates:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-direct {p0, v3, v6}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetContainsDocument(ILcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 338
    invoke-static {v6, p1}, Lcom/google/firebase/firestore/model/MutableDocument;->newNoDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v7

    .line 339
    .local v7, "result":Lcom/google/firebase/firestore/model/MutableDocument;
    invoke-direct {p0, v3, v6, v7}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->removeDocumentFromTarget(ILcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;)V

    .line 343
    .end local v6    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v7    # "result":Lcom/google/firebase/firestore/model/MutableDocument;
    :cond_0
    invoke-virtual {v4}, Lcom/google/firebase/firestore/remote/TargetState;->hasChanges()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 344
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/firebase/firestore/remote/TargetState;->toTargetChange()Lcom/google/firebase/firestore/remote/TargetChange;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-virtual {v4}, Lcom/google/firebase/firestore/remote/TargetState;->clearChanges()V

    .line 348
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/firebase/firestore/remote/TargetState;>;"
    .end local v3    # "targetId":I
    .end local v4    # "targetState":Lcom/google/firebase/firestore/remote/TargetState;
    .end local v5    # "targetData":Lcom/google/firebase/firestore/local/TargetData;
    :cond_1
    goto :goto_0

    .line 350
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 356
    .local v1, "resolvedLimboDocuments":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingDocumentTargetMapping:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 357
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 358
    .local v4, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 360
    .local v5, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    .line 362
    .local v6, "isOnlyLimboTarget":Z
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 363
    .local v8, "targetId":I
    invoke-direct {p0, v8}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->queryDataForActiveTarget(I)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v9

    .line 364
    .local v9, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/google/firebase/firestore/local/TargetData;->getPurpose()Lcom/google/firebase/firestore/local/QueryPurpose;

    move-result-object v10

    sget-object v11, Lcom/google/firebase/firestore/local/QueryPurpose;->LIMBO_RESOLUTION:Lcom/google/firebase/firestore/local/QueryPurpose;

    invoke-virtual {v10, v11}, Lcom/google/firebase/firestore/local/QueryPurpose;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 365
    const/4 v6, 0x0

    .line 366
    goto :goto_3

    .line 368
    .end local v8    # "targetId":I
    .end local v9    # "targetData":Lcom/google/firebase/firestore/local/TargetData;
    :cond_3
    goto :goto_2

    .line 370
    :cond_4
    :goto_3
    if-eqz v6, :cond_5

    .line 371
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .end local v4    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v5    # "targets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v6    # "isOnlyLimboTarget":Z
    :cond_5
    goto :goto_1

    .line 375
    :cond_6
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingDocumentUpdates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/MutableDocument;

    .line 376
    .local v3, "document":Lcom/google/firebase/firestore/model/MutableDocument;
    invoke-virtual {v3, p1}, Lcom/google/firebase/firestore/model/MutableDocument;->setReadTime(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    .line 377
    .end local v3    # "document":Lcom/google/firebase/firestore/model/MutableDocument;
    goto :goto_4

    .line 379
    :cond_7
    new-instance v2, Lcom/google/firebase/firestore/remote/RemoteEvent;

    .line 382
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iget-object v3, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingTargetResets:Ljava/util/Map;

    .line 383
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    iget-object v3, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingDocumentUpdates:Ljava/util/Map;

    .line 384
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 385
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/firestore/remote/RemoteEvent;-><init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V

    .line 388
    .local v2, "remoteEvent":Lcom/google/firebase/firestore/remote/RemoteEvent;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingDocumentUpdates:Ljava/util/Map;

    .line 389
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingDocumentTargetMapping:Ljava/util/Map;

    .line 390
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingTargetResets:Ljava/util/Map;

    .line 392
    return-object v2
.end method

.method public handleDocumentChange(Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;)V
    .locals 5
    .param p1, "documentChange"    # Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;

    .line 100
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->getNewDocument()Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0

    .line 101
    .local v0, "document":Lcom/google/firebase/firestore/model/MutableDocument;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    .line 103
    .local v1, "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->getUpdatedTargetIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 104
    .local v3, "targetId":I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/MutableDocument;->isFoundDocument()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    invoke-direct {p0, v3, v0}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->addDocumentToTarget(ILcom/google/firebase/firestore/model/MutableDocument;)V

    goto :goto_1

    .line 107
    :cond_0
    invoke-direct {p0, v3, v1, v0}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->removeDocumentFromTarget(ILcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;)V

    .line 109
    .end local v3    # "targetId":I
    :goto_1
    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->getRemovedTargetIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 112
    .restart local v3    # "targetId":I
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->getNewDocument()Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v4

    invoke-direct {p0, v3, v1, v4}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->removeDocumentFromTarget(ILcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;)V

    .line 113
    .end local v3    # "targetId":I
    goto :goto_2

    .line 114
    :cond_2
    return-void
.end method

.method public handleExistenceFilter(Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;)V
    .locals 10
    .param p1, "watchChange"    # Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;

    .line 195
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;->getTargetId()I

    move-result v0

    .line 196
    .local v0, "targetId":I
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;->getExistenceFilter()Lcom/google/firebase/firestore/remote/ExistenceFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/ExistenceFilter;->getCount()I

    move-result v1

    .line 198
    .local v1, "expectedCount":I
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->queryDataForActiveTarget(I)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v2

    .line 199
    .local v2, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    if-eqz v2, :cond_6

    .line 200
    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v3

    .line 201
    .local v3, "target":Lcom/google/firebase/firestore/core/Target;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/Target;->isDocumentQuery()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    if-nez v1, :cond_0

    .line 207
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/Target;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    .line 208
    .local v4, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    sget-object v5, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-static {v4, v5}, Lcom/google/firebase/firestore/model/MutableDocument;->newNoDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v5

    .line 209
    .local v5, "result":Lcom/google/firebase/firestore/model/MutableDocument;
    invoke-direct {p0, v0, v4, v5}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->removeDocumentFromTarget(ILcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;)V

    .line 210
    .end local v4    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v5    # "result":Lcom/google/firebase/firestore/model/MutableDocument;
    goto :goto_3

    .line 211
    :cond_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 212
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 211
    const-string v6, "Single document existence filter with count: %d"

    invoke-static {v4, v6, v5}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 215
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->getCurrentDocumentCountForTarget(I)I

    move-result v4

    .line 216
    .local v4, "currentSize":I
    if-eq v4, v1, :cond_6

    .line 219
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->parseBloomFilter(Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;)Lcom/google/firebase/firestore/remote/BloomFilter;

    move-result-object v5

    .line 221
    .local v5, "bloomFilter":Lcom/google/firebase/firestore/remote/BloomFilter;
    if-eqz v5, :cond_3

    .line 222
    invoke-direct {p0, v5, p1, v4}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->applyBloomFilter(Lcom/google/firebase/firestore/remote/BloomFilter;Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;I)Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    move-result-object v6

    goto :goto_1

    .line 223
    :cond_3
    sget-object v6, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;->SKIPPED:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    :goto_1
    nop

    .line 225
    .local v6, "status":Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;
    sget-object v7, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;->SUCCESS:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    if-eq v6, v7, :cond_5

    .line 228
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->resetTarget(I)V

    .line 231
    sget-object v7, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;->FALSE_POSITIVE:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    if-ne v6, v7, :cond_4

    .line 232
    sget-object v7, Lcom/google/firebase/firestore/local/QueryPurpose;->EXISTENCE_FILTER_MISMATCH_BLOOM:Lcom/google/firebase/firestore/local/QueryPurpose;

    goto :goto_2

    .line 233
    :cond_4
    sget-object v7, Lcom/google/firebase/firestore/local/QueryPurpose;->EXISTENCE_FILTER_MISMATCH:Lcom/google/firebase/firestore/local/QueryPurpose;

    :goto_2
    nop

    .line 235
    .local v7, "purpose":Lcom/google/firebase/firestore/local/QueryPurpose;
    iget-object v8, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->pendingTargetResets:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .end local v7    # "purpose":Lcom/google/firebase/firestore/local/QueryPurpose;
    :cond_5
    invoke-static {}, Lcom/google/firebase/firestore/remote/TestingHooks;->getInstance()Lcom/google/firebase/firestore/remote/TestingHooks;

    move-result-object v7

    .line 242
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;->getExistenceFilter()Lcom/google/firebase/firestore/remote/ExistenceFilter;

    move-result-object v8

    iget-object v9, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetMetadataProvider:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;

    .line 243
    invoke-interface {v9}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v9

    .line 240
    invoke-static {v4, v8, v9, v5, v6}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;->from(ILcom/google/firebase/firestore/remote/ExistenceFilter;Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/remote/BloomFilter;Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;)Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;

    move-result-object v8

    .line 239
    invoke-virtual {v7, v8}, Lcom/google/firebase/firestore/remote/TestingHooks;->notifyOnExistenceFilterMismatch(Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;)V

    .line 249
    .end local v3    # "target":Lcom/google/firebase/firestore/core/Target;
    .end local v4    # "currentSize":I
    .end local v5    # "bloomFilter":Lcom/google/firebase/firestore/remote/BloomFilter;
    .end local v6    # "status":Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;
    :cond_6
    :goto_3
    return-void
.end method

.method public handleTargetChange(Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;)V
    .locals 6
    .param p1, "targetChange"    # Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;

    .line 118
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->getTargetIds(Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 119
    .local v1, "targetId":I
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->ensureTargetState(I)Lcom/google/firebase/firestore/remote/TargetState;

    move-result-object v2

    .line 121
    .local v2, "targetState":Lcom/google/firebase/firestore/remote/TargetState;
    sget-object v3, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$1;->$SwitchMap$com$google$firebase$firestore$remote$WatchChange$WatchTargetChangeType:[I

    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getChangeType()Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 166
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getChangeType()Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Unknown target watch change state: %s"

    invoke-static {v3, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 157
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->isActiveTarget(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->resetTarget(I)V

    .line 162
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/remote/TargetState;->updateResumeToken(Lcom/google/protobuf/ByteString;)V

    goto :goto_2

    .line 151
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->isActiveTarget(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    invoke-virtual {v2}, Lcom/google/firebase/firestore/remote/TargetState;->markCurrent()V

    .line 153
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/remote/TargetState;->updateResumeToken(Lcom/google/protobuf/ByteString;)V

    goto :goto_2

    .line 142
    :pswitch_2
    invoke-virtual {v2}, Lcom/google/firebase/firestore/remote/TargetState;->recordTargetResponse()V

    .line 143
    invoke-virtual {v2}, Lcom/google/firebase/firestore/remote/TargetState;->isPending()Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->removeTarget(I)V

    .line 146
    :cond_0
    nop

    .line 147
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getCause()Lio/grpc/Status;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    .line 146
    const-string v5, "WatchChangeAggregator does not handle errored targets"

    invoke-static {v3, v5, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    goto :goto_2

    .line 129
    :pswitch_3
    invoke-virtual {v2}, Lcom/google/firebase/firestore/remote/TargetState;->recordTargetResponse()V

    .line 130
    invoke-virtual {v2}, Lcom/google/firebase/firestore/remote/TargetState;->isPending()Z

    move-result v3

    if-nez v3, :cond_2

    .line 134
    invoke-virtual {v2}, Lcom/google/firebase/firestore/remote/TargetState;->clearChanges()V

    .line 136
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/remote/TargetState;->updateResumeToken(Lcom/google/protobuf/ByteString;)V

    .line 137
    goto :goto_2

    .line 123
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->isActiveTarget(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/remote/TargetState;->updateResumeToken(Lcom/google/protobuf/ByteString;)V

    .line 168
    .end local v1    # "targetId":I
    .end local v2    # "targetState":Lcom/google/firebase/firestore/remote/TargetState;
    :cond_3
    :goto_2
    goto/16 :goto_0

    .line 169
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method recordPendingTargetRequest(I)V
    .locals 1
    .param p1, "targetId"    # I

    .line 468
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->ensureTargetState(I)Lcom/google/firebase/firestore/remote/TargetState;

    move-result-object v0

    .line 469
    .local v0, "targetState":Lcom/google/firebase/firestore/remote/TargetState;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/TargetState;->recordPendingTargetRequest()V

    .line 470
    return-void
.end method

.method removeTarget(I)V
    .locals 2
    .param p1, "targetId"    # I

    .line 446
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->targetStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    return-void
.end method
