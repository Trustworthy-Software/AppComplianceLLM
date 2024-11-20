.class Lio/grpc/internal/SubchannelChannel$1;
.super Ljava/lang/Object;
.source "SubchannelChannel.java"

# interfaces
.implements Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/SubchannelChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/SubchannelChannel;


# direct methods
.method constructor <init>(Lio/grpc/internal/SubchannelChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/SubchannelChannel;

    .line 53
    iput-object p1, p0, Lio/grpc/internal/SubchannelChannel$1;->this$0:Lio/grpc/internal/SubchannelChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Metadata;Lio/grpc/Context;)Lio/grpc/internal/ClientStream;
    .locals 4
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .param p3, "headers"    # Lio/grpc/Metadata;
    .param p4, "context"    # Lio/grpc/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/Context;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    .line 57
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    iget-object v0, p0, Lio/grpc/internal/SubchannelChannel$1;->this$0:Lio/grpc/internal/SubchannelChannel;

    invoke-static {v0}, Lio/grpc/internal/SubchannelChannel;->access$000(Lio/grpc/internal/SubchannelChannel;)Lio/grpc/internal/InternalSubchannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/InternalSubchannel;->getTransport()Lio/grpc/internal/ClientTransport;

    move-result-object v0

    .line 58
    .local v0, "transport":Lio/grpc/internal/ClientTransport;
    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lio/grpc/internal/SubchannelChannel;->access$100()Lio/grpc/internal/FailingClientTransport;

    move-result-object v0

    .line 61
    :cond_0
    const/4 v1, 0x0

    invoke-static {p2, p3, v1, v1}, Lio/grpc/internal/GrpcUtil;->getClientStreamTracers(Lio/grpc/CallOptions;Lio/grpc/Metadata;IZ)[Lio/grpc/ClientStreamTracer;

    move-result-object v1

    .line 63
    .local v1, "tracers":[Lio/grpc/ClientStreamTracer;
    invoke-virtual {p4}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v2

    .line 65
    .local v2, "origContext":Lio/grpc/Context;
    :try_start_0
    invoke-interface {v0, p1, p3, p2, v1}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p4, v2}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 65
    return-object v3

    .line 67
    :catchall_0
    move-exception v3

    invoke-virtual {p4, v2}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v3
.end method
