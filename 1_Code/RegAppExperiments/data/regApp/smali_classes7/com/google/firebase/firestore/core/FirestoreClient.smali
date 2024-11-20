.class public final Lcom/google/firebase/firestore/core/FirestoreClient;
.super Ljava/lang/Object;
.source "FirestoreClient.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FirestoreClient"

.field private static final MAX_CONCURRENT_LIMBO_RESOLUTIONS:I = 0x64


# instance fields
.field private final appCheckProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/auth/CredentialsProvider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

.field private final authProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/auth/CredentialsProvider<",
            "Lcom/google/firebase/firestore/auth/User;",
            ">;"
        }
    .end annotation
.end field

.field private final bundleSerializer:Lcom/google/firebase/firestore/bundle/BundleSerializer;

.field private final databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

.field private eventManager:Lcom/google/firebase/firestore/core/EventManager;

.field private gcScheduler:Lcom/google/firebase/firestore/local/Scheduler;

.field private indexBackfillScheduler:Lcom/google/firebase/firestore/local/Scheduler;

.field private localStore:Lcom/google/firebase/firestore/local/LocalStore;

.field private final metadataProvider:Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;

.field private persistence:Lcom/google/firebase/firestore/local/Persistence;

.field private remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

.field private syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/firestore/core/DatabaseInfo;Lcom/google/firebase/firestore/FirebaseFirestoreSettings;Lcom/google/firebase/firestore/auth/CredentialsProvider;Lcom/google/firebase/firestore/auth/CredentialsProvider;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseInfo"    # Lcom/google/firebase/firestore/core/DatabaseInfo;
    .param p3, "settings"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings;
    .param p6, "asyncQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p7, "metadataProvider"    # Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/firebase/firestore/core/DatabaseInfo;",
            "Lcom/google/firebase/firestore/FirebaseFirestoreSettings;",
            "Lcom/google/firebase/firestore/auth/CredentialsProvider<",
            "Lcom/google/firebase/firestore/auth/User;",
            ">;",
            "Lcom/google/firebase/firestore/auth/CredentialsProvider<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/firestore/util/AsyncQueue;",
            "Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;",
            ")V"
        }
    .end annotation

    .line 94
    .local p4, "authProvider":Lcom/google/firebase/firestore/auth/CredentialsProvider;, "Lcom/google/firebase/firestore/auth/CredentialsProvider<Lcom/google/firebase/firestore/auth/User;>;"
    .local p5, "appCheckProvider":Lcom/google/firebase/firestore/auth/CredentialsProvider;, "Lcom/google/firebase/firestore/auth/CredentialsProvider<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

    .line 96
    iput-object p4, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->authProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    .line 97
    iput-object p5, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->appCheckProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    .line 98
    iput-object p6, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 99
    iput-object p7, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->metadataProvider:Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;

    .line 100
    new-instance v0, Lcom/google/firebase/firestore/bundle/BundleSerializer;

    new-instance v1, Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 101
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/DatabaseInfo;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;-><init>(Lcom/google/firebase/firestore/model/DatabaseId;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;-><init>(Lcom/google/firebase/firestore/remote/RemoteSerializer;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->bundleSerializer:Lcom/google/firebase/firestore/bundle/BundleSerializer;

    .line 103
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 104
    .local v0, "firstUser":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/firestore/auth/User;>;"
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 109
    .local v1, "initialized":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, v0, p1, p3}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda14;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)V

    invoke-virtual {p6, v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 120
    new-instance v2, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v1, v0, p6}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda15;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/firestore/util/AsyncQueue;)V

    invoke-virtual {p4, v2}, Lcom/google/firebase/firestore/auth/CredentialsProvider;->setChangeListener(Lcom/google/firebase/firestore/util/Listener;)V

    .line 135
    new-instance v2, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {p5, v2}, Lcom/google/firebase/firestore/auth/CredentialsProvider;->setChangeListener(Lcom/google/firebase/firestore/util/Listener;)V

    .line 140
    return-void
.end method

