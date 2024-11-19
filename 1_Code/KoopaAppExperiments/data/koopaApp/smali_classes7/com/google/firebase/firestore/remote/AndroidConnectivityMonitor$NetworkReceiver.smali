.class Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AndroidConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

.field private wasConnected:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 183
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->wasConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;
    .param p2, "x1"    # Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;

    .line 182
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;-><init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 188
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->access$300(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;)Z

    move-result v0

    .line 189
    .local v0, "isConnected":Z
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    invoke-static {v1}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->access$300(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->wasConnected:Z

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->access$200(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Z)V

    goto :goto_0

    .line 191
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->wasConnected:Z

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->access$200(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Z)V

    .line 194
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;->wasConnected:Z

    .line 195
    return-void
.end method
