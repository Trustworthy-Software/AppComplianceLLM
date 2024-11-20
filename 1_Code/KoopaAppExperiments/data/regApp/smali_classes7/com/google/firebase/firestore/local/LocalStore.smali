.class public final Lcom/google/firebase/firestore/local/LocalStore;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/google/firebase/firestore/bundle/BundleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;,
        Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;
    }
.end annotation


# static fields
.field private static final RESUME_TOKEN_MAX_AGE_SECONDS:J


# instance fields
.field private final bundleCache:Lcom/google/firebase/firestore/local/BundleCache;

.field private documentOverlayCache:Lcom/google/firebase/firestore/local/DocumentOverlayCache;

.field private indexManager:Lcom/google/firebase/firestore/local/IndexManager;

.field private localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

.field private final localViewReferences:Lcom/google/firebase/firestore/local/ReferenceSet;

.field private mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

.field private final persistence:Lcom/google/firebase/firestore/local/Persistence;

.field private final queryDataByTarget:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/firestore/local/TargetData;",
            ">;"
        }
    .end annotation
.end field

.field private final queryEngine:Lcom/google/firebase/firestore/local/QueryEngine;

.field private final remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

.field private final targetCache:Lcom/google/firebase/firestore/local/TargetCache;

.field private final targetIdByTarget:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/core/Target;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final targetIdGenerator:Lcom/google/firebase/firestore/core/TargetIdGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 109
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/firestore/local/LocalStore;->RESUME_TOKEN_MAX_AGE_SECONDS:J

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/local/Persistence;Lcom/google/firebase/firestore/local/QueryEngine;Lcom/google/firebase/firestore/auth/User;)V
    .locals 3
    .param p1, "persistence"    # Lcom/google/firebase/firestore/local/Persistence;
    .param p2, "queryEngine"    # Lcom/google/firebase/firestore/local/QueryEngine;
    .param p3, "initialUser"    # Lcom/google/firebase/firestore/auth/User;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    nop

    .line 152
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/Persistence;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 151
    const-string v2, "LocalStore was passed an unstarted persistence implementation"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iput-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    .line 154
    iput-object p2, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryEngine:Lcom/google/firebase/firestore/local/QueryEngine;

    .line 156
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/Persistence;->getTargetCache()Lcom/google/firebase/firestore/local/TargetCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    .line 157
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/Persistence;->getBundleCache()Lcom/google/firebase/firestore/local/BundleCache;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->bundleCache:Lcom/google/firebase/firestore/local/BundleCache;

    .line 158
    invoke-interface {v0}, Lcom/google/firebase/firestore/local/TargetCache;->getHighestTargetId()I

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/firestore/core/TargetIdGenerator;->forTargetCache(I)Lcom/google/firebase/firestore/core/TargetIdGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetIdGenerator:Lcom/google/firebase/firestore/core/TargetIdGenerator;

    .line 159
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/Persistence;->getRemoteDocumentCache()Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    .line 160
    new-instance v0, Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/ReferenceSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->localViewReferences:Lcom/google/firebase/firestore/local/ReferenceSet;

    .line 161
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetIdByTarget:Ljava/util/Map;

    .line 164
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/Persistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->setInMemoryPins(Lcom/google/firebase/firestore/local/ReferenceSet;)V

    .line 166
    invoke-direct {p0, p3}, Lcom/google/firebase/firestore/local/LocalStore;->initializeUserComponents(Lcom/google/firebase/firestore/auth/User;)V

    .line 167
    return-void
.end method

