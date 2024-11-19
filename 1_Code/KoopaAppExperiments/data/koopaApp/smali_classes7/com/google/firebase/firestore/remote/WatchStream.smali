.class public Lcom/google/firebase/firestore/remote/WatchStream;
.super Lcom/google/firebase/firestore/remote/AbstractStream;
.source "WatchStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/remote/WatchStream$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/remote/AbstractStream<",
        "Lcom/google/firestore/v1/ListenRequest;",
        "Lcom/google/firestore/v1/ListenResponse;",
        "Lcom/google/firebase/firestore/remote/WatchStream$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY_RESUME_TOKEN:Lcom/google/protobuf/ByteString;


# instance fields
.field private final serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    sput-object v0, Lcom/google/firebase/firestore/remote/WatchStream;->EMPTY_RESUME_TOKEN:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/remote/WatchStream$Callback;)V
    .locals 8
    .param p1, "channel"    # Lcom/google/firebase/firestore/remote/FirestoreChannel;
    .param p2, "workerQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p3, "serializer"    # Lcom/google/firebase/firestore/remote/RemoteSerializer;
    .param p4, "listener"    # Lcom/google/firebase/firestore/remote/WatchStream$Callback;

    .line 59
    nop

    .line 61
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getListenMethod()Lio/grpc/MethodDescriptor;

    move-result-object v2

    sget-object v4, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->LISTEN_STREAM_CONNECTION_BACKOFF:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-object v5, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->LISTEN_STREAM_IDLE:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-object v6, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->HEALTH_CHECK_TIMEOUT:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/firestore/remote/AbstractStream;-><init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lio/grpc/MethodDescriptor;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;Lcom/google/firebase/firestore/remote/Stream$StreamCallback;)V

    .line 67
    iput-object p3, p0, Lcom/google/firebase/firestore/remote/WatchStream;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 68
    return-void
.end method


# virtual methods
.method public bridge synthetic inhibitBackoff()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->inhibitBackoff()V

    return-void
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->isOpen()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStarted()Z
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->isStarted()Z

    move-result v0

    return v0
.end method

.method public onNext(Lcom/google/firestore/v1/ListenResponse;)V
    .locals 3
    .param p1, "listenResponse"    # Lcom/google/firestore/v1/ListenResponse;

    .line 105
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchStream;->backoff:Lcom/google/firebase/firestore/util/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/ExponentialBackoff;->reset()V

    .line 107
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchStream;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeWatchChange(Lcom/google/firestore/v1/ListenResponse;)Lcom/google/firebase/firestore/remote/WatchChange;

    move-result-object v0

    .line 108
    .local v0, "watchChange":Lcom/google/firebase/firestore/remote/WatchChange;
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchStream;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeVersionFromListenResponse(Lcom/google/firestore/v1/ListenResponse;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    .line 109
    .local v1, "snapshotVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/WatchStream;->listener:Lcom/google/firebase/firestore/remote/Stream$StreamCallback;

    check-cast v2, Lcom/google/firebase/firestore/remote/WatchStream$Callback;

    invoke-interface {v2, v1, v0}, Lcom/google/firebase/firestore/remote/WatchStream$Callback;->onWatchChange(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/remote/WatchChange;)V

    .line 110
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/remote/WatchStream;->onNext(Lcom/google/firestore/v1/ListenResponse;)V

    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->stop()V

    return-void
.end method

.method public unwatchTarget(I)V
    .locals 3
    .param p1, "targetId"    # I

    .line 92
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/WatchStream;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unwatching targets requires an open stream"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lcom/google/firestore/v1/ListenRequest;->newBuilder()Lcom/google/firestore/v1/ListenRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchStream;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 95
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/ListenRequest$Builder;->setDatabase(Ljava/lang/String;)Lcom/google/firestore/v1/ListenRequest$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/ListenRequest$Builder;->setRemoveTarget(I)Lcom/google/firestore/v1/ListenRequest$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenRequest$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    .line 99
    .local v0, "request":Lcom/google/firestore/v1/ListenRequest;
    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/remote/WatchStream;->writeRequest(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public watchQuery(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 3
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 76
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/WatchStream;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Watching queries requires an open stream"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/google/firestore/v1/ListenRequest;->newBuilder()Lcom/google/firestore/v1/ListenRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchStream;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 79
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/ListenRequest$Builder;->setDatabase(Ljava/lang/String;)Lcom/google/firestore/v1/ListenRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchStream;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 80
    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeTarget(Lcom/google/firebase/firestore/local/TargetData;)Lcom/google/firestore/v1/Target;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/ListenRequest$Builder;->setAddTarget(Lcom/google/firestore/v1/Target;)Lcom/google/firestore/v1/ListenRequest$Builder;

    move-result-object v0

    .line 82
    .local v0, "request":Lcom/google/firestore/v1/ListenRequest$Builder;
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchStream;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeListenRequestLabels(Lcom/google/firebase/firestore/local/TargetData;)Ljava/util/Map;

    move-result-object v1

    .line 83
    .local v1, "labels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/ListenRequest$Builder;->putAllLabels(Ljava/util/Map;)Lcom/google/firestore/v1/ListenRequest$Builder;

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenRequest$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/remote/WatchStream;->writeRequest(Ljava/lang/Object;)V

    .line 88
    return-void
.end method
