.class Lio/grpc/internal/RetriableStream$HedgingRunnable$1;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream$HedgingRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

.field final synthetic val$newSubstream:Lio/grpc/internal/RetriableStream$Substream;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream$HedgingRunnable;Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/internal/RetriableStream$HedgingRunnable;

    .line 460
    .local p0, "this":Lio/grpc/internal/RetriableStream$HedgingRunnable$1;, "Lio/grpc/internal/RetriableStream$HedgingRunnable$1;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iput-object p2, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->val$newSubstream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 464
    .local p0, "this":Lio/grpc/internal/RetriableStream$HedgingRunnable$1;, "Lio/grpc/internal/RetriableStream$HedgingRunnable$1;"
    const/4 v0, 0x0

    .line 465
    .local v0, "cancelled":Z
    const/4 v1, 0x0

    .line 467
    .local v1, "future":Lio/grpc/internal/RetriableStream$FutureCanceller;
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v2, v2, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$500(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 471
    :try_start_0
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v3, v3, Lio/grpc/internal/RetriableStream$HedgingRunnable;->scheduledHedgingRef:Lio/grpc/internal/RetriableStream$FutureCanceller;

    invoke-virtual {v3}, Lio/grpc/internal/RetriableStream$FutureCanceller;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 472
    const/4 v0, 0x1

    goto :goto_0

    .line 474
    :cond_0
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v3, v3, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v4}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->val$newSubstream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-virtual {v4, v5}, Lio/grpc/internal/RetriableStream$State;->addActiveHedge(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v4

    invoke-static {v3, v4}, Lio/grpc/internal/RetriableStream;->access$302(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Lio/grpc/internal/RetriableStream$State;

    .line 475
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v3, v3, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v4}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v4

    invoke-static {v3, v4}, Lio/grpc/internal/RetriableStream;->access$600(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v3, v3, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    .line 476
    invoke-static {v3}, Lio/grpc/internal/RetriableStream;->access$700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v3, v3, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v3}, Lio/grpc/internal/RetriableStream;->access$700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/internal/RetriableStream$Throttle;->isAboveThreshold()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 477
    :cond_1
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v3, v3, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    new-instance v4, Lio/grpc/internal/RetriableStream$FutureCanceller;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v5, v5, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v5}, Lio/grpc/internal/RetriableStream;->access$500(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/grpc/internal/RetriableStream$FutureCanceller;-><init>(Ljava/lang/Object;)V

    move-object v1, v4

    invoke-static {v3, v4}, Lio/grpc/internal/RetriableStream;->access$802(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)Lio/grpc/internal/RetriableStream$FutureCanceller;

    goto :goto_0

    .line 479
    :cond_2
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v3, v3, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v4}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/internal/RetriableStream$State;->freezeHedging()Lio/grpc/internal/RetriableStream$State;

    move-result-object v4

    invoke-static {v3, v4}, Lio/grpc/internal/RetriableStream;->access$302(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Lio/grpc/internal/RetriableStream$State;

    .line 480
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v3, v3, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lio/grpc/internal/RetriableStream;->access$802(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 483
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    if-eqz v0, :cond_3

    .line 486
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->val$newSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v2, v2, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    sget-object v3, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v4, "Unneeded hedging"

    invoke-virtual {v3, v4}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 487
    return-void

    .line 489
    :cond_3
    if-eqz v1, :cond_4

    .line 490
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v2, v2, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    .line 491
    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$1000(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-direct {v3, v4, v1}, Lio/grpc/internal/RetriableStream$HedgingRunnable;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)V

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    .line 493
    invoke-static {v4}, Lio/grpc/internal/RetriableStream;->access$900(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/HedgingPolicy;

    move-result-object v4

    iget-wide v4, v4, Lio/grpc/internal/HedgingPolicy;->hedgingDelayNanos:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 491
    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 490
    invoke-virtual {v1, v2}, Lio/grpc/internal/RetriableStream$FutureCanceller;->setFuture(Ljava/util/concurrent/Future;)V

    .line 496
    :cond_4
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->this$1:Lio/grpc/internal/RetriableStream$HedgingRunnable;

    iget-object v2, v2, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;->val$newSubstream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-static {v2, v3}, Lio/grpc/internal/RetriableStream;->access$1100(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 497
    return-void

    .line 483
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
