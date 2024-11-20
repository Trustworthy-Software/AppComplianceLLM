.class public Lcom/google/firebase/firestore/remote/WriteStream;
.super Lcom/google/firebase/firestore/remote/AbstractStream;
.source "WriteStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/remote/WriteStream$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/remote/AbstractStream<",
        "Lcom/google/firestore/v1/WriteRequest;",
        "Lcom/google/firestore/v1/WriteResponse;",
        "Lcom/google/firebase/firestore/remote/WriteStream$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY_STREAM_TOKEN:Lcom/google/protobuf/ByteString;


# instance fields
.field protected handshakeComplete:Z

.field private lastStreamToken:Lcom/google/protobuf/ByteString;

.field private final serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    sput-object v0, Lcom/google/firebase/firestore/remote/WriteStream;->EMPTY_STREAM_TOKEN:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/remote/WriteStream$Callback;)V
    .locals 8
    .param p1, "channel"    # Lcom/google/firebase/firestore/remote/FirestoreChannel;
    .param p2, "workerQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p3, "serializer"    # Lcom/google/firebase/firestore/remote/RemoteSerializer;
    .param p4, "listener"    # Lcom/google/firebase/firestore/remote/WriteStream$Callback;

    .line 72
    nop

    .line 74
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getWriteMethod()Lio/grpc/MethodDescriptor;

    move-result-object v2

    sget-object v4, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->WRITE_STREAM_CONNECTION_BACKOFF:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-object v5, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->WRITE_STREAM_IDLE:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    sget-object v6, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->HEALTH_CHECK_TIMEOUT:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/firestore/remote/AbstractStream;-><init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lio/grpc/MethodDescriptor;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;Lcom/google/firebase/firestore/remote/Stream$StreamCallback;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/WriteStream;->handshakeComplete:Z

    .line 65
    sget-object v0, Lcom/google/firebase/firestore/remote/WriteStream;->EMPTY_STREAM_TOKEN:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/WriteStream;->lastStreamToken:Lcom/google/protobuf/ByteString;

    .line 80
    iput-object p3, p0, Lcom/google/firebase/firestore/remote/WriteStream;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 81
    return-void
.end method


# virtual methods
.method getLastStreamToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WriteStream;->lastStreamToken:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic inhibitBackoff()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->inhibitBackoff()V

    return-void
.end method

.method isHandshakeComplete()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/google/firebase/firestore/remote/WriteStream;->handshakeComplete:Z

    return v0
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->isOpen()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStarted()Z
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->isStarted()Z

    move-result v0

    return v0
.end method

