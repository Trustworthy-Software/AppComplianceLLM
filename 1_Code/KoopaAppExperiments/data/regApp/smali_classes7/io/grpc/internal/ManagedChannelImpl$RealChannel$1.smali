.class Lio/grpc/internal/ManagedChannelImpl$RealChannel$1;
.super Lio/grpc/Channel;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl$RealChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$RealChannel;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    .line 945
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    invoke-direct {p0}, Lio/grpc/Channel;-><init>()V

    return-void
.end method


# virtual methods
.method public authority()Ljava/lang/String;
    .locals 1

    .line 964
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->access$4100(Lio/grpc/internal/ManagedChannelImpl$RealChannel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;
    .locals 9
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/ClientCall<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 949
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TRequestT;TResponseT;>;"
    new-instance v8, Lio/grpc/internal/ClientCallImpl;

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 951
    invoke-static {v0, p2}, Lio/grpc/internal/ManagedChannelImpl;->access$2200(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/CallOptions;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 953
    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$3900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;

    move-result-object v4

    .line 954
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$4000(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    :goto_0
    move-object v5, v0

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 955
    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/CallTracer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lio/grpc/internal/ClientCallImpl;-><init>(Lio/grpc/MethodDescriptor;Ljava/util/concurrent/Executor;Lio/grpc/CallOptions;Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/CallTracer;Lio/grpc/InternalConfigSelector;)V

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 957
    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$3800(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lio/grpc/internal/ClientCallImpl;->setFullStreamDecompression(Z)Lio/grpc/internal/ClientCallImpl;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 958
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$3700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/DecompressorRegistry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/ClientCallImpl;->setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/ClientCallImpl;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 959
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$3600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/CompressorRegistry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/ClientCallImpl;->setCompressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/ClientCallImpl;

    move-result-object v0

    .line 949
    return-object v0
.end method
