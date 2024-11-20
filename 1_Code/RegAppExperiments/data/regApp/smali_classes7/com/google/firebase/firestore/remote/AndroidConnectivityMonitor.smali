.class public final Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;
.super Ljava/lang/Object;
.source "AndroidConnectivityMonitor.java"

# interfaces
.implements Lcom/google/firebase/firestore/remote/ConnectivityMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;,
        Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidConnectivityMonitor"


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/util/Consumer<",
            "Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final context:Landroid/content/Context;

.field private unregisterRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->callbacks:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Context must be non-null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->context:Landroid/content/Context;

    .line 61
    nop

    .line 62
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 63
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->configureBackgroundStateListener()V

    .line 64
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->configureNetworkMonitoring()V

    .line 65
    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;
    .param p1, "x1"    # Z

    .line 46
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->raiseCallbacks(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    .line 46
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->isConnected()Z

    move-result v0

    return v0
.end method

.method private configureBackgroundStateListener()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 101
    .local v0, "application":Landroid/app/Application;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 106
    .local v1, "inBackground":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;

    invoke-direct {v2, p0, v1}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;-><init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 143
    new-instance v2, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$2;

    invoke-direct {v2, p0, v1}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$2;-><init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 158
    return-void
.end method

.method private configureNetworkMonitoring()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->connectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;-><init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;)V

    .line 87
    .local v0, "defaultNetworkCallback":Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 88
    new-instance v1, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;)V

    iput-object v1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->unregisterRunnable:Ljava/lang/Runnable;

    .line 90
    .end local v0    # "defaultNetworkCallback":Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;
    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;-><init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;)V

    .line 93
    .local v0, "networkReceiver":Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "networkIntentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->context:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    new-instance v2, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;)V

    iput-object v2, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->unregisterRunnable:Ljava/lang/Runnable;

    .line 97
    .end local v0    # "networkReceiver":Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;
    .end local v1    # "networkIntentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void
.end method

.method private isConnected()Z
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->context:Landroid/content/Context;

    .line 208
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 209
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 210
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private raiseCallbacks(Z)V
    .locals 4
    .param p1, "connected"    # Z

    .line 199
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/util/Consumer;

    .line 201
    .local v2, "callback":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;>;"
    if-eqz p1, :cond_0

    sget-object v3, Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;->REACHABLE:Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;->UNREACHABLE:Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;

    :goto_1
    invoke-interface {v2, v3}, Lcom/google/firebase/firestore/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 202
    .end local v2    # "callback":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;>;"
    goto :goto_0

    .line 203
    :cond_1
    monitor-exit v0

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addCallback(Lcom/google/firebase/firestore/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/Consumer<",
            "Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p1, "callback":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->callbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$configureNetworkMonitoring$0$com-google-firebase-firestore-remote-AndroidConnectivityMonitor(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;)V
    .locals 1
    .param p1, "defaultNetworkCallback"    # Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;

    .line 89
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method synthetic lambda$configureNetworkMonitoring$1$com-google-firebase-firestore-remote-AndroidConnectivityMonitor(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;)V
    .locals 1
    .param p1, "networkReceiver"    # Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;

    .line 95
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public raiseForegroundNotification()V
    .locals 3

    .line 161
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AndroidConnectivityMonitor"

    const-string v2, "App has entered the foreground."

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->raiseCallbacks(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->unregisterRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->unregisterRunnable:Ljava/lang/Runnable;

    .line 80
    :cond_0
    return-void
.end method
