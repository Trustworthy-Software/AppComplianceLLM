.class public Lcom/google/firebase/FirebaseApp;
.super Ljava/lang/Object;
.source "FirebaseApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/FirebaseApp$GlobalBackgroundStateListener;,
        Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;,
        Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_APP_NAME:Ljava/lang/String; = "[DEFAULT]"

.field static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/FirebaseApp;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCK:Ljava/lang/Object;

.field private static final LOG_TAG:Ljava/lang/String; = "FirebaseApp"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final automaticResourceManagementEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final backgroundStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final componentRuntime:Lcom/google/firebase/components/ComponentRuntime;

.field private final dataCollectionConfigStorage:Lcom/google/firebase/components/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Lazy<",
            "Lcom/google/firebase/internal/DataCollectionConfigStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultHeartBeatController:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;",
            ">;"
        }
    .end annotation
.end field

.field private final deleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lifecycleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/FirebaseAppLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final options:Lcom/google/firebase/FirebaseOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/FirebaseApp;->LOCK:Ljava/lang/Object;

    .line 101
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/FirebaseOptions;)V
    .locals 6
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/google/firebase/FirebaseOptions;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->automaticResourceManagementEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->deleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->backgroundStateChangeListeners:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->lifecycleListeners:Ljava/util/List;

    .line 409
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->applicationContext:Landroid/content/Context;

    .line 410
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->name:Ljava/lang/String;

    .line 411
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/FirebaseOptions;

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->options:Lcom/google/firebase/FirebaseOptions;

    .line 412
    invoke-static {}, Lcom/google/firebase/provider/FirebaseInitProvider;->getStartupTime()Lcom/google/firebase/StartupTime;

    move-result-object v0

    .line 414
    .local v0, "startupTime":Lcom/google/firebase/StartupTime;
    const-string v2, "Firebase"

    invoke-static {v2}, Lcom/google/firebase/tracing/FirebaseTrace;->pushTrace(Ljava/lang/String;)V

    .line 416
    const-string v2, "ComponentDiscovery"

    invoke-static {v2}, Lcom/google/firebase/tracing/FirebaseTrace;->pushTrace(Ljava/lang/String;)V

    .line 417
    const-class v2, Lcom/google/firebase/components/ComponentDiscoveryService;

    .line 418
    invoke-static {p1, v2}, Lcom/google/firebase/components/ComponentDiscovery;->forContext(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/firebase/components/ComponentDiscovery;

    move-result-object v2

    .line 419
    invoke-virtual {v2}, Lcom/google/firebase/components/ComponentDiscovery;->discoverLazy()Ljava/util/List;

    move-result-object v2

    .line 420
    .local v2, "registrars":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/inject/Provider<Lcom/google/firebase/components/ComponentRegistrar;>;>;"
    invoke-static {}, Lcom/google/firebase/tracing/FirebaseTrace;->popTrace()V

    .line 422
    const-string v3, "Runtime"

    invoke-static {v3}, Lcom/google/firebase/tracing/FirebaseTrace;->pushTrace(Ljava/lang/String;)V

    .line 423
    sget-object v3, Lcom/google/firebase/concurrent/UiExecutor;->INSTANCE:Lcom/google/firebase/concurrent/UiExecutor;

    .line 424
    invoke-static {v3}, Lcom/google/firebase/components/ComponentRuntime;->builder(Ljava/util/concurrent/Executor;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    move-result-object v3

    .line 425
    invoke-virtual {v3, v2}, Lcom/google/firebase/components/ComponentRuntime$Builder;->addLazyComponentRegistrars(Ljava/util/Collection;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/FirebaseCommonRegistrar;

    invoke-direct {v4}, Lcom/google/firebase/FirebaseCommonRegistrar;-><init>()V

    .line 426
    invoke-virtual {v3, v4}, Lcom/google/firebase/components/ComponentRuntime$Builder;->addComponentRegistrar(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/concurrent/ExecutorsRegistrar;

    invoke-direct {v4}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;-><init>()V

    .line 427
    invoke-virtual {v3, v4}, Lcom/google/firebase/components/ComponentRuntime$Builder;->addComponentRegistrar(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    move-result-object v3

    const-class v4, Landroid/content/Context;

    new-array v5, v1, [Ljava/lang/Class;

    .line 428
    invoke-static {p1, v4, v5}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/components/ComponentRuntime$Builder;->addComponent(Lcom/google/firebase/components/Component;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    .line 429
    const-class v5, Lcom/google/firebase/FirebaseApp;

    invoke-static {p0, v5, v4}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/components/ComponentRuntime$Builder;->addComponent(Lcom/google/firebase/components/Component;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    move-result-object v3

    const-class v4, Lcom/google/firebase/FirebaseOptions;

    new-array v5, v1, [Ljava/lang/Class;

    .line 430
    invoke-static {p3, v4, v5}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/components/ComponentRuntime$Builder;->addComponent(Lcom/google/firebase/components/Component;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/tracing/ComponentMonitor;

    invoke-direct {v4}, Lcom/google/firebase/tracing/ComponentMonitor;-><init>()V

    .line 431
    invoke-virtual {v3, v4}, Lcom/google/firebase/components/ComponentRuntime$Builder;->setProcessor(Lcom/google/firebase/components/ComponentRegistrarProcessor;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    move-result-object v3

    .line 434
    .local v3, "builder":Lcom/google/firebase/components/ComponentRuntime$Builder;
    invoke-static {p1}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 435
    invoke-static {}, Lcom/google/firebase/provider/FirebaseInitProvider;->isCurrentlyInitializing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    const-class v4, Lcom/google/firebase/StartupTime;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {v0, v4, v1}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/firebase/components/ComponentRuntime$Builder;->addComponent(Lcom/google/firebase/components/Component;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    .line 439
    :cond_0
    invoke-virtual {v3}, Lcom/google/firebase/components/ComponentRuntime$Builder;->build()Lcom/google/firebase/components/ComponentRuntime;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/FirebaseApp;->componentRuntime:Lcom/google/firebase/components/ComponentRuntime;

    .line 440
    invoke-static {}, Lcom/google/firebase/tracing/FirebaseTrace;->popTrace()V

    .line 442
    new-instance v4, Lcom/google/firebase/components/Lazy;

    new-instance v5, Lcom/google/firebase/FirebaseApp$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1}, Lcom/google/firebase/FirebaseApp$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;)V

    invoke-direct {v4, v5}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object v4, p0, Lcom/google/firebase/FirebaseApp;->dataCollectionConfigStorage:Lcom/google/firebase/components/Lazy;

    .line 449
    const-class v4, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;

    invoke-virtual {v1, v4}, Lcom/google/firebase/components/ComponentRuntime;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/FirebaseApp;->defaultHeartBeatController:Lcom/google/firebase/inject/Provider;

    .line 451
    new-instance v1, Lcom/google/firebase/FirebaseApp$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/firebase/FirebaseApp$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/FirebaseApp;->addBackgroundStateChangeListener(Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;)V

    .line 458
    invoke-static {}, Lcom/google/firebase/tracing/FirebaseTrace;->popTrace()V

    .line 459
    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 91
    sget-object v0, Lcom/google/firebase/FirebaseApp;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/firebase/FirebaseApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/FirebaseApp;

    .line 91
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->initializeAllApis()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/FirebaseApp;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/FirebaseApp;

    .line 91
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->automaticResourceManagementEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/firebase/FirebaseApp;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/FirebaseApp;
    .param p1, "x1"    # Z

    .line 91
    invoke-direct {p0, p1}, Lcom/google/firebase/FirebaseApp;->notifyBackgroundStateChangeListeners(Z)V

    return-void
.end method

.method private checkNotDeleted()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->deleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp was deleted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 463
    return-void
.end method

.method public static clearInstancesForTest()V
    .locals 2

    .line 566
    sget-object v0, Lcom/google/firebase/FirebaseApp;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_0
    sget-object v1, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 568
    monitor-exit v0

    .line 569
    return-void

    .line 568
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getAllAppNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v0, "allAppNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/google/firebase/FirebaseApp;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    :try_start_0
    sget-object v2, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/FirebaseApp;

    .line 588
    .local v3, "app":Lcom/google/firebase/FirebaseApp;
    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    nop

    .end local v3    # "app":Lcom/google/firebase/FirebaseApp;
    goto :goto_0

    .line 590
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 592
    return-object v0

    .line 590
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getApps(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/FirebaseApp;",
            ">;"
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/google/firebase/FirebaseApp;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/google/firebase/FirebaseApp;
    .locals 5

    .line 173
    sget-object v0, Lcom/google/firebase/FirebaseApp;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    sget-object v1, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    .line 175
    .local v1, "defaultApp":Lcom/google/firebase/FirebaseApp;
    if-eqz v1, :cond_0

    .line 183
    iget-object v2, v1, Lcom/google/firebase/FirebaseApp;->defaultHeartBeatController:Lcom/google/firebase/inject/Provider;

    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;

    invoke-virtual {v2}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;->registerHeartBeat()Lcom/google/android/gms/tasks/Task;

    .line 184
    monitor-exit v0

    return-object v1

    .line 176
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default FirebaseApp is not initialized in this process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 179
    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->getMyProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    .end local v1    # "defaultApp":Lcom/google/firebase/FirebaseApp;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 197
    sget-object v0, Lcom/google/firebase/FirebaseApp;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    sget-object v1, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    .line 199
    .local v1, "firebaseApp":Lcom/google/firebase/FirebaseApp;
    if-eqz v1, :cond_0

    .line 200
    iget-object v2, v1, Lcom/google/firebase/FirebaseApp;->defaultHeartBeatController:Lcom/google/firebase/inject/Provider;

    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;

    invoke-virtual {v2}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;->registerHeartBeat()Lcom/google/android/gms/tasks/Task;

    .line 201
    monitor-exit v0

    return-object v1

    .line 204
    :cond_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getAllAppNames()Ljava/util/List;

    move-result-object v2

    .line 206
    .local v2, "availableAppNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    const-string v3, ""

    .local v3, "availableAppNamesMessage":Ljava/lang/String;
    goto :goto_0

    .line 209
    .end local v3    # "availableAppNamesMessage":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Available app names: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    .line 210
    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .restart local v3    # "availableAppNamesMessage":Ljava/lang/String;
    :goto_0
    const-string v4, "FirebaseApp with name %s doesn\'t exist. %s"

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object v5

    .line 213
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "errorMessage":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "name":Ljava/lang/String;
    throw v5

    .line 216
    .end local v1    # "firebaseApp":Lcom/google/firebase/FirebaseApp;
    .end local v2    # "availableAppNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "availableAppNamesMessage":Ljava/lang/String;
    .end local v4    # "errorMessage":Ljava/lang/String;
    .restart local p0    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPersistenceKey(Ljava/lang/String;Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/google/firebase/FirebaseOptions;

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 581
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    return-object v0
.end method

.method private initializeAllApis()V
    .locals 4

    .line 597
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 598
    .local v0, "inDirectBoot":Z
    const-string v1, "FirebaseApp"

    if-eqz v0, :cond_0

    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 602
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 599
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v1, p0, Lcom/google/firebase/FirebaseApp;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/firebase/FirebaseApp$UserUnlockReceiver;->access$100(Landroid/content/Context;)V

    goto :goto_0

    .line 606
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device unlocked: initializing all Firebase APIs for app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v1, p0, Lcom/google/firebase/FirebaseApp;->componentRuntime:Lcom/google/firebase/components/ComponentRuntime;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->isDefaultApp()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/ComponentRuntime;->initializeEagerComponents(Z)V

    .line 608
    iget-object v1, p0, Lcom/google/firebase/FirebaseApp;->defaultHeartBeatController:Lcom/google/firebase/inject/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;

    invoke-virtual {v1}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;->registerHeartBeat()Lcom/google/android/gms/tasks/Task;

    .line 610
    :goto_0
    return-void
.end method

.method public static initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 236
    sget-object v0, Lcom/google/firebase/FirebaseApp;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    sget-object v1, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 240
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/FirebaseOptions;->fromResource(Landroid/content/Context;)Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    .line 241
    .local v1, "firebaseOptions":Lcom/google/firebase/FirebaseOptions;
    if-nez v1, :cond_1

    .line 242
    const-string v2, "FirebaseApp"

    const-string v3, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 249
    :cond_1
    invoke-static {p0, v1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 250
    .end local v1    # "firebaseOptions":Lcom/google/firebase/FirebaseOptions;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lcom/google/firebase/FirebaseOptions;

    .line 264
    const-string v0, "[DEFAULT]"

    invoke-static {p0, p1, v0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    return-object v0
.end method

.method public static initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lcom/google/firebase/FirebaseOptions;
    .param p2, "name"    # Ljava/lang/String;

    .line 280
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp$GlobalBackgroundStateListener;->access$000(Landroid/content/Context;)V

    .line 281
    invoke-static {p2}, Lcom/google/firebase/FirebaseApp;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "normalizedName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 286
    move-object v1, p0

    .local v1, "applicationContext":Landroid/content/Context;
    goto :goto_0

    .line 288
    .end local v1    # "applicationContext":Landroid/content/Context;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 290
    .restart local v1    # "applicationContext":Landroid/content/Context;
    :goto_0
    sget-object v2, Lcom/google/firebase/FirebaseApp;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 291
    :try_start_0
    sget-object v3, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    .line 292
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FirebaseApp name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " already exists!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 295
    const-string v4, "Application context cannot be null."

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v4, Lcom/google/firebase/FirebaseApp;

    invoke-direct {v4, v1, v0, p1}, Lcom/google/firebase/FirebaseApp;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/FirebaseOptions;)V

    .line 297
    .local v4, "firebaseApp":Lcom/google/firebase/FirebaseApp;
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-direct {v4}, Lcom/google/firebase/FirebaseApp;->initializeAllApis()V

    .line 301
    return-object v4

    .line 298
    .end local v4    # "firebaseApp":Lcom/google/firebase/FirebaseApp;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 614
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyBackgroundStateChangeListeners(Z)V
    .locals 2
    .param p1, "background"    # Z

    .line 480
    const-string v0, "FirebaseApp"

    const-string v1, "Notifying background state change listeners."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->backgroundStateChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;

    .line 482
    .local v1, "listener":Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;
    invoke-interface {v1, p1}, Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;->onBackgroundStateChanged(Z)V

    .line 483
    .end local v1    # "listener":Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;
    goto :goto_0

    .line 484
    :cond_0
    return-void
.end method

.method private notifyOnAppDeleted()V
    .locals 4

    .line 557
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseAppLifecycleListener;

    .line 558
    .local v1, "listener":Lcom/google/firebase/FirebaseAppLifecycleListener;
    iget-object v2, p0, Lcom/google/firebase/FirebaseApp;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/FirebaseApp;->options:Lcom/google/firebase/FirebaseOptions;

    invoke-interface {v1, v2, v3}, Lcom/google/firebase/FirebaseAppLifecycleListener;->onDeleted(Ljava/lang/String;Lcom/google/firebase/FirebaseOptions;)V

    .line 559
    .end local v1    # "listener":Lcom/google/firebase/FirebaseAppLifecycleListener;
    goto :goto_0

    .line 560
    :cond_0
    return-void
.end method


# virtual methods
.method public addBackgroundStateChangeListener(Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;

    .line 499
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 500
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->automaticResourceManagementEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;->onBackgroundStateChanged(Z)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->backgroundStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    return-void
.end method

.method public addLifecycleEventListener(Lcom/google/firebase/FirebaseAppLifecycleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/firebase/FirebaseAppLifecycleListener;

    .line 540
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 541
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    return-void
.end method

.method public delete()V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->deleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 314
    .local v0, "valueChanged":Z
    if-nez v0, :cond_0

    .line 315
    return-void

    .line 318
    :cond_0
    sget-object v1, Lcom/google/firebase/FirebaseApp;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    sget-object v2, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/firebase/FirebaseApp;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->notifyOnAppDeleted()V

    .line 323
    return-void

    .line 320
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 142
    instance-of v0, p1, Lcom/google/firebase/FirebaseApp;

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    return v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->name:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 332
    .local p1, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 333
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->componentRuntime:Lcom/google/firebase/components/ComponentRuntime;

    invoke-virtual {v0, p1}, Lcom/google/firebase/components/ComponentRuntime;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 123
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 130
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Lcom/google/firebase/FirebaseOptions;
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 137
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->options:Lcom/google/firebase/FirebaseOptions;

    return-object v0
.end method

.method public getPersistenceKey()Ljava/lang/String;
    .locals 3

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 528
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 527
    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method initializeAllComponents()V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->componentRuntime:Lcom/google/firebase/components/ComponentRuntime;

    invoke-virtual {v0}, Lcom/google/firebase/components/ComponentRuntime;->initializeAllComponentsForTests()V

    .line 477
    return-void
.end method

.method public isDataCollectionDefaultEnabled()Z
    .locals 1

    .line 370
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 371
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->dataCollectionConfigStorage:Lcom/google/firebase/components/Lazy;

    invoke-virtual {v0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/internal/DataCollectionConfigStorage;

    invoke-virtual {v0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isDefaultApp()Z
    .locals 2

    .line 469
    const-string v0, "[DEFAULT]"

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$com-google-firebase-FirebaseApp(Landroid/content/Context;)Lcom/google/firebase/internal/DataCollectionConfigStorage;
    .locals 4
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 445
    new-instance v0, Lcom/google/firebase/internal/DataCollectionConfigStorage;

    .line 447
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/FirebaseApp;->componentRuntime:Lcom/google/firebase/components/ComponentRuntime;

    const-class v3, Lcom/google/firebase/events/Publisher;

    .line 448
    invoke-virtual {v2, v3}, Lcom/google/firebase/components/ComponentRuntime;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/events/Publisher;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/firebase/internal/DataCollectionConfigStorage;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/events/Publisher;)V

    .line 445
    return-object v0
.end method

.method synthetic lambda$new$1$com-google-firebase-FirebaseApp(Z)V
    .locals 1
    .param p1, "background"    # Z

    .line 453
    if-nez p1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->defaultHeartBeatController:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;

    invoke-virtual {v0}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;->registerHeartBeat()Lcom/google/android/gms/tasks/Task;

    .line 456
    :cond_0
    return-void
.end method

.method public removeBackgroundStateChangeListener(Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;

    .line 514
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 515
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->backgroundStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 516
    return-void
.end method

.method public removeLifecycleEventListener(Lcom/google/firebase/FirebaseAppLifecycleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/firebase/FirebaseAppLifecycleListener;

    .line 548
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 549
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->lifecycleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 551
    return-void
.end method

.method public setAutomaticResourceManagementEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 341
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 342
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->automaticResourceManagementEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 343
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 345
    .local v0, "updated":Z
    if-eqz v0, :cond_1

    .line 346
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->isInBackground()Z

    move-result v1

    .line 347
    .local v1, "inBackground":Z
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 350
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/firebase/FirebaseApp;->notifyBackgroundStateChangeListeners(Z)V

    goto :goto_0

    .line 351
    :cond_0
    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    .line 354
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/firebase/FirebaseApp;->notifyBackgroundStateChangeListeners(Z)V

    .line 357
    .end local v1    # "inBackground":Z
    :cond_1
    :goto_0
    return-void
.end method

.method public setDataCollectionDefaultEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .line 384
    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->checkNotDeleted()V

    .line 385
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->dataCollectionConfigStorage:Lcom/google/firebase/components/Lazy;

    invoke-virtual {v0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/internal/DataCollectionConfigStorage;

    invoke-virtual {v0, p1}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->setEnabled(Ljava/lang/Boolean;)V

    .line 386
    return-void
.end method

.method public setDataCollectionDefaultEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->setDataCollectionDefaultEnabled(Ljava/lang/Boolean;)V

    .line 401
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 155
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/firebase/FirebaseApp;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "options"

    iget-object v2, p0, Lcom/google/firebase/FirebaseApp;->options:Lcom/google/firebase/FirebaseOptions;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
