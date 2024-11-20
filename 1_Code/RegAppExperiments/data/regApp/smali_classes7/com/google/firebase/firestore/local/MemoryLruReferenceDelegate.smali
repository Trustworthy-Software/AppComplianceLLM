.class Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;
.super Ljava/lang/Object;
.source "MemoryLruReferenceDelegate.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/ReferenceDelegate;
.implements Lcom/google/firebase/firestore/local/LruDelegate;


# instance fields
.field private currentSequenceNumber:J

.field private final garbageCollector:Lcom/google/firebase/firestore/local/LruGarbageCollector;

.field private inMemoryPins:Lcom/google/firebase/firestore/local/ReferenceSet;

.field private final listenSequence:Lcom/google/firebase/firestore/core/ListenSequence;

.field private final orphanedSequenceNumbers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

.field private final serializer:Lcom/google/firebase/firestore/local/LocalSerializer;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/local/MemoryPersistence;Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;Lcom/google/firebase/firestore/local/LocalSerializer;)V
    .locals 3
    .param p1, "persistence"    # Lcom/google/firebase/firestore/local/MemoryPersistence;
    .param p2, "params"    # Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;
    .param p3, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    .line 44
    iput-object p3, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->orphanedSequenceNumbers:Ljava/util/Map;

    .line 46
    new-instance v0, Lcom/google/firebase/firestore/core/ListenSequence;

    .line 47
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getTargetCache()Lcom/google/firebase/firestore/local/MemoryTargetCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/MemoryTargetCache;->getHighestListenSequenceNumber()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/core/ListenSequence;-><init>(J)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->listenSequence:Lcom/google/firebase/firestore/core/ListenSequence;

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->currentSequenceNumber:J

    .line 49
    new-instance v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/firestore/local/LruGarbageCollector;-><init>(Lcom/google/firebase/firestore/local/LruDelegate;Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->garbageCollector:Lcom/google/firebase/firestore/local/LruGarbageCollector;

    .line 50
    return-void
.end method

.method private isPinned(Lcom/google/firebase/firestore/model/DocumentKey;J)Z
    .locals 4
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "upperBound"    # J

    .line 173
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->mutationQueuesContainsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 174
    return v1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->inMemoryPins:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/ReferenceSet;->containsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    return v1

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getTargetCache()Lcom/google/firebase/firestore/local/MemoryTargetCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/MemoryTargetCache;->containsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    return v1

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->orphanedSequenceNumbers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 186
    .local v0, "sequenceNumber":Ljava/lang/Long;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$getSequenceNumberCount$0([JLjava/lang/Long;)V
    .locals 5
    .param p0, "orphanedCount"    # [J
    .param p1, "sequenceNumber"    # Ljava/lang/Long;

    .line 92
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 93
    return-void
.end method

.method private mutationQueuesContainsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z
    .locals 3
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 160
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getMutationQueues()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/local/MemoryMutationQueue;

    .line 161
    .local v1, "mutationQueue":Lcom/google/firebase/firestore/local/MemoryMutationQueue;
    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->containsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const/4 v0, 0x1

    return v0

    .line 164
    .end local v1    # "mutationQueue":Lcom/google/firebase/firestore/local/MemoryMutationQueue;
    :cond_0
    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addReference(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 3
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 146
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->orphanedSequenceNumbers:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->getCurrentSequenceNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public forEachOrphanedDocumentSequenceNumber(Lcom/google/firebase/firestore/util/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/Consumer<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p1, "consumer":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->orphanedSequenceNumbers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->isPinned(Lcom/google/firebase/firestore/model/DocumentKey;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-interface {p1, v2}, Lcom/google/firebase/firestore/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 105
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Ljava/lang/Long;>;"
    :cond_0
    goto :goto_0

    .line 106
    :cond_1
    return-void
.end method

.method public forEachTarget(Lcom/google/firebase/firestore/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/Consumer<",
            "Lcom/google/firebase/firestore/local/TargetData;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p1, "consumer":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<Lcom/google/firebase/firestore/local/TargetData;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getTargetCache()Lcom/google/firebase/firestore/local/MemoryTargetCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/MemoryTargetCache;->forEachTarget(Lcom/google/firebase/firestore/util/Consumer;)V

    .line 84
    return-void
.end method

.method public getByteSize()J
    .locals 6

    .line 194
    const-wide/16 v0, 0x0

    .line 195
    .local v0, "count":J
    iget-object v2, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getTargetCache()Lcom/google/firebase/firestore/local/MemoryTargetCache;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/MemoryTargetCache;->getByteSize(Lcom/google/firebase/firestore/local/LocalSerializer;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 196
    iget-object v2, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getRemoteDocumentCache()Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->getByteSize(Lcom/google/firebase/firestore/local/LocalSerializer;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 197
    iget-object v2, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getMutationQueues()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/local/MemoryMutationQueue;

    .line 198
    .local v3, "queue":Lcom/google/firebase/firestore/local/MemoryMutationQueue;
    iget-object v4, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/local/MemoryMutationQueue;->getByteSize(Lcom/google/firebase/firestore/local/LocalSerializer;)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 199
    .end local v3    # "queue":Lcom/google/firebase/firestore/local/MemoryMutationQueue;
    goto :goto_0

    .line 200
    :cond_0
    return-wide v0
.end method

.method public getCurrentSequenceNumber()J
    .locals 4

    .line 75
    iget-wide v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->currentSequenceNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Attempting to get a sequence number outside of a transaction"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-wide v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->currentSequenceNumber:J

    return-wide v0
.end method

.method public getGarbageCollector()Lcom/google/firebase/firestore/local/LruGarbageCollector;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->garbageCollector:Lcom/google/firebase/firestore/local/LruGarbageCollector;

    return-object v0
.end method

.method public getSequenceNumberCount()J
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getTargetCache()Lcom/google/firebase/firestore/local/MemoryTargetCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/MemoryTargetCache;->getTargetCount()J

    move-result-wide v0

    .line 89
    .local v0, "targetCount":J
    const/4 v2, 0x1

    new-array v2, v2, [J

    .line 90
    .local v2, "orphanedCount":[J
    new-instance v3, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate$$ExternalSyntheticLambda0;-><init>([J)V

    invoke-virtual {p0, v3}, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->forEachOrphanedDocumentSequenceNumber(Lcom/google/firebase/firestore/util/Consumer;)V

    .line 94
    const/4 v3, 0x0

    aget-wide v3, v2, v3

    add-long/2addr v3, v0

    return-wide v3
.end method

.method public onTransactionCommitted()V
    .locals 5

    .line 67
    iget-wide v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->currentSequenceNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v4, "Committing a transaction without having started one"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iput-wide v2, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->currentSequenceNumber:J

    .line 71
    return-void
.end method

.method public onTransactionStarted()V
    .locals 4

    .line 59
    iget-wide v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->currentSequenceNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Starting a transaction without committing the previous one"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->listenSequence:Lcom/google/firebase/firestore/core/ListenSequence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/ListenSequence;->next()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->currentSequenceNumber:J

    .line 63
    return-void
.end method

.method public removeMutationReference(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 3
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 135
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->orphanedSequenceNumbers:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->getCurrentSequenceNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public removeOrphanedDocuments(J)I
    .locals 6
    .param p1, "upperBound"    # J

    .line 120
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getRemoteDocumentCache()Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;

    move-result-object v0

    .line 121
    .local v0, "cache":Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v1, "docsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->getDocuments()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/Document;

    .line 123
    .local v3, "doc":Lcom/google/firebase/firestore/model/Document;
    invoke-interface {v3}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    .line 124
    .local v4, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-direct {p0, v4, p1, p2}, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->isPinned(Lcom/google/firebase/firestore/model/DocumentKey;J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 125
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v5, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->orphanedSequenceNumbers:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v3    # "doc":Lcom/google/firebase/firestore/model/Document;
    .end local v4    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    :cond_0
    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;->removeAll(Ljava/util/Collection;)V

    .line 130
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method public removeReference(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 3
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 151
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->orphanedSequenceNumbers:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->getCurrentSequenceNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public removeTarget(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 2
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 140
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->getCurrentSequenceNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/firestore/local/TargetData;->withSequenceNumber(J)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0

    .line 141
    .local v0, "updated":Lcom/google/firebase/firestore/local/TargetData;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getTargetCache()Lcom/google/firebase/firestore/local/MemoryTargetCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/local/MemoryTargetCache;->updateTargetData(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 142
    return-void
.end method

.method public removeTargets(JLandroid/util/SparseArray;)I
    .locals 1
    .param p1, "upperBound"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/SparseArray<",
            "*>;)I"
        }
    .end annotation

    .line 115
    .local p3, "activeTargetIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getTargetCache()Lcom/google/firebase/firestore/local/MemoryTargetCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/firestore/local/MemoryTargetCache;->removeQueries(JLandroid/util/SparseArray;)I

    move-result v0

    return v0
.end method

.method public setInMemoryPins(Lcom/google/firebase/firestore/local/ReferenceSet;)V
    .locals 0
    .param p1, "inMemoryPins"    # Lcom/google/firebase/firestore/local/ReferenceSet;

    .line 110
    iput-object p1, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->inMemoryPins:Lcom/google/firebase/firestore/local/ReferenceSet;

    .line 111
    return-void
.end method

.method public updateLimboDocument(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 3
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 156
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->orphanedSequenceNumbers:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->getCurrentSequenceNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method
