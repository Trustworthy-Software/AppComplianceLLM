.class public final Lcom/google/firebase/firestore/remote/RemoteStore;
.super Ljava/lang/Object;
.source "RemoteStore.java"

# interfaces
.implements Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemoteStore"

.field private static final MAX_PENDING_WRITES:I = 0xa


# instance fields
.field private final connectivityMonitor:Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

.field private final datastore:Lcom/google/firebase/firestore/remote/Datastore;

.field private final listenTargets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/firebase/firestore/local/TargetData;",
            ">;"
        }
    .end annotation
.end field

.field private final localStore:Lcom/google/firebase/firestore/local/LocalStore;

.field private networkEnabled:Z

.field private final onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

.field private final remoteStoreCallback:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

.field private watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

.field private final watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

.field private final writePipeline:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation
.end field

.field private final writeStream:Lcom/google/firebase/firestore/remote/WriteStream;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/remote/Datastore;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/remote/ConnectivityMonitor;)V
    .locals 2
    .param p1, "remoteStoreCallback"    # Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;
    .param p2, "localStore"    # Lcom/google/firebase/firestore/local/LocalStore;
    .param p3, "datastore"    # Lcom/google/firebase/firestore/remote/Datastore;
    .param p4, "workerQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p5, "connectivityMonitor"    # Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->networkEnabled:Z

    .line 161
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->remoteStoreCallback:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

    .line 162
    iput-object p2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    .line 163
    iput-object p3, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    .line 164
    iput-object p5, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->connectivityMonitor:Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    .line 169
    new-instance v0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    .line 170
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;)V

    invoke-direct {v0, p4, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;-><init>(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/remote/OnlineStateTracker$OnlineStateCallback;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    .line 173
    new-instance v0, Lcom/google/firebase/firestore/remote/RemoteStore$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/remote/RemoteStore$1;-><init>(Lcom/google/firebase/firestore/remote/RemoteStore;)V

    .line 174
    invoke-virtual {p3, v0}, Lcom/google/firebase/firestore/remote/Datastore;->createWatchStream(Lcom/google/firebase/firestore/remote/WatchStream$Callback;)Lcom/google/firebase/firestore/remote/WatchStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    .line 192
    new-instance v0, Lcom/google/firebase/firestore/remote/RemoteStore$2;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/remote/RemoteStore$2;-><init>(Lcom/google/firebase/firestore/remote/RemoteStore;)V

    .line 193
    invoke-virtual {p3, v0}, Lcom/google/firebase/firestore/remote/Datastore;->createWriteStream(Lcom/google/firebase/firestore/remote/WriteStream$Callback;)Lcom/google/firebase/firestore/remote/WriteStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    .line 217
    new-instance v0, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p4}, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/util/AsyncQueue;)V

    invoke-interface {p5, v0}, Lcom/google/firebase/firestore/remote/ConnectivityMonitor;->addCallback(Lcom/google/firebase/firestore/util/Consumer;)V

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/remote/RemoteStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/RemoteStore;

    .line 60
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWatchStreamOpen()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/remote/WatchChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/RemoteStore;
    .param p1, "x1"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p2, "x2"    # Lcom/google/firebase/firestore/remote/WatchChange;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWatchChange(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/remote/WatchChange;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/remote/RemoteStore;Lio/grpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/RemoteStore;
    .param p1, "x1"    # Lio/grpc/Status;

    .line 60
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWatchStreamClose(Lio/grpc/Status;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/firestore/remote/RemoteStore;)Lcom/google/firebase/firestore/remote/WriteStream;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/RemoteStore;

    .line 60
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/firebase/firestore/remote/RemoteStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/RemoteStore;

    .line 60
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWriteStreamHandshakeComplete()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/RemoteStore;
    .param p1, "x1"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p2, "x2"    # Ljava/util/List;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWriteStreamMutationResults(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/firestore/remote/RemoteStore;Lio/grpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/RemoteStore;
    .param p1, "x1"    # Lio/grpc/Status;

    .line 60
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWriteStreamClose(Lio/grpc/Status;)V

    return-void
.end method

.method private addToWritePipeline(Lcom/google/firebase/firestore/model/mutation/MutationBatch;)V
    .locals 3
    .param p1, "mutationBatch"    # Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 639
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canAddToWritePipeline()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "addToWritePipeline called when pipeline is full"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 641
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 643
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getMutations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/WriteStream;->writeMutations(Ljava/util/List;)V

    .line 646
    :cond_0
    return-void
