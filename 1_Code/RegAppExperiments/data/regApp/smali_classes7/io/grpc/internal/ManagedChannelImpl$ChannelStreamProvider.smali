.class final Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChannelStreamProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p2, "x1"    # Lio/grpc/internal/ManagedChannelImpl$1;

    .line 496
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    return-void
.end method

.method static synthetic access$2500(Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/internal/ClientTransport;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;
    .param p1, "x1"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 496
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->getTransport(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/internal/ClientTransport;

    move-result-object v0

    return-object v0
.end method

.method private getTransport(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/internal/ClientTransport;
    .locals 4
    .param p1, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 498
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object v0

    .line 499
    .local v0, "pickerCopy":Lio/grpc/LoadBalancer$SubchannelPicker;
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$1500(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$1600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/DelayedClientTransport;

    move-result-object v1

    return-object v1

    .line 504
    :cond_0
    if-nez v0, :cond_1

    .line 512
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v2, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1ExitIdleModeForTransport;

    invoke-direct {v2, p0}, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1ExitIdleModeForTransport;-><init>(Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;)V

    invoke-virtual {v1, v2}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 513
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$1600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/DelayedClientTransport;

    move-result-object v1

    return-object v1

    .line 525
    :cond_1
    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$SubchannelPicker;->pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v1

    .line 526
    .local v1, "pickResult":Lio/grpc/LoadBalancer$PickResult;
    nop

    .line 527
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$PickSubchannelArgs;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/CallOptions;->isWaitForReady()Z

    move-result v2

    .line 526
    invoke-static {v1, v2}, Lio/grpc/internal/GrpcUtil;->getTransportFromPickResult(Lio/grpc/LoadBalancer$PickResult;Z)Lio/grpc/internal/ClientTransport;

    move-result-object v2

    .line 528
    .local v2, "transport":Lio/grpc/internal/ClientTransport;
    if-eqz v2, :cond_2

    .line 529
    return-object v2

    .line 531
    :cond_2
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImpl;->access$1600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/DelayedClientTransport;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Metadata;Lio/grpc/Context;)Lio/grpc/internal/ClientStream;
    .locals 17
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

    .line 540
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    iget-object v0, v10, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1700(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Lio/grpc/internal/PickSubchannelArgsImpl;

    invoke-direct {v0, v11, v13, v12}, Lio/grpc/internal/PickSubchannelArgsImpl;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)V

    .line 542
    invoke-direct {v10, v0}, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->getTransport(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/internal/ClientTransport;

    move-result-object v1

    .line 543
    .local v1, "transport":Lio/grpc/internal/ClientTransport;
    invoke-virtual/range {p4 .. p4}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v2

    .line 544
    .local v2, "origContext":Lio/grpc/Context;
    const/4 v0, 0x0

    invoke-static {v12, v13, v0, v0}, Lio/grpc/internal/GrpcUtil;->getClientStreamTracers(Lio/grpc/CallOptions;Lio/grpc/Metadata;IZ)[Lio/grpc/ClientStreamTracer;

    move-result-object v3

    .line 547
    .local v3, "tracers":[Lio/grpc/ClientStreamTracer;
    :try_start_0
    invoke-interface {v1, v11, v13, v12, v3}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    invoke-virtual {v14, v2}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 547
    return-object v0

    .line 549
    :catchall_0
    move-exception v0

    move-object v4, v0

    invoke-virtual {v14, v2}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v4

    .line 552
    .end local v1    # "transport":Lio/grpc/internal/ClientTransport;
    .end local v2    # "origContext":Lio/grpc/Context;
    .end local v3    # "tracers":[Lio/grpc/ClientStreamTracer;
    :cond_0
    iget-object v0, v10, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelServiceConfig;->getRetryThrottling()Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v0

    .line 553
    .local v0, "throttle":Lio/grpc/internal/RetriableStream$Throttle;
    sget-object v1, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->KEY:Lio/grpc/CallOptions$Key;

    invoke-virtual {v12, v1}, Lio/grpc/CallOptions;->getOption(Lio/grpc/CallOptions$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    .line 554
    .local v15, "methodInfo":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    const/4 v1, 0x0

    if-nez v15, :cond_1

    move-object v6, v1

    goto :goto_0

    :cond_1
    iget-object v2, v15, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->retryPolicy:Lio/grpc/internal/RetryPolicy;

    move-object v6, v2

    .line 555
    .local v6, "retryPolicy":Lio/grpc/internal/RetryPolicy;
    :goto_0
    if-nez v15, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v15, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    :goto_1
    move-object v7, v1

    .line 600
    .local v7, "hedgingPolicy":Lio/grpc/internal/HedgingPolicy;
    new-instance v16, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object v8, v0

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;-><init>(Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;Lio/grpc/internal/RetryPolicy;Lio/grpc/internal/HedgingPolicy;Lio/grpc/internal/RetriableStream$Throttle;Lio/grpc/Context;)V

    return-object v16
.end method
