.class Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$2;
.super Ljava/lang/Object;
.source "AndroidConnectivityMonitor.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->configureBackgroundStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

.field final synthetic val$inBackground:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    .line 144
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$2;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$2;->val$inBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 153
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 156
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .line 147
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$2;->val$inBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    :cond_0
    return-void
.end method