.end method

.method private canAddToWritePipeline()Z
    .locals 2

    .line 631
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cleanUpWatchStreamState()V
    .locals 1

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    .line 440
    return-void
.end method

.method private disableNetworkInternal()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WatchStream;->stop()V

    .line 291
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->stop()V

    .line 293
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "RemoteStore"

    const-string v2, "Stopping write stream with %d pending writes"

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->cleanUpWatchStreamState()V

    .line 299
    return-void
.end method

.method private handleWatchChange(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/remote/WatchChange;)V
    .locals 4
    .param p1, "snapshotVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p2, "watchChange"    # Lcom/google/firebase/firestore/remote/WatchChange;

    .line 461
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->ONLINE:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 463
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "WatchStream and WatchStreamAggregator should both be non-null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 468
    instance-of v0, p2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 470
    .local v0, "watchTargetChange":Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;
    :goto_1
    if-eqz v0, :cond_2

    .line 471
    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getChangeType()Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Removed:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 472
    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getCause()Lio/grpc/Status;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 474
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteStore;->processTargetError(Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;)V

    goto :goto_3

    .line 476
    :cond_2
    instance-of v2, p2, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;

    if-eqz v2, :cond_3

    .line 477
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    move-object v2, p2

    check-cast v2, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->handleDocumentChange(Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;)V

    goto :goto_2

    .line 478
    :cond_3
    instance-of v2, p2, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;

    if-eqz v2, :cond_4

    .line 479
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    move-object v2, p2

    check-cast v2, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->handleExistenceFilter(Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;)V

    goto :goto_2

    .line 481
    :cond_4
    instance-of v2, p2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;

    const-string v3, "Expected watchChange to be an instance of WatchTargetChange"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 484
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    move-object v2, p2

    check-cast v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->handleTargetChange(Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;)V

    .line 487
    :goto_2
    sget-object v1, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 488
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/LocalStore;->getLastRemoteSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    .line 489
    .local v1, "lastRemoteSnapshotVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v2

    if-ltz v2, :cond_5

    .line 492
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->raiseWatchSnapshot(Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    .line 496
    .end local v1    # "lastRemoteSnapshotVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    :cond_5
    :goto_3
    return-void
.end method

.method private handleWatchStreamClose(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 499
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    nop

    .line 502
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWatchStream()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 501
    const-string v2, "Watch stream was stopped gracefully while still needed."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 505
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->cleanUpWatchStreamState()V

    .line 508
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWatchStream()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->handleWatchStreamFailure(Lio/grpc/Status;)V

    .line 511
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->startWatchStream()V

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 517
    :goto_0
    return-void
.end method

.method private handleWatchStreamOpen()V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

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

    .line 455
    .local v1, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteStore;->sendWatchRequest(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 456
    .end local v1    # "targetData":Lcom/google/firebase/firestore/local/TargetData;
    goto :goto_0

    .line 457
    :cond_0
    return-void
.end method

.method private handleWriteError(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 732
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Handling write error with status OK."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 734
    invoke-static {p1}, Lcom/google/firebase/firestore/remote/Datastore;->isPermanentWriteError(Lio/grpc/Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 741
    .local v0, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/WriteStream;->inhibitBackoff()V

    .line 743
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->remoteStoreCallback:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;->handleRejectedWrite(ILio/grpc/Status;)V

    .line 746
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->fillWritePipeline()V

    .line 748
    .end local v0    # "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    :cond_0
    return-void
.end method

.method private handleWriteHandshakeError(Lio/grpc/Status;)V
    .locals 4
    .param p1, "status"    # Lio/grpc/Status;

    .line 715
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Handling write error with status OK."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 719
    invoke-static {p1}, Lcom/google/firebase/firestore/remote/Datastore;->isPermanentError(Lio/grpc/Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->getLastStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/util/Util;->toDebugString(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "token":Ljava/lang/String;
    const-string v1, "RemoteStore error before completed handshake; resetting stream token %s: %s"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "RemoteStore"

    invoke-static {v3, v1, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 726
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    sget-object v2, Lcom/google/firebase/firestore/remote/WriteStream;->EMPTY_STREAM_TOKEN:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/WriteStream;->setLastStreamToken(Lcom/google/protobuf/ByteString;)V

    .line 727
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    sget-object v2, Lcom/google/firebase/firestore/remote/WriteStream;->EMPTY_STREAM_TOKEN:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/LocalStore;->setLastStreamToken(Lcom/google/protobuf/ByteString;)V

    .line 729
    .end local v0    # "token":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleWriteStreamClose(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 687
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    nop

    .line 690
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWriteStream()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 689
    const-string v2, "Write stream was stopped gracefully while still needed."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 695
    :cond_0
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWriteError(Lio/grpc/Status;)V

    goto :goto_0

    .line 703
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleWriteHandshakeError(Lio/grpc/Status;)V

    .line 709
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWriteStream()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 710
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->startWriteStream()V

    .line 712
    :cond_3
    return-void
.end method

.method private handleWriteStreamHandshakeComplete()V
    .locals 4

    .line 661
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/WriteStream;->getLastStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->setLastStreamToken(Lcom/google/protobuf/ByteString;)V

    .line 664
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 665
    .local v1, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getMutations()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/remote/WriteStream;->writeMutations(Ljava/util/List;)V

    .line 666
    .end local v1    # "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    goto :goto_0

    .line 667
    :cond_0
    return-void
.end method

.method private handleWriteStreamMutationResults(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;)V
    .locals 3
    .param p1, "commitVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationResult;",
            ">;)V"
        }
    .end annotation

    .line 676
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationResult;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 678
    .local v0, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    .line 679
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/WriteStream;->getLastStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->create(Lcom/google/firebase/firestore/model/mutation/MutationBatch;Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;

    move-result-object v1

    .line 680
    .local v1, "mutationBatchResult":Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->remoteStoreCallback:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

    invoke-interface {v2, v1}, Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;->handleSuccessfulWrite(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)V

    .line 683
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->fillWritePipeline()V

    .line 684
    return-void
.end method

.method private processTargetError(Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;)V
    .locals 5
    .param p1, "targetChange"    # Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;

    .line 585
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getCause()Lio/grpc/Status;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Processing target error without a cause"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 586
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 588
    .local v1, "targetId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->removeTarget(I)V

    .line 591
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->remoteStoreCallback:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->getCause()Lio/grpc/Status;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;->handleRejectedListen(ILio/grpc/Status;)V

    .line 593
    .end local v1    # "targetId":Ljava/lang/Integer;
    :cond_1
    goto :goto_1

    .line 594
    :cond_2
    return-void
.end method

.method private raiseWatchSnapshot(Lcom/google/firebase/firestore/model/SnapshotVersion;)V
    .locals 12
    .param p1, "snapshotVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 530
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 531
    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 530
    const-string v2, "Can\'t raise event for unknown SnapshotVersion"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 533
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->createRemoteEvent(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/remote/RemoteEvent;

    move-result-object v0

    .line 537
    .local v0, "remoteEvent":Lcom/google/firebase/firestore/remote/RemoteEvent;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getTargetChanges()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 538
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/firebase/firestore/remote/TargetChange;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/remote/TargetChange;

    .line 539
    .local v3, "targetChange":Lcom/google/firebase/firestore/remote/TargetChange;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 540
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 541
    .local v4, "targetId":I
    iget-object v5, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/local/TargetData;

    .line 543
    .local v5, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    if-eqz v5, :cond_0

    .line 544
    iget-object v6, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    .line 545
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v5, v8, p1}, Lcom/google/firebase/firestore/local/TargetData;->withResumeToken(Lcom/google/protobuf/ByteString;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v8

    .line 544
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/firebase/firestore/remote/TargetChange;>;"
    .end local v3    # "targetChange":Lcom/google/firebase/firestore/remote/TargetChange;
    .end local v4    # "targetId":I
    .end local v5    # "targetData":Lcom/google/firebase/firestore/local/TargetData;
    :cond_0
    goto :goto_0

    .line 552
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getTargetMismatches()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 553
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/firebase/firestore/local/QueryPurpose;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 554
    .local v3, "targetId":I
    iget-object v4, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/google/firebase/firestore/local/TargetData;

    .line 556
    .local v10, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    if-eqz v10, :cond_2

    .line 558
    iget-object v4, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    .line 559
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 560
    invoke-virtual {v10}, Lcom/google/firebase/firestore/local/TargetData;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Lcom/google/firebase/firestore/local/TargetData;->withResumeToken(Lcom/google/protobuf/ByteString;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v6

    .line 558
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/remote/RemoteStore;->sendUnwatchRequest(I)V

    .line 570
    new-instance v11, Lcom/google/firebase/firestore/local/TargetData;

    .line 572
    invoke-virtual {v10}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v5

    .line 574
    invoke-virtual {v10}, Lcom/google/firebase/firestore/local/TargetData;->getSequenceNumber()J

    move-result-wide v7

    .line 575
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/google/firebase/firestore/local/QueryPurpose;

    move-object v4, v11

    move v6, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/firestore/local/TargetData;-><init>(Lcom/google/firebase/firestore/core/Target;IJLcom/google/firebase/firestore/local/QueryPurpose;)V

    .line 576
    .local v4, "requestTargetData":Lcom/google/firebase/firestore/local/TargetData;
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/remote/RemoteStore;->sendWatchRequest(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 578
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/firebase/firestore/local/QueryPurpose;>;"
    .end local v3    # "targetId":I
    .end local v4    # "requestTargetData":Lcom/google/firebase/firestore/local/TargetData;
    .end local v10    # "targetData":Lcom/google/firebase/firestore/local/TargetData;
    :cond_2
    goto :goto_1

    .line 581
    :cond_3
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->remoteStoreCallback:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

    invoke-interface {v1, v0}, Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;->handleRemoteEvent(Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 582
    return-void
.end method

.method private restartNetwork()V
    .locals 2

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->networkEnabled:Z

    .line 303
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->disableNetworkInternal()V

    .line 304
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 305
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->inhibitBackoff()V

    .line 306
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WatchStream;->inhibitBackoff()V

    .line 307
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->enableNetwork()V

    .line 308
    return-void
.end method

.method private sendUnwatchRequest(I)V
    .locals 1
    .param p1, "targetId"    # I

    .line 415
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->recordPendingTargetRequest(I)V

    .line 416
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/WatchStream;->unwatchTarget(I)V

    .line 417
    return-void
.end method

.method private sendWatchRequest(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 2
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 374
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;->recordPendingTargetRequest(I)V

    .line 375
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v0

    if-lez v0, :cond_1

    .line 377
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteStore;->getRemoteKeysForTarget(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v0

    .line 378
    .local v0, "expectedCount":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/local/TargetData;->withExpectedCount(Ljava/lang/Integer;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object p1

    .line 381
    .end local v0    # "expectedCount":I
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/WatchStream;->watchQuery(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 382
    return-void
.end method

.method private shouldStartWatchStream()Z
    .locals 1

    .line 432
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WatchStream;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldStartWriteStream()Z
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startWatchStream()V
    .locals 3

    .line 443
    nop

    .line 444
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWatchStream()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 443
    const-string v2, "startWatchStream() called when shouldStartWatchStream() is false."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 446
    new-instance v0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator;-><init>(Lcom/google/firebase/firestore/remote/WatchChangeAggregator$TargetMetadataProvider;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchChangeAggregator:Lcom/google/firebase/firestore/remote/WatchChangeAggregator;

    .line 447
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WatchStream;->start()V

    .line 449
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->handleWatchStreamStart()V

    .line 450
    return-void
.end method

.method private startWriteStream()V
    .locals 3

    .line 649
    nop

    .line 650
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWriteStream()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 649
    const-string v2, "startWriteStream() called when shouldStartWriteStream() is false."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WriteStream;->start()V

    .line 653
    return-void
.end method


# virtual methods
.method public canUseNetwork()Z
    .locals 1

    .line 522
    iget-boolean v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->networkEnabled:Z

    return v0
.end method

.method public createTransaction()Lcom/google/firebase/firestore/core/Transaction;
    .locals 2

    .line 751
    new-instance v0, Lcom/google/firebase/firestore/core/Transaction;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/core/Transaction;-><init>(Lcom/google/firebase/firestore/remote/Datastore;)V

    return-object v0
.end method

.method public disableNetwork()V
    .locals 2

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->networkEnabled:Z

    .line 283
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->disableNetworkInternal()V

    .line 286
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 287
    return-void
.end method

.method public enableNetwork()V
    .locals 2

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->networkEnabled:Z

    .line 255
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/LocalStore;->getLastStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/WriteStream;->setLastStreamToken(Lcom/google/protobuf/ByteString;)V

    .line 258
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWatchStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->startWatchStream()V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 265
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->fillWritePipeline()V

    .line 267
    :cond_1
    return-void
.end method

.method public fillWritePipeline()V
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v0

    .line 609
    .local v0, "lastBatchIdRetrieved":I
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canAddToWritePipeline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 610
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/local/LocalStore;->getNextMutationBatch(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v1

    .line 611
    .local v1, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    if-nez v1, :cond_1

    .line 612
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writePipeline:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 613
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->writeStream:Lcom/google/firebase/firestore/remote/WriteStream;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/remote/WriteStream;->markIdle()V

    goto :goto_1

    .line 617
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteStore;->addToWritePipeline(Lcom/google/firebase/firestore/model/mutation/MutationBatch;)V

    .line 618
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v0

    .line 619
    .end local v1    # "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    goto :goto_0

    .line 621
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWriteStream()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 622
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->startWriteStream()V

    .line 624
    :cond_3
    return-void
.end method

.method forceEnableNetwork()V
    .locals 2

    .line 276
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->enableNetwork()V

    .line 277
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->ONLINE:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 278
    return-void
.end method

.method public getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/Datastore;->getDatabaseInfo()Lcom/google/firebase/firestore/core/DatabaseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/DatabaseInfo;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteKeysForTarget(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;
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

    .line 756
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->remoteStoreCallback:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;->getRemoteKeysForTarget(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getTargetDataForTarget(I)Lcom/google/firebase/firestore/local/TargetData;
    .locals 2
    .param p1, "targetId"    # I

    .line 762
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/TargetData;

    return-object v0
.end method

.method public handleCredentialChange()V
    .locals 3

    .line 342
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RemoteStore"

    const-string v2, "Restarting streams for new credential."

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->restartNetwork()V

    .line 349
    :cond_0
    return-void
.end method

.method synthetic lambda$new$0$com-google-firebase-firestore-remote-RemoteStore(Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;)V
    .locals 3
    .param p1, "networkStatus"    # Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;

    .line 227
    sget-object v0, Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;->REACHABLE:Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    .line 228
    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->getState()Lcom/google/firebase/firestore/core/OnlineState;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->ONLINE:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/core/OnlineState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    return-void

    .line 232
    :cond_0
    sget-object v0, Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;->UNREACHABLE:Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    .line 233
    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->getState()Lcom/google/firebase/firestore/core/OnlineState;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/core/OnlineState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    return-void

    .line 245
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RemoteStore"

    const-string v2, "Restarting streams for network reachability change."

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->restartNetwork()V

    .line 247
    return-void
.end method

.method synthetic lambda$new$1$com-google-firebase-firestore-remote-RemoteStore(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;)V
    .locals 1
    .param p1, "workerQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p2, "networkStatus"    # Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;

    .line 219
    new-instance v0, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/firestore/remote/RemoteStore$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method

.method public listen(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 2
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 359
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 360
    .local v0, "targetId":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    return-void

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shouldStartWatchStream()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->startWatchStream()V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/WatchStream;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->sendWatchRequest(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 371
    :cond_2
    :goto_0
    return-void
.end method

.method public runAggregateQuery(Lcom/google/firebase/firestore/core/Query;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/AggregateField;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;>;"
        }
    .end annotation

    .line 772
    .local p2, "aggregateFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/AggregateField;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/remote/Datastore;->runAggregateQuery(Lcom/google/firebase/firestore/core/Query;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 775
    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v1, "Failed to get result from server."

    sget-object v2, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->UNAVAILABLE:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 4

    .line 324
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RemoteStore"

    const-string v3, "Shutting down"

    invoke-static {v2, v3, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->connectivityMonitor:Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

    invoke-interface {v1}, Lcom/google/firebase/firestore/remote/ConnectivityMonitor;->shutdown()V

    .line 326
    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->networkEnabled:Z

    .line 327
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->disableNetworkInternal()V

    .line 328
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/Datastore;->shutdown()V

    .line 331
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 332
    return-void
.end method

.method public start()V
    .locals 0

    .line 316
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->enableNetwork()V

    .line 317
    return-void
.end method

.method public stopListening(I)V
    .locals 4
    .param p1, "targetId"    # I

    .line 393
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/TargetData;

    .line 394
    .local v0, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 395
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 394
    const-string v3, "stopListening called on target no currently watched: %d"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 398
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/WatchStream;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore;->sendUnwatchRequest(I)V

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->listenTargets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 403
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/WatchStream;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->watchStream:Lcom/google/firebase/firestore/remote/WatchStream;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/WatchStream;->markIdle()V

    goto :goto_1

    .line 405
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 409
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteStore;->onlineStateTracker:Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    sget-object v2, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->updateState(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 412
    :cond_3
    :goto_1
    return-void
.end method
