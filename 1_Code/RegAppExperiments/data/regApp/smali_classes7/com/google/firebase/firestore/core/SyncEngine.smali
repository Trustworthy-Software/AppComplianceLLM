.class public Lcom/google/firebase/firestore/core/SyncEngine;
.super Ljava/lang/Object;
.source "SyncEngine.java"

# interfaces
.implements Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;,
        Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activeLimboResolutionsByTarget:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;",
            ">;"
        }
    .end annotation
.end field

.field private final activeLimboTargetsByKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentUser:Lcom/google/firebase/firestore/auth/User;

.field private final enqueuedLimboResolutions:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private final limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

.field private final localStore:Lcom/google/firebase/firestore/local/LocalStore;

.field private final maxConcurrentLimboResolutions:I

.field private final mutationUserCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/auth/User;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final pendingWritesCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final queriesByTarget:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Query;",
            ">;>;"
        }
    .end annotation
.end field

.field private final queryViewsByQuery:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/core/QueryView;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

.field private syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

.field private final targetIdGenerator:Lcom/google/firebase/firestore/core/TargetIdGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    const-class v0, Lcom/google/firebase/firestore/core/SyncEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/SyncEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/auth/User;I)V
    .locals 1
    .param p1, "localStore"    # Lcom/google/firebase/firestore/local/LocalStore;
    .param p2, "remoteStore"    # Lcom/google/firebase/firestore/remote/RemoteStore;
    .param p3, "initialUser"    # Lcom/google/firebase/firestore/auth/User;
    .param p4, "maxConcurrentLimboResolutions"    # I

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    .line 170
    iput-object p2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    .line 171
    iput p4, p0, Lcom/google/firebase/firestore/core/SyncEngine;->maxConcurrentLimboResolutions:I

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    .line 176
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->enqueuedLimboResolutions:Ljava/util/LinkedHashSet;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboResolutionsByTarget:Ljava/util/Map;

    .line 179
    new-instance v0, Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/ReferenceSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->mutationUserCallbacks:Ljava/util/Map;

    .line 182
    invoke-static {}, Lcom/google/firebase/firestore/core/TargetIdGenerator;->forSyncEngine()Lcom/google/firebase/firestore/core/TargetIdGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->targetIdGenerator:Lcom/google/firebase/firestore/core/TargetIdGenerator;

    .line 183
    iput-object p3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->currentUser:Lcom/google/firebase/firestore/auth/User;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    .line 186
    return-void
.end method

