.class final Lio/grpc/internal/RetriableStream$Sublistener;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Lio/grpc/internal/ClientStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Sublistener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final substream:Lio/grpc/internal/RetriableStream$Substream;

.field final synthetic this$0:Lio/grpc/internal/RetriableStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 834
    const-class v0, Lio/grpc/internal/RetriableStream;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 0
    .param p2, "substream"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 837
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener;, "Lio/grpc/internal/RetriableStream<TReqT;>.Sublistener;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput-object p2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    .line 839
    return-void
.end method

.method private getPushbackMills(Lio/grpc/Metadata;)Ljava/lang/Integer;
    .locals 4
    .param p1, "trailer"    # Lio/grpc/Metadata;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1057
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener;, "Lio/grpc/internal/RetriableStream<TReqT;>.Sublistener;"
    sget-object v0, Lio/grpc/internal/RetriableStream;->GRPC_RETRY_PUSHBACK_MS:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v0}, Lio/grpc/Metadata;->get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1058
    .local v0, "pushbackStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1059
    .local v1, "pushbackMillis":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1061
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1064
    goto :goto_0

    .line 1062
    :catch_0
    move-exception v2

    .line 1063
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1066
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method private makeHedgingDecision(Lio/grpc/Status;Lio/grpc/Metadata;)Lio/grpc/internal/RetriableStream$HedgingPlan;
    .locals 5
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailer"    # Lio/grpc/Metadata;

    .line 1044
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener;, "Lio/grpc/internal/RetriableStream<TReqT;>.Sublistener;"
    invoke-direct {p0, p2}, Lio/grpc/internal/RetriableStream$Sublistener;->getPushbackMills(Lio/grpc/Metadata;)Ljava/lang/Integer;

    move-result-object v0

    .line 1045
    .local v0, "pushbackMillis":Ljava/lang/Integer;
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$900(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/HedgingPolicy;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/internal/HedgingPolicy;->nonFatalStatusCodes:Ljava/util/Set;

    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 1046
    .local v1, "isFatal":Z
    const/4 v3, 0x0

    .line 1047
    .local v3, "isThrottled":Z
    iget-object v4, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v4}, Lio/grpc/internal/RetriableStream;->access$700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1048
    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_1

    .line 1049
    :cond_0
    iget-object v4, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v4}, Lio/grpc/internal/RetriableStream;->access$700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/internal/RetriableStream$Throttle;->onQualifiedFailureThenCheckIsAboveThreshold()Z

    move-result v4

    xor-int/2addr v4, v2

    move v3, v4

    .line 1052
    :cond_1
    new-instance v4, Lio/grpc/internal/RetriableStream$HedgingPlan;

    if-nez v1, :cond_2

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v4, v2, v0}, Lio/grpc/internal/RetriableStream$HedgingPlan;-><init>(ZLjava/lang/Integer;)V

    return-object v4
.end method

