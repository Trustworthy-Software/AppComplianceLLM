.class Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;
.super Ljava/lang/Object;
.source "SQLiteLruReferenceDelegate.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/ReferenceDelegate;
.implements Lcom/google/firebase/firestore/local/LruDelegate;


# static fields
.field static final REMOVE_ORPHANED_DOCUMENTS_BATCH_SIZE:I = 0x64


# instance fields
.field private currentSequenceNumber:J

.field private final garbageCollector:Lcom/google/firebase/firestore/local/LruGarbageCollector;

.field private inMemoryPins:Lcom/google/firebase/firestore/local/ReferenceSet;

.field private listenSequence:Lcom/google/firebase/firestore/core/ListenSequence;

.field private final persistence:Lcom/google/firebase/firestore/local/SQLitePersistence;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;)V
    .locals 2
    .param p1, "persistence"    # Lcom/google/firebase/firestore/local/SQLitePersistence;
    .param p2, "params"    # Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->currentSequenceNumber:J

    .line 45
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 46
    new-instance v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/firestore/local/LruGarbageCollector;-><init>(Lcom/google/firebase/firestore/local/LruDelegate;Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->garbageCollector:Lcom/google/firebase/firestore/local/LruGarbageCollector;

    .line 47
    return-void
.end method

.method private isPinned(Lcom/google/firebase/firestore/model/DocumentKey;)Z
    .locals 1
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 145
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->inMemoryPins:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/ReferenceSet;->containsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->mutationQueuesContainKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$forEachOrphanedDocumentSequenceNumber$1(Lcom/google/firebase/firestore/util/Consumer;Landroid/database/Cursor;)V
    .locals 2
    .param p0, "consumer"    # Lcom/google/firebase/firestore/util/Consumer;
    .param p1, "row"    # Landroid/database/Cursor;

    .line 103
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/firestore/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getSequenceNumberCount$0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2
    .param p0, "row"    # Landroid/database/Cursor;

    .line 89
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private mutationQueuesContainKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z
    .locals 2
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 133
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 134
    const-string v1, "SELECT 1 FROM document_mutations WHERE path = ?"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->isEmpty()Z

    move-result v0

    .line 133
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private removeSentinel(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 3
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 153
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 155
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 153
    const-string v2, "DELETE FROM target_documents WHERE path = ? AND target_id = 0"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method private writeSentinel(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 4
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 201
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 205
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->getCurrentSequenceNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 202
    const-string v3, "INSERT OR REPLACE INTO target_documents (target_id, path, sequence_number) VALUES (0, ?, ?)"

    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    return-void
.end method


# virtual methods
.method public addReference(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 0
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 113
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->writeSentinel(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 114
    return-void
.end method

.method public forEachOrphanedDocumentSequenceNumber(Lcom/google/firebase/firestore/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/Consumer<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "consumer":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 101
    const-string v1, "select sequence_number from target_documents group by path having COUNT(*) = 1 AND target_id = 0"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/util/Consumer;)V

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 104
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

    .line 95
    .local p1, "consumer":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<Lcom/google/firebase/firestore/local/TargetData;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getTargetCache()Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->forEachTarget(Lcom/google/firebase/firestore/util/Consumer;)V

    .line 96
    return-void
.end method

.method public getByteSize()J
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getByteSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentSequenceNumber()J
    .locals 4

    .line 71
    iget-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->currentSequenceNumber:J

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

    .line 74
    iget-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->currentSequenceNumber:J

    return-wide v0
.end method

.method public getGarbageCollector()Lcom/google/firebase/firestore/local/LruGarbageCollector;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->garbageCollector:Lcom/google/firebase/firestore/local/LruGarbageCollector;

    return-object v0
.end method

.method public getSequenceNumberCount()J
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getTargetCache()Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->getTargetCount()J

    move-result-wide v0

    .line 85
    .local v0, "targetCount":J
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 87
    const-string v3, "SELECT COUNT(*) FROM (SELECT sequence_number FROM target_documents GROUP BY path HAVING COUNT(*) = 1 AND target_id = 0)"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda0;-><init>()V

    .line 89
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->firstValue(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 90
    .local v2, "orphanedDocumentCount":J
    add-long v4, v0, v2

    return-wide v4
.end method

.method synthetic lambda$removeOrphanedDocuments$2$com-google-firebase-firestore-local-SQLiteLruReferenceDelegate([ILjava/util/List;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "count"    # [I
    .param p2, "docsToRemove"    # Ljava/util/List;
    .param p3, "row"    # Landroid/database/Cursor;

    .line 173
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/local/EncodedPath;->decodeResourcePath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    .line 174
    .local v1, "path":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-static {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    .line 175
    .local v2, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->isPinned(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    aget v3, p1, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, p1, v0

    .line 177
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->removeSentinel(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onTransactionCommitted()V
    .locals 5

    .line 63
    iget-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->currentSequenceNumber:J

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

    .line 66
    iput-wide v2, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->currentSequenceNumber:J

    .line 67
    return-void
.end method

.method public onTransactionStarted()V
    .locals 4

    .line 55
    iget-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->currentSequenceNumber:J

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

    .line 58
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->listenSequence:Lcom/google/firebase/firestore/core/ListenSequence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/ListenSequence;->next()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->currentSequenceNumber:J

    .line 59
    return-void
.end method

.method public removeMutationReference(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 0
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 128
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->writeSentinel(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 129
    return-void
.end method

.method public removeOrphanedDocuments(J)I
    .locals 9
    .param p1, "upperBound"    # J

    .line 160
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 162
    .local v1, "count":[I
    const/4 v2, 0x1

    .line 164
    .local v2, "resultsRemaining":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v3, "docsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 166
    iget-object v5, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 168
    const-string v6, "select path from target_documents group by path having COUNT(*) = 1 AND target_id = 0 AND sequence_number <= ? LIMIT ?"

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v5

    .line 170
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v1, v3}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;[ILjava/util/List;)V

    .line 171
    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    move-result v5

    .line 182
    .local v5, "rowsProccessed":I
    if-ne v5, v7, :cond_0

    move v4, v0

    :cond_0
    move v2, v4

    .line 183
    .end local v5    # "rowsProccessed":I
    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getRemoteDocumentCache()Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/firebase/firestore/local/RemoteDocumentCache;->removeAll(Ljava/util/Collection;)V

    .line 186
    aget v0, v1, v4

    return v0
.end method

.method public removeReference(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 0
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 118
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->writeSentinel(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 119
    return-void
.end method

.method public removeTarget(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 2
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 191
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->getCurrentSequenceNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/firestore/local/TargetData;->withSequenceNumber(J)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0

    .line 192
    .local v0, "updated":Lcom/google/firebase/firestore/local/TargetData;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getTargetCache()Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->updateTargetData(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 193
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

    .line 123
    .local p3, "activeTargetIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->persistence:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getTargetCache()Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->removeQueries(JLandroid/util/SparseArray;)I

    move-result v0

    return v0
.end method

.method public setInMemoryPins(Lcom/google/firebase/firestore/local/ReferenceSet;)V
    .locals 0
    .param p1, "inMemoryPins"    # Lcom/google/firebase/firestore/local/ReferenceSet;

    .line 108
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->inMemoryPins:Lcom/google/firebase/firestore/local/ReferenceSet;

    .line 109
    return-void
.end method

.method start(J)V
    .locals 1
    .param p1, "highestSequenceNumber"    # J

    .line 50
    new-instance v0, Lcom/google/firebase/firestore/core/ListenSequence;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/firestore/core/ListenSequence;-><init>(J)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->listenSequence:Lcom/google/firebase/firestore/core/ListenSequence;

    .line 51
    return-void
.end method

.method public updateLimboDocument(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 0
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 197
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->writeSentinel(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 198
    return-void
.end method
