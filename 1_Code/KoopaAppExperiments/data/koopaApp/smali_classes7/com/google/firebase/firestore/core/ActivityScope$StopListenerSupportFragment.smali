.class public Lcom/google/firebase/firestore/core/ActivityScope$StopListenerSupportFragment;
.super Landroidx/fragment/app/Fragment;
.source "ActivityScope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/ActivityScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StopListenerSupportFragment"
.end annotation


# instance fields
.field callbacks:Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 68
    new-instance v0, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;-><init>(Lcom/google/firebase/firestore/core/ActivityScope$1;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerSupportFragment;->callbacks:Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 4

    .line 73
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 81
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerSupportFragment;->callbacks:Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerSupportFragment;->callbacks:Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;

    .line 83
    .local v1, "callbacksCopy":Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;
    new-instance v2, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;-><init>(Lcom/google/firebase/firestore/core/ActivityScope$1;)V

    iput-object v2, p0, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerSupportFragment;->callbacks:Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;->run()V

    .line 86
    return-void

    .line 84
    .end local v1    # "callbacksCopy":Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
