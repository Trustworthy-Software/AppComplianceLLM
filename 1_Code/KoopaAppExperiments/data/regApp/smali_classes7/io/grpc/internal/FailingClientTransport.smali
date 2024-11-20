.class Lio/grpc/internal/FailingClientTransport;
.super Ljava/lang/Object;
.source "FailingClientTransport.java"

# interfaces
.implements Lio/grpc/internal/ClientTransport;


# instance fields
.field final error:Lio/grpc/Status;

.field private final rpcProgress:Lio/grpc/internal/ClientStreamListener$RpcProgress;


# direct methods
.method constructor <init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;)V
    .locals 2
    .param p1, "error"    # Lio/grpc/Status;
    .param p2, "rpcProgress"    # Lio/grpc/internal/ClientStreamListener$RpcProgress;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 43
    iput-object p1, p0, Lio/grpc/internal/FailingClientTransport;->error:Lio/grpc/Status;

    .line 44
    iput-object p2, p0, Lio/grpc/internal/FailingClientTransport;->rpcProgress:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    .line 45
    return-void
.end method


# virtual methods
.method public getLogId()Lio/grpc/InternalLogId;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a real transport"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 66
    .local v0, "ret":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lio/grpc/InternalChannelz$SocketStats;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 67
    return-object v0
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;
    .locals 3
    .param p2, "headers"    # Lio/grpc/Metadata;
    .param p3, "callOptions"    # Lio/grpc/CallOptions;
    .param p4, "tracers"    # [Lio/grpc/ClientStreamTracer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            "[",
            "Lio/grpc/ClientStreamTracer;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    .line 51
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    new-instance v0, Lio/grpc/internal/FailingClientStream;

    iget-object v1, p0, Lio/grpc/internal/FailingClientTransport;->error:Lio/grpc/Status;

    iget-object v2, p0, Lio/grpc/internal/FailingClientTransport;->rpcProgress:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {v0, v1, v2, p4}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;[Lio/grpc/ClientStreamTracer;)V

    return-object v0
.end method

.method public ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "callback"    # Lio/grpc/internal/ClientTransport$PingCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 56
    new-instance v0, Lio/grpc/internal/FailingClientTransport$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/FailingClientTransport$1;-><init>(Lio/grpc/internal/FailingClientTransport;Lio/grpc/internal/ClientTransport$PingCallback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method
