.class Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
.super Ljava/lang/Object;
.source "InProcessTransport.java"

# interfaces
.implements Lio/grpc/internal/ServerStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/inprocess/InProcessTransport$InProcessStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InProcessServerStream"
.end annotation


# instance fields
.field private clientNotifyStatus:Lio/grpc/Status;

.field private clientNotifyTrailers:Lio/grpc/Metadata;

.field private clientReceiveQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/grpc/internal/StreamListener$MessageProducer;",
            ">;"
        }
    .end annotation
.end field

.field private clientRequested:I

.field private clientStreamListener:Lio/grpc/internal/ClientStreamListener;

.field private closed:Z

.field private outboundSeqNo:I

.field final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

.field private final syncContext:Lio/grpc/SynchronizationContext;

.field final synthetic this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;


# direct methods
.method constructor <init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;)V
    .locals 2
    .param p3, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 444
    .local p2, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance v0, Lio/grpc/SynchronizationContext;

    iget-object v1, p1, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    .line 428
    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport;->access$1100(Lio/grpc/inprocess/InProcessTransport;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/SynchronizationContext;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->syncContext:Lio/grpc/SynchronizationContext;

    .line 431
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientReceiveQueue:Ljava/util/ArrayDeque;

    .line 445
    iget-object p1, p1, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    .line 446
    invoke-static {p1}, Lio/grpc/inprocess/InProcessTransport;->access$1200(Lio/grpc/inprocess/InProcessTransport;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {p1, v0, p3}, Lio/grpc/internal/StatsTraceContext;->newServerContext(Ljava/util/List;Ljava/lang/String;Lio/grpc/Metadata;)Lio/grpc/internal/StatsTraceContext;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    .line 447
    return-void
.end method

.method static synthetic access$2500(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;I)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    .param p1, "x1"    # I

    .line 423
    invoke-direct {p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    .param p1, "x1"    # Lio/grpc/Status;

    .line 423
    invoke-direct {p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientCancelled(Lio/grpc/Status;)V

    return-void
.end method

.method static synthetic access$2700(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/internal/ClientStreamListener;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    .param p1, "x1"    # Lio/grpc/internal/ClientStreamListener;

    .line 423
    invoke-direct {p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->setListener(Lio/grpc/internal/ClientStreamListener;)V

    return-void
.end method

.method private clientCancelled(Lio/grpc/Status;)V
    .locals 0
    .param p1, "status"    # Lio/grpc/Status;

    .line 511
    invoke-direct {p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->internalCancel(Lio/grpc/Status;)Z

    .line 512
    return-void
.end method

.method private clientRequested(I)Z
    .locals 7
    .param p1, "numMessages"    # I

    .line 480
    monitor-enter p0

    .line 481
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 482
    monitor-exit p0

    return v1

    .line 485
    :cond_0
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 486
    .local v3, "previouslyReady":Z
    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I

    .line 487
    :goto_1
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 488
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I

    sub-int/2addr v0, v2

    iput v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I

    .line 489
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/StreamListener$MessageProducer;

    .line 490
    .local v0, "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    iget-object v4, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v5, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda1;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/internal/StreamListener$MessageProducer;)V

    invoke-virtual {v4, v5}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 491
    .end local v0    # "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    goto :goto_1

    .line 493
    :cond_2
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientNotifyStatus:Lio/grpc/Status;

    if-eqz v0, :cond_3

    .line 494
    iput-boolean v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z

    .line 495
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget-object v4, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientNotifyTrailers:Lio/grpc/Metadata;

    invoke-virtual {v0, v4}, Lio/grpc/internal/StatsTraceContext;->clientInboundTrailers(Lio/grpc/Metadata;)V

    .line 496
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget-object v4, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientNotifyStatus:Lio/grpc/Status;

    invoke-virtual {v0, v4}, Lio/grpc/internal/StatsTraceContext;->streamClosed(Lio/grpc/Status;)V

    .line 497
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientNotifyStatus:Lio/grpc/Status;

    .line 498
    .local v0, "notifyStatus":Lio/grpc/Status;
    iget-object v4, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientNotifyTrailers:Lio/grpc/Metadata;

    .line 499
    .local v4, "notifyTrailers":Lio/grpc/Metadata;
    iget-object v5, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v6, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v0, v4}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda2;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/Status;Lio/grpc/Metadata;)V

    invoke-virtual {v5, v6}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 503
    .end local v0    # "notifyStatus":Lio/grpc/Status;
    .end local v4    # "notifyTrailers":Lio/grpc/Metadata;
    :cond_3
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I

    if-lez v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    .line 504
    .local v0, "nowReady":Z
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    iget-object v4, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v4}, Lio/grpc/SynchronizationContext;->drain()V

    .line 507
    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    return v1

    .line 504
    .end local v0    # "nowReady":Z
    .end local v3    # "previouslyReady":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private internalCancel(Lio/grpc/Status;)Z
    .locals 7
    .param p1, "clientStatus"    # Lio/grpc/Status;

    .line 642
    monitor-enter p0

    .line 643
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z

    if-eqz v0, :cond_0

    .line 644
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 646
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z

    .line 648
    :goto_0
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/StreamListener$MessageProducer;

    move-object v2, v1

    .local v2, "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    if-eqz v1, :cond_2

    .line 650
    :goto_1
    invoke-interface {v2}, Lio/grpc/internal/StreamListener$MessageProducer;->next()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v1

    .local v3, "message":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 652
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    :goto_2
    goto :goto_1

    .line 653
    :catchall_0
    move-exception v1

    .line 654
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lio/grpc/inprocess/InProcessTransport;->access$2200()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Exception closing stream"

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "t":Ljava/lang/Throwable;
    goto :goto_2

    .line 657
    .end local v3    # "message":Ljava/io/InputStream;
    :cond_1
    goto :goto_0

    .line 658
    :cond_2
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v1, p1}, Lio/grpc/internal/StatsTraceContext;->streamClosed(Lio/grpc/Status;)V

    .line 659
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v3, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda4;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/Status;)V

    invoke-virtual {v1, v3}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 662
    .end local v2    # "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 663
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v1}, Lio/grpc/SynchronizationContext;->drain()V

    .line 664
    return v0

    .line 662
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private notifyClientClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 612
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$1900(Lio/grpc/inprocess/InProcessTransport;)Z

    move-result v0

    invoke-static {p1, v0}, Lio/grpc/inprocess/InProcessTransport;->access$2000(Lio/grpc/Status;Z)Lio/grpc/Status;

    move-result-object v0

    .line 613
    .local v0, "clientStatus":Lio/grpc/Status;
    monitor-enter p0

    .line 614
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z

    if-eqz v1, :cond_0

    .line 615
    monitor-exit p0

    return-void

    .line 617
    :cond_0
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z

    .line 619
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v1, p2}, Lio/grpc/internal/StatsTraceContext;->clientInboundTrailers(Lio/grpc/Metadata;)V

    .line 620
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v1, v0}, Lio/grpc/internal/StatsTraceContext;->streamClosed(Lio/grpc/Status;)V

    .line 621
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v2, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0, p2}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda6;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/Status;Lio/grpc/Metadata;)V

    invoke-virtual {v1, v2}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 624
    :cond_1
    iput-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientNotifyStatus:Lio/grpc/Status;

    .line 625
    iput-object p2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientNotifyTrailers:Lio/grpc/Metadata;

    .line 627
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v1}, Lio/grpc/SynchronizationContext;->drain()V

    .line 629
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2100(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)V

    .line 630
    return-void

    .line 627
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized setListener(Lio/grpc/internal/ClientStreamListener;)V
    .locals 0
    .param p1, "listener"    # Lio/grpc/internal/ClientStreamListener;

    monitor-enter p0

    .line 450
    :try_start_0
    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    monitor-exit p0

    return-void

    .line 449
    .end local p0    # "this":Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    .end local p1    # "listener":Lio/grpc/internal/ClientStreamListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public cancel(Lio/grpc/Status;)V
    .locals 2
    .param p1, "status"    # Lio/grpc/Status;

    .line 634
    sget-object v0, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v1, "server cancelled stream"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->internalCancel(Lio/grpc/Status;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    invoke-static {v0, p1, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->access$1800(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/Status;Lio/grpc/Status;)V

    .line 638
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2100(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)V

    .line 639
    return-void
.end method

.method public close(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 6
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 585
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    sget-object v1, Lio/grpc/Status;->OK:Lio/grpc/Status;

    invoke-static {v0, v1, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->access$1800(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/Status;Lio/grpc/Status;)V

    .line 587
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$1600(Lio/grpc/inprocess/InProcessTransport;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 588
    invoke-virtual {p1}, Lio/grpc/Status;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lio/grpc/Status;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 590
    .local v0, "statusSize":I
    :goto_0
    invoke-static {p2}, Lio/grpc/inprocess/InProcessTransport;->access$1700(Lio/grpc/Metadata;)I

    move-result v1

    add-int/2addr v1, v0

    .line 591
    .local v1, "metadataSize":I
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v2, v2, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v2}, Lio/grpc/inprocess/InProcessTransport;->access$1600(Lio/grpc/inprocess/InProcessTransport;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 597
    sget-object v2, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v4, v4, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    .line 601
    invoke-static {v4}, Lio/grpc/inprocess/InProcessTransport;->access$1600(Lio/grpc/inprocess/InProcessTransport;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 602
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 598
    const-string v5, "Response header metadata larger than %d: %d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 597
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 603
    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    move-object p2, v2

    .line 607
    .end local v0    # "statusSize":I
    .end local v1    # "metadataSize":I
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->notifyClientClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 608
    return-void
.end method

.method public flush()V
    .locals 0

    .line 538
    return-void
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 682
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$400(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 687
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2300(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isReady()Z
    .locals 2

    monitor-enter p0

    .line 542
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 543
    monitor-exit p0

    return v1

    .line 545
    :cond_0
    :try_start_1
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    .line 541
    .end local p0    # "this":Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$clientRequested$1$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessServerStream(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 1
    .param p1, "producer"    # Lio/grpc/internal/StreamListener$MessageProducer;

    .line 490
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStreamListener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    return-void
.end method

.method synthetic lambda$clientRequested$2$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessServerStream(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 2
    .param p1, "notifyStatus"    # Lio/grpc/Status;
    .param p2, "notifyTrailers"    # Lio/grpc/Metadata;

    .line 500
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;

    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-interface {v0, p1, v1, p2}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    return-void
.end method

.method synthetic lambda$internalCancel$6$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessServerStream(Lio/grpc/Status;)V
    .locals 3
    .param p1, "clientStatus"    # Lio/grpc/Status;

    .line 661
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;

    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {v0, p1, v1, v2}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    return-void
.end method

.method synthetic lambda$notifyClientClose$5$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessServerStream(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 2
    .param p1, "clientStatus"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 622
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;

    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-interface {v0, p1, v1, p2}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    return-void
.end method

.method synthetic lambda$request$0$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessServerStream()V
    .locals 1

    .line 464
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;

    invoke-interface {v0}, Lio/grpc/internal/ClientStreamListener;->onReady()V

    return-void
.end method

.method synthetic lambda$writeHeaders$4$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessServerStream(Lio/grpc/Metadata;)V
    .locals 1
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 574
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStreamListener;->headersRead(Lio/grpc/Metadata;)V

    return-void
.end method

.method synthetic lambda$writeMessage$3$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessServerStream(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 1
    .param p1, "producer"    # Lio/grpc/internal/StreamListener$MessageProducer;

    .line 528
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientStreamListener:Lio/grpc/internal/ClientStreamListener;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStreamListener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    return-void
.end method

.method public optimizeForDirectExecutor()V
    .locals 0

    .line 673
    return-void
.end method

.method public request(I)V
    .locals 3
    .param p1, "numMessages"    # I

    .line 460
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->access$1400(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;I)Z

    move-result v0

    .line 461
    .local v0, "onReady":Z
    if-eqz v0, :cond_1

    .line 462
    monitor-enter p0

    .line 463
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z

    if-nez v1, :cond_0

    .line 464
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v2, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda3;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;)V

    invoke-virtual {v1, v2}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 466
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 468
    :cond_1
    :goto_0
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v1}, Lio/grpc/SynchronizationContext;->drain()V

    .line 469
    return-void
.end method

.method public setCompressor(Lio/grpc/Compressor;)V
    .locals 0
    .param p1, "compressor"    # Lio/grpc/Compressor;

    .line 676
    return-void
.end method

.method public setDecompressor(Lio/grpc/Decompressor;)V
    .locals 0
    .param p1, "decompressor"    # Lio/grpc/Decompressor;

    .line 679
    return-void
.end method

.method public setListener(Lio/grpc/internal/ServerStreamListener;)V
    .locals 1
    .param p1, "serverStreamListener"    # Lio/grpc/internal/ServerStreamListener;

    .line 455
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->access$1300(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/internal/ServerStreamListener;)V

    .line 456
    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 670
    return-void
.end method

.method public statsTraceContext()Lio/grpc/internal/StatsTraceContext;
    .locals 1

    .line 692
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    return-object v0
.end method

.method public streamId()I
    .locals 1

    .line 697
    const/4 v0, -0x1

    return v0
.end method

.method public writeHeaders(Lio/grpc/Metadata;)V
    .locals 7
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 550
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$1600(Lio/grpc/inprocess/InProcessTransport;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 551
    invoke-static {p1}, Lio/grpc/inprocess/InProcessTransport;->access$1700(Lio/grpc/Metadata;)I

    move-result v0

    .line 552
    .local v0, "metadataSize":I
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v1, v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport;->access$1600(Lio/grpc/inprocess/InProcessTransport;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 553
    sget-object v1, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v2, "Client cancelled the RPC"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 554
    .local v1, "serverStatus":Lio/grpc/Status;
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v2}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v2

    invoke-static {v2, v1, v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->access$1800(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/Status;Lio/grpc/Status;)V

    .line 557
    sget-object v2, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Response header metadata larger than %d: %d"

    iget-object v5, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v5, v5, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    .line 561
    invoke-static {v5}, Lio/grpc/inprocess/InProcessTransport;->access$1600(Lio/grpc/inprocess/InProcessTransport;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 562
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 558
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 557
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 563
    .local v2, "failedStatus":Lio/grpc/Status;
    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    invoke-direct {p0, v2, v3}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->notifyClientClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 564
    return-void

    .line 568
    .end local v0    # "metadataSize":I
    .end local v1    # "serverStatus":Lio/grpc/Status;
    .end local v2    # "failedStatus":Lio/grpc/Status;
    :cond_0
    monitor-enter p0

    .line 569
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z

    if-eqz v0, :cond_1

    .line 570
    monitor-exit p0

    return-void

    .line 573
    :cond_1
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v0}, Lio/grpc/internal/StatsTraceContext;->clientInboundHeaders()V

    .line 574
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda5;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/Metadata;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 575
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->drain()V

    .line 577
    return-void

    .line 575
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public writeMessage(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "message"    # Ljava/io/InputStream;

    .line 516
    monitor-enter p0

    .line 517
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->closed:Z

    if-eqz v0, :cond_0

    .line 518
    monitor-exit p0

    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->outboundSeqNo:I

    invoke-virtual {v0, v1}, Lio/grpc/internal/StatsTraceContext;->outboundMessage(I)V

    .line 521
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v3, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->outboundSeqNo:I

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    invoke-virtual/range {v2 .. v7}, Lio/grpc/internal/StatsTraceContext;->outboundMessageSent(IJJ)V

    .line 522
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->outboundSeqNo:I

    invoke-virtual {v0, v1}, Lio/grpc/internal/StatsTraceContext;->inboundMessage(I)V

    .line 523
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$700(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;

    move-result-object v0

    iget-object v1, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->outboundSeqNo:I

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Lio/grpc/internal/StatsTraceContext;->inboundMessageRead(IJJ)V

    .line 524
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->outboundSeqNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->outboundSeqNo:I

    .line 525
    new-instance v0, Lio/grpc/inprocess/InProcessTransport$SingleMessageProducer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/inprocess/InProcessTransport$SingleMessageProducer;-><init>(Ljava/io/InputStream;Lio/grpc/inprocess/InProcessTransport$1;)V

    .line 526
    .local v0, "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    iget v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I

    if-lez v1, :cond_1

    .line 527
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientRequested:I

    .line 528
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v2, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream$$ExternalSyntheticLambda0;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/internal/StreamListener$MessageProducer;)V

    invoke-virtual {v1, v2}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 530
    :cond_1
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->clientReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 532
    .end local v0    # "producer":Lio/grpc/internal/StreamListener$MessageProducer;
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->drain()V

    .line 535
    return-void

    .line 532
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