.method private makeRetryDecision(Lio/grpc/Status;Lio/grpc/Metadata;)Lio/grpc/internal/RetriableStream$RetryPlan;
    .locals 11
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailer"    # Lio/grpc/Metadata;

    .line 1010
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener;, "Lio/grpc/internal/RetriableStream<TReqT;>.Sublistener;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$2300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1011
    new-instance v0, Lio/grpc/internal/RetriableStream$RetryPlan;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/internal/RetriableStream$RetryPlan;-><init>(ZJ)V

    return-object v0

    .line 1013
    :cond_0
    const/4 v0, 0x0

    .line 1014
    .local v0, "shouldRetry":Z
    const-wide/16 v1, 0x0

    .line 1015
    .local v1, "backoffNanos":J
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v3}, Lio/grpc/internal/RetriableStream;->access$2300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v3

    iget-object v3, v3, Lio/grpc/internal/RetryPolicy;->retryableStatusCodes:Ljava/util/Set;

    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 1016
    .local v3, "isRetryableStatusCode":Z
    invoke-direct {p0, p2}, Lio/grpc/internal/RetriableStream$Sublistener;->getPushbackMills(Lio/grpc/Metadata;)Ljava/lang/Integer;

    move-result-object v4

    .line 1017
    .local v4, "pushbackMillis":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 1018
    .local v5, "isThrottled":Z
    iget-object v6, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v6}, Lio/grpc/internal/RetriableStream;->access$700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1019
    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_2

    .line 1020
    :cond_1
    iget-object v6, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v6}, Lio/grpc/internal/RetriableStream;->access$700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v6

    invoke-virtual {v6}, Lio/grpc/internal/RetriableStream$Throttle;->onQualifiedFailureThenCheckIsAboveThreshold()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 1024
    :cond_2
    iget-object v6, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v6}, Lio/grpc/internal/RetriableStream;->access$2300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v6

    iget v6, v6, Lio/grpc/internal/RetryPolicy;->maxAttempts:I

    iget-object v7, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iget v7, v7, Lio/grpc/internal/RetriableStream$Substream;->previousAttemptCount:I

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_4

    if-nez v5, :cond_4

    .line 1025
    if-nez v4, :cond_3

    .line 1026
    if-eqz v3, :cond_4

    .line 1027
    const/4 v0, 0x1

    .line 1028
    iget-object v6, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v6}, Lio/grpc/internal/RetriableStream;->access$2700(Lio/grpc/internal/RetriableStream;)J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {}, Lio/grpc/internal/RetriableStream;->access$2800()Ljava/util/Random;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-long v1, v6

    .line 1029
    iget-object v6, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    .line 1030
    invoke-static {v6}, Lio/grpc/internal/RetriableStream;->access$2700(Lio/grpc/internal/RetriableStream;)J

    move-result-wide v7

    long-to-double v7, v7

    iget-object v9, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v9}, Lio/grpc/internal/RetriableStream;->access$2300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v9

    iget-wide v9, v9, Lio/grpc/internal/RetryPolicy;->backoffMultiplier:D

    mul-double/2addr v7, v9

    double-to-long v7, v7

    iget-object v9, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    .line 1031
    invoke-static {v9}, Lio/grpc/internal/RetriableStream;->access$2300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v9

    iget-wide v9, v9, Lio/grpc/internal/RetryPolicy;->maxBackoffNanos:J

    .line 1029
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lio/grpc/internal/RetriableStream;->access$2702(Lio/grpc/internal/RetriableStream;J)J

    goto :goto_0

    .line 1033
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_4

    .line 1034
    const/4 v0, 0x1

    .line 1035
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 1036
    iget-object v6, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v6}, Lio/grpc/internal/RetriableStream;->access$2300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v7

    iget-wide v7, v7, Lio/grpc/internal/RetryPolicy;->initialBackoffNanos:J

    invoke-static {v6, v7, v8}, Lio/grpc/internal/RetriableStream;->access$2702(Lio/grpc/internal/RetriableStream;J)J

    .line 1040
    :cond_4
    :goto_0
    new-instance v6, Lio/grpc/internal/RetriableStream$RetryPlan;

    invoke-direct {v6, v0, v1, v2}, Lio/grpc/internal/RetriableStream$RetryPlan;-><init>(ZJ)V

    return-object v6
.end method


