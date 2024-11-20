.class public Lcom/google/firebase/firestore/core/QueryListener;
.super Ljava/lang/Object;
.source "QueryListener.java"


# instance fields
.field private final listener:Lcom/google/firebase/firestore/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/core/ViewSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private onlineState:Lcom/google/firebase/firestore/core/OnlineState;

.field private final options:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

.field private final query:Lcom/google/firebase/firestore/core/Query;

.field private raisedInitialEvent:Z

.field private snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Lcom/google/firebase/firestore/EventListener;)V
    .locals 1
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "options"    # Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/core/EventManager$ListenOptions;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/core/ViewSnapshot;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p3, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/core/ViewSnapshot;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->raisedInitialEvent:Z

    .line 47
    sget-object v0, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    iput-object v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->onlineState:Lcom/google/firebase/firestore/core/OnlineState;

    .line 53
    iput-object p1, p0, Lcom/google/firebase/firestore/core/QueryListener;->query:Lcom/google/firebase/firestore/core/Query;

    .line 54
    iput-object p3, p0, Lcom/google/firebase/firestore/core/QueryListener;->listener:Lcom/google/firebase/firestore/EventListener;

    .line 55
    iput-object p2, p0, Lcom/google/firebase/firestore/core/QueryListener;->options:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    .line 56
    return-void
.end method

.method private raiseInitialEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;)V
    .locals 10
    .param p1, "snapshot"    # Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 171
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->raisedInitialEvent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Trying to raise initial event for second time"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 172
    nop

    .line 174
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getQuery()Lcom/google/firebase/firestore/core/Query;

    move-result-object v4

    .line 175
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v5

    .line 176
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getMutatedKeys()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v6

    .line 177
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v7

    .line 178
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->excludesMetadataChanges()Z

    move-result v8

    .line 179
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasCachedResults()Z

    move-result v9

    .line 173
    invoke-static/range {v4 .. v9}, Lcom/google/firebase/firestore/core/ViewSnapshot;->fromInitialDocuments(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;ZZZ)Lcom/google/firebase/firestore/core/ViewSnapshot;

    move-result-object p1

    .line 180
    iput-boolean v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->raisedInitialEvent:Z

    .line 181
    iget-object v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->listener:Lcom/google/firebase/firestore/EventListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 182
    return-void
.end method

.method private shouldRaiseEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;)Z
    .locals 4
    .param p1, "snapshot"    # Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 154
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 155
    return v1

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasPendingWrites()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasPendingWrites()Z

    move-result v3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    .line 160
    .local v0, "hasPendingWritesChanged":Z
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->didSyncStateChange()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    .line 167
    :cond_2
    return v2

    .line 161
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->options:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    iget-boolean v1, v1, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeQueryMetadataChanges:Z

    return v1
.end method

.method private shouldRaiseInitialEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/core/OnlineState;)Z
    .locals 5
    .param p1, "snapshot"    # Lcom/google/firebase/firestore/core/ViewSnapshot;
    .param p2, "onlineState"    # Lcom/google/firebase/firestore/core/OnlineState;

    .line 124
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->raisedInitialEvent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Determining whether to raise first event but already had first event."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    return v1

    .line 135
    :cond_0
    sget-object v0, Lcom/google/firebase/firestore/core/OnlineState;->OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/core/OnlineState;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 138
    .local v0, "maybeOnline":Z
    iget-object v2, p0, Lcom/google/firebase/firestore/core/QueryListener;->options:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    iget-boolean v2, v2, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->waitForSyncWhenOnline:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v1

    const-string v2, "Waiting for sync, but snapshot is not from cache"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 140
    return v3

    .line 145
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasCachedResults()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/firebase/firestore/core/OnlineState;->OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

    .line 147
    invoke-virtual {p2, v2}, Lcom/google/firebase/firestore/core/OnlineState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    nop

    .line 145
    :goto_1
    return v1
.end method