.method private addUserCallback(ILcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .param p1, "batchId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 294
    .local p2, "userTask":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->mutationUserCallbacks:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->currentUser:Lcom/google/firebase/firestore/auth/User;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 295
    .local v0, "userTasks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;>;"
    if-nez v0, :cond_0

    .line 296
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 297
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->mutationUserCallbacks:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->currentUser:Lcom/google/firebase/firestore/auth/User;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    return-void
.end method

.method private assertCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Trying to call %s before setting callback"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method private emitNewSnapsAndNotifyLocalStore(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/remote/RemoteEvent;)V
    .locals 11
    .param p2, "remoteEvent"    # Lcom/google/firebase/firestore/remote/RemoteEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;",
            "Lcom/google/firebase/firestore/remote/RemoteEvent;",
            ")V"
        }
    .end annotation

    .line 639
    .local p1, "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v0, "newSnapshots":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/ViewSnapshot;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v1, "documentChangesInAllViews":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/local/LocalViewChanges;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 643
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/QueryView;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/QueryView;

    .line 644
    .local v4, "queryView":Lcom/google/firebase/firestore/core/QueryView;
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/QueryView;->getView()Lcom/google/firebase/firestore/core/View;

    move-result-object v5

    .line 645
    .local v5, "view":Lcom/google/firebase/firestore/core/View;
    invoke-virtual {v5, p1}, Lcom/google/firebase/firestore/core/View;->computeDocChanges(Lcom/google/firebase/database/collection/ImmutableSortedMap;)Lcom/google/firebase/firestore/core/View$DocumentChanges;

    move-result-object v6

    .line 646
    .local v6, "viewDocChanges":Lcom/google/firebase/firestore/core/View$DocumentChanges;
    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/View$DocumentChanges;->needsRefill()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 650
    iget-object v7, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    .line 651
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/QueryView;->getQuery()Lcom/google/firebase/firestore/core/Query;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/google/firebase/firestore/local/LocalStore;->executeQuery(Lcom/google/firebase/firestore/core/Query;Z)Lcom/google/firebase/firestore/local/QueryResult;

    move-result-object v7

    .line 652
    .local v7, "queryResult":Lcom/google/firebase/firestore/local/QueryResult;
    invoke-virtual {v7}, Lcom/google/firebase/firestore/local/QueryResult;->getDocuments()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v8

    invoke-virtual {v5, v8, v6}, Lcom/google/firebase/firestore/core/View;->computeDocChanges(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/core/View$DocumentChanges;)Lcom/google/firebase/firestore/core/View$DocumentChanges;

    move-result-object v6

    .line 655
    .end local v7    # "queryResult":Lcom/google/firebase/firestore/local/QueryResult;
    :cond_0
    if-nez p2, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getTargetChanges()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/QueryView;->getTargetId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/remote/TargetChange;

    .line 656
    .local v7, "targetChange":Lcom/google/firebase/firestore/remote/TargetChange;
    :goto_1
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/QueryView;->getView()Lcom/google/firebase/firestore/core/View;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/google/firebase/firestore/core/View;->applyChanges(Lcom/google/firebase/firestore/core/View$DocumentChanges;Lcom/google/firebase/firestore/remote/TargetChange;)Lcom/google/firebase/firestore/core/ViewChange;

    move-result-object v8

    .line 657
    .local v8, "viewChange":Lcom/google/firebase/firestore/core/ViewChange;
    invoke-virtual {v8}, Lcom/google/firebase/firestore/core/ViewChange;->getLimboChanges()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/QueryView;->getTargetId()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/google/firebase/firestore/core/SyncEngine;->updateTrackedLimboDocuments(Ljava/util/List;I)V

    .line 659
    invoke-virtual {v8}, Lcom/google/firebase/firestore/core/ViewChange;->getSnapshot()Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 660
    invoke-virtual {v8}, Lcom/google/firebase/firestore/core/ViewChange;->getSnapshot()Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    nop

    .line 662
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/QueryView;->getTargetId()I

    move-result v9

    invoke-virtual {v8}, Lcom/google/firebase/firestore/core/ViewChange;->getSnapshot()Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/firebase/firestore/local/LocalViewChanges;->fromViewSnapshot(ILcom/google/firebase/firestore/core/ViewSnapshot;)Lcom/google/firebase/firestore/local/LocalViewChanges;

    move-result-object v9

    .line 663
    .local v9, "docChanges":Lcom/google/firebase/firestore/local/LocalViewChanges;
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/QueryView;>;"
    .end local v4    # "queryView":Lcom/google/firebase/firestore/core/QueryView;
    .end local v5    # "view":Lcom/google/firebase/firestore/core/View;
    .end local v6    # "viewDocChanges":Lcom/google/firebase/firestore/core/View$DocumentChanges;
    .end local v7    # "targetChange":Lcom/google/firebase/firestore/remote/TargetChange;
    .end local v8    # "viewChange":Lcom/google/firebase/firestore/core/ViewChange;
    .end local v9    # "docChanges":Lcom/google/firebase/firestore/local/LocalViewChanges;
    :cond_2
    goto :goto_0

    .line 666
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    invoke-interface {v2, v0}, Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;->onViewSnapshots(Ljava/util/List;)V

    .line 667
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/local/LocalStore;->notifyLocalViewChanges(Ljava/util/List;)V

    .line 668
    return-void
.end method

.method private errorIsInteresting(Lio/grpc/Status;)Z
    .locals 4
    .param p1, "error"    # Lio/grpc/Status;

    .line 768
    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v0

    .line 769
    .local v0, "code":Lio/grpc/Status$Code;
    invoke-virtual {p1}, Lio/grpc/Status;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lio/grpc/Status;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 771
    .local v1, "description":Ljava/lang/String;
    :goto_0
    sget-object v2, Lio/grpc/Status$Code;->FAILED_PRECONDITION:Lio/grpc/Status$Code;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    const-string v2, "requires an index"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 772
    return v3

    .line 773
    :cond_1
    sget-object v2, Lio/grpc/Status$Code;->PERMISSION_DENIED:Lio/grpc/Status$Code;

    if-ne v0, v2, :cond_2

    .line 774
    return v3

    .line 777
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private failOutstandingPendingWritesAwaitingTasks()V
    .locals 7

    .line 520
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

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

    .line 521
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 522
    .local v3, "task":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    new-instance v4, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v5, "\'waitForPendingWrites\' task is cancelled due to User change."

    sget-object v6, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->CANCELLED:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {v4, v5, v6}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 526
    .end local v3    # "task":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    goto :goto_1

    .line 527
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;>;>;"
    :cond_0
    goto :goto_0

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 530
    return-void
.end method

