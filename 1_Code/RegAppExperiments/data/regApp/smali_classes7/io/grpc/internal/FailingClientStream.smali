.class public final Lio/grpc/internal/FailingClientStream;
.super Lio/grpc/internal/NoopClientStream;
.source "FailingClientStream.java"


# instance fields
.field private final error:Lio/grpc/Status;

.field private final rpcProgress:Lio/grpc/internal/ClientStreamListener$RpcProgress;

.field private started:Z

.field private final tracers:[Lio/grpc/ClientStreamTracer;


# direct methods
.method public constructor <init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;[Lio/grpc/ClientStreamTracer;)V
    .locals 2
    .param p1, "error"    # Lio/grpc/Status;
    .param p2, "rpcProgress"    # Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .param p3, "tracers"    # [Lio/grpc/ClientStreamTracer;

    .line 47
    invoke-direct {p0}, Lio/grpc/internal/NoopClientStream;-><init>()V

    .line 48
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 49
    iput-object p1, p0, Lio/grpc/internal/FailingClientStream;->error:Lio/grpc/Status;

    .line 50
    iput-object p2, p0, Lio/grpc/internal/FailingClientStream;->rpcProgress:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    .line 51
    iput-object p3, p0, Lio/grpc/internal/FailingClientStream;->tracers:[Lio/grpc/ClientStreamTracer;

    .line 52
    return-void
.end method

.method public constructor <init>(Lio/grpc/Status;[Lio/grpc/ClientStreamTracer;)V
    .locals 1
    .param p1, "error"    # Lio/grpc/Status;
    .param p2, "tracers"    # [Lio/grpc/ClientStreamTracer;

    .line 40
    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {p0, p1, v0, p2}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;[Lio/grpc/ClientStreamTracer;)V

    .line 41
    return-void
.end method


# virtual methods
.method public appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V
    .locals 3
    .param p1, "insight"    # Lio/grpc/internal/InsightBuilder;

    .line 71
    const-string v0, "error"

    iget-object v1, p0, Lio/grpc/internal/FailingClientStream;->error:Lio/grpc/Status;

    invoke-virtual {p1, v0, v1}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    move-result-object v0

    const-string v1, "progress"

    iget-object v2, p0, Lio/grpc/internal/FailingClientStream;->rpcProgress:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-virtual {v0, v1, v2}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 72
    return-void
.end method

.method getError()Lio/grpc/Status;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/grpc/internal/FailingClientStream;->error:Lio/grpc/Status;

    return-object v0
.end method

.method public start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 5
    .param p1, "listener"    # Lio/grpc/internal/ClientStreamListener;

    .line 56
    iget-boolean v0, p0, Lio/grpc/internal/FailingClientStream;->started:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already started"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 57
    iput-boolean v1, p0, Lio/grpc/internal/FailingClientStream;->started:Z

    .line 58
    iget-object v0, p0, Lio/grpc/internal/FailingClientStream;->tracers:[Lio/grpc/ClientStreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 59
    .local v3, "tracer":Lio/grpc/ClientStreamTracer;
    iget-object v4, p0, Lio/grpc/internal/FailingClientStream;->error:Lio/grpc/Status;

    invoke-virtual {v3, v4}, Lio/grpc/ClientStreamTracer;->streamClosed(Lio/grpc/Status;)V

    .line 58
    .end local v3    # "tracer":Lio/grpc/ClientStreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/FailingClientStream;->error:Lio/grpc/Status;

    iget-object v1, p0, Lio/grpc/internal/FailingClientStream;->rpcProgress:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    .line 62
    return-void
.end method