# virtual methods
.method public getQuery()Lcom/google/firebase/firestore/core/Query;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->query:Lcom/google/firebase/firestore/core/Query;

    return-object v0
.end method

.method public onError(Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 2
    .param p1, "error"    # Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 109
    iget-object v0, p0, Lcom/google/firebase/firestore/core/QueryListener;->listener:Lcom/google/firebase/firestore/EventListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 110
    return-void
.end method

.method public onOnlineStateChanged(Lcom/google/firebase/firestore/core/OnlineState;)Z
    .locals 3
    .param p1, "onlineState"    # Lcom/google/firebase/firestore/core/OnlineState;

    .line 114
    iput-object p1, p0, Lcom/google/firebase/firestore/core/QueryListener;->onlineState:Lcom/google/firebase/firestore/core/OnlineState;

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "raisedEvent":Z
    iget-object v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/google/firebase/firestore/core/QueryListener;->raisedInitialEvent:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v1, p1}, Lcom/google/firebase/firestore/core/QueryListener;->shouldRaiseInitialEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/core/OnlineState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/core/QueryListener;->raiseInitialEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;)V

    .line 118
    const/4 v0, 0x1

    .line 120
    :cond_0
    return v0
.end method

.method public onViewSnapshot(Lcom/google/firebase/firestore/core/ViewSnapshot;)Z
    .locals 13
    .param p1, "newSnapshot"    # Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 68
    nop

    .line 69
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->didSyncStateChange()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    const-string v2, "We got a new snapshot with no changes?"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "raisedEvent":Z
    iget-object v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->options:Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    iget-boolean v1, v1, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeDocumentMetadataChanges:Z

    if-nez v1, :cond_4

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v1, "documentChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/DocumentViewChange;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/DocumentViewChange;

    .line 77
    .local v3, "change":Lcom/google/firebase/firestore/core/DocumentViewChange;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getType()Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->METADATA:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-eq v4, v5, :cond_2

    .line 78
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v3    # "change":Lcom/google/firebase/firestore/core/DocumentViewChange;
    :cond_2
    goto :goto_2

    .line 81
    :cond_3
    new-instance v12, Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 83
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getQuery()Lcom/google/firebase/firestore/core/Query;

    move-result-object v3

    .line 84
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v4

    .line 85
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getOldDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v5

    .line 87
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v7

    .line 88
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getMutatedKeys()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v8

    .line 89
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->didSyncStateChange()Z

    move-result v9

    const/4 v10, 0x1

    .line 91
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasCachedResults()Z

    move-result v11

    move-object v2, v12

    move-object v6, v1

    invoke-direct/range {v2 .. v11}, Lcom/google/firebase/firestore/core/ViewSnapshot;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/firestore/model/DocumentSet;Ljava/util/List;ZLcom/google/firebase/database/collection/ImmutableSortedSet;ZZZ)V

    move-object p1, v12

    .line 94
    .end local v1    # "documentChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/DocumentViewChange;>;"
    :cond_4
    iget-boolean v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->raisedInitialEvent:Z

    if-nez v1, :cond_5

    .line 95
    iget-object v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->onlineState:Lcom/google/firebase/firestore/core/OnlineState;

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/firestore/core/QueryListener;->shouldRaiseInitialEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/core/OnlineState;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 96
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/QueryListener;->raiseInitialEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;)V

    .line 97
    const/4 v0, 0x1

    goto :goto_3

    .line 99
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/QueryListener;->shouldRaiseEvent(Lcom/google/firebase/firestore/core/ViewSnapshot;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 100
    iget-object v1, p0, Lcom/google/firebase/firestore/core/QueryListener;->listener:Lcom/google/firebase/firestore/EventListener;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 101
    const/4 v0, 0x1

    .line 104
    :cond_6
    :goto_3
    iput-object p1, p0, Lcom/google/firebase/firestore/core/QueryListener;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 105
    return v0
.end method