# virtual methods
.method public closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    .locals 8
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "rpcProgress"    # Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .param p3, "trailers"    # Lio/grpc/Metadata;

    .line 861
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener;, "Lio/grpc/internal/RetriableStream<TReqT;>.Sublistener;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$500(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 862
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-virtual {v2, v3}, Lio/grpc/internal/RetriableStream$State;->substreamClosed(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v2

    invoke-static {v1, v2}, Lio/grpc/internal/RetriableStream;->access$302(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Lio/grpc/internal/RetriableStream$State;

    .line 863
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$1600(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/InsightBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/internal/InsightBuilder;->append(Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 864
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 866
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$1700(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 867
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$1800(Lio/grpc/internal/RetriableStream;)Lio/grpc/Status;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$1800(Lio/grpc/internal/RetriableStream;)Lio/grpc/Status;

    move-result-object v1

    sget-object v2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lio/grpc/internal/RetriableStream;->access$1900(Lio/grpc/internal/RetriableStream;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    .line 869
    return-void

    .line 867
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 874
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v0, v0, Lio/grpc/internal/RetriableStream$Substream;->bufferLimitExceeded:Z

    if-eqz v0, :cond_3

    .line 875
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-static {v0, v1}, Lio/grpc/internal/RetriableStream;->access$1400(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 876
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    if-ne v0, v1, :cond_2

    .line 877
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0, p1, p2, p3}, Lio/grpc/internal/RetriableStream;->access$1900(Lio/grpc/internal/RetriableStream;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    .line 879
    :cond_2
    return-void

    .line 881
    :cond_3
    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->MISCARRIED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    .line 882
    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$2000(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_5

    .line 883
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-static {v0, v1}, Lio/grpc/internal/RetriableStream;->access$1400(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 884
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    if-ne v0, v1, :cond_4

    .line 885
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v1, "Too many transparent retries. Might be a bug in gRPC"

    .line 886
    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 887
    invoke-virtual {p1}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 888
    .local v0, "tooManyTransparentRetries":Lio/grpc/Status;
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1, v0, p2, p3}, Lio/grpc/internal/RetriableStream;->access$1900(Lio/grpc/internal/RetriableStream;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    .line 890
    .end local v0    # "tooManyTransparentRetries":Lio/grpc/Status;
    :cond_4
    return-void

    .line 893
    :cond_5
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-nez v0, :cond_14

    .line 894
    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->MISCARRIED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const/4 v1, 0x1

    if-eq p2, v0, :cond_d

    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const/4 v2, 0x0

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    .line 896
    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$2100(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_0

    .line 933
    :cond_6
    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->DROPPED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    if-ne p2, v0, :cond_7

    .line 936
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$2200(Lio/grpc/internal/RetriableStream;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 937
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$2400(Lio/grpc/internal/RetriableStream;)V

    goto/16 :goto_2

    .line 940
    :cond_7
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$2100(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 942
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$2200(Lio/grpc/internal/RetriableStream;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 943
    invoke-direct {p0, p1, p3}, Lio/grpc/internal/RetriableStream$Sublistener;->makeHedgingDecision(Lio/grpc/Status;Lio/grpc/Metadata;)Lio/grpc/internal/RetriableStream$HedgingPlan;

    move-result-object v0

    .line 944
    .local v0, "hedgingPlan":Lio/grpc/internal/RetriableStream$HedgingPlan;
    iget-boolean v1, v0, Lio/grpc/internal/RetriableStream$HedgingPlan;->isHedgeable:Z

    if-eqz v1, :cond_8

    .line 945
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v2, v0, Lio/grpc/internal/RetriableStream$HedgingPlan;->hedgingPushbackMillis:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lio/grpc/internal/RetriableStream;->access$2500(Lio/grpc/internal/RetriableStream;Ljava/lang/Integer;)V

    .line 947
    :cond_8
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$500(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 948
    :try_start_1
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v2

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-virtual {v2, v4}, Lio/grpc/internal/RetriableStream$State;->removeActiveHedge(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v2

    invoke-static {v1, v2}, Lio/grpc/internal/RetriableStream;->access$302(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Lio/grpc/internal/RetriableStream$State;

    .line 953
    iget-boolean v1, v0, Lio/grpc/internal/RetriableStream$HedgingPlan;->isHedgeable:Z

    if-eqz v1, :cond_a

    .line 954
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v2

    invoke-static {v1, v2}, Lio/grpc/internal/RetriableStream;->access$600(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 955
    :cond_9
    monitor-exit v3

    return-void

    .line 959
    :cond_a
    monitor-exit v3

    .line 960
    .end local v0    # "hedgingPlan":Lio/grpc/internal/RetriableStream$HedgingPlan;
    goto/16 :goto_2

    .line 959
    .restart local v0    # "hedgingPlan":Lio/grpc/internal/RetriableStream$HedgingPlan;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 961
    .end local v0    # "hedgingPlan":Lio/grpc/internal/RetriableStream$HedgingPlan;
    :cond_b
    invoke-direct {p0, p1, p3}, Lio/grpc/internal/RetriableStream$Sublistener;->makeRetryDecision(Lio/grpc/Status;Lio/grpc/Metadata;)Lio/grpc/internal/RetriableStream$RetryPlan;

    move-result-object v0

    .line 962
    .local v0, "retryPlan":Lio/grpc/internal/RetriableStream$RetryPlan;
    iget-boolean v3, v0, Lio/grpc/internal/RetriableStream$RetryPlan;->shouldRetry:Z

    if-eqz v3, :cond_14

    .line 964
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iget v4, v4, Lio/grpc/internal/RetriableStream$Substream;->previousAttemptCount:I

    add-int/2addr v4, v1

    invoke-static {v3, v4, v2}, Lio/grpc/internal/RetriableStream;->access$400(Lio/grpc/internal/RetriableStream;IZ)Lio/grpc/internal/RetriableStream$Substream;

    move-result-object v1

    .line 965
    .local v1, "newSubstream":Lio/grpc/internal/RetriableStream$Substream;
    if-nez v1, :cond_c

    .line 966
    return-void

    .line 971
    :cond_c
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$500(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 972
    :try_start_2
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    new-instance v4, Lio/grpc/internal/RetriableStream$FutureCanceller;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v5}, Lio/grpc/internal/RetriableStream;->access$500(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/grpc/internal/RetriableStream$FutureCanceller;-><init>(Ljava/lang/Object;)V

    move-object v5, v4

    .local v5, "scheduledRetryCopy":Lio/grpc/internal/RetriableStream$FutureCanceller;
    invoke-static {v3, v4}, Lio/grpc/internal/RetriableStream;->access$2602(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 973
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 987
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    .line 988
    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$1000(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;

    invoke-direct {v3, p0, v1}, Lio/grpc/internal/RetriableStream$Sublistener$1RetryBackoffRunnable;-><init>(Lio/grpc/internal/RetriableStream$Sublistener;Lio/grpc/internal/RetriableStream$Substream;)V

    iget-wide v6, v0, Lio/grpc/internal/RetriableStream$RetryPlan;->backoffNanos:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v6, v7, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 987
    invoke-virtual {v5, v2}, Lio/grpc/internal/RetriableStream$FutureCanceller;->setFuture(Ljava/util/concurrent/Future;)V

    .line 992
    return-void

    .line 973
    .end local v5    # "scheduledRetryCopy":Lio/grpc/internal/RetriableStream$FutureCanceller;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 898
    .end local v0    # "retryPlan":Lio/grpc/internal/RetriableStream$RetryPlan;
    .end local v1    # "newSubstream":Lio/grpc/internal/RetriableStream$Substream;
    :cond_d
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iget v2, v2, Lio/grpc/internal/RetriableStream$Substream;->previousAttemptCount:I

    invoke-static {v0, v2, v1}, Lio/grpc/internal/RetriableStream;->access$400(Lio/grpc/internal/RetriableStream;IZ)Lio/grpc/internal/RetriableStream$Substream;

    move-result-object v0

    .line 899
    .local v0, "newSubstream":Lio/grpc/internal/RetriableStream$Substream;
    if-nez v0, :cond_e

    .line 900
    return-void

    .line 902
    :cond_e
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$2200(Lio/grpc/internal/RetriableStream;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 903
    const/4 v2, 0x0

    .line 904
    .local v2, "commit":Z
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v3}, Lio/grpc/internal/RetriableStream;->access$500(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 909
    :try_start_4
    iget-object v4, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v4}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v5

    iget-object v6, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-virtual {v5, v6, v0}, Lio/grpc/internal/RetriableStream$State;->replaceActiveHedge(Lio/grpc/internal/RetriableStream$Substream;Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v5

    invoke-static {v4, v5}, Lio/grpc/internal/RetriableStream;->access$302(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Lio/grpc/internal/RetriableStream$State;

    .line 912
    iget-object v4, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v4}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v5

    invoke-static {v4, v5}, Lio/grpc/internal/RetriableStream;->access$600(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    .line 913
    invoke-static {v4}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v4

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v4, v1, :cond_f

    .line 914
    const/4 v1, 0x1

    move v2, v1

    .line 916
    :cond_f
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 917
    if-eqz v2, :cond_10

    .line 918
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1, v0}, Lio/grpc/internal/RetriableStream;->access$1400(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 920
    .end local v2    # "commit":Z
    :cond_10
    goto :goto_1

    .line 916
    .restart local v2    # "commit":Z
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 921
    .end local v2    # "commit":Z
    :cond_11
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$2300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$2300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v2

    iget v2, v2, Lio/grpc/internal/RetryPolicy;->maxAttempts:I

    if-ne v2, v1, :cond_13

    .line 923
    :cond_12
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1, v0}, Lio/grpc/internal/RetriableStream;->access$1400(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 926
    :cond_13
    :goto_1
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$1200(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lio/grpc/internal/RetriableStream$Sublistener$2;

    invoke-direct {v2, p0, v0}, Lio/grpc/internal/RetriableStream$Sublistener$2;-><init>(Lio/grpc/internal/RetriableStream$Sublistener;Lio/grpc/internal/RetriableStream$Substream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 932
    return-void

    .line 998
    .end local v0    # "newSubstream":Lio/grpc/internal/RetriableStream$Substream;
    :cond_14
    :goto_2
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-static {v0, v1}, Lio/grpc/internal/RetriableStream;->access$1400(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 999
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    if-ne v0, v1, :cond_15

    .line 1000
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0, p1, p2, p3}, Lio/grpc/internal/RetriableStream;->access$1900(Lio/grpc/internal/RetriableStream;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    .line 1002
    :cond_15
    return-void

    .line 864
    :catchall_3
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method public headersRead(Lio/grpc/Metadata;)V
    .locals 2
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 843
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener;, "Lio/grpc/internal/RetriableStream<TReqT;>.Sublistener;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-static {v0, v1}, Lio/grpc/internal/RetriableStream;->access$1400(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 844
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    if-ne v0, v1, :cond_1

    .line 845
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/RetriableStream$Throttle;->onSuccess()V

    .line 848
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$1500(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/RetriableStream$Sublistener$1;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/RetriableStream$Sublistener$1;-><init>(Lio/grpc/internal/RetriableStream$Sublistener;Lio/grpc/Metadata;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 856
    :cond_1
    return-void
.end method

.method public messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 3
    .param p1, "producer"    # Lio/grpc/internal/StreamListener$MessageProducer;

    .line 1071
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener;, "Lio/grpc/internal/RetriableStream<TReqT;>.Sublistener;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v0

    .line 1072
    .local v0, "savedState":Lio/grpc/internal/RetriableStream$State;
    iget-object v1, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Headers should be received prior to messages."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1074
    iget-object v1, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    if-eq v1, v2, :cond_1

    .line 1075
    return-void

    .line 1077
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$1500(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lio/grpc/internal/RetriableStream$Sublistener$3;

    invoke-direct {v2, p0, p1}, Lio/grpc/internal/RetriableStream$Sublistener$3;-><init>(Lio/grpc/internal/RetriableStream$Sublistener;Lio/grpc/internal/StreamListener$MessageProducer;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1084
    return-void
.end method

.method public onReady()V
    .locals 2

    .line 1089
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener;, "Lio/grpc/internal/RetriableStream<TReqT;>.Sublistener;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-virtual {v0}, Lio/grpc/internal/RetriableStream;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1090
    return-void

    .line 1092
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$1500(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/RetriableStream$Sublistener$4;

    invoke-direct {v1, p0}, Lio/grpc/internal/RetriableStream$Sublistener$4;-><init>(Lio/grpc/internal/RetriableStream$Sublistener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1101
    return-void
.end method