.method private initializeViewAndComputeSnapshot(Lcom/google/firebase/firestore/core/Query;ILcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/core/ViewSnapshot;
    .locals 11
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "targetId"    # I
    .param p3, "resumeToken"    # Lcom/google/protobuf/ByteString;

    .line 221
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/firestore/local/LocalStore;->executeQuery(Lcom/google/firebase/firestore/core/Query;Z)Lcom/google/firebase/firestore/local/QueryResult;

    move-result-object v0

    .line 223
    .local v0, "queryResult":Lcom/google/firebase/firestore/local/QueryResult;
    sget-object v2, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->NONE:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    .line 224
    .local v2, "currentTargetSyncState":Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;
    const/4 v3, 0x0

    .line 228
    .local v3, "synthesizedCurrentChange":Lcom/google/firebase/firestore/remote/TargetChange;
    iget-object v4, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 229
    iget-object v4, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/Query;

    .line 230
    .local v4, "mirrorQuery":Lcom/google/firebase/firestore/core/Query;
    iget-object v6, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/core/QueryView;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/QueryView;->getView()Lcom/google/firebase/firestore/core/View;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/View;->getSyncState()Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    move-result-object v2

    .line 232
    .end local v4    # "mirrorQuery":Lcom/google/firebase/firestore/core/Query;
    :cond_0
    sget-object v4, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->SYNCED:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    if-ne v2, v4, :cond_1

    move v5, v1

    .line 233
    :cond_1
    invoke-static {v5, p3}, Lcom/google/firebase/firestore/remote/TargetChange;->createSynthesizedTargetChangeForCurrentChange(ZLcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/remote/TargetChange;

    move-result-object v3

    .line 239
    new-instance v4, Lcom/google/firebase/firestore/core/View;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/QueryResult;->getRemoteKeys()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/google/firebase/firestore/core/View;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    .line 240
    .local v4, "view":Lcom/google/firebase/firestore/core/View;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/QueryResult;->getDocuments()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/core/View;->computeDocChanges(Lcom/google/firebase/database/collection/ImmutableSortedMap;)Lcom/google/firebase/firestore/core/View$DocumentChanges;

    move-result-object v5

    .line 241
    .local v5, "viewDocChanges":Lcom/google/firebase/firestore/core/View$DocumentChanges;
    invoke-virtual {v4, v5, v3}, Lcom/google/firebase/firestore/core/View;->applyChanges(Lcom/google/firebase/firestore/core/View$DocumentChanges;Lcom/google/firebase/firestore/remote/TargetChange;)Lcom/google/firebase/firestore/core/ViewChange;

    move-result-object v6

    .line 242
    .local v6, "viewChange":Lcom/google/firebase/firestore/core/ViewChange;
    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/ViewChange;->getLimboChanges()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/google/firebase/firestore/core/SyncEngine;->updateTrackedLimboDocuments(Ljava/util/List;I)V

    .line 244
    new-instance v7, Lcom/google/firebase/firestore/core/QueryView;

    invoke-direct {v7, p1, p2, v4}, Lcom/google/firebase/firestore/core/QueryView;-><init>(Lcom/google/firebase/firestore/core/Query;ILcom/google/firebase/firestore/core/View;)V

    .line 245
    .local v7, "queryView":Lcom/google/firebase/firestore/core/QueryView;
    iget-object v8, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v8, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v8, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 250
    iget-object v8, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/ViewChange;->getSnapshot()Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v1

    return-object v1
.end method

.method private varargs logErrorIfInteresting(Lio/grpc/Status;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "error"    # Lio/grpc/Status;
    .param p2, "contextString"    # Ljava/lang/String;
    .param p3, "contextArgs"    # [Ljava/lang/Object;

    .line 761
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/SyncEngine;->errorIsInteresting(Lio/grpc/Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "context":Ljava/lang/String;
    const-string v1, "%s: %s"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Firestore"

    invoke-static {v3, v1, v2}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    .end local v0    # "context":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private notifyUser(ILio/grpc/Status;)V
    .locals 4
    .param p1, "batchId"    # I
    .param p2, "status"    # Lio/grpc/Status;

    .line 582
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->mutationUserCallbacks:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->currentUser:Lcom/google/firebase/firestore/auth/User;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 586
    .local v0, "userTasks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;>;"
    if-eqz v0, :cond_1

    .line 587
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 588
    .local v1, "boxedBatchId":Ljava/lang/Integer;
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 589
    .local v2, "userTask":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    if-eqz v2, :cond_1

    .line 590
    if-eqz p2, :cond_0

    .line 591
    invoke-static {p2}, Lcom/google/firebase/firestore/util/Util;->exceptionFromStatus(Lio/grpc/Status;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 593
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 595
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .end local v1    # "boxedBatchId":Ljava/lang/Integer;
    .end local v2    # "userTask":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    :cond_1
    return-void
.end method

.method private pumpEnqueuedLimboResolutions()V
    .locals 11

    .line 711
    nop

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->enqueuedLimboResolutions:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    .line 712
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->maxConcurrentLimboResolutions:I

    if-ge v0, v1, :cond_0

    .line 713
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->enqueuedLimboResolutions:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 714
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 715
    .local v1, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 716
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->targetIdGenerator:Lcom/google/firebase/firestore/core/TargetIdGenerator;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/TargetIdGenerator;->nextId()I

    move-result v2

    .line 717
    .local v2, "limboTargetId":I
    iget-object v3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;

    invoke-direct {v5, v1}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object v3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    iget-object v9, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    new-instance v10, Lcom/google/firebase/firestore/local/TargetData;

    .line 721
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/firestore/core/Query;->atPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v4

    const-wide/16 v6, -0x1

    sget-object v8, Lcom/google/firebase/firestore/local/QueryPurpose;->LIMBO_RESOLUTION:Lcom/google/firebase/firestore/local/QueryPurpose;

    move-object v3, v10

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/firestore/local/TargetData;-><init>(Lcom/google/firebase/firestore/core/Target;IJLcom/google/firebase/firestore/local/QueryPurpose;)V

    .line 719
    invoke-virtual {v9, v10}, Lcom/google/firebase/firestore/remote/RemoteStore;->listen(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 725
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    .end local v1    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v2    # "limboTargetId":I
    goto :goto_0

    .line 726
    :cond_0
    return-void
.end method

.method private removeAndCleanupTarget(ILio/grpc/Status;)V
    .locals 4
    .param p1, "targetId"    # I
    .param p2, "status"    # Lio/grpc/Status;

    .line 601
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Query;

    .line 602
    .local v1, "query":Lcom/google/firebase/firestore/core/Query;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-virtual {p2}, Lio/grpc/Status;->isOk()Z

    move-result v2

    if-nez v2, :cond_0

    .line 604
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    invoke-interface {v2, v1, p2}, Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;->onError(Lcom/google/firebase/firestore/core/Query;Lio/grpc/Status;)V

    .line 605
    const-string v2, "Listen for %s failed"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/google/firebase/firestore/core/SyncEngine;->logErrorIfInteresting(Lio/grpc/Status;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    .end local v1    # "query":Lcom/google/firebase/firestore/core/Query;
    :cond_0
    goto :goto_0

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesForId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    .line 611
    .local v0, "limboKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReferencesForId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 612
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 613
    .local v2, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/local/ReferenceSet;->containsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 615
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/core/SyncEngine;->removeLimboTarget(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 617
    .end local v2    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    :cond_2
    goto :goto_1

    .line 618
    :cond_3
    return-void
.end method

.method private removeLimboTarget(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 3
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 621
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->enqueuedLimboResolutions:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 624
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 625
    .local v0, "targetId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 626
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteStore;->stopListening(I)V

    .line 627
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/SyncEngine;->pumpEnqueuedLimboResolutions()V

    .line 631
    :cond_0
    return-void
.end method

.method private resolvePendingWriteTasks(I)V
    .locals 3
    .param p1, "batchId"    # I

    .line 509
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 511
    .local v1, "task":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 512
    .end local v1    # "task":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_1
    return-void
.end method

.method private trackLimboChange(Lcom/google/firebase/firestore/core/LimboDocumentChange;)V
    .locals 4
    .param p1, "change"    # Lcom/google/firebase/firestore/core/LimboDocumentChange;

    .line 694
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/LimboDocumentChange;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    .line 695
    .local v0, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->enqueuedLimboResolutions:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    sget-object v1, Lcom/google/firebase/firestore/core/SyncEngine;->TAG:Ljava/lang/String;

    const-string v2, "New document in limbo: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->enqueuedLimboResolutions:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 698
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/SyncEngine;->pumpEnqueuedLimboResolutions()V

    .line 700
    :cond_0
    return-void
.end method

.method private updateTrackedLimboDocuments(Ljava/util/List;I)V
    .locals 5
    .param p2, "targetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/LimboDocumentChange;",
            ">;I)V"
        }
    .end annotation

    .line 672
    .local p1, "limboChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/LimboDocumentChange;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/LimboDocumentChange;

    .line 673
    .local v1, "limboChange":Lcom/google/firebase/firestore/core/LimboDocumentChange;
    sget-object v2, Lcom/google/firebase/firestore/core/SyncEngine$1;->$SwitchMap$com$google$firebase$firestore$core$LimboDocumentChange$Type:[I

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/LimboDocumentChange;->getType()Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 688
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/LimboDocumentChange;->getType()Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Unknown limbo change type: %s"

    invoke-static {v2, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 679
    :pswitch_0
    sget-object v2, Lcom/google/firebase/firestore/core/SyncEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/LimboDocumentChange;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Document no longer in limbo: %s"

    invoke-static {v2, v4, v3}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/LimboDocumentChange;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    .line 681
    .local v2, "limboDocKey":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v3, v2, p2}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReference(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    .line 682
    iget-object v3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/local/ReferenceSet;->containsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 684
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/core/SyncEngine;->removeLimboTarget(Lcom/google/firebase/firestore/model/DocumentKey;)V

    goto :goto_1

    .line 675
    .end local v2    # "limboDocKey":Lcom/google/firebase/firestore/model/DocumentKey;
    :pswitch_1
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->limboDocumentRefs:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/LimboDocumentChange;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/google/firebase/firestore/local/ReferenceSet;->addReference(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    .line 676
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/core/SyncEngine;->trackLimboChange(Lcom/google/firebase/firestore/core/LimboDocumentChange;)V

    .line 677
    nop

    .line 690
    .end local v1    # "limboChange":Lcom/google/firebase/firestore/core/LimboDocumentChange;
    :cond_0
    :goto_1
    goto :goto_0

    .line 691
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getActiveLimboDocumentResolutions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 731
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getEnqueuedLimboDocumentResolutions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->enqueuedLimboResolutions:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRemoteKeysForTarget(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 5
    .param p1, "targetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;

    .line 390
    .local v0, "limboResolution":Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->access$000(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    invoke-static {v0}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->access$100(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    return-object v1

    .line 393
    :cond_0
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    .line 394
    .local v1, "remoteKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/Query;

    .line 396
    .local v3, "query":Lcom/google/firebase/firestore/core/Query;
    iget-object v4, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 397
    iget-object v4, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    .line 398
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/QueryView;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/QueryView;->getView()Lcom/google/firebase/firestore/core/View;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/View;->getSyncedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->unionWith(Lcom/google/firebase/database/collection/ImmutableSortedSet;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    .line 400
    .end local v3    # "query":Lcom/google/firebase/firestore/core/Query;
    :cond_1
    goto :goto_0

    .line 403
    :cond_2
    return-object v1
.end method

.method public handleCredentialChange(Lcom/google/firebase/firestore/auth/User;)V
    .locals 3
    .param p1, "user"    # Lcom/google/firebase/firestore/auth/User;

    .line 741
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->currentUser:Lcom/google/firebase/firestore/auth/User;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/auth/User;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 742
    .local v0, "userChanged":Z
    iput-object p1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->currentUser:Lcom/google/firebase/firestore/auth/User;

    .line 744
    if-eqz v0, :cond_0

    .line 746
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/SyncEngine;->failOutstandingPendingWritesAwaitingTasks()V

    .line 748
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/local/LocalStore;->handleUserChange(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    .line 749
    .local v1, "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/firestore/core/SyncEngine;->emitNewSnapsAndNotifyLocalStore(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 753
    .end local v1    # "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/RemoteStore;->handleCredentialChange()V

    .line 754
    return-void
.end method

.method public handleOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)V
    .locals 8
    .param p1, "onlineState"    # Lcom/google/firebase/firestore/core/OnlineState;

    .line 372
    const-string v0, "handleOnlineStateChange"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v0, "newViewSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/firestore/core/ViewSnapshot;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

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

    .line 375
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/QueryView;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/QueryView;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/QueryView;->getView()Lcom/google/firebase/firestore/core/View;

    move-result-object v3

    .line 376
    .local v3, "view":Lcom/google/firebase/firestore/core/View;
    invoke-virtual {v3, p1}, Lcom/google/firebase/firestore/core/View;->applyOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)Lcom/google/firebase/firestore/core/ViewChange;

    move-result-object v4

    .line 377
    .local v4, "viewChange":Lcom/google/firebase/firestore/core/ViewChange;
    nop

    .line 378
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/ViewChange;->getLimboChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 377
    const-string v7, "OnlineState should not affect limbo documents."

    invoke-static {v5, v7, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 379
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/ViewChange;->getSnapshot()Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 380
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/ViewChange;->getSnapshot()Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/QueryView;>;"
    .end local v3    # "view":Lcom/google/firebase/firestore/core/View;
    .end local v4    # "viewChange":Lcom/google/firebase/firestore/core/ViewChange;
    :cond_0
    goto :goto_0

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    invoke-interface {v1, v0}, Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;->onViewSnapshots(Ljava/util/List;)V

    .line 384
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    invoke-interface {v1, p1}, Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;->handleOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)V

    .line 385
    return-void
.end method

.method public handleRejectedListen(ILio/grpc/Status;)V
    .locals 12
    .param p1, "targetId"    # I
    .param p2, "error"    # Lio/grpc/Status;

    .line 410
    const-string v0, "handleRejectedListen"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;

    .line 413
    .local v0, "limboResolution":Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->access$100(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 414
    .local v1, "limboKey":Lcom/google/firebase/firestore/model/DocumentKey;
    :goto_0
    if-eqz v1, :cond_1

    .line 417
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/SyncEngine;->pumpEnqueuedLimboResolutions()V

    .line 426
    sget-object v2, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/model/MutableDocument;->newNoDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v2

    .line 427
    .local v2, "result":Lcom/google/firebase/firestore/model/MutableDocument;
    nop

    .line 428
    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    .line 429
    .local v9, "documentUpdates":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    .line 430
    .local v10, "limboDocuments":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    new-instance v11, Lcom/google/firebase/firestore/remote/RemoteEvent;

    sget-object v4, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 433
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 434
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    move-object v3, v11

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/firestore/remote/RemoteEvent;-><init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V

    .line 437
    .local v3, "event":Lcom/google/firebase/firestore/remote/RemoteEvent;
    invoke-virtual {p0, v3}, Lcom/google/firebase/firestore/core/SyncEngine;->handleRemoteEvent(Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 438
    .end local v2    # "result":Lcom/google/firebase/firestore/model/MutableDocument;
    .end local v3    # "event":Lcom/google/firebase/firestore/remote/RemoteEvent;
    .end local v9    # "documentUpdates":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    .end local v10    # "limboDocuments":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    goto :goto_1

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v2, p1}, Lcom/google/firebase/firestore/local/LocalStore;->releaseTarget(I)V

    .line 440
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/core/SyncEngine;->removeAndCleanupTarget(ILio/grpc/Status;)V

    .line 442
    :goto_1
    return-void
.end method

.method public handleRejectedWrite(ILio/grpc/Status;)V
    .locals 3
    .param p1, "batchId"    # I
    .param p2, "status"    # Lio/grpc/Status;

    .line 463
    const-string v0, "handleRejectedWrite"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->rejectBatch(I)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 466
    .local v0, "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->getMinKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Write failed at %s"

    invoke-direct {p0, p2, v2, v1}, Lcom/google/firebase/firestore/core/SyncEngine;->logErrorIfInteresting(Lio/grpc/Status;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/core/SyncEngine;->notifyUser(ILio/grpc/Status;)V

    .line 475
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/SyncEngine;->resolvePendingWriteTasks(I)V

    .line 477
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/core/SyncEngine;->emitNewSnapsAndNotifyLocalStore(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 478
    return-void
.end method

.method public handleRemoteEvent(Lcom/google/firebase/firestore/remote/RemoteEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/google/firebase/firestore/remote/RemoteEvent;

    .line 332
    const-string v0, "handleRemoteEvent"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/RemoteEvent;->getTargetChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 336
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/firebase/firestore/remote/TargetChange;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 337
    .local v2, "targetId":Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/remote/TargetChange;

    .line 338
    .local v3, "targetChange":Lcom/google/firebase/firestore/remote/TargetChange;
    iget-object v4, p0, Lcom/google/firebase/firestore/core/SyncEngine;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;

    .line 339
    .local v4, "limboResolution":Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;
    if-eqz v4, :cond_3

    .line 342
    nop

    .line 343
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getAddedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v5

    .line 344
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getModifiedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v6

    add-int/2addr v5, v6

    .line 345
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getRemovedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gt v5, v6, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v7

    :goto_1
    new-array v8, v7, [Ljava/lang/Object;

    .line 342
    const-string v9, "Limbo resolution for single document contains multiple changes."

    invoke-static {v5, v9, v8}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 348
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getAddedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 349
    invoke-static {v4, v6}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->access$002(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;Z)Z

    goto :goto_2

    .line 350
    :cond_1
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getModifiedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 351
    nop

    .line 352
    invoke-static {v4}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->access$000(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;)Z

    move-result v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 351
    const-string v7, "Received change for limbo target document without add."

    invoke-static {v5, v7, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 354
    :cond_2
    invoke-virtual {v3}, Lcom/google/firebase/firestore/remote/TargetChange;->getRemovedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 355
    nop

    .line 356
    invoke-static {v4}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->access$000(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;)Z

    move-result v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 355
    const-string v8, "Received remove for limbo target document without add."

    invoke-static {v5, v8, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 358
    invoke-static {v4, v7}, Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;->access$002(Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;Z)Z

    .line 363
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/firebase/firestore/remote/TargetChange;>;"
    .end local v2    # "targetId":Ljava/lang/Integer;
    .end local v3    # "targetChange":Lcom/google/firebase/firestore/remote/TargetChange;
    .end local v4    # "limboResolution":Lcom/google/firebase/firestore/core/SyncEngine$LimboResolution;
    :cond_3
    :goto_2
    goto/16 :goto_0

    .line 365
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->applyRemoteEvent(Lcom/google/firebase/firestore/remote/RemoteEvent;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 366
    .local v0, "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/firestore/core/SyncEngine;->emitNewSnapsAndNotifyLocalStore(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 367
    return-void
.end method

.method public handleSuccessfulWrite(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)V
    .locals 2
    .param p1, "mutationBatchResult"    # Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;

    .line 446
    const-string v0, "handleSuccessfulWrite"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getBatch()Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/core/SyncEngine;->notifyUser(ILio/grpc/Status;)V

    .line 453
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getBatch()Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->resolvePendingWriteTasks(I)V

    .line 455
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    .line 456
    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->acknowledgeBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 458
    .local v0, "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/core/SyncEngine;->emitNewSnapsAndNotifyLocalStore(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 459
    return-void
.end method

.method public listen(Lcom/google/firebase/firestore/core/Query;)I
    .locals 4
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;

    .line 204
    const-string v0, "listen"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "We already listen to query: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->allocateTarget(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0

    .line 209
    .local v0, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    nop

    .line 211
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 210
    invoke-direct {p0, p1, v1, v2}, Lcom/google/firebase/firestore/core/SyncEngine;->initializeViewAndComputeSnapshot(Lcom/google/firebase/firestore/core/Query;ILcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v1

    .line 212
    .local v1, "viewSnapshot":Lcom/google/firebase/firestore/core/ViewSnapshot;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;->onViewSnapshots(Ljava/util/List;)V

    .line 214
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/remote/RemoteStore;->listen(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 216
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v2

    return v2
.end method

.method public loadBundle(Lcom/google/firebase/firestore/bundle/BundleReader;Lcom/google/firebase/firestore/LoadBundleTask;)V
    .locals 16
    .param p1, "bundleReader"    # Lcom/google/firebase/firestore/bundle/BundleReader;
    .param p2, "resultTask"    # Lcom/google/firebase/firestore/LoadBundleTask;

    .line 534
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "Exception while closing bundle"

    const-string v4, "SyncEngine"

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/bundle/BundleReader;->getBundleMetadata()Lcom/google/firebase/firestore/bundle/BundleMetadata;

    move-result-object v0

    move-object v5, v0

    .line 535
    .local v5, "bundleMetadata":Lcom/google/firebase/firestore/bundle/BundleMetadata;
    iget-object v0, v1, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0, v5}, Lcom/google/firebase/firestore/local/LocalStore;->hasNewerBundle(Lcom/google/firebase/firestore/bundle/BundleMetadata;)Z

    move-result v0

    move v6, v0

    .line 536
    .local v6, "hasNewerBundle":Z
    if-eqz v6, :cond_0

    .line 537
    invoke-static {v5}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->forSuccess(Lcom/google/firebase/firestore/bundle/BundleMetadata;)Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/LoadBundleTask;->setResult(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/bundle/BundleReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 576
    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 575
    .local v0, "e":Ljava/io/IOException;
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v3, v7}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 541
    :cond_0
    :try_start_2
    invoke-static {v5}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->forInitial(Lcom/google/firebase/firestore/bundle/BundleMetadata;)Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    move-result-object v0

    .line 542
    .local v0, "progress":Lcom/google/firebase/firestore/LoadBundleTaskProgress;
    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/LoadBundleTask;->updateProgress(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V

    .line 544
    new-instance v7, Lcom/google/firebase/firestore/bundle/BundleLoader;

    iget-object v8, v1, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-direct {v7, v8, v5}, Lcom/google/firebase/firestore/bundle/BundleLoader;-><init>(Lcom/google/firebase/firestore/bundle/BundleCallback;Lcom/google/firebase/firestore/bundle/BundleMetadata;)V

    .line 546
    .local v7, "bundleLoader":Lcom/google/firebase/firestore/bundle/BundleLoader;
    const-wide/16 v8, 0x0

    .line 548
    .local v8, "currentBytesRead":J
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/bundle/BundleReader;->getNextElement()Lcom/google/firebase/firestore/bundle/BundleElement;

    move-result-object v10

    move-object v11, v10

    .local v11, "bundleElement":Lcom/google/firebase/firestore/bundle/BundleElement;
    if-eqz v10, :cond_2

    .line 549
    move-wide v12, v8

    .line 550
    .local v12, "oldBytesRead":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/bundle/BundleReader;->getBytesRead()J

    move-result-wide v14

    move-wide v8, v14

    .line 551
    sub-long v14, v8, v12

    invoke-virtual {v7, v11, v14, v15}, Lcom/google/firebase/firestore/bundle/BundleLoader;->addElement(Lcom/google/firebase/firestore/bundle/BundleElement;J)Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    move-result-object v10

    move-object v0, v10

    .line 552
    if-eqz v0, :cond_1

    .line 553
    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/LoadBundleTask;->updateProgress(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V

    .line 555
    .end local v12    # "oldBytesRead":J
    :cond_1
    goto :goto_1

    .line 557
    :cond_2
    invoke-virtual {v7}, Lcom/google/firebase/firestore/bundle/BundleLoader;->applyChanges()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v10

    .line 561
    .local v10, "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    const/4 v12, 0x0

    invoke-direct {v1, v10, v12}, Lcom/google/firebase/firestore/core/SyncEngine;->emitNewSnapsAndNotifyLocalStore(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 564
    iget-object v12, v1, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v12, v5}, Lcom/google/firebase/firestore/local/LocalStore;->saveBundle(Lcom/google/firebase/firestore/bundle/BundleMetadata;)V

    .line 565
    invoke-static {v5}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->forSuccess(Lcom/google/firebase/firestore/bundle/BundleMetadata;)Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/google/firebase/firestore/LoadBundleTask;->setResult(Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 573
    .end local v0    # "progress":Lcom/google/firebase/firestore/LoadBundleTaskProgress;
    .end local v5    # "bundleMetadata":Lcom/google/firebase/firestore/bundle/BundleMetadata;
    .end local v6    # "hasNewerBundle":Z
    .end local v7    # "bundleLoader":Lcom/google/firebase/firestore/bundle/BundleLoader;
    .end local v8    # "currentBytesRead":J
    .end local v10    # "changes":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    .end local v11    # "bundleElement":Lcom/google/firebase/firestore/bundle/BundleElement;
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/bundle/BundleReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 574
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 575
    .local v0, "e":Ljava/io/IOException;
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 572
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_5

    .line 566
    :catch_2
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "Firestore"

    const-string v6, "Loading bundle failed : %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    new-instance v5, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v6, "Bundle failed to load"

    sget-object v7, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->INVALID_ARGUMENT:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {v5, v6, v7, v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v5}, Lcom/google/firebase/firestore/LoadBundleTask;->setException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 573
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/bundle/BundleReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 576
    :goto_2
    goto :goto_4

    .line 574
    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 575
    .local v0, "e":Ljava/io/IOException;
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 578
    :goto_4
    return-void

    .line 573
    :goto_5
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/bundle/BundleReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 576
    goto :goto_6

    .line 574
    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 575
    .restart local v0    # "e":Ljava/io/IOException;
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v3, v6}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    throw v5
.end method

.method public registerPendingWritesTask(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 485
    .local p1, "userTask":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/RemoteStore;->canUseNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    sget-object v0, Lcom/google/firebase/firestore/core/SyncEngine;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The network is disabled. The task returned by \'awaitPendingWrites()\' will not complete until the network is enabled."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LocalStore;->getHighestUnacknowledgedBatchId()I

    move-result v0

    .line 494
    .local v0, "largestPendingBatchId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 496
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 497
    return-void

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 501
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    return-void
.end method

.method public runAggregateQuery(Lcom/google/firebase/firestore/core/Query;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .locals 1
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

    .line 326
    .local p2, "aggregateFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/AggregateField;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/remote/RemoteStore;->runAggregateQuery(Lcom/google/firebase/firestore/core/Query;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    .line 189
    iput-object p1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->syncEngineListener:Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;

    .line 190
    return-void
.end method

.method stopListening(Lcom/google/firebase/firestore/core/Query;)V
    .locals 4
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;

    .line 259
    const-string v0, "stopListening"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/QueryView;

    .line 262
    .local v0, "queryView":Lcom/google/firebase/firestore/core/QueryView;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Trying to stop listening to a query not found"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/QueryView;->getTargetId()I

    move-result v1

    .line 267
    .local v1, "targetId":I
    iget-object v2, p0, Lcom/google/firebase/firestore/core/SyncEngine;->queriesByTarget:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 268
    .local v2, "targetQueries":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Query;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    iget-object v3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v3, v1}, Lcom/google/firebase/firestore/local/LocalStore;->releaseTarget(I)V

    .line 272
    iget-object v3, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v3, v1}, Lcom/google/firebase/firestore/remote/RemoteStore;->stopListening(I)V

    .line 273
    sget-object v3, Lio/grpc/Status;->OK:Lio/grpc/Status;

    invoke-direct {p0, v1, v3}, Lcom/google/firebase/firestore/core/SyncEngine;->removeAndCleanupTarget(ILio/grpc/Status;)V

    .line 275
    :cond_1
    return-void
.end method

.method public transaction(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/util/Function;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "asyncQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p2, "options"    # Lcom/google/firebase/firestore/TransactionOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/util/AsyncQueue;",
            "Lcom/google/firebase/firestore/TransactionOptions;",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/core/Transaction;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 321
    .local p3, "updateFunction":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/core/Transaction;Lcom/google/android/gms/tasks/Task<TTResult;>;>;"
    new-instance v0, Lcom/google/firebase/firestore/core/TransactionRunner;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/google/firebase/firestore/core/TransactionRunner;-><init>(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/util/Function;)V

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/TransactionRunner;->run()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public writeMutations(Ljava/util/List;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 284
    .local p1, "mutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    .local p2, "userTask":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    const-string v0, "writeMutations"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->assertCallback(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/google/firebase/firestore/core/SyncEngine;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->writeLocally(Ljava/util/List;)Lcom/google/firebase/firestore/local/LocalDocumentsResult;

    move-result-object v0

    .line 287
    .local v0, "result":Lcom/google/firebase/firestore/local/LocalDocumentsResult;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->getBatchId()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/google/firebase/firestore/core/SyncEngine;->addUserCallback(ILcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 289
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->getDocuments()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/firestore/core/SyncEngine;->emitNewSnapsAndNotifyLocalStore(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/remote/RemoteEvent;)V

    .line 290
    iget-object v1, p0, Lcom/google/firebase/firestore/core/SyncEngine;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/RemoteStore;->fillWritePipeline()V

    .line 291
    return-void
.end method
