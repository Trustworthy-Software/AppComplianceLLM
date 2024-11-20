.class Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "AndroidConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultNetworkCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;
    .param p2, "x1"    # Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;

    .line 169
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;-><init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 172
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->access$200(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Z)V

    .line 173
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 177
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->access$200(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Z)V

    .line 178
    return-void
.end method
