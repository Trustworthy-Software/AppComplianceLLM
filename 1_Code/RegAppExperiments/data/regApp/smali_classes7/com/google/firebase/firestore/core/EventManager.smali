.class public final Lcom/google/firebase/firestore/core/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/EventManager$ListenOptions;,
        Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    }
.end annotation


# instance fields
.field private onlineState:Lcom/google/firebase/firestore/core/OnlineState;

.field private final queries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final snapshotsInSyncListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/EventListener<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/core/SyncEngine;)V
    .locals 1
    .param p1, "syncEngine"    # Lcom/google/firebase/firestore/core/SyncEngine;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/EventManager;->snapshotsInSyncListeners:Ljava/util/Set;

    .line 64
    sget-object v0, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    iput-object v0, p0, Lcom/google/firebase/firestore/core/EventManager;->onlineState:Lcom/google/firebase/firestore/core/OnlineState;

    .line 67
    iput-object p1, p0, Lcom/google/firebase/firestore/core/EventManager;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    .line 69
    invoke-virtual {p1, p0}, Lcom/google/firebase/firestore/core/SyncEngine;->setCallback(Lcom/google/firebase/firestore/core/SyncEngine$SyncEngineCallback;)V

    .line 70
    return-void
.end method

.method private raiseSnapshotsInSyncEvent()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/google/firebase/firestore/core/EventManager;->snapshotsInSyncListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/EventListener;

    .line 137
    .local v1, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 138
    .end local v1    # "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Ljava/lang/Void;>;"
    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public addQueryListener(Lcom/google/firebase/firestore/core/QueryListener;)I
    .locals 7
    .param p1, "queryListener"    # Lcom/google/firebase/firestore/core/QueryListener;

    .line 80
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/QueryListener;->getQuery()Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    .line 82
    .local v0, "query":Lcom/google/firebase/firestore/core/Query;
    iget-object v1, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;

    .line 83
    .local v1, "queryInfo":Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 84
    .local v3, "firstListen":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 85
    new-instance v4, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;

    invoke-direct {v4}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;-><init>()V

    move-object v1, v4

    .line 86
    iget-object v4, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_1
    invoke-static {v1}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$000(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v4, p0, Lcom/google/firebase/firestore/core/EventManager;->onlineState:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {p1, v4}, Lcom/google/firebase/firestore/core/QueryListener;->onOnlineStateChanged(Lcom/google/firebase/firestore/core/OnlineState;)Z

    move-result v4

    .line 93
    .local v4, "raisedEvent":Z
    xor-int/lit8 v5, v4, 0x1

    const-string v6, "onOnlineStateChanged() shouldn\'t raise an event for brand-new listeners."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {v1}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$100(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 97
    invoke-static {v1}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$100(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/core/QueryListener;->onViewSnapshot(Lcom/google/firebase/firestore/core/ViewSnapshot;)Z

    move-result v4

    .line 98
    if-eqz v4, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/EventManager;->raiseSnapshotsInSyncEvent()V

    .line 103
    :cond_2
    if-eqz v3, :cond_3

    .line 104
    iget-object v2, p0, Lcom/google/firebase/firestore/core/EventManager;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->listen(Lcom/google/firebase/firestore/core/Query;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$202(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;I)I

    .line 106
    :cond_3
    invoke-static {v1}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$200(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)I

    move-result v2

    return v2
.end method

.method public addSnapshotsInSyncListener(Lcom/google/firebase/firestore/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/EventListener<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p1, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/core/EventManager;->snapshotsInSyncListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 128
    return-void
.end method

.method public handleOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)V
    .locals 6
    .param p1, "onlineState"    # Lcom/google/firebase/firestore/core/OnlineState;

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "raisedEvent":Z
    iput-object p1, p0, Lcom/google/firebase/firestore/core/EventManager;->onlineState:Lcom/google/firebase/firestore/core/OnlineState;

    .line 176
    iget-object v1, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;

    .line 177
    .local v2, "info":Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    invoke-static {v2}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$000(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/QueryListener;

    .line 178
    .local v4, "listener":Lcom/google/firebase/firestore/core/QueryListener;
    invoke-virtual {v4, p1}, Lcom/google/firebase/firestore/core/QueryListener;->onOnlineStateChanged(Lcom/google/firebase/firestore/core/OnlineState;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 181
    .end local v4    # "listener":Lcom/google/firebase/firestore/core/QueryListener;
    :cond_0
    goto :goto_1

    .line 182
    .end local v2    # "info":Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    :cond_1
    goto :goto_0

    .line 183
    :cond_2
    if-eqz v0, :cond_3

    .line 184
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/EventManager;->raiseSnapshotsInSyncEvent()V

    .line 186
    :cond_3
    return-void
.end method

.method public onError(Lcom/google/firebase/firestore/core/Query;Lio/grpc/Status;)V
    .locals 4
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "error"    # Lio/grpc/Status;

    .line 163
    iget-object v0, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;

    .line 164
    .local v0, "info":Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    if-eqz v0, :cond_0

    .line 165
    invoke-static {v0}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$000(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/QueryListener;

    .line 166
    .local v2, "listener":Lcom/google/firebase/firestore/core/QueryListener;
    invoke-static {p2}, Lcom/google/firebase/firestore/util/Util;->exceptionFromStatus(Lio/grpc/Status;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/core/QueryListener;->onError(Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 167
    .end local v2    # "listener":Lcom/google/firebase/firestore/core/QueryListener;
    goto :goto_0

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public onViewSnapshots(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/ViewSnapshot;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p1, "snapshotList":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/ViewSnapshot;>;"
    const/4 v0, 0x0

    .line 144
    .local v0, "raisedEvent":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 145
    .local v2, "viewSnapshot":Lcom/google/firebase/firestore/core/ViewSnapshot;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getQuery()Lcom/google/firebase/firestore/core/Query;

    move-result-object v3

    .line 146
    .local v3, "query":Lcom/google/firebase/firestore/core/Query;
    iget-object v4, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;

    .line 147
    .local v4, "info":Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    if-eqz v4, :cond_2

    .line 148
    invoke-static {v4}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$000(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/core/QueryListener;

    .line 149
    .local v6, "listener":Lcom/google/firebase/firestore/core/QueryListener;
    invoke-virtual {v6, v2}, Lcom/google/firebase/firestore/core/QueryListener;->onViewSnapshot(Lcom/google/firebase/firestore/core/ViewSnapshot;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 150
    const/4 v0, 0x1

    .line 152
    .end local v6    # "listener":Lcom/google/firebase/firestore/core/QueryListener;
    :cond_0
    goto :goto_1

    .line 153
    :cond_1
    invoke-static {v4, v2}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$102(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;Lcom/google/firebase/firestore/core/ViewSnapshot;)Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 155
    .end local v2    # "viewSnapshot":Lcom/google/firebase/firestore/core/ViewSnapshot;
    .end local v3    # "query":Lcom/google/firebase/firestore/core/Query;
    .end local v4    # "info":Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    :cond_2
    goto :goto_0

    .line 156
    :cond_3
    if-eqz v0, :cond_4

    .line 157
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/EventManager;->raiseSnapshotsInSyncEvent()V

    .line 159
    :cond_4
    return-void
.end method

.method public removeQueryListener(Lcom/google/firebase/firestore/core/QueryListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/firebase/firestore/core/QueryListener;

    .line 111
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/QueryListener;->getQuery()Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    .line 112
    .local v0, "query":Lcom/google/firebase/firestore/core/Query;
    iget-object v1, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;

    .line 113
    .local v1, "queryInfo":Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    const/4 v2, 0x0

    .line 114
    .local v2, "lastListen":Z
    if-eqz v1, :cond_0

    .line 115
    invoke-static {v1}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$000(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    invoke-static {v1}, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->access$000(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    .line 119
    :cond_0
    if-eqz v2, :cond_1

    .line 120
    iget-object v3, p0, Lcom/google/firebase/firestore/core/EventManager;->queries:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v3, p0, Lcom/google/firebase/firestore/core/EventManager;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    invoke-virtual {v3, v0}, Lcom/google/firebase/firestore/core/SyncEngine;->stopListening(Lcom/google/firebase/firestore/core/Query;)V

    .line 123
    :cond_1
    return-void
.end method

.method public removeSnapshotsInSyncListener(Lcom/google/firebase/firestore/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/EventListener<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p1, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/core/EventManager;->snapshotsInSyncListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method