.method private applyWriteToRemoteDocuments(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)V
    .locals 9
    .param p1, "batchResult"    # Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;

    .line 882
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getBatch()Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0

    .line 883
    .local v0, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getKeys()Ljava/util/Set;

    move-result-object v1

    .line 884
    .local v1, "docKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 885
    .local v3, "docKey":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v4, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    invoke-interface {v4, v3}, Lcom/google/firebase/firestore/local/RemoteDocumentCache;->get(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v4

    .line 886
    .local v4, "doc":Lcom/google/firebase/firestore/model/MutableDocument;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getDocVersions()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 887
    .local v5, "ackVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_1
    const-string v8, "docVersions should contain every doc in the write."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 889
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v6

    if-gez v6, :cond_1

    .line 890
    invoke-virtual {v0, v4, p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->applyToRemoteDocument(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)V

    .line 891
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/MutableDocument;->isValidDocument()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 892
    iget-object v6, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getCommitVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lcom/google/firebase/firestore/local/RemoteDocumentCache;->add(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    .line 895
    .end local v3    # "docKey":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v4    # "doc":Lcom/google/firebase/firestore/model/MutableDocument;
    .end local v5    # "ackVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    :cond_1
    goto :goto_0

    .line 897
    :cond_2
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v2, v0}, Lcom/google/firebase/firestore/local/MutationQueue;->removeMutationBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatch;)V

    .line 898
    return-void
.end method

.method private getKeysWithTransformResults(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)Ljava/util/Set;
    .locals 4
    .param p1, "batchResult"    # Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 327
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getMutationResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 328
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getMutationResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/MutationResult;

    .line 329
    .local v2, "mutationResult":Lcom/google/firebase/firestore/model/mutation/MutationResult;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getTransformResults()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 330
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getBatch()Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getMutations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/mutation/Mutation;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v2    # "mutationResult":Lcom/google/firebase/firestore/model/mutation/MutationResult;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private initializeUserComponents(Lcom/google/firebase/firestore/auth/User;)V
    .locals 5
    .param p1, "user"    # Lcom/google/firebase/firestore/auth/User;

    .line 171
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/Persistence;->getIndexManager(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/firestore/local/IndexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    .line 172
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/firestore/local/Persistence;->getMutationQueue(Lcom/google/firebase/firestore/auth/User;Lcom/google/firebase/firestore/local/IndexManager;)Lcom/google/firebase/firestore/local/MutationQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    .line 173
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/Persistence;->getDocumentOverlayCache(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/firestore/local/DocumentOverlayCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->documentOverlayCache:Lcom/google/firebase/firestore/local/DocumentOverlayCache;

    .line 174
    new-instance v0, Lcom/google/firebase/firestore/local/LocalDocumentsView;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    iget-object v3, p0, Lcom/google/firebase/firestore/local/LocalStore;->documentOverlayCache:Lcom/google/firebase/firestore/local/DocumentOverlayCache;

    iget-object v4, p0, Lcom/google/firebase/firestore/local/LocalStore;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/firestore/local/LocalDocumentsView;-><init>(Lcom/google/firebase/firestore/local/RemoteDocumentCache;Lcom/google/firebase/firestore/local/MutationQueue;Lcom/google/firebase/firestore/local/DocumentOverlayCache;Lcom/google/firebase/firestore/local/IndexManager;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    .line 177
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-interface {v0, v1}, Lcom/google/firebase/firestore/local/RemoteDocumentCache;->setIndexManager(Lcom/google/firebase/firestore/local/IndexManager;)V

    .line 178
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryEngine:Lcom/google/firebase/firestore/local/QueryEngine;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/local/QueryEngine;->initialize(Lcom/google/firebase/firestore/local/LocalDocumentsView;Lcom/google/firebase/firestore/local/IndexManager;)V

    .line 179
    return-void
.end method

.method private static newUmbrellaTarget(Ljava/lang/String;)Lcom/google/firebase/firestore/core/Target;
    .locals 2
    .param p0, "bundleName"    # Ljava/lang/String;

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__bundle__/docs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/core/Query;->atPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    return-object v0
.end method

.method private populateDocumentChanges(Ljava/util/Map;)Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;)",
            "Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;"
        }
    .end annotation

    .line 500
    .local p1, "documents":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 501
    .local v0, "changedDocs":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v1, "removedDocs":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 506
    .local v2, "conditionChanged":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-object v3, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/firebase/firestore/local/RemoteDocumentCache;->getAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v3

    .line 508
    .local v3, "existingDocs":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 509
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 510
    .local v6, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/model/MutableDocument;

    .line 511
    .local v7, "doc":Lcom/google/firebase/firestore/model/MutableDocument;
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/model/MutableDocument;

    .line 513
    .local v8, "existingDoc":Lcom/google/firebase/firestore/model/MutableDocument;
    invoke-virtual {v7}, Lcom/google/firebase/firestore/model/MutableDocument;->isFoundDocument()Z

    move-result v9

    invoke-virtual {v8}, Lcom/google/firebase/firestore/model/MutableDocument;->isFoundDocument()Z

    move-result v10

    if-eq v9, v10, :cond_0

    .line 514
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_0
    invoke-virtual {v7}, Lcom/google/firebase/firestore/model/MutableDocument;->isNoDocument()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v9

    sget-object v10, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v9, v10}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 523
    invoke-virtual {v7}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 525
    :cond_1
    invoke-virtual {v8}, Lcom/google/firebase/firestore/model/MutableDocument;->isValidDocument()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 526
    invoke-virtual {v7}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v9

    if-gtz v9, :cond_3

    .line 527
    invoke-virtual {v7}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v9

    if-nez v9, :cond_2

    .line 528
    invoke-virtual {v8}, Lcom/google/firebase/firestore/model/MutableDocument;->hasPendingWrites()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 535
    :cond_2
    nop

    .line 539
    invoke-virtual {v8}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v9

    .line 540
    invoke-virtual {v7}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v10

    filled-new-array {v6, v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 535
    const-string v10, "LocalStore"

    const-string v11, "Ignoring outdated watch update for %s.Current version: %s  Watch version: %s"

    invoke-static {v10, v11, v9}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 529
    :cond_3
    :goto_1
    sget-object v9, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 530
    invoke-virtual {v7}, Lcom/google/firebase/firestore/model/MutableDocument;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    .line 529
    const-string v11, "Cannot add a document when the remote version is zero"

    invoke-static {v9, v11, v10}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 532
    iget-object v9, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    invoke-virtual {v7}, Lcom/google/firebase/firestore/model/MutableDocument;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v10

    invoke-interface {v9, v7, v10}, Lcom/google/firebase/firestore/local/RemoteDocumentCache;->add(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    .line 533
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    .end local v6    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v7    # "doc":Lcom/google/firebase/firestore/model/MutableDocument;
    .end local v8    # "existingDoc":Lcom/google/firebase/firestore/model/MutableDocument;
    :goto_2
    goto/16 :goto_0

    .line 543
    :cond_4
    iget-object v4, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    invoke-interface {v4, v1}, Lcom/google/firebase/firestore/local/RemoteDocumentCache;->removeAll(Ljava/util/Collection;)V

    .line 544
    new-instance v4, Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v2, v5}, Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;-><init>(Ljava/util/Map;Ljava/util/Set;Lcom/google/firebase/firestore/local/LocalStore$1;)V

    return-object v4
.end method

.method private static shouldPersistTargetData(Lcom/google/firebase/firestore/local/TargetData;Lcom/google/firebase/firestore/local/TargetData;Lcom/google/firebase/firestore/remote/TargetChange;)Z
    .locals 16
    .param p0, "oldTargetData"    # Lcom/google/firebase/firestore/local/TargetData;
    .param p1, "newTargetData"    # Lcom/google/firebase/firestore/local/TargetData;
    .param p2, "change"    # Lcom/google/firebase/firestore/remote/TargetChange;

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/firestore/local/TargetData;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 566
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/local/TargetData;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v2

    .line 567
    .local v2, "newSeconds":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/firestore/local/TargetData;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v4

    .line 568
    .local v4, "oldSeconds":J
    sub-long v6, v2, v4

    .line 569
    .local v6, "timeDelta":J
    sget-wide v8, Lcom/google/firebase/firestore/local/LocalStore;->RESUME_TOKEN_MAX_AGE_SECONDS:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_1

    return v1

    .line 573
    :cond_1
    nop

    .line 574
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/local/TargetData;->getLastLimboFreeSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v10

    .line 575
    .local v10, "newLimboFreeSeconds":J
    nop

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/firestore/local/TargetData;->getLastLimboFreeSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v12

    .line 577
    .local v12, "oldLimboFreeSeconds":J
    sub-long v14, v10, v12

    .line 578
    .local v14, "limboFreeTimeDelta":J
    cmp-long v0, v14, v8

    if-ltz v0, :cond_2

    return v1

    .line 584
    :cond_2
    const/4 v0, 0x0

    if-nez p2, :cond_3

    return v0

    .line 585
    :cond_3
    nop

    .line 586
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/remote/TargetChange;->getAddedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v8

    .line 587
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/remote/TargetChange;->getModifiedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v9

    add-int/2addr v8, v9

    .line 588
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/remote/TargetChange;->getRemovedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v9

    add-int/2addr v8, v9

    .line 589
    .local v8, "changes":I
    if-lez v8, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    return v1
.end method

.method private startIndexManager()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda17;-><init>(Lcom/google/firebase/firestore/local/LocalStore;)V

    const-string v2, "Start IndexManager"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method private startMutationQueue()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/local/LocalStore;)V

    const-string v2, "Start MutationQueue"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method


# virtual methods
.method public acknowledgeBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 3
    .param p1, "batchResult"    # Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;",
            ")",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)V

    const-string v2, "Acknowledge batch"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object v0
