.class public abstract Lcom/google/firebase/firestore/core/ComponentProvider;
.super Ljava/lang/Object;
.source "ComponentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;
    }
.end annotation


# instance fields
.field private connectivityMonitor:Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

.field private eventManager:Lcom/google/firebase/firestore/core/EventManager;

.field private garbageCollectionScheduler:Lcom/google/firebase/firestore/local/Scheduler;

.field private indexBackfiller:Lcom/google/firebase/firestore/local/IndexBackfiller;

.field private localStore:Lcom/google/firebase/firestore/local/LocalStore;

.field private persistence:Lcom/google/firebase/firestore/local/Persistence;

.field private remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

.field private syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createConnectivityMonitor(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/remote/ConnectivityMonitor;
.end method

.method protected abstract createEventManager(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/core/EventManager;
.end method

.method protected abstract createGarbageCollectionScheduler(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/Scheduler;
.end method

.method protected abstract createIndexBackfiller(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/IndexBackfiller;
.end method

.method protected abstract createLocalStore(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/LocalStore;
.end method

.method protected abstract createPersistence(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/Persistence;
.end method

.method protected abstract createRemoteStore(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/remote/RemoteStore;
.end method

.method protected abstract createSyncEngine(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/core/SyncEngine;
.end method

.method protected getConnectivityMonitor()Lcom/google/firebase/firestore/remote/ConnectivityMonitor;
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->connectivityMonitor:Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "connectivityMonitor not initialized yet"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssertNonNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

    return-object v0
.end method

.method public getEventManager()Lcom/google/firebase/firestore/core/EventManager;
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->eventManager:Lcom/google/firebase/firestore/core/EventManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "eventManager not initialized yet"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssertNonNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/EventManager;

    return-object v0
.end method

.method public getGarbageCollectionScheduler()Lcom/google/firebase/firestore/local/Scheduler;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->garbageCollectionScheduler:Lcom/google/firebase/firestore/local/Scheduler;

    return-object v0
.end method

.method public getIndexBackfiller()Lcom/google/firebase/firestore/local/IndexBackfiller;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->indexBackfiller:Lcom/google/firebase/firestore/local/IndexBackfiller;

    return-object v0
.end method

.method public getLocalStore()Lcom/google/firebase/firestore/local/LocalStore;
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "localStore not initialized yet"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssertNonNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/LocalStore;

    return-object v0
.end method

.method public getPersistence()Lcom/google/firebase/firestore/local/Persistence;
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "persistence not initialized yet"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssertNonNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/Persistence;

    return-object v0
.end method

.method public getRemoteStore()Lcom/google/firebase/firestore/remote/RemoteStore;
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "remoteStore not initialized yet"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssertNonNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/remote/RemoteStore;

    return-object v0
.end method

.method public getSyncEngine()Lcom/google/firebase/firestore/core/SyncEngine;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "syncEngine not initialized yet"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssertNonNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/SyncEngine;

    return-object v0
.end method

.method public initialize(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;

    .line 149
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createPersistence(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/Persistence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    .line 150
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/Persistence;->start()V

    .line 151
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createLocalStore(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/LocalStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    .line 152
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createConnectivityMonitor(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->connectivityMonitor:Lcom/google/firebase/firestore/remote/ConnectivityMonitor;

    .line 153
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createRemoteStore(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/remote/RemoteStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    .line 154
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createSyncEngine(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/core/SyncEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->syncEngine:Lcom/google/firebase/firestore/core/SyncEngine;

    .line 155
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createEventManager(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/core/EventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->eventManager:Lcom/google/firebase/firestore/core/EventManager;

    .line 156
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->localStore:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LocalStore;->start()V

    .line 157
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->remoteStore:Lcom/google/firebase/firestore/remote/RemoteStore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/RemoteStore;->start()V

    .line 158
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createGarbageCollectionScheduler(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/Scheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->garbageCollectionScheduler:Lcom/google/firebase/firestore/local/Scheduler;

    .line 159
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/ComponentProvider;->createIndexBackfiller(Lcom/google/firebase/firestore/core/ComponentProvider$Configuration;)Lcom/google/firebase/firestore/local/IndexBackfiller;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ComponentProvider;->indexBackfiller:Lcom/google/firebase/firestore/local/IndexBackfiller;

    .line 160
    return-void
.end method
