.class final Lcom/google/firebase/firestore/local/MemoryMutationQueue;
.super Ljava/lang/Object;
.source "MemoryMutationQueue.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/MutationQueue;


# instance fields
.field private batchesByDocumentKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/local/DocumentReference;",
            ">;"
        }
    .end annotation
.end field

.field private final indexManager:Lcom/google/firebase/firestore/local/MemoryIndexManager;

.field private lastStreamToken:Lcom/google/protobuf/ByteString;

.field private nextBatchId:I

.field private final persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/local/MemoryPersistence;Lcom/google/firebase/firestore/auth/User;)V
    .locals 3
    .param p1, "persistence"    # Lcom/google/firebase/firestore/local/MemoryPersistence;
    .param p2, "user"    # Lcom/google/firebase/firestore/auth/User;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    .line 79
    new-instance v0, Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/local/DocumentReference;->BY_KEY:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->batchesByDocumentKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->nextBatchId:I

    .line 81
    sget-object v0, Lcom/google/firebase/firestore/remote/WriteStream;->EMPTY_STREAM_TOKEN:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->lastStreamToken:Lcom/google/protobuf/ByteString;

    .line 82
    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getIndexManager(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/firestore/local/MemoryIndexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->indexManager:Lcom/google/firebase/firestore/local/MemoryIndexManager;

    .line 83
    return-void
.end method

.method private indexOfBatchId(I)I
    .locals 3
    .param p1, "batchId"    # I

    .line 348
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 350
    return v1

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 357
    .local v0, "firstBatch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v1

    .line 358
    .local v1, "firstBatchId":I
    sub-int v2, p1, v1

    return v2
.end method

.method private indexOfExistingBatchId(ILjava/lang/String;)I
    .locals 4
    .param p1, "batchId"    # I
    .param p2, "action"    # Ljava/lang/String;

    .line 370
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->indexOfBatchId(I)I

    move-result v0

    .line 371
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Batches must exist to be %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 372
    return v0
.end method

.method private lookupMutationBatches(Lcom/google/firebase/database/collection/ImmutableSortedSet;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation

    .line 282
    .local p1, "batchIds":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationBatch;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 284
    .local v2, "batchId":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->lookupMutationBatch(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v3

    .line 285
    .local v3, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    if-eqz v3, :cond_0

    .line 286
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v2    # "batchId":Ljava/lang/Integer;
    .end local v3    # "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    :cond_0
    goto :goto_0

    .line 290
    :cond_1
    return-object v0
.end method


# virtual methods
.method public acknowledgeBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatch;Lcom/google/protobuf/ByteString;)V
    .locals 7
    .param p1, "batch"    # Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .param p2, "streamToken"    # Lcom/google/protobuf/ByteString;

    .line 107
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v0

    .line 108
    .local v0, "batchId":I
    const-string v1, "acknowledged"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->indexOfExistingBatchId(ILjava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "batchIndex":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Can only acknowledge the first batch in the mutation queue"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v4, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 113
    .local v4, "check":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    nop

    .line 114
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v5

    if-ne v0, v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 116
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 117
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 113
    const-string v5, "Queue ordering failure: expected batch %d, got batch %d"

    invoke-static {v2, v5, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-static {p2}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    iput-object v2, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->lastStreamToken:Lcom/google/protobuf/ByteString;

    .line 120
    return-void
.end method

.method public addMutationBatch(Lcom/google/firebase/Timestamp;Ljava/util/List;Ljava/util/List;)Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .locals 8
    .param p1, "localWriteTime"    # Lcom/google/firebase/Timestamp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/Timestamp;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;)",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;"
        }
    .end annotation

    .line 135
    .local p2, "baseMutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    .local p3, "mutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Mutation batches should not be empty"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->nextBatchId:I

    .line 138
    .local v0, "batchId":I
    iget v2, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->nextBatchId:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->nextBatchId:I

    .line 140
    iget-object v2, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 141
    .local v2, "size":I
    if-lez v2, :cond_1

    .line 142
    iget-object v4, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 143
    .local v4, "prior":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    nop

    .line 144
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v5

    if-ge v5, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 143
    const-string v5, "Mutation batchIds must be monotonically increasing order"

    invoke-static {v1, v5, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 147
    .end local v4    # "prior":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    :cond_1
    new-instance v1, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;-><init>(ILcom/google/firebase/Timestamp;Ljava/util/List;Ljava/util/List;)V

    .line 148
    .local v1, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    iget-object v3, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 152
    .local v4, "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    iget-object v5, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->batchesByDocumentKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    new-instance v6, Lcom/google/firebase/firestore/local/DocumentReference;

    .line 153
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/google/firebase/firestore/local/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    invoke-virtual {v5, v6}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->batchesByDocumentKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 155
    iget-object v5, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->indexManager:Lcom/google/firebase/firestore/local/MemoryIndexManager;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/firestore/model/DocumentKey;->getCollectionPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/local/MemoryIndexManager;->addToCollectionParentIndex(Lcom/google/firebase/firestore/model/ResourcePath;)V

    .line 156
    .end local v4    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    goto :goto_1

    .line 158
    :cond_2
    return-object v1
.end method

.method containsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z
    .locals 4
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 326
    new-instance v0, Lcom/google/firebase/firestore/local/DocumentReference;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/local/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    .line 328
    .local v0, "reference":Lcom/google/firebase/firestore/local/DocumentReference;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->batchesByDocumentKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    .line 329
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/local/DocumentReference;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 330
    return v1

    .line 333
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/local/DocumentReference;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    .line 334
    .local v1, "firstKey":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public getAllMutationBatches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllMutationBatchesAffectingDocumentKey(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/util/List;
    .locals 9
    .param p1, "documentKey"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Lcom/google/firebase/firestore/local/DocumentReference;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/local/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    .line 199
    .local v0, "start":Lcom/google/firebase/firestore/local/DocumentReference;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationBatch;>;"
    iget-object v3, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->batchesByDocumentKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v3, v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v3

    .line 201
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/local/DocumentReference;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/local/DocumentReference;

    .line 203
    .local v4, "reference":Lcom/google/firebase/firestore/local/DocumentReference;
    invoke-virtual {v4}, Lcom/google/firebase/firestore/local/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 204
    goto :goto_2

    .line 207
    :cond_0
    invoke-virtual {v4}, Lcom/google/firebase/firestore/local/DocumentReference;->getId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->lookupMutationBatch(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v5

    .line 208
    .local v5, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    if-eqz v5, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    const-string v7, "Batches in the index must exist in the main table"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 209
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v4    # "reference":Lcom/google/firebase/firestore/local/DocumentReference;
    .end local v5    # "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    goto :goto_0

    .line 212
    :cond_2
    :goto_2
    return-object v2
.end method

.method public getAllMutationBatchesAffectingDocumentKeys(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation

    .line 218
    .local p1, "documentKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    new-instance v0, Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/firestore/util/Util;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 221
    .local v0, "uniqueBatchIDs":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 222
    .local v2, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    new-instance v3, Lcom/google/firebase/firestore/local/DocumentReference;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/google/firebase/firestore/local/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    .line 223
    .local v3, "start":Lcom/google/firebase/firestore/local/DocumentReference;
    iget-object v4, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->batchesByDocumentKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v4, v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v4

    .line 224
    .local v4, "batchesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/local/DocumentReference;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 225
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/local/DocumentReference;

    .line 226
    .local v5, "reference":Lcom/google/firebase/firestore/local/DocumentReference;
    invoke-virtual {v5}, Lcom/google/firebase/firestore/local/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 227
    goto :goto_2

    .line 229
    :cond_0
    invoke-virtual {v5}, Lcom/google/firebase/firestore/local/DocumentReference;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    .line 230
    .end local v5    # "reference":Lcom/google/firebase/firestore/local/DocumentReference;
    goto :goto_1

    .line 231
    .end local v2    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v3    # "start":Lcom/google/firebase/firestore/local/DocumentReference;
    .end local v4    # "batchesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/local/DocumentReference;>;"
    :cond_1
    :goto_2
    goto :goto_0

    .line 233
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->lookupMutationBatches(Lcom/google/firebase/database/collection/ImmutableSortedSet;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAllMutationBatchesAffectingQuery(Lcom/google/firebase/firestore/core/Query;)Ljava/util/List;
    .locals 9
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation

    .line 238
    nop

    .line 239
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->isCollectionGroupQuery()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 238
    const-string v3, "CollectionGroup queries should be handled in LocalDocumentsView"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 244
    .local v0, "prefix":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 250
    .local v2, "immediateChildrenPathLength":I
    move-object v3, v0

    .line 251
    .local v3, "startPath":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-static {v3}, Lcom/google/firebase/firestore/model/DocumentKey;->isDocumentKey(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 252
    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/ResourcePath;->append(Ljava/lang/String;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 254
    :cond_0
    new-instance v4, Lcom/google/firebase/firestore/local/DocumentReference;

    invoke-static {v3}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/google/firebase/firestore/local/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    move-object v1, v4

    .line 257
    .local v1, "start":Lcom/google/firebase/firestore/local/DocumentReference;
    new-instance v4, Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/google/firebase/firestore/util/Util;->comparator()Ljava/util/Comparator;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/firebase/database/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 260
    .local v4, "uniqueBatchIDs":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->batchesByDocumentKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v5, v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v5

    .line 261
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/local/DocumentReference;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 262
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/local/DocumentReference;

    .line 263
    .local v6, "reference":Lcom/google/firebase/firestore/local/DocumentReference;
    invoke-virtual {v6}, Lcom/google/firebase/firestore/local/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v7

    .line 264
    .local v7, "rowKeyPath":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {v0, v7}, Lcom/google/firebase/firestore/model/ResourcePath;->isPrefixOf(Lcom/google/firebase/firestore/model/BasePath;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 265
    goto :goto_1

    .line 271
    :cond_1
    invoke-virtual {v7}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v8

    if-ne v8, v2, :cond_2

    .line 272
    invoke-virtual {v6}, Lcom/google/firebase/firestore/local/DocumentReference;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v4

    .line 274
    .end local v6    # "reference":Lcom/google/firebase/firestore/local/DocumentReference;
    .end local v7    # "rowKeyPath":Lcom/google/firebase/firestore/model/ResourcePath;
    :cond_2
    goto :goto_0

    .line 276
    :cond_3
    :goto_1
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->lookupMutationBatches(Lcom/google/firebase/database/collection/ImmutableSortedSet;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method

.method getByteSize(Lcom/google/firebase/firestore/local/LocalSerializer;)J
    .locals 6
    .param p1, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 376
    const-wide/16 v0, 0x0

    .line 377
    .local v0, "count":J
    iget-object v2, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 378
    .local v3, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    invoke-virtual {p1, v3}, Lcom/google/firebase/firestore/local/LocalSerializer;->encodeMutationBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatch;)Lcom/google/firebase/firestore/proto/WriteBatch;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/proto/WriteBatch;->getSerializedSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 379
    .end local v3    # "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    goto :goto_0

    .line 380
    :cond_0
    return-wide v0
.end method

.method public getHighestUnacknowledgedBatchId()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->nextBatchId:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0
.end method

.method public getLastStreamToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->lastStreamToken:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNextMutationBatchAfterBatchId(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .locals 4
    .param p1, "batchId"    # I

    .line 177
    add-int/lit8 v0, p1, 0x1

    .line 180
    .local v0, "nextBatchId":I
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->indexOfBatchId(I)I

    move-result v1

    .line 181
    .local v1, "rawIndex":I
    if-gez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 182
    .local v2, "index":I
    :goto_0
    iget-object v3, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    iget-object v3, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public isEmpty()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public lookupMutationBatch(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .locals 5
    .param p1, "batchId"    # I

    .line 164
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->indexOfBatchId(I)I

    move-result v0

    .line 165
    .local v0, "index":I
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 170
    .local v1, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const-string v4, "If found batch must match"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 171
    return-object v1

    .line 166
    .end local v1    # "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public performConsistencyCheck()V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->batchesByDocumentKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 318
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 317
    const-string v2, "Document leak -- detected dangling mutation references when queue is empty."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 321
    :cond_0
    return-void
.end method

.method public removeMutationBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatch;)V
    .locals 7
    .param p1, "batch"    # Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 297
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v0

    const-string v1, "removed"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->indexOfExistingBatchId(ILjava/lang/String;)I

    move-result v0

    .line 298
    .local v0, "batchIndex":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Can only remove the first entry of the mutation queue"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v2, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->queue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 303
    iget-object v1, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->batchesByDocumentKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 304
    .local v1, "references":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/local/DocumentReference;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getMutations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 305
    .local v3, "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    .line 306
    .local v4, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v5, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->removeMutationReference(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 308
    new-instance v5, Lcom/google/firebase/firestore/local/DocumentReference;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/google/firebase/firestore/local/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    .line 309
    .local v5, "reference":Lcom/google/firebase/firestore/local/DocumentReference;
    invoke-virtual {v1, v5}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    .line 310
    .end local v3    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    .end local v4    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v5    # "reference":Lcom/google/firebase/firestore/local/DocumentReference;
    goto :goto_1

    .line 311
    :cond_1
    iput-object v1, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->batchesByDocumentKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 312
    return-void
.end method

.method public setLastStreamToken(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "streamToken"    # Lcom/google/protobuf/ByteString;

    .line 129
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->lastStreamToken:Lcom/google/protobuf/ByteString;

    .line 130
    return-void
.end method

.method public start()V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->nextBatchId:I

    .line 96
    :cond_0
    return-void
.end method
