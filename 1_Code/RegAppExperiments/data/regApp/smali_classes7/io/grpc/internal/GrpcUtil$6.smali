.class Lio/grpc/internal/GrpcUtil$6;
.super Ljava/lang/Object;
.source "GrpcUtil.java"

# interfaces
.implements Lio/grpc/internal/ClientTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/GrpcUtil;->getTransportFromPickResult(Lio/grpc/LoadBalancer$PickResult;Z)Lio/grpc/internal/ClientTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$streamTracerFactory:Lio/grpc/ClientStreamTracer$Factory;

.field final synthetic val$transport:Lio/grpc/internal/ClientTransport;


# direct methods
.method constructor <init>(Lio/grpc/ClientStreamTracer$Factory;Lio/grpc/internal/ClientTransport;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lio/grpc/internal/GrpcUtil$6;->val$streamTracerFactory:Lio/grpc/ClientStreamTracer$Factory;

    iput-object p2, p0, Lio/grpc/internal/GrpcUtil$6;->val$transport:Lio/grpc/internal/ClientTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    .line 753
    iget-object v0, p0, Lio/grpc/internal/GrpcUtil$6;->val$transport:Lio/grpc/internal/ClientTransport;

    invoke-interface {v0}, Lio/grpc/internal/ClientTransport;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v0

    return-object v0
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lio/grpc/internal/GrpcUtil$6;->val$transport:Lio/grpc/internal/ClientTransport;

    invoke-interface {v0}, Lio/grpc/internal/ClientTransport;->getStats()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;
    .locals 5
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

    .line 738
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    invoke-static {}, Lio/grpc/ClientStreamTracer$StreamInfo;->newBuilder()Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->setCallOptions(Lio/grpc/CallOptions;)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->build()Lio/grpc/ClientStreamTracer$StreamInfo;

    move-result-object v0

    .line 739
    .local v0, "info":Lio/grpc/ClientStreamTracer$StreamInfo;
    iget-object v1, p0, Lio/grpc/internal/GrpcUtil$6;->val$streamTracerFactory:Lio/grpc/ClientStreamTracer$Factory;

    .line 740
    invoke-virtual {v1, v0, p2}, Lio/grpc/ClientStreamTracer$Factory;->newClientStreamTracer(Lio/grpc/ClientStreamTracer$StreamInfo;Lio/grpc/Metadata;)Lio/grpc/ClientStreamTracer;

    move-result-object v1

    .line 741
    .local v1, "streamTracer":Lio/grpc/ClientStreamTracer;
    array-length v2, p4

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v2, p4, v2

    invoke-static {}, Lio/grpc/internal/GrpcUtil;->access$200()Lio/grpc/ClientStreamTracer;

    move-result-object v4

    if-ne v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v4, "lb tracer already assigned"

    invoke-static {v2, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 742
    array-length v2, p4

    sub-int/2addr v2, v3

    aput-object v1, p4, v2

    .line 743
    iget-object v2, p0, Lio/grpc/internal/GrpcUtil$6;->val$transport:Lio/grpc/internal/ClientTransport;

    invoke-interface {v2, p1, p2, p3, p4}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;

    move-result-object v2

    return-object v2
.end method

.method public ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "callback"    # Lio/grpc/internal/ClientTransport$PingCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 748
    iget-object v0, p0, Lio/grpc/internal/GrpcUtil$6;->val$transport:Lio/grpc/internal/ClientTransport;

    invoke-interface {v0, p1, p2}, Lio/grpc/internal/ClientTransport;->ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V

    .line 749
    return-void
.end method
