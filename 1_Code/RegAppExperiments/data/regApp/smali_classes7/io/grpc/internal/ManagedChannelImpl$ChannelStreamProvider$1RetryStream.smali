.class final Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;
.super Lio/grpc/internal/RetriableStream;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Metadata;Lio/grpc/Context;)Lio/grpc/internal/ClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RetryStream"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/internal/RetriableStream<",
        "TReqT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;

.field final synthetic val$callOptions:Lio/grpc/CallOptions;

.field final synthetic val$context:Lio/grpc/Context;

.field final synthetic val$headers:Lio/grpc/Metadata;

.field final synthetic val$hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

.field final synthetic val$method:Lio/grpc/MethodDescriptor;

.field final synthetic val$retryPolicy:Lio/grpc/internal/RetryPolicy;

.field final synthetic val$throttle:Lio/grpc/internal/RetriableStream$Throttle;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;Lio/grpc/internal/RetryPolicy;Lio/grpc/internal/HedgingPolicy;Lio/grpc/internal/RetriableStream$Throttle;Lio/grpc/Context;)V
    .locals 15
    .param p1, "this$1"    # Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 558
    .local p0, "this":Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;, "Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream<TReqT;>;"
    move-object v13, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p4

    iput-object v14, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->this$1:Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;

    move-object/from16 v1, p2

    iput-object v1, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$method:Lio/grpc/MethodDescriptor;

    move-object/from16 v2, p3

    iput-object v2, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$headers:Lio/grpc/Metadata;

    iput-object v0, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$callOptions:Lio/grpc/CallOptions;

    move-object/from16 v10, p5

    iput-object v10, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$retryPolicy:Lio/grpc/internal/RetryPolicy;

    move-object/from16 v11, p6

    iput-object v11, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    move-object/from16 v12, p7

    iput-object v12, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$throttle:Lio/grpc/internal/RetriableStream$Throttle;

    move-object/from16 v3, p8

    iput-object v3, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$context:Lio/grpc/Context;

    .line 559
    iget-object v3, v14, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 562
    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImpl;->access$1900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    move-result-object v3

    iget-object v4, v14, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 563
    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$2000(Lio/grpc/internal/ManagedChannelImpl;)J

    move-result-wide v4

    iget-object v6, v14, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 564
    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$2100(Lio/grpc/internal/ManagedChannelImpl;)J

    move-result-wide v6

    iget-object v8, v14, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 565
    invoke-static {v8, v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2200(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/CallOptions;)Ljava/util/concurrent/Executor;

    move-result-object v8

    iget-object v0, v14, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 566
    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    .line 559
    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lio/grpc/internal/RetriableStream;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/internal/RetriableStream$ChannelBufferMeter;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/RetryPolicy;Lio/grpc/internal/HedgingPolicy;Lio/grpc/internal/RetriableStream$Throttle;)V

    .line 570
    return-void
.end method


# virtual methods
.method newSubstream(Lio/grpc/Metadata;Lio/grpc/ClientStreamTracer$Factory;IZ)Lio/grpc/internal/ClientStream;
    .locals 6
    .param p1, "newHeaders"    # Lio/grpc/Metadata;
    .param p2, "factory"    # Lio/grpc/ClientStreamTracer$Factory;
    .param p3, "previousAttempts"    # I
    .param p4, "isTransparentRetry"    # Z

    .line 586
    .local p0, "this":Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;, "Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v0, p2}, Lio/grpc/CallOptions;->withStreamTracerFactory(Lio/grpc/ClientStreamTracer$Factory;)Lio/grpc/CallOptions;

    move-result-object v0

    .line 587
    .local v0, "newOptions":Lio/grpc/CallOptions;
    invoke-static {v0, p1, p3, p4}, Lio/grpc/internal/GrpcUtil;->getClientStreamTracers(Lio/grpc/CallOptions;Lio/grpc/Metadata;IZ)[Lio/grpc/ClientStreamTracer;

    move-result-object v1

    .line 589
    .local v1, "tracers":[Lio/grpc/ClientStreamTracer;
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->this$1:Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;

    new-instance v3, Lio/grpc/internal/PickSubchannelArgsImpl;

    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$method:Lio/grpc/MethodDescriptor;

    invoke-direct {v3, v4, p1, v0}, Lio/grpc/internal/PickSubchannelArgsImpl;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)V

    .line 590
    invoke-static {v2, v3}, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->access$2500(Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/internal/ClientTransport;

    move-result-object v2

    .line 591
    .local v2, "transport":Lio/grpc/internal/ClientTransport;
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$context:Lio/grpc/Context;

    invoke-virtual {v3}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v3

    .line 593
    .local v3, "origContext":Lio/grpc/Context;
    :try_start_0
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$method:Lio/grpc/MethodDescriptor;

    invoke-interface {v2, v4, p1, v0, v1}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    iget-object v5, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$context:Lio/grpc/Context;

    invoke-virtual {v5, v3}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 593
    return-object v4

    .line 595
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->val$context:Lio/grpc/Context;

    invoke-virtual {v5, v3}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v4
.end method

.method postCommit()V
    .locals 1

    .line 579
    .local p0, "this":Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;, "Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->this$1:Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->remove(Lio/grpc/internal/RetriableStream;)V

    .line 580
    return-void
.end method

.method prestart()Lio/grpc/Status;
    .locals 1

    .line 574
    .local p0, "this":Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;, "Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider$1RetryStream;->this$1:Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->add(Lio/grpc/internal/RetriableStream;)Lio/grpc/Status;

    move-result-object v0

    return-object v0
.end method