.method public onNext(Lcom/google/firestore/v1/WriteResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/google/firestore/v1/WriteResponse;

    .line 164
    invoke-virtual {p1}, Lcom/google/firestore/v1/WriteResponse;->getStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/WriteStream;->lastStreamToken:Lcom/google/protobuf/ByteString;

    .line 166
    iget-boolean v0, p0, Lcom/google/firebase/firestore/remote/WriteStream;->handshakeComplete:Z

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/WriteStream;->handshakeComplete:Z

    .line 170
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WriteStream;->listener:Lcom/google/firebase/firestore/remote/Stream$StreamCallback;

    check-cast v0, Lcom/google/firebase/firestore/remote/WriteStream$Callback;

    invoke-interface {v0}, Lcom/google/firebase/firestore/remote/WriteStream$Callback;->onHandshakeComplete()V

    goto :goto_1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WriteStream;->backoff:Lcom/google/firebase/firestore/util/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/ExponentialBackoff;->reset()V

    .line 177
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WriteStream;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {p1}, Lcom/google/firestore/v1/WriteResponse;->getCommitTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    .line 179
    .local v0, "commitVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    invoke-virtual {p1}, Lcom/google/firestore/v1/WriteResponse;->getWriteResultsCount()I

    move-result v1

    .line 180
    .local v1, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationResult;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 182
    invoke-virtual {p1, v3}, Lcom/google/firestore/v1/WriteResponse;->getWriteResults(I)Lcom/google/firestore/v1/WriteResult;

    move-result-object v4

    .line 183
    .local v4, "result":Lcom/google/firestore/v1/WriteResult;
    iget-object v5, p0, Lcom/google/firebase/firestore/remote/WriteStream;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v5, v4, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeMutationResult(Lcom/google/firestore/v1/WriteResult;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/mutation/MutationResult;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v4    # "result":Lcom/google/firestore/v1/WriteResult;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/WriteStream;->listener:Lcom/google/firebase/firestore/remote/Stream$StreamCallback;

    check-cast v3, Lcom/google/firebase/firestore/remote/WriteStream$Callback;

    invoke-interface {v3, v0, v2}, Lcom/google/firebase/firestore/remote/WriteStream$Callback;->onWriteResponse(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;)V

    .line 187
    .end local v0    # "commitVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    .end local v1    # "count":I
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationResult;>;"
    :goto_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/google/firestore/v1/WriteResponse;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/remote/WriteStream;->onNext(Lcom/google/firestore/v1/WriteResponse;)V

    return-void
.end method

.method setLastStreamToken(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "streamToken"    # Lcom/google/protobuf/ByteString;

    .line 126
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/WriteStream;->lastStreamToken:Lcom/google/protobuf/ByteString;

    .line 127
    return-void
.end method

.method public start()V
    .locals 1

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/WriteStream;->handshakeComplete:Z

    .line 86
    invoke-super {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->start()V

    .line 87
    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/google/firebase/firestore/remote/AbstractStream;->stop()V

    return-void
.end method

.method protected tearDown()V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/google/firebase/firestore/remote/WriteStream;->handshakeComplete:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/remote/WriteStream;->writeMutations(Ljava/util/List;)V

    .line 96
    :cond_0
    return-void
.end method

.method writeHandshake()V
    .locals 4

    .line 135
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/WriteStream;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Writing handshake requires an opened stream"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-boolean v0, p0, Lcom/google/firebase/firestore/remote/WriteStream;->handshakeComplete:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v2, "Handshake already completed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lcom/google/firestore/v1/WriteRequest;->newBuilder()Lcom/google/firestore/v1/WriteRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WriteStream;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/WriteRequest$Builder;->setDatabase(Ljava/lang/String;)Lcom/google/firestore/v1/WriteRequest$Builder;

    move-result-object v0

    .line 141
    .local v0, "request":Lcom/google/firestore/v1/WriteRequest$Builder;
    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/WriteRequest;

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/remote/WriteStream;->writeRequest(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method writeMutations(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p1, "mutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/remote/WriteStream;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Writing mutations requires an opened stream"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-boolean v0, p0, Lcom/google/firebase/firestore/remote/WriteStream;->handshakeComplete:Z

    const-string v2, "Handshake must be complete before writing mutations"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-static {}, Lcom/google/firestore/v1/WriteRequest;->newBuilder()Lcom/google/firestore/v1/WriteRequest$Builder;

    move-result-object v0

    .line 154
    .local v0, "request":Lcom/google/firestore/v1/WriteRequest$Builder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 155
    .local v2, "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/WriteStream;->serializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeMutation(Lcom/google/firebase/firestore/model/mutation/Mutation;)Lcom/google/firestore/v1/Write;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/firestore/v1/WriteRequest$Builder;->addWrites(Lcom/google/firestore/v1/Write;)Lcom/google/firestore/v1/WriteRequest$Builder;

    .line 156
    .end local v2    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    goto :goto_0

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WriteStream;->lastStreamToken:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/WriteRequest$Builder;->setStreamToken(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/WriteRequest$Builder;

    .line 159
    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/WriteRequest;

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/remote/WriteStream;->writeRequest(Ljava/lang/Object;)V

    .line 160
    return-void
.end method
