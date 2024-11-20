.class Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;
.super Ljava/lang/Object;
.source "AndroidConnectivityMonitor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


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

    .line 107
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;->val$inBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 110
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;->val$inBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->raiseForegroundNotification()V

    .line 113
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 140
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 130
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 124
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;->val$inBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->raiseForegroundNotification()V

    .line 127
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 137
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 117
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;->val$inBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$1;->this$0:Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->raiseForegroundNotification()V

    .line 120
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 133
    return-void
.end method
