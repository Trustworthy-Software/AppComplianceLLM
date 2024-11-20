.class public Lcom/google/firebase/firestore/core/ActivityScope$StopListenerFragment;
.super Landroid/app/Fragment;
.source "ActivityScope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/ActivityScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StopListenerFragment"
.end annotation


# instance fields
.field callbacks:Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 91
    new-instance v0, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;-><init>(Lcom/google/firebase/firestore/core/ActivityScope$1;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerFragment;->callbacks:Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 4

    .line 96
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 100
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerFragment;->callbacks:Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerFragment;->callbacks:Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;

    .line 102
    .local v1, "callbacksCopy":Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;
    new-instance v2, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;-><init>(Lcom/google/firebase/firestore/core/ActivityScope$1;)V

    iput-object v2, p0, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerFragment;->callbacks:Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;->run()V

    .line 105
    return-void

    .line 103
    .end local v1    # "callbacksCopy":Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
