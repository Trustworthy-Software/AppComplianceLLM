.class Lio/grpc/internal/DelayedClientTransport$PendingStream;
.super Lio/grpc/internal/DelayedStream;
.source "DelayedClientTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DelayedClientTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingStream"
.end annotation


# instance fields
.field private final args:Lio/grpc/LoadBalancer$PickSubchannelArgs;

.field private final context:Lio/grpc/Context;

.field final synthetic this$0:Lio/grpc/internal/DelayedClientTransport;

.field private final tracers:[Lio/grpc/ClientStreamTracer;


# direct methods
.method private constructor <init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/LoadBalancer$PickSubchannelArgs;[Lio/grpc/ClientStreamTracer;)V
    .locals 0
    .param p2, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;
    .param p3, "tracers"    # [Lio/grpc/ClientStreamTracer;

    .line 356
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-direct {p0}, Lio/grpc/internal/DelayedStream;-><init>()V

    .line 353
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->context:Lio/grpc/Context;

    .line 357
    iput-object p2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->args:Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 358
    iput-object p3, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->tracers:[Lio/grpc/ClientStreamTracer;

    .line 359
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/LoadBalancer$PickSubchannelArgs;[Lio/grpc/ClientStreamTracer;Lio/grpc/internal/DelayedClientTransport$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/DelayedClientTransport;
    .param p2, "x1"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;
    .param p3, "x2"    # [Lio/grpc/ClientStreamTracer;
    .param p4, "x3"    # Lio/grpc/internal/DelayedClientTransport$1;

    .line 351
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/DelayedClientTransport$PendingStream;-><init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/LoadBalancer$PickSubchannelArgs;[Lio/grpc/ClientStreamTracer;)V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/internal/DelayedClientTransport$PendingStream;)[Lio/grpc/ClientStreamTracer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientTransport$PendingStream;

    .line 351
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->tracers:[Lio/grpc/ClientStreamTracer;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/DelayedClientTransport$PendingStream;)Lio/grpc/LoadBalancer$PickSubchannelArgs;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientTransport$PendingStream;

    .line 351
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->args:Lio/grpc/LoadBalancer$PickSubchannelArgs;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/internal/DelayedClientTransport$PendingStream;Lio/grpc/internal/ClientTransport;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientTransport$PendingStream;
    .param p1, "x1"    # Lio/grpc/internal/ClientTransport;

    .line 351
    invoke-direct {p0, p1}, Lio/grpc/internal/DelayedClientTransport$PendingStream;->createRealStream(Lio/grpc/internal/ClientTransport;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private createRealStream(Lio/grpc/internal/ClientTransport;)Ljava/lang/Runnable;
    .locals 5
    .param p1, "transport"    # Lio/grpc/internal/ClientTransport;

    .line 364
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->context:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v0

    .line 366
    .local v0, "origContext":Lio/grpc/Context;
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->args:Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 367
    invoke-virtual {v1}, Lio/grpc/LoadBalancer$PickSubchannelArgs;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->args:Lio/grpc/LoadBalancer$PickSubchannelArgs;

    invoke-virtual {v2}, Lio/grpc/LoadBalancer$PickSubchannelArgs;->getHeaders()Lio/grpc/Metadata;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->args:Lio/grpc/LoadBalancer$PickSubchannelArgs;

    invoke-virtual {v3}, Lio/grpc/LoadBalancer$PickSubchannelArgs;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->tracers:[Lio/grpc/ClientStreamTracer;

    .line 366
    invoke-interface {p1, v1, v2, v3, v4}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    .local v1, "realStream":Lio/grpc/internal/ClientStream;
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->context:Lio/grpc/Context;

    invoke-virtual {v2, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 371
    nop

    .line 372
    invoke-virtual {p0, v1}, Lio/grpc/internal/DelayedClientTransport$PendingStream;->setStream(Lio/grpc/internal/ClientStream;)Ljava/lang/Runnable;

    move-result-object v2

    return-object v2

    .line 370
    .end local v1    # "realStream":Lio/grpc/internal/ClientStream;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->context:Lio/grpc/Context;

    invoke-virtual {v2, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v1
.end method


# virtual methods
.method public appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V
    .locals 1
    .param p1, "insight"    # Lio/grpc/internal/InsightBuilder;

    .line 402
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->args:Lio/grpc/LoadBalancer$PickSubchannelArgs;

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$PickSubchannelArgs;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/CallOptions;->isWaitForReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const-string v0, "wait_for_ready"

    invoke-virtual {p1, v0}, Lio/grpc/internal/InsightBuilder;->append(Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 405
    :cond_0
    invoke-super {p0, p1}, Lio/grpc/internal/DelayedStream;->appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V

    .line 406
    return-void
.end method

.method public cancel(Lio/grpc/Status;)V
    .locals 4
    .param p1, "reason"    # Lio/grpc/Status;

    .line 377
    invoke-super {p0, p1}, Lio/grpc/internal/DelayedStream;->cancel(Lio/grpc/Status;)V

    .line 378
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientTransport;->access$500(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 379
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v1}, Lio/grpc/internal/DelayedClientTransport;->access$600(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v1}, Lio/grpc/internal/DelayedClientTransport;->access$700(Lio/grpc/internal/DelayedClientTransport;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 381
    .local v1, "justRemovedAnElement":Z
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-virtual {v2}, Lio/grpc/internal/DelayedClientTransport;->hasPendingStreams()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 382
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v2}, Lio/grpc/internal/DelayedClientTransport;->access$900(Lio/grpc/internal/DelayedClientTransport;)Lio/grpc/SynchronizationContext;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v3}, Lio/grpc/internal/DelayedClientTransport;->access$800(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 383
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v2}, Lio/grpc/internal/DelayedClientTransport;->access$1000(Lio/grpc/internal/DelayedClientTransport;)Lio/grpc/Status;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v2}, Lio/grpc/internal/DelayedClientTransport;->access$900(Lio/grpc/internal/DelayedClientTransport;)Lio/grpc/SynchronizationContext;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v3}, Lio/grpc/internal/DelayedClientTransport;->access$600(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 385
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/grpc/internal/DelayedClientTransport;->access$602(Lio/grpc/internal/DelayedClientTransport;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 389
    .end local v1    # "justRemovedAnElement":Z
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientTransport;->access$900(Lio/grpc/internal/DelayedClientTransport;)Lio/grpc/SynchronizationContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->drain()V

    .line 391
    return-void

    .line 389
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onEarlyCancellation(Lio/grpc/Status;)V
    .locals 4
    .param p1, "reason"    # Lio/grpc/Status;

    .line 395
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->tracers:[Lio/grpc/ClientStreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 396
    .local v3, "tracer":Lio/grpc/ClientStreamTracer;
    invoke-virtual {v3, p1}, Lio/grpc/ClientStreamTracer;->streamClosed(Lio/grpc/Status;)V

    .line 395
    .end local v3    # "tracer":Lio/grpc/ClientStreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    :cond_0
    return-void
.end method