.end method

.method public allocateTarget(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;
    .locals 5
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 653
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/TargetCache;->getTargetData(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0

    .line 654
    .local v0, "cached":Lcom/google/firebase/firestore/local/TargetData;
    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v1

    .local v1, "targetId":I
    goto :goto_0

    .line 659
    .end local v1    # "targetId":I
    :cond_0
    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;-><init>(Lcom/google/firebase/firestore/local/LocalStore$1;)V

    .line 660
    .local v1, "holder":Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v3, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda6;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;Lcom/google/firebase/firestore/core/Target;)V

    const-string v4, "Allocate target"

    invoke-virtual {v2, v4, v3}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 672
    iget v2, v1, Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;->targetId:I

    .line 673
    .local v2, "targetId":I
    iget-object v0, v1, Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;->cached:Lcom/google/firebase/firestore/local/TargetData;

    move v1, v2

    .line 676
    .end local v2    # "targetId":I
    .local v1, "targetId":I
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 677
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 678
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetIdByTarget:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    :cond_1
    return-object v0
.end method

.method public applyBundledDocuments(Lcom/google/firebase/database/collection/ImmutableSortedMap;Ljava/lang/String;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 4
    .param p2, "bundleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 726
    .local p1, "documents":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    invoke-static {p2}, Lcom/google/firebase/firestore/local/LocalStore;->newUmbrellaTarget(Ljava/lang/String;)Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/local/LocalStore;->allocateTarget(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0

    .line 728
    .local v0, "umbrellaTargetData":Lcom/google/firebase/firestore/local/TargetData;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v2, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda13;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/local/TargetData;)V

    const-string v3, "Apply bundle documents"

    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object v1
.end method

.method public applyRemoteEvent(Lcom/google/firebase/firestore/remote/RemoteEvent;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 4
    .param p1, "remoteEvent"    # Lcom/google/firebase/firestore/remote/RemoteEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/remote/RemoteEvent;",
            ")",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 403
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    .line 406
    .local v0, "remoteVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v2, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda12;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/remote/RemoteEvent;Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    const-string v3, "Apply remote event"

    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object v1
.end method

.method public collectGarbage(Lcom/google/firebase/firestore/local/LruGarbageCollector;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;
    .locals 3
    .param p1, "garbageCollector"    # Lcom/google/firebase/firestore/local/LruGarbageCollector;

    .line 901
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda18;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/local/LruGarbageCollector;)V

    const-string v2, "Collect garbage"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    return-object v0
.end method

.method public configureFieldIndexes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            ">;)V"
        }
    .end annotation

    .line 793
    .local p1, "newFieldIndexes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda19;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Ljava/util/List;)V

    const-string v2, "Configure indexes"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 803
    return-void
.end method

.method public deleteAllFieldIndexes()V
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda14;-><init>(Lcom/google/firebase/firestore/local/LocalStore;)V

    const-string v2, "Delete All Indexes"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 807
    return-void
.end method

.method public executeQuery(Lcom/google/firebase/firestore/core/Query;Z)Lcom/google/firebase/firestore/local/QueryResult;
    .locals 5
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "usePreviousResults"    # Z

    .line 856
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/local/LocalStore;->getTargetData(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0

    .line 857
    .local v0, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    sget-object v1, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 858
    .local v1, "lastLimboFreeSnapshotVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    .line 860
    .local v2, "remoteKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getLastLimboFreeSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    .line 862
    iget-object v3, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/firebase/firestore/local/TargetCache;->getMatchingKeysForTargetId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    .line 865
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryEngine:Lcom/google/firebase/firestore/local/QueryEngine;

    .line 868
    if-eqz p2, :cond_1

    move-object v4, v1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 866
    :goto_0
    invoke-virtual {v3, p1, v4, v2}, Lcom/google/firebase/firestore/local/QueryEngine;->getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/database/collection/ImmutableSortedSet;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v3

    .line 870
    .local v3, "documents":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    new-instance v4, Lcom/google/firebase/firestore/local/QueryResult;

    invoke-direct {v4, v3, v2}, Lcom/google/firebase/firestore/local/QueryResult;-><init>(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-object v4
.end method

.method getFieldIndexes()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            ">;"
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/LocalStore;)V

    const-string v2, "Get indexes"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getHighestUnacknowledgedBatchId()I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/MutationQueue;->getHighestUnacknowledgedBatchId()I

    move-result v0

    return v0
.end method

.method public getIndexManagerForCurrentUser()Lcom/google/firebase/firestore/local/IndexManager;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    return-object v0
.end method

.method public getLastRemoteSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/TargetCache;->getLastRemoteSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    return-object v0
.end method

.method public getLastStreamToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/MutationQueue;->getLastStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLocalDocumentsForCurrentUser()Lcom/google/firebase/firestore/local/LocalDocumentsView;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    return-object v0
.end method

.method public getNamedQuery(Ljava/lang/String;)Lcom/google/firebase/firestore/bundle/NamedQuery;
    .locals 3
    .param p1, "queryName"    # Ljava/lang/String;

    .line 783
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda10;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Ljava/lang/String;)V

    const-string v2, "Get named query"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public getNextMutationBatch(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .locals 1
    .param p1, "afterBatchId"    # I

    .line 635
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/MutationQueue;->getNextMutationBatchAfterBatchId(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteDocumentKeys(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;
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

    .line 878
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/TargetCache;->getMatchingKeysForTargetId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method getTargetData(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;
    .locals 3
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 690
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetIdByTarget:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 691
    .local v0, "targetId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 692
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/local/TargetData;

    return-object v1

    .line 694
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v1, p1}, Lcom/google/firebase/firestore/local/TargetCache;->getTargetData(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v1

    return-object v1
.end method

.method public handleUserChange(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 10
    .param p1, "user"    # Lcom/google/firebase/firestore/auth/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/auth/User;",
            ")",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/MutationQueue;->getAllMutationBatches()Ljava/util/List;

    move-result-object v0

    .line 209
    .local v0, "oldBatches":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationBatch;>;"
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->initializeUserComponents(Lcom/google/firebase/firestore/auth/User;)V

    .line 210
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/LocalStore;->startIndexManager()V

    .line 211
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/LocalStore;->startMutationQueue()V

    .line 213
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v1}, Lcom/google/firebase/firestore/local/MutationQueue;->getAllMutationBatches()Ljava/util/List;

    move-result-object v1

    .line 216
    .local v1, "newBatches":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationBatch;>;"
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    .line 217
    .local v2, "changedKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/util/List;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 218
    .local v4, "batches":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationBatch;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 219
    .local v6, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    invoke-virtual {v6}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getMutations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 220
    .local v8, "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    invoke-virtual {v8}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    .line 221
    .end local v8    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    goto :goto_2

    .line 222
    .end local v6    # "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    :cond_0
    goto :goto_1

    .line 223
    .end local v4    # "batches":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationBatch;>;"
    :cond_1
    goto :goto_0

    .line 226
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getDocuments(Ljava/lang/Iterable;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v3

    return-object v3
.end method

.method public hasNewerBundle(Lcom/google/firebase/firestore/bundle/BundleMetadata;)Z
    .locals 3
    .param p1, "bundleMetadata"    # Lcom/google/firebase/firestore/bundle/BundleMetadata;

    .line 702
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda9;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/bundle/BundleMetadata;)V

    const-string v2, "Has newer bundle"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$acknowledgeBatch$3$com-google-firebase-firestore-local-LocalStore(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 3
    .param p1, "batchResult"    # Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;

    .line 311
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getBatch()Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0

    .line 312
    .local v0, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/firebase/firestore/local/MutationQueue;->acknowledgeBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatch;Lcom/google/protobuf/ByteString;)V

    .line 313
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->applyWriteToRemoteDocuments(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)V

    .line 314
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v1}, Lcom/google/firebase/firestore/local/MutationQueue;->performConsistencyCheck()V

    .line 316
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->documentOverlayCache:Lcom/google/firebase/firestore/local/DocumentOverlayCache;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getBatch()Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/firebase/firestore/local/DocumentOverlayCache;->removeOverlaysForBatchId(I)V

    .line 317
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->getKeysWithTransformResults(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->recalculateAndSaveOverlays(Ljava/util/Set;)V

    .line 319
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getKeys()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getDocuments(Ljava/lang/Iterable;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$allocateTarget$8$com-google-firebase-firestore-local-LocalStore(Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;Lcom/google/firebase/firestore/core/Target;)V
    .locals 7
    .param p1, "holder"    # Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;
    .param p2, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 663
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetIdGenerator:Lcom/google/firebase/firestore/core/TargetIdGenerator;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/TargetIdGenerator;->nextId()I

    move-result v0

    iput v0, p1, Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;->targetId:I

    .line 664
    new-instance v0, Lcom/google/firebase/firestore/local/TargetData;

    iget v3, p1, Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;->targetId:I

    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    .line 668
    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/Persistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->getCurrentSequenceNumber()J

    move-result-wide v4

    sget-object v6, Lcom/google/firebase/firestore/local/QueryPurpose;->LISTEN:Lcom/google/firebase/firestore/local/QueryPurpose;

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/local/TargetData;-><init>(Lcom/google/firebase/firestore/core/Target;IJLcom/google/firebase/firestore/local/QueryPurpose;)V

    iput-object v0, p1, Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;->cached:Lcom/google/firebase/firestore/local/TargetData;

    .line 670
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    iget-object v1, p1, Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;->cached:Lcom/google/firebase/firestore/local/TargetData;

    invoke-interface {v0, v1}, Lcom/google/firebase/firestore/local/TargetCache;->addTargetData(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 671
    return-void
.end method

.method synthetic lambda$applyBundledDocuments$11$com-google-firebase-firestore-local-LocalStore(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/local/TargetData;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 7
    .param p1, "documents"    # Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .param p2, "umbrellaTargetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 731
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    .line 732
    .local v0, "documentKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 734
    .local v1, "documentMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 735
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 736
    .local v4, "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/MutableDocument;

    .line 738
    .local v5, "document":Lcom/google/firebase/firestore/model/MutableDocument;
    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/MutableDocument;->isFoundDocument()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 739
    invoke-virtual {v0, v4}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    .line 741
    :cond_0
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    .end local v4    # "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v5    # "document":Lcom/google/firebase/firestore/model/MutableDocument;
    goto :goto_0

    .line 744
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/firebase/firestore/local/TargetCache;->removeMatchingKeysForTargetId(I)V

    .line 745
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/google/firebase/firestore/local/TargetCache;->addMatchingKeys(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V

    .line 747
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->populateDocumentChanges(Ljava/util/Map;)Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;

    move-result-object v2

    .line 748
    .local v2, "result":Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;
    invoke-static {v2}, Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;->access$200(Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;)Ljava/util/Map;

    move-result-object v3

    .line 749
    .local v3, "changedDocs":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    iget-object v4, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    invoke-static {v2}, Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;->access$300(Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getLocalViewOfDocuments(Ljava/util/Map;Ljava/util/Set;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v4

    return-object v4
.end method

.method synthetic lambda$applyRemoteEvent$6$com-google-firebase-firestore-local-LocalStore(Lcom/google/firebase/firestore/remote/RemoteEvent;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 12
    .param p1, "remoteEvent"    # Lcom/google/firebase/firestore/remote/RemoteEvent;
    .param p2, "remoteVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 409
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getTargetChanges()Ljava/util/Map;

    move-result-object v0

    .line 410
    .local v0, "targetChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/firebase/firestore/remote/TargetChange;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/Persistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->getCurrentSequenceNumber()J

    move-result-wide v1

    .line 412
    .local v1, "sequenceNumber":J
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 413
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/firebase/firestore/remote/TargetChange;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 414
    .local v5, "boxedTargetId":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 415
    .local v6, "targetId":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/remote/TargetChange;

    .line 417
    .local v7, "change":Lcom/google/firebase/firestore/remote/TargetChange;
    iget-object v8, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/local/TargetData;

    .line 418
    .local v8, "oldTargetData":Lcom/google/firebase/firestore/local/TargetData;
    if-nez v8, :cond_0

    .line 421
    goto :goto_0

    .line 424
    :cond_0
    iget-object v9, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-virtual {v7}, Lcom/google/firebase/firestore/remote/TargetChange;->getRemovedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v10

    invoke-interface {v9, v10, v6}, Lcom/google/firebase/firestore/local/TargetCache;->removeMatchingKeys(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V

    .line 425
    iget-object v9, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-virtual {v7}, Lcom/google/firebase/firestore/remote/TargetChange;->getAddedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v10

    invoke-interface {v9, v10, v6}, Lcom/google/firebase/firestore/local/TargetCache;->addMatchingKeys(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V

    .line 427
    invoke-virtual {v8, v1, v2}, Lcom/google/firebase/firestore/local/TargetData;->withSequenceNumber(J)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v9

    .line 428
    .local v9, "newTargetData":Lcom/google/firebase/firestore/local/TargetData;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getTargetMismatches()Ljava/util/Map;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 429
    sget-object v10, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    sget-object v11, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 431
    invoke-virtual {v9, v10, v11}, Lcom/google/firebase/firestore/local/TargetData;->withResumeToken(Lcom/google/protobuf/ByteString;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v10

    sget-object v11, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 432
    invoke-virtual {v10, v11}, Lcom/google/firebase/firestore/local/TargetData;->withLastLimboFreeSnapshotVersion(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v9

    goto :goto_1

    .line 433
    :cond_1
    invoke-virtual {v7}, Lcom/google/firebase/firestore/remote/TargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 434
    nop

    .line 436
    invoke-virtual {v7}, Lcom/google/firebase/firestore/remote/TargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v10

    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v11

    .line 435
    invoke-virtual {v9, v10, v11}, Lcom/google/firebase/firestore/local/TargetData;->withResumeToken(Lcom/google/protobuf/ByteString;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v9

    .line 439
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v10, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    invoke-static {v8, v9, v7}, Lcom/google/firebase/firestore/local/LocalStore;->shouldPersistTargetData(Lcom/google/firebase/firestore/local/TargetData;Lcom/google/firebase/firestore/local/TargetData;Lcom/google/firebase/firestore/remote/TargetChange;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 444
    iget-object v10, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v10, v9}, Lcom/google/firebase/firestore/local/TargetCache;->updateTargetData(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 446
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/firebase/firestore/remote/TargetChange;>;"
    .end local v5    # "boxedTargetId":Ljava/lang/Integer;
    .end local v6    # "targetId":I
    .end local v7    # "change":Lcom/google/firebase/firestore/remote/TargetChange;
    .end local v8    # "oldTargetData":Lcom/google/firebase/firestore/local/TargetData;
    .end local v9    # "newTargetData":Lcom/google/firebase/firestore/local/TargetData;
    :cond_3
    goto/16 :goto_0

    .line 448
    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getDocumentUpdates()Ljava/util/Map;

    move-result-object v3

    .line 449
    .local v3, "documentUpdates":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getResolvedLimboDocuments()Ljava/util/Set;

    move-result-object v4

    .line 451
    .local v4, "limboDocuments":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 452
    .local v6, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 453
    iget-object v7, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v7}, Lcom/google/firebase/firestore/local/Persistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->updateLimboDocument(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 455
    .end local v6    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    :cond_5
    goto :goto_2

    .line 457
    :cond_6
    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/local/LocalStore;->populateDocumentChanges(Ljava/util/Map;)Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;

    move-result-object v5

    .line 458
    .local v5, "result":Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;
    invoke-static {v5}, Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;->access$200(Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;)Ljava/util/Map;

    move-result-object v6

    .line 463
    .local v6, "changedDocs":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    iget-object v7, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v7}, Lcom/google/firebase/firestore/local/TargetCache;->getLastRemoteSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v7

    .line 464
    .local v7, "lastRemoteVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    sget-object v8, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {p2, v8}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 465
    nop

    .line 466
    invoke-virtual {p2, v7}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v8

    if-ltz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    filled-new-array {p2, v7}, [Ljava/lang/Object;

    move-result-object v9

    .line 465
    const-string v10, "Watch stream reverted to previous snapshot?? (%s < %s)"

    invoke-static {v8, v10, v9}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 470
    iget-object v8, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v8, p2}, Lcom/google/firebase/firestore/local/TargetCache;->setLastRemoteSnapshotVersion(Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    .line 473
    :cond_8
    iget-object v8, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    invoke-static {v5}, Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;->access$300(Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;)Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getLocalViewOfDocuments(Ljava/util/Map;Ljava/util/Set;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v8

    return-object v8
.end method

.method synthetic lambda$collectGarbage$18$com-google-firebase-firestore-local-LocalStore(Lcom/google/firebase/firestore/local/LruGarbageCollector;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;
    .locals 1
    .param p1, "garbageCollector"    # Lcom/google/firebase/firestore/local/LruGarbageCollector;

    .line 902
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->collect(Landroid/util/SparseArray;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$configureFieldIndexes$15$com-google-firebase-firestore-local-LocalStore(Ljava/util/List;)V
    .locals 5
    .param p1, "newFieldIndexes"    # Ljava/util/List;

    .line 796
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    .line 797
    invoke-interface {v0}, Lcom/google/firebase/firestore/local/IndexManager;->getFieldIndexes()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/model/FieldIndex;->SEMANTIC_COMPARATOR:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    .line 800
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda7;

    invoke-direct {v3, v2}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda7;-><init>(Lcom/google/firebase/firestore/local/IndexManager;)V

    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    .line 801
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda8;

    invoke-direct {v4, v2}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda8;-><init>(Lcom/google/firebase/firestore/local/IndexManager;)V

    .line 796
    invoke-static {v0, p1, v1, v3, v4}, Lcom/google/firebase/firestore/util/Util;->diffCollections(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Comparator;Lcom/google/firebase/firestore/util/Consumer;Lcom/google/firebase/firestore/util/Consumer;)V

    .line 802
    return-void
.end method

.method synthetic lambda$deleteAllFieldIndexes$16$com-google-firebase-firestore-local-LocalStore()V
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/IndexManager;->deleteAllFieldIndexes()V

    return-void
.end method

.method synthetic lambda$getFieldIndexes$14$com-google-firebase-firestore-local-LocalStore()Ljava/util/Collection;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/IndexManager;->getFieldIndexes()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getNamedQuery$13$com-google-firebase-firestore-local-LocalStore(Ljava/lang/String;)Lcom/google/firebase/firestore/bundle/NamedQuery;
    .locals 1
    .param p1, "queryName"    # Ljava/lang/String;

    .line 784
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->bundleCache:Lcom/google/firebase/firestore/local/BundleCache;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/BundleCache;->getNamedQuery(Ljava/lang/String;)Lcom/google/firebase/firestore/bundle/NamedQuery;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$hasNewerBundle$9$com-google-firebase-firestore-local-LocalStore(Lcom/google/firebase/firestore/bundle/BundleMetadata;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "bundleMetadata"    # Lcom/google/firebase/firestore/bundle/BundleMetadata;

    .line 705
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->bundleCache:Lcom/google/firebase/firestore/local/BundleCache;

    .line 706
    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getBundleId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/firestore/local/BundleCache;->getBundleMetadata(Ljava/lang/String;)Lcom/google/firebase/firestore/bundle/BundleMetadata;

    move-result-object v0

    .line 707
    .local v0, "cachedMetadata":Lcom/google/firebase/firestore/bundle/BundleMetadata;
    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getCreateTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getCreateTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 707
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$notifyLocalViewChanges$7$com-google-firebase-firestore-local-LocalStore(Ljava/util/List;)V
    .locals 8
    .param p1, "viewChanges"    # Ljava/util/List;

    .line 597
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/local/LocalViewChanges;

    .line 598
    .local v1, "viewChange":Lcom/google/firebase/firestore/local/LocalViewChanges;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/LocalViewChanges;->getTargetId()I

    move-result v2

    .line 600
    .local v2, "targetId":I
    iget-object v3, p0, Lcom/google/firebase/firestore/local/LocalStore;->localViewReferences:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/LocalViewChanges;->getAdded()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/google/firebase/firestore/local/ReferenceSet;->addReferences(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V

    .line 601
    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/LocalViewChanges;->getRemoved()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    .line 602
    .local v3, "removed":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-virtual {v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 603
    .local v5, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v6, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/local/Persistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->removeReference(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 604
    .end local v5    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_1

    .line 605
    :cond_0
    iget-object v4, p0, Lcom/google/firebase/firestore/local/LocalStore;->localViewReferences:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v4, v3, v2}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReferences(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V

    .line 607
    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/LocalViewChanges;->isFromCache()Z

    move-result v4

    if-nez v4, :cond_2

    .line 608
    iget-object v4, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/local/TargetData;

    .line 609
    .local v4, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    if-eqz v4, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 612
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 609
    const-string v7, "Can\'t set limbo-free snapshot version for unknown target: %s"

    invoke-static {v5, v7, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 615
    invoke-virtual {v4}, Lcom/google/firebase/firestore/local/TargetData;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v5

    .line 616
    .local v5, "lastLimboFreeSnapshotVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    nop

    .line 617
    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/local/TargetData;->withLastLimboFreeSnapshotVersion(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v6

    .line 618
    .local v6, "updatedTargetData":Lcom/google/firebase/firestore/local/TargetData;
    iget-object v7, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v7, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 620
    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/google/firebase/firestore/local/LocalStore;->shouldPersistTargetData(Lcom/google/firebase/firestore/local/TargetData;Lcom/google/firebase/firestore/local/TargetData;Lcom/google/firebase/firestore/remote/TargetChange;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 621
    iget-object v7, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v7, v6}, Lcom/google/firebase/firestore/local/TargetCache;->updateTargetData(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 624
    .end local v1    # "viewChange":Lcom/google/firebase/firestore/local/LocalViewChanges;
    .end local v2    # "targetId":I
    .end local v3    # "removed":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    .end local v4    # "targetData":Lcom/google/firebase/firestore/local/TargetData;
    .end local v5    # "lastLimboFreeSnapshotVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    .end local v6    # "updatedTargetData":Lcom/google/firebase/firestore/local/TargetData;
    :cond_2
    goto :goto_0

    .line 625
    :cond_3
    return-void
.end method

.method synthetic lambda$rejectBatch$4$com-google-firebase-firestore-local-LocalStore(I)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 4
    .param p1, "batchId"    # I

    .line 348
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/MutationQueue;->lookupMutationBatch(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0

    .line 349
    .local v0, "toReject":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Attempt to reject nonexistent batch!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 351
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v1, v0}, Lcom/google/firebase/firestore/local/MutationQueue;->removeMutationBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatch;)V

    .line 352
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v1}, Lcom/google/firebase/firestore/local/MutationQueue;->performConsistencyCheck()V

    .line 354
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->documentOverlayCache:Lcom/google/firebase/firestore/local/DocumentOverlayCache;

    invoke-interface {v1, p1}, Lcom/google/firebase/firestore/local/DocumentOverlayCache;->removeOverlaysForBatchId(I)V

    .line 355
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getKeys()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->recalculateAndSaveOverlays(Ljava/util/Set;)V

    .line 357
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getKeys()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getDocuments(Ljava/lang/Iterable;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$releaseTarget$17$com-google-firebase-firestore-local-LocalStore(I)V
    .locals 5
    .param p1, "targetId"    # I

    .line 828
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/TargetData;

    .line 829
    .local v0, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Tried to release nonexistent target: %s"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 835
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->localViewReferences:Lcom/google/firebase/firestore/local/ReferenceSet;

    .line 836
    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReferencesForId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    .line 837
    .local v1, "removedReferences":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 838
    .local v3, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v4, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/local/Persistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->removeReference(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 839
    .end local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_1

    .line 842
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/Persistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->removeTarget(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 843
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 844
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetIdByTarget:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    return-void
.end method

.method synthetic lambda$saveBundle$10$com-google-firebase-firestore-local-LocalStore(Lcom/google/firebase/firestore/bundle/BundleMetadata;)V
    .locals 1
    .param p1, "bundleMetadata"    # Lcom/google/firebase/firestore/bundle/BundleMetadata;

    .line 717
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->bundleCache:Lcom/google/firebase/firestore/local/BundleCache;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/BundleCache;->saveBundleMetadata(Lcom/google/firebase/firestore/bundle/BundleMetadata;)V

    .line 718
    return-void
.end method

.method synthetic lambda$saveNamedQuery$12$com-google-firebase-firestore-local-LocalStore(Lcom/google/firebase/firestore/bundle/NamedQuery;Lcom/google/firebase/firestore/local/TargetData;ILcom/google/firebase/database/collection/ImmutableSortedSet;)V
    .locals 2
    .param p1, "namedQuery"    # Lcom/google/firebase/firestore/bundle/NamedQuery;
    .param p2, "existingTargetData"    # Lcom/google/firebase/firestore/local/TargetData;
    .param p3, "targetId"    # I
    .param p4, "documentKeys"    # Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 766
    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/NamedQuery;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/firestore/local/TargetData;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v0

    if-lez v0, :cond_0

    .line 768
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 769
    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/NamedQuery;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/firestore/local/TargetData;->withResumeToken(Lcom/google/protobuf/ByteString;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0

    .line 770
    .local v0, "newTargetData":Lcom/google/firebase/firestore/local/TargetData;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 772
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v1, v0}, Lcom/google/firebase/firestore/local/TargetCache;->updateTargetData(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 773
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v1, p3}, Lcom/google/firebase/firestore/local/TargetCache;->removeMatchingKeysForTargetId(I)V

    .line 774
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore;->targetCache:Lcom/google/firebase/firestore/local/TargetCache;

    invoke-interface {v1, p4, p3}, Lcom/google/firebase/firestore/local/TargetCache;->addMatchingKeys(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V

    .line 777
    .end local v0    # "newTargetData":Lcom/google/firebase/firestore/local/TargetData;
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->bundleCache:Lcom/google/firebase/firestore/local/BundleCache;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/BundleCache;->saveNamedQuery(Lcom/google/firebase/firestore/bundle/NamedQuery;)V

    .line 778
    return-void
.end method

.method synthetic lambda$setLastStreamToken$5$com-google-firebase-firestore-local-LocalStore(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "streamToken"    # Lcom/google/protobuf/ByteString;

    .line 384
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/MutationQueue;->setLastStreamToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method synthetic lambda$startIndexManager$0$com-google-firebase-firestore-local-LocalStore()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/IndexManager;->start()V

    return-void
.end method

.method synthetic lambda$startMutationQueue$1$com-google-firebase-firestore-local-LocalStore()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/MutationQueue;->start()V

    return-void
.end method

.method synthetic lambda$writeLocally$2$com-google-firebase-firestore-local-LocalStore(Ljava/util/Set;Ljava/util/List;Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/local/LocalDocumentsResult;
    .locals 11
    .param p1, "keys"    # Ljava/util/Set;
    .param p2, "mutations"    # Ljava/util/List;
    .param p3, "localWriteTime"    # Lcom/google/firebase/Timestamp;

    .line 248
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->remoteDocuments:Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/RemoteDocumentCache;->getAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    .line 249
    .local v0, "remoteDocs":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 250
    .local v1, "docsWithoutRemoteVersion":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 251
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/MutableDocument;->isValidDocument()Z

    move-result v4

    if-nez v4, :cond_0

    .line 252
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    :cond_0
    goto :goto_0

    .line 257
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    .line 258
    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getOverlayedDocuments(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 264
    .local v2, "overlayedDocuments":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/local/OverlayedDocument;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v3, "baseMutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 266
    .local v5, "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    nop

    .line 268
    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/local/OverlayedDocument;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/local/OverlayedDocument;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v6

    .line 267
    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/model/mutation/Mutation;->extractTransformBaseValue(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v6

    .line 269
    .local v6, "baseValue":Lcom/google/firebase/firestore/model/ObjectValue;
    if-eqz v6, :cond_2

    .line 272
    new-instance v7, Lcom/google/firebase/firestore/model/mutation/PatchMutation;

    .line 274
    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v8

    .line 276
    invoke-virtual {v6}, Lcom/google/firebase/firestore/model/ObjectValue;->getFieldMask()Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v9

    .line 277
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists(Z)Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v10

    invoke-direct {v7, v8, v6, v9, v10}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/mutation/FieldMask;Lcom/google/firebase/firestore/model/mutation/Precondition;)V

    .line 272
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v5    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    .end local v6    # "baseValue":Lcom/google/firebase/firestore/model/ObjectValue;
    :cond_2
    goto :goto_1

    .line 281
    :cond_3
    iget-object v4, p0, Lcom/google/firebase/firestore/local/LocalStore;->mutationQueue:Lcom/google/firebase/firestore/local/MutationQueue;

    .line 282
    invoke-interface {v4, p3, v3, p2}, Lcom/google/firebase/firestore/local/MutationQueue;->addMutationBatch(Lcom/google/firebase/Timestamp;Ljava/util/List;Ljava/util/List;)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v4

    .line 283
    .local v4, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    nop

    .line 284
    invoke-virtual {v4, v2, v1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->applyToLocalDocumentSet(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v5

    .line 285
    .local v5, "overlays":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    iget-object v6, p0, Lcom/google/firebase/firestore/local/LocalStore;->documentOverlayCache:Lcom/google/firebase/firestore/local/DocumentOverlayCache;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v7

    invoke-interface {v6, v7, v5}, Lcom/google/firebase/firestore/local/DocumentOverlayCache;->saveOverlays(ILjava/util/Map;)V

    .line 286
    nop

    .line 287
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v6

    .line 286
    invoke-static {v6, v2}, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->fromOverlayedDocuments(ILjava/util/Map;)Lcom/google/firebase/firestore/local/LocalDocumentsResult;

    move-result-object v6

    return-object v6
.end method

.method public notifyLocalViewChanges(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/local/LocalViewChanges;",
            ">;)V"
        }
    .end annotation

    .line 594
    .local p1, "viewChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/local/LocalViewChanges;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda15;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Ljava/util/List;)V

    const-string v2, "notifyLocalViewChanges"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 626
    return-void
.end method

.method public readDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/Document;
    .locals 1
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 640
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->localDocuments:Lcom/google/firebase/firestore/local/LocalDocumentsView;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/Document;

    move-result-object v0

    return-object v0
.end method

.method public rejectBatch(I)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 3
    .param p1, "batchId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda11;-><init>(Lcom/google/firebase/firestore/local/LocalStore;I)V

    const-string v2, "Reject batch"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object v0
.end method

.method public releaseTarget(I)V
    .locals 3
    .param p1, "targetId"    # I

    .line 825
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda20;-><init>(Lcom/google/firebase/firestore/local/LocalStore;I)V

    const-string v2, "Release target"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 846
    return-void
.end method

.method public saveBundle(Lcom/google/firebase/firestore/bundle/BundleMetadata;)V
    .locals 3
    .param p1, "bundleMetadata"    # Lcom/google/firebase/firestore/bundle/BundleMetadata;

    .line 714
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda16;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/bundle/BundleMetadata;)V

    const-string v2, "Save bundle"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 719
    return-void
.end method

.method public saveNamedQuery(Lcom/google/firebase/firestore/bundle/NamedQuery;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V
    .locals 10
    .param p1, "namedQuery"    # Lcom/google/firebase/firestore/bundle/NamedQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/bundle/NamedQuery;",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)V"
        }
    .end annotation

    .line 759
    .local p2, "documentKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/NamedQuery;->getBundledQuery()Lcom/google/firebase/firestore/bundle/BundledQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/bundle/BundledQuery;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/local/LocalStore;->allocateTarget(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0

    .line 760
    .local v0, "existingTargetData":Lcom/google/firebase/firestore/local/TargetData;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v7

    .line 762
    .local v7, "targetId":I
    iget-object v8, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v9, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda4;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move v5, v7

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/bundle/NamedQuery;Lcom/google/firebase/firestore/local/TargetData;ILcom/google/firebase/database/collection/ImmutableSortedSet;)V

    const-string v1, "Saved named query"

    invoke-virtual {v8, v1, v9}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 779
    return-void
.end method

.method public setIndexAutoCreationEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 810
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->queryEngine:Lcom/google/firebase/firestore/local/QueryEngine;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/QueryEngine;->setIndexAutoCreationEnabled(Z)V

    .line 811
    return-void
.end method

.method public setLastStreamToken(Lcom/google/protobuf/ByteString;)V
    .locals 3
    .param p1, "streamToken"    # Lcom/google/protobuf/ByteString;

    .line 383
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/protobuf/ByteString;)V

    const-string v2, "Set stream token"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

.method public start()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/Persistence;->getOverlayMigrationManager()Lcom/google/firebase/firestore/local/OverlayMigrationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/OverlayMigrationManager;->run()V

    .line 183
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/LocalStore;->startIndexManager()V

    .line 184
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/LocalStore;->startMutationQueue()V

    .line 185
    return-void
.end method

.method public writeLocally(Ljava/util/List;)Lcom/google/firebase/firestore/local/LocalDocumentsResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;)",
            "Lcom/google/firebase/firestore/local/LocalDocumentsResult;"
        }
    .end annotation

    .line 231
    .local p1, "mutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    invoke-static {}, Lcom/google/firebase/Timestamp;->now()Lcom/google/firebase/Timestamp;

    move-result-object v0

    .line 235
    .local v0, "localWriteTime":Lcom/google/firebase/Timestamp;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 236
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 237
    .local v3, "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v3    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    goto :goto_0

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v3, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/google/firebase/firestore/local/LocalStore$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Ljava/util/Set;Ljava/util/List;Lcom/google/firebase/Timestamp;)V

    const-string v4, "Locally write mutations"

    invoke-virtual {v2, v4, v3}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/local/LocalDocumentsResult;

    return-object v2
.end method
