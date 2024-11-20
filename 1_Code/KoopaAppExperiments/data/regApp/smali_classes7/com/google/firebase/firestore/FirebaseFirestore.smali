.class public Lcom/google/firebase/firestore/FirebaseFirestore;
.super Ljava/lang/Object;
.source "FirebaseFirestore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/FirebaseFirestore$InstanceRegistry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FirebaseFirestore"


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

.field private volatile client:Lcom/google/firebase/firestore/core/FirestoreClient;

.field private final context:Landroid/content/Context;

.field private final databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

.field private emulatorSettings:Lcom/google/firebase/emulators/EmulatedServiceSettings;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final instanceRegistry:Lcom/google/firebase/firestore/FirebaseFirestore$InstanceRegistry;

.field private final metadataProvider:Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;

.field private final persistenceKey:Ljava/lang/String;

.field private persistentCacheIndexManager:Lcom/google/firebase/firestore/PersistentCacheIndexManager;

.field private settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

.field private final userDataReader:Lcom/google/firebase/firestore/UserDataReader;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/firestore/model/DatabaseId;Ljava/lang/String;Lcom/google/firebase/firestore/auth/CredentialsProvider;Lcom/google/firebase/firestore/auth/CredentialsProvider;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/firestore/FirebaseFirestore$InstanceRegistry;Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseId"    # Lcom/google/firebase/firestore/model/DatabaseId;
    .param p3, "persistenceKey"    # Ljava/lang/String;
    .param p6, "asyncQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p7, "firebaseApp"    # Lcom/google/firebase/FirebaseApp;
    .param p8, "instanceRegistry"    # Lcom/google/firebase/firestore/FirebaseFirestore$InstanceRegistry;
    .param p9, "metadataProvider"    # Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/firebase/firestore/model/DatabaseId;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/auth/CredentialsProvider<",
            "Lcom/google/firebase/firestore/auth/User;",
            ">;",
            "Lcom/google/firebase/firestore/auth/CredentialsProvider<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/firestore/util/AsyncQueue;",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/firestore/FirebaseFirestore$InstanceRegistry;",
            "Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;",
            ")V"
        }
    .end annotation

    .line 232
    .local p4, "authProvider":Lcom/google/firebase/firestore/auth/CredentialsProvider;, "Lcom/google/firebase/firestore/auth/CredentialsProvider<Lcom/google/firebase/firestore/auth/User;>;"
    .local p5, "appCheckProvider":Lcom/google/firebase/firestore/auth/CredentialsProvider;, "Lcom/google/firebase/firestore/auth/CredentialsProvider<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->context:Landroid/content/Context;

    .line 234
    invoke-static {p2}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-static {v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/DatabaseId;

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    .line 235
    new-instance v0, Lcom/google/firebase/firestore/UserDataReader;

    invoke-direct {v0, p2}, Lcom/google/firebase/firestore/UserDataReader;-><init>(Lcom/google/firebase/firestore/model/DatabaseId;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->userDataReader:Lcom/google/firebase/firestore/UserDataReader;

    .line 236
    invoke-static {p3}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->persistenceKey:Ljava/lang/String;

    .line 237
    invoke-static {p4}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/auth/CredentialsProvider;

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->authProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    .line 238
    invoke-static {p5}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/auth/CredentialsProvider;

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->appCheckProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    .line 239
    invoke-static {p6}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/util/AsyncQueue;

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 241
    iput-object p7, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 242
    iput-object p8, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->instanceRegistry:Lcom/google/firebase/firestore/FirebaseFirestore$InstanceRegistry;

    .line 243
    iput-object p9, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->metadataProvider:Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;

    .line 245
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    invoke-direct {v0}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->build()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 246
    return-void
.end method

.method private addSnapshotsInSyncListener(Ljava/util/concurrent/Executor;Landroid/app/Activity;Ljava/lang/Runnable;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 3
    .param p1, "userExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 846
    invoke-direct {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->ensureClientConfigured()V

    .line 847
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3}, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    .line 852
    .local v0, "eventListener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Ljava/lang/Void;>;"
    new-instance v1, Lcom/google/firebase/firestore/core/AsyncEventListener;

    invoke-direct {v1, p1, v0}, Lcom/google/firebase/firestore/core/AsyncEventListener;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/EventListener;)V

    .line 854
    .local v1, "asyncListener":Lcom/google/firebase/firestore/core/AsyncEventListener;, "Lcom/google/firebase/firestore/core/AsyncEventListener<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/core/FirestoreClient;->addSnapshotsInSyncListener(Lcom/google/firebase/firestore/EventListener;)V

    .line 855
    new-instance v2, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/core/AsyncEventListener;)V

    invoke-static {p2, v2}, Lcom/google/firebase/firestore/core/ActivityScope;->bind(Landroid/app/Activity;Lcom/google/firebase/firestore/ListenerRegistration;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v2

    return-object v2
.end method

.method private ensureClientConfigured()V
    .locals 10

    .line 296
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    if-eqz v0, :cond_0

    .line 297
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    if-eqz v1, :cond_1

    .line 302
    monitor-exit v0

    return-void

    .line 304
    :cond_1
    new-instance v4, Lcom/google/firebase/firestore/core/DatabaseInfo;

    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    iget-object v2, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->persistenceKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 305
    invoke-virtual {v3}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->isSslEnabled()Z

    move-result v5

    invoke-direct {v4, v1, v2, v3, v5}, Lcom/google/firebase/firestore/core/DatabaseInfo;-><init>(Lcom/google/firebase/firestore/model/DatabaseId;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 307
    .local v4, "databaseInfo":Lcom/google/firebase/firestore/core/DatabaseInfo;
    new-instance v1, Lcom/google/firebase/firestore/core/FirestoreClient;

    iget-object v3, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    iget-object v6, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->authProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    iget-object v7, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->appCheckProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    iget-object v8, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    iget-object v9, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->metadataProvider:Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/firestore/core/FirestoreClient;-><init>(Landroid/content/Context;Lcom/google/firebase/firestore/core/DatabaseInfo;Lcom/google/firebase/firestore/FirebaseFirestoreSettings;Lcom/google/firebase/firestore/auth/CredentialsProvider;Lcom/google/firebase/firestore/auth/CredentialsProvider;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;)V

    iput-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    .line 316
    .end local v4    # "databaseInfo":Lcom/google/firebase/firestore/core/DatabaseInfo;
    monitor-exit v0

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getDefaultFirebaseApp()Lcom/google/firebase/FirebaseApp;
    .locals 3

    .line 111
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 112
    .local v0, "app":Lcom/google/firebase/FirebaseApp;
    if-eqz v0, :cond_0

    .line 115
    return-object v0

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must call FirebaseApp.initializeApp first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 2

    .line 128
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDefaultFirebaseApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    const-string v1, "(default)"

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 1
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;

    .line 143
    const-string v0, "(default)"

    invoke-static {p0, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 2
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p1, "database"    # Ljava/lang/String;

    .line 173
    const-string v0, "Provided FirebaseApp must not be null."

    invoke-static {p0, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "Provided database name must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-class v0, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;

    .line 176
    .local v0, "component":Lcom/google/firebase/firestore/FirestoreMultiDbComponent;
    const-string v1, "Firestore component is not present."

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;->get(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 1
    .param p0, "database"    # Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDefaultFirebaseApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addSnapshotsInSyncListener$4(Ljava/lang/Runnable;Ljava/lang/Void;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "v"    # Ljava/lang/Void;
    .param p2, "error"    # Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 849
    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "snapshots-in-sync listeners should never get errors."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 850
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 851
    return-void
.end method

.method private mergeEmulatorSettings(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;Lcom/google/firebase/emulators/EmulatedServiceSettings;)Lcom/google/firebase/firestore/FirebaseFirestoreSettings;
    .locals 4
    .param p1, "settings"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings;
    .param p2, "emulatorSettings"    # Lcom/google/firebase/emulators/EmulatedServiceSettings;

    .line 322
    if-nez p2, :cond_0

    .line 323
    return-object p1

    .line 326
    :cond_0
    const-string v0, "firestore.googleapis.com"

    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 327
    const-string v0, "Host has been set in FirebaseFirestoreSettings and useEmulator, emulator host will be used."

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FirebaseFirestore"

    invoke-static {v3, v0, v2}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    :cond_1
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;-><init>(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    invoke-virtual {p2}, Lcom/google/firebase/emulators/EmulatedServiceSettings;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/firebase/emulators/EmulatedServiceSettings;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setHost(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->setSslEnabled(Z)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->build()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object v0

    .line 332
    return-object v0
.end method

.method static newInstance(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Deferred;Lcom/google/firebase/inject/Deferred;Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestore$InstanceRegistry;Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p4, "database"    # Ljava/lang/String;
    .param p5, "instanceRegistry"    # Lcom/google/firebase/firestore/FirebaseFirestore$InstanceRegistry;
    .param p6, "metadataProvider"    # Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/FirebaseFirestore$InstanceRegistry;",
            "Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;",
            ")",
            "Lcom/google/firebase/firestore/FirebaseFirestore;"
        }
    .end annotation

    .line 189
    .local p2, "deferredAuthProvider":Lcom/google/firebase/inject/Deferred;, "Lcom/google/firebase/inject/Deferred<Lcom/google/firebase/auth/internal/InternalAuthProvider;>;"
    .local p3, "deferredAppCheckTokenProvider":Lcom/google/firebase/inject/Deferred;, "Lcom/google/firebase/inject/Deferred<Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "projectId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 193
    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/model/DatabaseId;->forDatabase(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v12

    .line 195
    .local v12, "databaseId":Lcom/google/firebase/firestore/model/DatabaseId;
    new-instance v8, Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-direct {v8}, Lcom/google/firebase/firestore/util/AsyncQueue;-><init>()V

    .line 197
    .local v8, "queue":Lcom/google/firebase/firestore/util/AsyncQueue;
    new-instance v6, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;

    move-object/from16 v13, p2

    invoke-direct {v6, v13}, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;-><init>(Lcom/google/firebase/inject/Deferred;)V

    .line 199
    .local v6, "authProvider":Lcom/google/firebase/firestore/auth/CredentialsProvider;, "Lcom/google/firebase/firestore/auth/CredentialsProvider<Lcom/google/firebase/firestore/auth/User;>;"
    new-instance v7, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;

    move-object/from16 v14, p3

    invoke-direct {v7, v14}, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;-><init>(Lcom/google/firebase/inject/Deferred;)V

    .line 206
    .local v7, "appCheckProvider":Lcom/google/firebase/firestore/auth/CredentialsProvider;, "Lcom/google/firebase/firestore/auth/CredentialsProvider<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v15

    .line 208
    .local v15, "persistenceKey":Ljava/lang/String;
    new-instance v16, Lcom/google/firebase/firestore/FirebaseFirestore;

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object v4, v12

    move-object v5, v15

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v2 .. v11}, Lcom/google/firebase/firestore/FirebaseFirestore;-><init>(Landroid/content/Context;Lcom/google/firebase/firestore/model/DatabaseId;Ljava/lang/String;Lcom/google/firebase/firestore/auth/CredentialsProvider;Lcom/google/firebase/firestore/auth/CredentialsProvider;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/firestore/FirebaseFirestore$InstanceRegistry;Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;)V

    .line 219
    .local v2, "firestore":Lcom/google/firebase/firestore/FirebaseFirestore;
    return-object v2

    .line 191
    .end local v2    # "firestore":Lcom/google/firebase/firestore/FirebaseFirestore;
    .end local v6    # "authProvider":Lcom/google/firebase/firestore/auth/CredentialsProvider;, "Lcom/google/firebase/firestore/auth/CredentialsProvider<Lcom/google/firebase/firestore/auth/User;>;"
    .end local v7    # "appCheckProvider":Lcom/google/firebase/firestore/auth/CredentialsProvider;, "Lcom/google/firebase/firestore/auth/CredentialsProvider<Ljava/lang/String;>;"
    .end local v8    # "queue":Lcom/google/firebase/firestore/util/AsyncQueue;
    .end local v12    # "databaseId":Lcom/google/firebase/firestore/model/DatabaseId;
    .end local v15    # "persistenceKey":Ljava/lang/String;
    :cond_0
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v1, p4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "FirebaseOptions.getProjectId() cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private runTransaction(Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/Transaction$Function;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "options"    # Lcom/google/firebase/firestore/TransactionOptions;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/TransactionOptions;",
            "Lcom/google/firebase/firestore/Transaction$Function<",
            "TResultT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 500
    .local p2, "updateFunction":Lcom/google/firebase/firestore/Transaction$Function;, "Lcom/google/firebase/firestore/Transaction$Function<TResultT;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->ensureClientConfigured()V

    .line 506
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3, p2}, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/Transaction$Function;)V

    .line 514
    .local v0, "wrappedUpdateFunction":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/core/Transaction;Lcom/google/android/gms/tasks/Task<TResultT;>;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->transaction(Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/util/Function;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method static setClientLanguage(Ljava/lang/String;)V
    .locals 0
    .param p0, "languageToken"    # Ljava/lang/String;

    .line 896
    invoke-static {p0}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->setClientLanguage(Ljava/lang/String;)V

    .line 897
    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .locals 1
    .param p0, "loggingEnabled"    # Z

    .line 664
    if-eqz p0, :cond_0

    .line 665
    sget-object v0, Lcom/google/firebase/firestore/util/Logger$Level;->DEBUG:Lcom/google/firebase/firestore/util/Logger$Level;

    invoke-static {v0}, Lcom/google/firebase/firestore/util/Logger;->setLogLevel(Lcom/google/firebase/firestore/util/Logger$Level;)V

    goto :goto_0

    .line 667
    :cond_0
    sget-object v0, Lcom/google/firebase/firestore/util/Logger$Level;->WARN:Lcom/google/firebase/firestore/util/Logger$Level;

    invoke-static {v0}, Lcom/google/firebase/firestore/util/Logger;->setLogLevel(Lcom/google/firebase/firestore/util/Logger$Level;)V

    .line 669
    :goto_0
    return-void
.end method


# virtual methods
.method public addSnapshotsInSyncListener(Landroid/app/Activity;Ljava/lang/Runnable;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 746
    sget-object v0, Lcom/google/firebase/firestore/util/Executors;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/firebase/firestore/FirebaseFirestore;->addSnapshotsInSyncListener(Ljava/util/concurrent/Executor;Landroid/app/Activity;Ljava/lang/Runnable;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public addSnapshotsInSyncListener(Ljava/lang/Runnable;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 725
    sget-object v0, Lcom/google/firebase/firestore/util/Executors;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->addSnapshotsInSyncListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public addSnapshotsInSyncListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 767
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/firestore/FirebaseFirestore;->addSnapshotsInSyncListener(Ljava/util/concurrent/Executor;Landroid/app/Activity;Ljava/lang/Runnable;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public batch()Lcom/google/firebase/firestore/WriteBatch;
    .locals 1

    .line 565
    invoke-direct {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->ensureClientConfigured()V

    .line 567
    new-instance v0, Lcom/google/firebase/firestore/WriteBatch;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/WriteBatch;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public clearPersistence()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 691
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 692
    .local v0, "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    new-instance v2, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForgetEvenAfterShutdown(Ljava/lang/Runnable;)V

    .line 706
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;
    .locals 2
    .param p1, "collectionPath"    # Ljava/lang/String;

    .line 442
    const-string v0, "Provided collection path must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-direct {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->ensureClientConfigured()V

    .line 444
    new-instance v0, Lcom/google/firebase/firestore/CollectionReference;

    invoke-static {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/firestore/CollectionReference;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public collectionGroup(Ljava/lang/String;)Lcom/google/firebase/firestore/Query;
    .locals 3
    .param p1, "collectionId"    # Ljava/lang/String;

    .line 471
    const-string v0, "Provided collection ID must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->ensureClientConfigured()V

    .line 479
    new-instance v0, Lcom/google/firebase/firestore/Query;

    new-instance v1, Lcom/google/firebase/firestore/core/Query;

    sget-object v2, Lcom/google/firebase/firestore/model/ResourcePath;->EMPTY:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-direct {v1, v2, p1}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0

    .line 473
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 474
    const-string v2, "Invalid collectionId \'%s\'. Collection IDs must not contain \'/\'."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableNetwork()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 658
    invoke-direct {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->ensureClientConfigured()V

    .line 659
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->disableNetwork()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;
    .locals 1
    .param p1, "documentPath"    # Ljava/lang/String;

    .line 456
    const-string v0, "Provided document path must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-direct {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->ensureClientConfigured()V

    .line 458
    invoke-static {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/firebase/firestore/DocumentReference;->forPath(Lcom/google/firebase/firestore/model/ResourcePath;Lcom/google/firebase/firestore/FirebaseFirestore;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    return-object v0
.end method

.method public enableNetwork()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 645
    invoke-direct {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->ensureClientConfigured()V

    .line 646
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->enableNetwork()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getApp()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method getAsyncQueue()Lcom/google/firebase/firestore/util/AsyncQueue;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    return-object v0
.end method

.method getClient()Lcom/google/firebase/firestore/core/FirestoreClient;
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    return-object v0
.end method

.method getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    return-object v0
.end method

.method public getFirestoreSettings()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    return-object v0
.end method

.method public getNamedQuery(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/Query;",
            ">;"
        }
    .end annotation

    .line 819
    invoke-direct {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->ensureClientConfigured()V

    .line 820
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    .line 821
    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/core/FirestoreClient;->getNamedQuery(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;)V

    .line 822
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 820
    return-object v0
.end method

.method public declared-synchronized getPersistentCacheIndexManager()Lcom/google/firebase/firestore/PersistentCacheIndexManager;
    .locals 2

    monitor-enter p0

    .line 424
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->ensureClientConfigured()V

    .line 425
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->persistentCacheIndexManager:Lcom/google/firebase/firestore/PersistentCacheIndexManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 426
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->isPersistenceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 427
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->getCacheSettings()Lcom/google/firebase/firestore/LocalCacheSettings;

    move-result-object v0

    instance-of v0, v0, Lcom/google/firebase/firestore/PersistentCacheSettings;

    if-eqz v0, :cond_1

    .line 428
    .end local p0    # "this":Lcom/google/firebase/firestore/FirebaseFirestore;
    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/PersistentCacheIndexManager;

    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/PersistentCacheIndexManager;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->persistentCacheIndexManager:Lcom/google/firebase/firestore/PersistentCacheIndexManager;

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->persistentCacheIndexManager:Lcom/google/firebase/firestore/PersistentCacheIndexManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->userDataReader:Lcom/google/firebase/firestore/UserDataReader;

    return-object v0
.end method

.method synthetic lambda$addSnapshotsInSyncListener$5$com-google-firebase-firestore-FirebaseFirestore(Lcom/google/firebase/firestore/core/AsyncEventListener;)V
    .locals 1
    .param p1, "asyncListener"    # Lcom/google/firebase/firestore/core/AsyncEventListener;

    .line 858
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/AsyncEventListener;->mute()V

    .line 859
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/core/FirestoreClient;->removeSnapshotsInSyncListener(Lcom/google/firebase/firestore/EventListener;)V

    .line 860
    return-void
.end method

.method synthetic lambda$clearPersistence$2$com-google-firebase-firestore-FirebaseFirestore(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .param p1, "source"    # Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v1, "Persistence cannot be cleared while the firestore instance is running."

    sget-object v2, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->FAILED_PRECONDITION:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    .end local p1    # "source":Lcom/google/android/gms/tasks/TaskCompletionSource;
    throw v0

    .line 700
    .restart local p1    # "source":Lcom/google/android/gms/tasks/TaskCompletionSource;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    iget-object v2, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->persistenceKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->clearPersistence(Landroid/content/Context;Lcom/google/firebase/firestore/model/DatabaseId;Ljava/lang/String;)V

    .line 701
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/firebase/firestore/FirebaseFirestoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    goto :goto_1

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Lcom/google/firebase/firestore/FirebaseFirestoreException;
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 705
    .end local v0    # "e":Lcom/google/firebase/firestore/FirebaseFirestoreException;
    :goto_1
    return-void
.end method

.method synthetic lambda$getNamedQuery$3$com-google-firebase-firestore-FirebaseFirestore(Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/firestore/Query;
    .locals 2
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 824
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/Query;

    .line 825
    .local v0, "query":Lcom/google/firebase/firestore/core/Query;
    if-eqz v0, :cond_0

    .line 826
    new-instance v1, Lcom/google/firebase/firestore/Query;

    invoke-direct {v1, v0, p0}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v1

    .line 828
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic lambda$runTransaction$0$com-google-firebase-firestore-FirebaseFirestore(Lcom/google/firebase/firestore/Transaction$Function;Lcom/google/firebase/firestore/core/Transaction;)Ljava/lang/Object;
    .locals 1
    .param p1, "updateFunction"    # Lcom/google/firebase/firestore/Transaction$Function;
    .param p2, "internalTransaction"    # Lcom/google/firebase/firestore/core/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 511
    new-instance v0, Lcom/google/firebase/firestore/Transaction;

    invoke-direct {v0, p2, p0}, Lcom/google/firebase/firestore/Transaction;-><init>(Lcom/google/firebase/firestore/core/Transaction;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    invoke-interface {p1, v0}, Lcom/google/firebase/firestore/Transaction$Function;->apply(Lcom/google/firebase/firestore/Transaction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$runTransaction$1$com-google-firebase-firestore-FirebaseFirestore(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/Transaction$Function;Lcom/google/firebase/firestore/core/Transaction;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "updateFunction"    # Lcom/google/firebase/firestore/Transaction$Function;
    .param p3, "internalTransaction"    # Lcom/google/firebase/firestore/core/Transaction;

    .line 508
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/firebase/firestore/FirebaseFirestore$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/Transaction$Function;Lcom/google/firebase/firestore/core/Transaction;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadBundle(Ljava/io/InputStream;)Lcom/google/firebase/firestore/LoadBundleTask;
    .locals 2
    .param p1, "bundleData"    # Ljava/io/InputStream;

    .line 779
    invoke-direct {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->ensureClientConfigured()V

    .line 780
    new-instance v0, Lcom/google/firebase/firestore/LoadBundleTask;

    invoke-direct {v0}, Lcom/google/firebase/firestore/LoadBundleTask;-><init>()V

    .line 781
    .local v0, "resultTask":Lcom/google/firebase/firestore/LoadBundleTask;
    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->loadBundle(Ljava/io/InputStream;Lcom/google/firebase/firestore/LoadBundleTask;)V

    .line 782
    return-object v0
.end method

.method public loadBundle(Ljava/nio/ByteBuffer;)Lcom/google/firebase/firestore/LoadBundleTask;
    .locals 1
    .param p1, "bundleData"    # Ljava/nio/ByteBuffer;

    .line 806
    new-instance v0, Lcom/google/firebase/firestore/util/ByteBufferInputStream;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/util/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->loadBundle(Ljava/io/InputStream;)Lcom/google/firebase/firestore/LoadBundleTask;

    move-result-object v0

    return-object v0
.end method

.method public loadBundle([B)Lcom/google/firebase/firestore/LoadBundleTask;
    .locals 1
    .param p1, "bundleData"    # [B

    .line 794
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->loadBundle(Ljava/io/InputStream;)Lcom/google/firebase/firestore/LoadBundleTask;

    move-result-object v0

    return-object v0
.end method

.method public runBatch(Lcom/google/firebase/firestore/WriteBatch$Function;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "batchFunction"    # Lcom/google/firebase/firestore/WriteBatch$Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/WriteBatch$Function;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 579
    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->batch()Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v0

    .line 580
    .local v0, "batch":Lcom/google/firebase/firestore/WriteBatch;
    invoke-interface {p1, v0}, Lcom/google/firebase/firestore/WriteBatch$Function;->apply(Lcom/google/firebase/firestore/WriteBatch;)V

    .line 581
    invoke-virtual {v0}, Lcom/google/firebase/firestore/WriteBatch;->commit()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public runTransaction(Lcom/google/firebase/firestore/Transaction$Function;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/Transaction$Function<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 530
    .local p1, "updateFunction":Lcom/google/firebase/firestore/Transaction$Function;, "Lcom/google/firebase/firestore/Transaction$Function<TTResult;>;"
    sget-object v0, Lcom/google/firebase/firestore/TransactionOptions;->DEFAULT:Lcom/google/firebase/firestore/TransactionOptions;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->runTransaction(Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/Transaction$Function;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public runTransaction(Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/Transaction$Function;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/TransactionOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/TransactionOptions;",
            "Lcom/google/firebase/firestore/Transaction$Function<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 546
    .local p2, "updateFunction":Lcom/google/firebase/firestore/Transaction$Function;, "Lcom/google/firebase/firestore/Transaction$Function<TTResult;>;"
    const-string v0, "Provided transaction update function must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    nop

    .line 550
    invoke-static {}, Lcom/google/firebase/firestore/core/Transaction;->getDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 547
    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->runTransaction(Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/Transaction$Function;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public setFirestoreSettings(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)V
    .locals 3
    .param p1, "settings"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 259
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->emulatorSettings:Lcom/google/firebase/emulators/EmulatedServiceSettings;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->mergeEmulatorSettings(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;Lcom/google/firebase/emulators/EmulatedServiceSettings;)Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object p1

    .line 261
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    monitor-enter v0

    .line 262
    :try_start_0
    const-string v1, "Provided settings must not be null."

    invoke-static {p1, v1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "FirebaseFirestore has already been started and its settings can no longer be changed. You can only call setFirestoreSettings() before calling any other methods on a FirebaseFirestore object."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "settings":Lcom/google/firebase/firestore/FirebaseFirestoreSettings;
    throw v1

    .line 273
    .restart local p1    # "settings":Lcom/google/firebase/firestore/FirebaseFirestoreSettings;
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 274
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIndexConfiguration(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 13
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    const-string v0, "indexes"

    invoke-direct {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->ensureClientConfigured()V

    .line 367
    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 368
    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->isPersistenceEnabled()Z

    move-result v1

    .line 367
    const-string v2, "Cannot enable indexes when persistence is disabled"

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v1, "parsedIndexes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 379
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 380
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 381
    .local v0, "indexes":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 382
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 383
    .local v4, "definition":Lorg/json/JSONObject;
    const-string v5, "collectionGroup"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 384
    .local v5, "collectionGroup":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v6, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex$Segment;>;"
    const-string v7, "fields"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 387
    .local v7, "fields":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "f":I
    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 388
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 389
    .local v9, "field":Lorg/json/JSONObject;
    const-string v10, "fieldPath"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/firebase/firestore/model/FieldPath;->fromServerFormat(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v10

    .line 390
    .local v10, "fieldPath":Lcom/google/firebase/firestore/model/FieldPath;
    const-string v11, "CONTAINS"

    const-string v12, "arrayConfig"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 391
    sget-object v11, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->CONTAINS:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-static {v10, v11}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;)Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 392
    :cond_0
    const-string v11, "ASCENDING"

    const-string v12, "order"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 393
    sget-object v11, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->ASCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-static {v10, v11}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;)Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 395
    :cond_1
    sget-object v11, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->DESCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    .line 396
    invoke-static {v10, v11}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;)Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    move-result-object v11

    .line 395
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    .end local v9    # "field":Lorg/json/JSONObject;
    .end local v10    # "fieldPath":Lcom/google/firebase/firestore/model/FieldPath;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 400
    .end local v8    # "f":I
    :cond_2
    sget-object v8, Lcom/google/firebase/firestore/model/FieldIndex;->INITIAL_STATE:Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    .line 401
    const/4 v9, -0x1

    invoke-static {v9, v5, v6, v8}, Lcom/google/firebase/firestore/model/FieldIndex;->create(ILjava/lang/String;Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexState;)Lcom/google/firebase/firestore/model/FieldIndex;

    move-result-object v8

    .line 400
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    nop

    .end local v4    # "definition":Lorg/json/JSONObject;
    .end local v5    # "collectionGroup":Ljava/lang/String;
    .end local v6    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex$Segment;>;"
    .end local v7    # "fields":Lorg/json/JSONArray;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    .end local v0    # "indexes":Lorg/json/JSONArray;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "i":I
    :cond_3
    nop

    .line 409
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/core/FirestoreClient;->configureFieldIndexes(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed to parse index configuration"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
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

    .line 606
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->instanceRegistry:Lcom/google/firebase/firestore/FirebaseFirestore$InstanceRegistry;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore$InstanceRegistry;->remove(Ljava/lang/String;)V

    .line 609
    invoke-direct {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->ensureClientConfigured()V

    .line 610
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->terminate()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public useEmulator(Ljava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 286
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/google/firebase/emulators/EmulatedServiceSettings;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/emulators/EmulatedServiceSettings;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->emulatorSettings:Lcom/google/firebase/emulators/EmulatedServiceSettings;

    .line 292
    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    invoke-direct {p0, v1, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->mergeEmulatorSettings(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;Lcom/google/firebase/emulators/EmulatedServiceSettings;)Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->settings:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 293
    return-void

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call useEmulator() after instance has already been initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method validateReference(Lcom/google/firebase/firestore/DocumentReference;)V
    .locals 2
    .param p1, "docRef"    # Lcom/google/firebase/firestore/DocumentReference;

    .line 880
    const-string v0, "Provided DocumentReference must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 885
    return-void

    .line 882
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided document reference is from a different Cloud Firestore instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitForPendingWrites()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 629
    invoke-direct {p0}, Lcom/google/firebase/firestore/FirebaseFirestore;->ensureClientConfigured()V

    .line 630
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestore;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->waitForPendingWrites()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