.method private initialize(Landroid/content/Context;Lcom/google/firebase/firestore/auth/User;Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Lcom/google/firebase/firestore/auth/User;
    .param p3, "settings"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 277
    invoke-virtual {p2}, Lcom/google/firebase/firestore/auth/User;->getUid()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FirestoreClient"

    const-string v2, "Initializing. user=%s"

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    new-instance v0, Lcom/google/firebase/firestore/remote/Datastore;

    iget-object v4, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

    iget-object v5, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    iget-object v6, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->authProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    iget-object v7, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->appCheckProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    iget-object v9, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->metadataProvider:Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;

    move-object v3, v0

    move-object v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/firebase/firestore/remote/Datastore;-><init>(Lcom/google/firebase/firestore/core/DatabaseInfo;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/auth/CredentialsProvider;Lcom/google/firebase/firestore/auth/CredentialsProvider;Landroid/content/Context;Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;)V

    move-object v7, v0

    .line 282
    .local v7, "datastore":Lcom/google/firebase/firestore/remote/Datastore;
    new-instance v0, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;

    iget-object v5, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    iget-object v6, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->databaseInfo:Lcom/google/firebase/firestore/core/DatabaseInfo;

    const/16 v9, 0x64

    move-object v3, v0

    move-object v4, p1

    move-object v8, p2

    move-object v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;-><init>(Landroid/content/Context;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/core/DatabaseInfo;Lcom/google/firebase/firestore/remote/Datastore;Lcom/google/firebase/firestore/auth/User;ILcom/google/firebase/firestore/FirebaseFirestoreSettings;)V

    .line 293
    .local v0, "configuration":Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;
    invoke-virtual {p3}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->isPersistenceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    new-instance v1, Lcom/google/firebase/firestore/core/SQLiteComponentProvider;

    invoke-direct {v1}, Lcom/google/firebase/firestore/core/SQLiteComponentProvider;-><init>()V

    goto :goto_0

    .line 295
    :cond_0
    new-instance v1, Lcom/google/firebase/firestore/core/MemoryComponentProvider;

    invoke-direct {v1}, Lcom/google/firebase/firestore/core/MemoryComponentProvider;-><init>()V

    :goto_0
    nop

    .line 296
    .local v1, "provider":Lcom/google/firebase/firestore/core/ComponentProvider;
    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/core/ComponentProvider;->initialize(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)V

    .line 297
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/ComponentProvider;->getPersistence()Lcom/google/firebase/firestore/local/Persistence;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    .line 298
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/ComponentProvider;->getGarbageCollectionScheduler()Lcom/google/firebase/firestore/local/Scheduler;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->gcScheduler:Lcom/google/firebase/firestore/local/Scheduler;

    .line 299
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/ComponentProvider;->getLocalStore()Lcom/google/firebase/firestore/local/LocalStore;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    .line 300
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/ComponentProvider;->getRemoteStore()Lcom/google/firebase/firestore/remote/RemoteStore;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    .line 301
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/ComponentProvider;->getSyncEngine()Lcom/google/firebase/firestore/core/SyncEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    .line 302
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/ComponentProvider;->getEventManager()Lcom/google/firebase/firestore/core/EventManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->eventManager:Lcom/google/firebase/firestore/core/EventManager;

    .line 303
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/ComponentProvider;->getIndexBackfiller()Lcom/google/firebase/firestore/local/IndexBackfiller;

    move-result-object v2

    .line 305
    .local v2, "indexBackfiller":Lcom/google/firebase/firestore/local/IndexBackfiller;
    iget-object v3, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->gcScheduler:Lcom/google/firebase/firestore/local/Scheduler;

    if-eqz v3, :cond_1

    .line 306
    invoke-interface {v3}, Lcom/google/firebase/firestore/local/Scheduler;->start()V

    .line 309
    :cond_1
    if-eqz v2, :cond_2

    .line 310
    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/IndexBackfiller;->getScheduler()Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;

    move-result-object v3

    iput-object v3, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->indexBackfillScheduler:Lcom/google/firebase/firestore/local/Scheduler;

    .line 311
    invoke-interface {v3}, Lcom/google/firebase/firestore/local/Scheduler;->start()V

    .line 313
    :cond_2
    return-void
.end method

.method static synthetic lambda$getDocumentFromLocalCache$10(Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/firestore/model/Document;
    .locals 4
    .param p0, "result"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/Document;

    .line 204
    .local v0, "document":Lcom/google/firebase/firestore/model/Document;
    invoke-interface {v0}, Lcom/google/firebase/firestore/model/Document;->isFoundDocument()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    return-object v0

    .line 206
    :cond_0
    invoke-interface {v0}, Lcom/google/firebase/firestore/model/Document;->isNoDocument()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    const/4 v1, 0x0

    return-object v1

    .line 209
    :cond_1
    new-instance v1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v2, "Failed to get document from cache. (However, this document may exist on the server. Run again without setting source to CACHE to attempt to retrieve the document from the server.)"

    sget-object v3, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->UNAVAILABLE:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    throw v1
.end method

.method static synthetic lambda$new$3(Ljava/lang/String;)V
    .locals 0
    .param p0, "appCheckToken"    # Ljava/lang/String;

    .line 139
    return-void
.end method

.method static synthetic lambda$runAggregateQuery$14(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/util/Map;)V
    .locals 0
    .param p0, "result"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p1, "data"    # Ljava/util/Map;

    .line 256
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$runAggregateQuery$15(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "result"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 257
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method private verifyNotTerminated()V
    .locals 2

    .line 375
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    return-void

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The client has already been terminated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addSnapshotsInSyncListener(Lcom/google/firebase/firestore/EventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/EventListener<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 316
    .local p1, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Ljava/lang/Void;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->verifyNotTerminated()V

    .line 317
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda18;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/EventListener;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method

.method public configureFieldIndexes(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 352
    .local p1, "fieldIndices":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->verifyNotTerminated()V

    .line 353
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda11;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueue(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public deleteAllFieldIndexes()V
    .locals 2

    .line 362
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->verifyNotTerminated()V

    .line 363
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda17;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 364
    return-void
.end method

.method public disableNetwork()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->verifyNotTerminated()V

    .line 144
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda13;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueue(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public enableNetwork()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->verifyNotTerminated()V

    .line 149
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda8;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueue(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentFromLocalCache(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "docKey"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->verifyNotTerminated()V

    .line 199
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda23;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 200
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueue(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda24;-><init>()V

    .line 201
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 199
    return-object v0
.end method

.method public getDocumentsFromLocalCache(Lcom/google/firebase/firestore/core/Query;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/core/ViewSnapshot;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->verifyNotTerminated()V

    .line 220
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/core/Query;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueue(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getNamedQuery(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1, "queryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/core/Query;",
            ">;"
        }
    .end annotation

    .line 327
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->verifyNotTerminated()V

    .line 328
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 329
    .local v0, "completionSource":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/firestore/core/Query;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v2, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 348
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public isTerminated()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->isShuttingDown()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$addSnapshotsInSyncListener$18$com-google-firebase-firestore-core-FirestoreClient(Lcom/google/firebase/firestore/EventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/firebase/firestore/EventListener;

    .line 317
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->eventManager:Lcom/google/firebase/firestore/core/EventManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/core/EventManager;->addSnapshotsInSyncListener(Lcom/google/firebase/firestore/EventListener;)V

    return-void
.end method

.method synthetic lambda$configureFieldIndexes$21$com-google-firebase-firestore-core-FirestoreClient(Ljava/util/List;)V
    .locals 1
    .param p1, "fieldIndices"    # Ljava/util/List;

    .line 353
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->configureFieldIndexes(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$deleteAllFieldIndexes$23$com-google-firebase-firestore-core-FirestoreClient()V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LocalStore;->deleteAllFieldIndexes()V

    return-void
.end method

.method synthetic lambda$disableNetwork$4$com-google-firebase-firestore-core-FirestoreClient()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/RemoteStore;->disableNetwork()V

    return-void
.end method

.method synthetic lambda$enableNetwork$5$com-google-firebase-firestore-core-FirestoreClient()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/RemoteStore;->enableNetwork()V

    return-void
.end method

.method synthetic lambda$getDocumentFromLocalCache$9$com-google-firebase-firestore-core-FirestoreClient(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/Document;
    .locals 1
    .param p1, "docKey"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->readDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/Document;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getDocumentsFromLocalCache$11$com-google-firebase-firestore-core-FirestoreClient(Lcom/google/firebase/firestore/core/Query;)Lcom/google/firebase/firestore/core/ViewSnapshot;
    .locals 4
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/firestore/local/LocalStore;->executeQuery(Lcom/google/firebase/firestore/core/Query;Z)Lcom/google/firebase/firestore/local/QueryResult;

    move-result-object v0

    .line 223
    .local v0, "queryResult":Lcom/google/firebase/firestore/local/QueryResult;
    new-instance v1, Lcom/google/firebase/firestore/core/View;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/QueryResult;->getRemoteKeys()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/google/firebase/firestore/core/View;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    .line 224
    .local v1, "view":Lcom/google/firebase/firestore/core/View;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/QueryResult;->getDocuments()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/core/View;->computeDocChanges(Lcom/google/firebase/database/collection/ImmutableSortedMap;)Lcom/google/firebase/firestore/core/View$DocumentChanges;

    move-result-object v2

    .line 225
    .local v2, "viewDocChanges":Lcom/google/firebase/firestore/core/View$DocumentChanges;
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/core/View;->applyChanges(Lcom/google/firebase/firestore/core/View$DocumentChanges;)Lcom/google/firebase/firestore/core/ViewChange;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/ViewChange;->getSnapshot()Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v3

    return-object v3
.end method

.method synthetic lambda$getNamedQuery$20$com-google-firebase-firestore-core-FirestoreClient(Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 13
    .param p1, "queryName"    # Ljava/lang/String;
    .param p2, "completionSource"    # Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 331
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->getNamedQuery(Ljava/lang/String;)Lcom/google/firebase/firestore/bundle/NamedQuery;

    move-result-object v0

    .line 332
    .local v0, "namedQuery":Lcom/google/firebase/firestore/bundle/NamedQuery;
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/google/firebase/firestore/bundle/NamedQuery;->getBundledQuery()Lcom/google/firebase/firestore/bundle/BundledQuery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/bundle/BundledQuery;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    .line 334
    .local v1, "target":Lcom/google/firebase/firestore/core/Target;
    new-instance v12, Lcom/google/firebase/firestore/core/Query;

    .line 336
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Target;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v3

    .line 337
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Target;->getCollectionGroup()Ljava/lang/String;

    move-result-object v4

    .line 338
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Target;->getFilters()Ljava/util/List;

    move-result-object v5

    .line 339
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Target;->getOrderBy()Ljava/util/List;

    move-result-object v6

    .line 340
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Target;->getLimit()J

    move-result-wide v7

    .line 341
    invoke-virtual {v0}, Lcom/google/firebase/firestore/bundle/NamedQuery;->getBundledQuery()Lcom/google/firebase/firestore/bundle/BundledQuery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/bundle/BundledQuery;->getLimitType()Lcom/google/firebase/firestore/core/Query$LimitType;

    move-result-object v9

    .line 342
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Target;->getStartAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v10

    .line 343
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Target;->getEndAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v11

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    .line 334
    invoke-virtual {p2, v12}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 344
    .end local v1    # "target":Lcom/google/firebase/firestore/core/Target;
    goto :goto_0

    .line 345
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 347
    :goto_0
    return-void
.end method

.method synthetic lambda$listen$7$com-google-firebase-firestore-core-FirestoreClient(Lcom/google/firebase/firestore/core/QueryListener;)V
    .locals 1
    .param p1, "queryListener"    # Lcom/google/firebase/firestore/core/QueryListener;

    .line 181
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->eventManager:Lcom/google/firebase/firestore/core/EventManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/core/EventManager;->addQueryListener(Lcom/google/firebase/firestore/core/QueryListener;)I

    return-void
.end method

.method synthetic lambda$loadBundle$19$com-google-firebase-firestore-core-FirestoreClient(Lcom/google/firebase/firestore/bundle/BundleReader;Lcom/google/firebase/firestore/LoadBundleTask;)V
    .locals 1
    .param p1, "bundleReader"    # Lcom/google/firebase/firestore/bundle/BundleReader;
    .param p2, "resultTask"    # Lcom/google/firebase/firestore/LoadBundleTask;

    .line 323
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/core/SyncEngine;->loadBundle(Lcom/google/firebase/firestore/bundle/BundleReader;Lcom/google/firebase/firestore/LoadBundleTask;)V

    return-void
.end method

.method synthetic lambda$new$0$com-google-firebase-firestore-core-FirestoreClient(Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)V
    .locals 2
    .param p1, "firstUser"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 113
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/auth/User;

    .line 114
    .local v0, "initialUser":Lcom/google/firebase/firestore/auth/User;
    invoke-direct {p0, p2, v0, p3}, Lcom/google/firebase/firestore/core/FirestoreClient;->initialize(Landroid/content/Context;Lcom/google/firebase/firestore/auth/User;Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0    # "initialUser":Lcom/google/firebase/firestore/auth/User;
    nop

    .line 118
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic lambda$new$1$com-google-firebase-firestore-core-FirestoreClient(Lcom/google/firebase/firestore/auth/User;)V
    .locals 3
    .param p1, "user"    # Lcom/google/firebase/firestore/auth/User;

    .line 128
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "SyncEngine not yet initialized"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p1}, Lcom/google/firebase/firestore/auth/User;->getUid()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FirestoreClient"

    const-string v2, "Credential changed. Current user: %s"

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/core/SyncEngine;->handleCredentialChange(Lcom/google/firebase/firestore/auth/User;)V

    .line 131
    return-void
.end method

.method synthetic lambda$new$2$com-google-firebase-firestore-core-FirestoreClient(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/auth/User;)V
    .locals 3
    .param p1, "initialized"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "firstUser"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p3, "asyncQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p4, "user"    # Lcom/google/firebase/firestore/auth/User;

    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v2

    xor-int/2addr v1, v2

    const-string v2, "Already fulfilled first user task"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p2, p4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p4}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda6;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/auth/User;)V

    invoke-virtual {p3, v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 133
    :goto_0
    return-void
.end method

.method synthetic lambda$removeSnapshotsInSyncListener$24$com-google-firebase-firestore-core-FirestoreClient(Lcom/google/firebase/firestore/EventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/firebase/firestore/EventListener;

    .line 371
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->eventManager:Lcom/google/firebase/firestore/core/EventManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/core/EventManager;->removeSnapshotsInSyncListener(Lcom/google/firebase/firestore/EventListener;)V

    return-void
.end method

.method synthetic lambda$runAggregateQuery$16$com-google-firebase-firestore-core-FirestoreClient(Lcom/google/firebase/firestore/core/Query;Ljava/util/List;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "aggregateFields"    # Ljava/util/List;
    .param p3, "result"    # Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 254
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    .line 255
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/core/SyncEngine;->runAggregateQuery(Lcom/google/firebase/firestore/core/Query;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda19;

    invoke-direct {v1, p3}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda19;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 256
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda20;

    invoke-direct {v1, p3}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda20;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 257
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 254
    return-void
.end method

.method synthetic lambda$setIndexAutoCreationEnabled$22$com-google-firebase-firestore-core-FirestoreClient(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 358
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/LocalStore;->setIndexAutoCreationEnabled(Z)V

    return-void
.end method

.method synthetic lambda$stopListening$8$com-google-firebase-firestore-core-FirestoreClient(Lcom/google/firebase/firestore/core/QueryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/firebase/firestore/core/QueryListener;

    .line 192
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->eventManager:Lcom/google/firebase/firestore/core/EventManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/core/EventManager;->removeQueryListener(Lcom/google/firebase/firestore/core/QueryListener;)V

    return-void
.end method

.method synthetic lambda$terminate$6$com-google-firebase-firestore-core-FirestoreClient()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/RemoteStore;->shutdown()V

    .line 159
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/Persistence;->shutdown()V

    .line 160
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->gcScheduler:Lcom/google/firebase/firestore/local/Scheduler;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Lcom/google/firebase/firestore/local/Scheduler;->stop()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->indexBackfillScheduler:Lcom/google/firebase/firestore/local/Scheduler;

    if-eqz v0, :cond_1

    .line 164
    invoke-interface {v0}, Lcom/google/firebase/firestore/local/Scheduler;->stop()V

    .line 166
    :cond_1
    return-void
.end method

.method synthetic lambda$transaction$13$com-google-firebase-firestore-core-FirestoreClient(Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/util/Function;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "options"    # Lcom/google/firebase/firestore/TransactionOptions;
    .param p2, "updateFunction"    # Lcom/google/firebase/firestore/util/Function;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/firestore/core/SyncEngine;->transaction(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/util/Function;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$waitForPendingWrites$17$com-google-firebase-firestore-core-FirestoreClient(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .param p1, "source"    # Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 269
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/core/SyncEngine;->registerPendingWritesTask(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method synthetic lambda$write$12$com-google-firebase-firestore-core-FirestoreClient(Ljava/util/List;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .param p1, "mutations"    # Ljava/util/List;
    .param p2, "source"    # Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 233
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/core/SyncEngine;->writeMutations(Ljava/util/List;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public listen(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/core/QueryListener;
    .locals 3
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "options"    # Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/core/EventManager$ListenOptions;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/core/ViewSnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/core/QueryListener;"
        }
    .end annotation

    .line 179
    .local p3, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/core/ViewSnapshot;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->verifyNotTerminated()V

    .line 180
    new-instance v0, Lcom/google/firebase/firestore/core/QueryListener;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/firestore/core/QueryListener;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Lcom/google/firebase/firestore/EventListener;)V

    .line 181
    .local v0, "queryListener":Lcom/google/firebase/firestore/core/QueryListener;
    iget-object v1, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v2, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/core/QueryListener;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 182
    return-object v0
.end method

.method public loadBundle(Ljava/io/InputStream;Lcom/google/firebase/firestore/LoadBundleTask;)V
    .locals 3
    .param p1, "bundleData"    # Ljava/io/InputStream;
    .param p2, "resultTask"    # Lcom/google/firebase/firestore/LoadBundleTask;

    .line 321
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->verifyNotTerminated()V

    .line 322
    new-instance v0, Lcom/google/firebase/firestore/bundle/BundleReader;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->bundleSerializer:Lcom/google/firebase/firestore/bundle/BundleSerializer;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/firestore/bundle/BundleReader;-><init>(Lcom/google/firebase/firestore/bundle/BundleSerializer;Ljava/io/InputStream;)V

    .line 323
    .local v0, "bundleReader":Lcom/google/firebase/firestore/bundle/BundleReader;
    iget-object v1, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v2, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda21;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/bundle/BundleReader;Lcom/google/firebase/firestore/LoadBundleTask;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method public removeSnapshotsInSyncListener(Lcom/google/firebase/firestore/EventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/EventListener<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 368
    .local p1, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda12;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/EventListener;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 372
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

    .line 250
    .local p2, "aggregateFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/AggregateField;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->verifyNotTerminated()V

    .line 251
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 252
    .local v0, "result":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v2, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda22;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/core/Query;Ljava/util/List;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 258
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public setIndexAutoCreationEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 357
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->verifyNotTerminated()V

    .line 358
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda9;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Z)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method public stopListening(Lcom/google/firebase/firestore/core/QueryListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/firebase/firestore/core/QueryListener;

    .line 189
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda10;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/core/QueryListener;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method public terminate()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->authProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/auth/CredentialsProvider;->removeChangeListener()V

    .line 155
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->appCheckProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/auth/CredentialsProvider;->removeChangeListener()V

    .line 156
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndInitiateShutdown(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public transaction(Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/util/Function;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "options"    # Lcom/google/firebase/firestore/TransactionOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/TransactionOptions;",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/core/Transaction;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 240
    .local p2, "updateFunction":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/core/Transaction;Lcom/google/android/gms/tasks/Task<TTResult;>;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->verifyNotTerminated()V

    .line 241
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 242
    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/util/Function;)V

    .line 241
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->callTask(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public waitForPendingWrites()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->verifyNotTerminated()V

    .line 268
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 269
    .local v0, "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v2, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 270
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public write(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 231
    .local p1, "mutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/FirestoreClient;->verifyNotTerminated()V

    .line 232
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 233
    .local v0, "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/core/FirestoreClient;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v2, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/firebase/firestore/core/FirestoreClient$$ExternalSyntheticLambda7;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Ljava/util/List;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 234
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method
