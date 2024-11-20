.class abstract Lio/grpc/internal/RetriableStream;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Lio/grpc/internal/ClientStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/RetriableStream$FutureCanceller;,
        Lio/grpc/internal/RetriableStream$HedgingPlan;,
        Lio/grpc/internal/RetriableStream$RetryPlan;,
        Lio/grpc/internal/RetriableStream$Throttle;,
        Lio/grpc/internal/RetriableStream$ChannelBufferMeter;,
        Lio/grpc/internal/RetriableStream$BufferSizeTracer;,
        Lio/grpc/internal/RetriableStream$Substream;,
        Lio/grpc/internal/RetriableStream$State;,
        Lio/grpc/internal/RetriableStream$Sublistener;,
        Lio/grpc/internal/RetriableStream$BufferEntry;,
        Lio/grpc/internal/RetriableStream$HedgingRunnable;,
        Lio/grpc/internal/RetriableStream$StartEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/internal/ClientStream;"
    }
.end annotation


# static fields
.field private static final CANCELLED_BECAUSE_COMMITTED:Lio/grpc/Status;

.field static final GRPC_PREVIOUS_RPC_ATTEMPTS:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final GRPC_RETRY_PUSHBACK_MS:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static random:Ljava/util/Random;


# instance fields
.field private final callExecutor:Ljava/util/concurrent/Executor;

.field private cancellationStatus:Lio/grpc/Status;

.field private final channelBufferLimit:J

.field private final channelBufferUsed:Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

.field private final closedSubstreamsInsight:Lio/grpc/internal/InsightBuilder;

.field private final headers:Lio/grpc/Metadata;

.field private final hedgingPolicy:Lio/grpc/internal/HedgingPolicy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final inFlightSubStreams:Ljava/util/concurrent/atomic/AtomicInteger;

.field private isClosed:Z

.field private final isHedging:Z

.field private final listenerSerializeExecutor:Ljava/util/concurrent/Executor;

.field private final localOnlyTransparentRetries:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final lock:Ljava/lang/Object;

.field private masterListener:Lio/grpc/internal/ClientStreamListener;

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TReqT;*>;"
        }
    .end annotation
.end field

.field private nextBackoffIntervalNanos:J

.field private final noMoreTransparentRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final perRpcBufferLimit:J

.field private perRpcBufferUsed:J

.field private final retryPolicy:Lio/grpc/internal/RetryPolicy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private savedCancellationReason:Lio/grpc/Status;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

.field private scheduledRetry:Lio/grpc/internal/RetriableStream$FutureCanceller;

.field private volatile state:Lio/grpc/internal/RetriableStream$State;

.field private final throttle:Lio/grpc/internal/RetriableStream$Throttle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 58
    const-string v1, "grpc-previous-rpc-attempts"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/RetriableStream;->GRPC_PREVIOUS_RPC_ATTEMPTS:Lio/grpc/Metadata$Key;

    .line 61
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 62
    const-string v1, "grpc-retry-pushback-ms"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/RetriableStream;->GRPC_RETRY_PUSHBACK_MS:Lio/grpc/Metadata$Key;

    .line 64
    sget-object v0, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    .line 65
    const-string v1, "Stream thrown away because RetriableStream committed"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/RetriableStream;->CANCELLED_BECAUSE_COMMITTED:Lio/grpc/Status;

    .line 780
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lio/grpc/internal/RetriableStream;->random:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/internal/RetriableStream$ChannelBufferMeter;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/RetryPolicy;Lio/grpc/internal/HedgingPolicy;Lio/grpc/internal/RetriableStream$Throttle;)V
    .locals 16
    .param p2, "headers"    # Lio/grpc/Metadata;
    .param p3, "channelBufferUsed"    # Lio/grpc/internal/RetriableStream$ChannelBufferMeter;
    .param p4, "perRpcBufferLimit"    # J
    .param p6, "channelBufferLimit"    # J
    .param p8, "callExecutor"    # Ljava/util/concurrent/Executor;
    .param p9, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p10, "retryPolicy"    # Lio/grpc/internal/RetryPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "hedgingPolicy"    # Lio/grpc/internal/HedgingPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "throttle"    # Lio/grpc/internal/RetriableStream$Throttle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;*>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/internal/RetriableStream$ChannelBufferMeter;",
            "JJ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/internal/RetryPolicy;",
            "Lio/grpc/internal/HedgingPolicy;",
            "Lio/grpc/internal/RetriableStream$Throttle;",
            ")V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v3, Lio/grpc/SynchronizationContext;

    new-instance v4, Lio/grpc/internal/RetriableStream$1;

    invoke-direct {v4, v0}, Lio/grpc/internal/RetriableStream$1;-><init>(Lio/grpc/internal/RetriableStream;)V

    invoke-direct {v3, v4}, Lio/grpc/SynchronizationContext;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v3, v0, Lio/grpc/internal/RetriableStream;->listenerSerializeExecutor:Ljava/util/concurrent/Executor;

    .line 89
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    .line 96
    new-instance v3, Lio/grpc/internal/InsightBuilder;

    invoke-direct {v3}, Lio/grpc/internal/InsightBuilder;-><init>()V

    iput-object v3, v0, Lio/grpc/internal/RetriableStream;->closedSubstreamsInsight:Lio/grpc/internal/InsightBuilder;

    .line 99
    new-instance v3, Lio/grpc/internal/RetriableStream$State;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    iput-object v3, v0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 108
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, v0, Lio/grpc/internal/RetriableStream;->noMoreTransparentRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, v0, Lio/grpc/internal/RetriableStream;->localOnlyTransparentRetries:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, v0, Lio/grpc/internal/RetriableStream;->inFlightSubStreams:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    move-object/from16 v3, p1

    iput-object v3, v0, Lio/grpc/internal/RetriableStream;->method:Lio/grpc/MethodDescriptor;

    .line 134
    move-object/from16 v4, p3

    iput-object v4, v0, Lio/grpc/internal/RetriableStream;->channelBufferUsed:Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    .line 135
    move-wide/from16 v5, p4

    iput-wide v5, v0, Lio/grpc/internal/RetriableStream;->perRpcBufferLimit:J

    .line 136
    move-wide/from16 v7, p6

    iput-wide v7, v0, Lio/grpc/internal/RetriableStream;->channelBufferLimit:J

    .line 137
    move-object/from16 v9, p8

    iput-object v9, v0, Lio/grpc/internal/RetriableStream;->callExecutor:Ljava/util/concurrent/Executor;

    .line 138
    move-object/from16 v10, p9

    iput-object v10, v0, Lio/grpc/internal/RetriableStream;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 139
    move-object/from16 v11, p2

    iput-object v11, v0, Lio/grpc/internal/RetriableStream;->headers:Lio/grpc/Metadata;

    .line 140
    iput-object v1, v0, Lio/grpc/internal/RetriableStream;->retryPolicy:Lio/grpc/internal/RetryPolicy;

    .line 141
    if-eqz v1, :cond_0

    .line 142
    iget-wide v12, v1, Lio/grpc/internal/RetryPolicy;->initialBackoffNanos:J

    iput-wide v12, v0, Lio/grpc/internal/RetriableStream;->nextBackoffIntervalNanos:J

    .line 144
    :cond_0
    iput-object v2, v0, Lio/grpc/internal/RetriableStream;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    .line 145
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v14, v12

    goto :goto_1

    :cond_2
    :goto_0
    move v14, v13

    :goto_1
    const-string v15, "Should not provide both retryPolicy and hedgingPolicy"

    invoke-static {v14, v15}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 148
    if-eqz v2, :cond_3

    move v12, v13

    :cond_3
    iput-boolean v12, v0, Lio/grpc/internal/RetriableStream;->isHedging:Z

    .line 149
    move-object/from16 v12, p12

    iput-object v12, v0, Lio/grpc/internal/RetriableStream;->throttle:Lio/grpc/internal/RetriableStream$Throttle;

    .line 150
    return-void
.end method

.method static synthetic access$000()Lio/grpc/Status;
    .locals 1

    .line 55
    sget-object v0, Lio/grpc/internal/RetriableStream;->CANCELLED_BECAUSE_COMMITTED:Lio/grpc/Status;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/RetriableStream;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-boolean v0, p0, Lio/grpc/internal/RetriableStream;->isClosed:Z

    return v0
.end method

.method static synthetic access$1000(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$102(Lio/grpc/internal/RetriableStream;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lio/grpc/internal/RetriableStream;->isClosed:Z

    return p1
.end method

.method static synthetic access$1100(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 55
    invoke-direct {p0, p1}, Lio/grpc/internal/RetriableStream;->drain(Lio/grpc/internal/RetriableStream$Substream;)V

    return-void
.end method

.method static synthetic access$1200(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->callExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$1300(Lio/grpc/internal/RetriableStream;)Lio/grpc/MethodDescriptor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->method:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method static synthetic access$1400(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 55
    invoke-direct {p0, p1}, Lio/grpc/internal/RetriableStream;->commitAndRun(Lio/grpc/internal/RetriableStream$Substream;)V

    return-void
.end method

.method static synthetic access$1500(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->listenerSerializeExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$1600(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/InsightBuilder;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->closedSubstreamsInsight:Lio/grpc/internal/InsightBuilder;

    return-object v0
.end method

.method static synthetic access$1700(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->inFlightSubStreams:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1800(Lio/grpc/internal/RetriableStream;)Lio/grpc/Status;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->savedCancellationReason:Lio/grpc/Status;

    return-object v0
.end method

.method static synthetic access$1900(Lio/grpc/internal/RetriableStream;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/Status;
    .param p2, "x2"    # Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .param p3, "x3"    # Lio/grpc/Metadata;

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/RetriableStream;->safeCloseMasterListener(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/ClientStreamListener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->masterListener:Lio/grpc/internal/ClientStreamListener;

    return-object v0
.end method

.method static synthetic access$2000(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->localOnlyTransparentRetries:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2100(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->noMoreTransparentRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2200(Lio/grpc/internal/RetriableStream;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-boolean v0, p0, Lio/grpc/internal/RetriableStream;->isHedging:Z

    return v0
.end method

.method static synthetic access$2300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->retryPolicy:Lio/grpc/internal/RetryPolicy;

    return-object v0
.end method

.method static synthetic access$2400(Lio/grpc/internal/RetriableStream;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    invoke-direct {p0}, Lio/grpc/internal/RetriableStream;->freezeHedging()V

    return-void
.end method

.method static synthetic access$2500(Lio/grpc/internal/RetriableStream;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 55
    invoke-direct {p0, p1}, Lio/grpc/internal/RetriableStream;->pushbackHedging(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$2602(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)Lio/grpc/internal/RetriableStream$FutureCanceller;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 55
    iput-object p1, p0, Lio/grpc/internal/RetriableStream;->scheduledRetry:Lio/grpc/internal/RetriableStream$FutureCanceller;

    return-object p1
.end method

.method static synthetic access$2700(Lio/grpc/internal/RetriableStream;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-wide v0, p0, Lio/grpc/internal/RetriableStream;->nextBackoffIntervalNanos:J

    return-wide v0
.end method

.method static synthetic access$2702(Lio/grpc/internal/RetriableStream;J)J
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # J

    .line 55
    iput-wide p1, p0, Lio/grpc/internal/RetriableStream;->nextBackoffIntervalNanos:J

    return-wide p1
.end method

.method static synthetic access$2800()Ljava/util/Random;
    .locals 1

    .line 55
    sget-object v0, Lio/grpc/internal/RetriableStream;->random:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$2900(Lio/grpc/internal/RetriableStream;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-wide v0, p0, Lio/grpc/internal/RetriableStream;->perRpcBufferUsed:J

    return-wide v0
.end method

.method static synthetic access$2902(Lio/grpc/internal/RetriableStream;J)J
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # J

    .line 55
    iput-wide p1, p0, Lio/grpc/internal/RetriableStream;->perRpcBufferUsed:J

    return-wide p1
.end method

.method static synthetic access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    return-object v0
.end method

.method static synthetic access$3000(Lio/grpc/internal/RetriableStream;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-wide v0, p0, Lio/grpc/internal/RetriableStream;->perRpcBufferLimit:J

    return-wide v0
.end method

.method static synthetic access$302(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Lio/grpc/internal/RetriableStream$State;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/internal/RetriableStream$State;

    .line 55
    iput-object p1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    return-object p1
.end method

.method static synthetic access$3100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$ChannelBufferMeter;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->channelBufferUsed:Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    return-object v0
.end method

.method static synthetic access$3200(Lio/grpc/internal/RetriableStream;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-wide v0, p0, Lio/grpc/internal/RetriableStream;->channelBufferLimit:J

    return-wide v0
.end method

.method static synthetic access$3300(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 55
    invoke-direct {p0, p1}, Lio/grpc/internal/RetriableStream;->commit(Lio/grpc/internal/RetriableStream$Substream;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/internal/RetriableStream;IZ)Lio/grpc/internal/RetriableStream$Substream;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 55
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/RetriableStream;->createSubstream(IZ)Lio/grpc/internal/RetriableStream$Substream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/internal/RetriableStream$State;

    .line 55
    invoke-direct {p0, p1}, Lio/grpc/internal/RetriableStream;->hasPotentialHedging(Lio/grpc/internal/RetriableStream$State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->throttle:Lio/grpc/internal/RetriableStream$Throttle;

    return-object v0
.end method

.method static synthetic access$802(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)Lio/grpc/internal/RetriableStream$FutureCanceller;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 55
    iput-object p1, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    return-object p1
.end method

.method static synthetic access$900(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/HedgingPolicy;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 55
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    return-object v0
.end method

.method private commit(Lio/grpc/internal/RetriableStream$Substream;)Ljava/lang/Runnable;
    .locals 10
    .param p1, "winningSubstream"    # Lio/grpc/internal/RetriableStream$Substream;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 157
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 159
    monitor-exit v0

    return-object v2

    .line 161
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v5, v1, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    .line 163
    .local v5, "savedDrainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    invoke-virtual {v1, p1}, Lio/grpc/internal/RetriableStream$State;->committed(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 166
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->channelBufferUsed:Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    iget-wide v3, p0, Lio/grpc/internal/RetriableStream;->perRpcBufferUsed:J

    neg-long v3, v3

    invoke-virtual {v1, v3, v4}, Lio/grpc/internal/RetriableStream$ChannelBufferMeter;->addAndGet(J)J

    .line 169
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->scheduledRetry:Lio/grpc/internal/RetriableStream$FutureCanceller;

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v1}, Lio/grpc/internal/RetriableStream$FutureCanceller;->markCancelled()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 173
    .local v1, "retryFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iput-object v2, p0, Lio/grpc/internal/RetriableStream;->scheduledRetry:Lio/grpc/internal/RetriableStream$FutureCanceller;

    goto :goto_0

    .line 175
    .end local v1    # "retryFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_1
    const/4 v1, 0x0

    .line 179
    .restart local v1    # "retryFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    iget-object v3, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    if-eqz v3, :cond_2

    .line 182
    invoke-virtual {v3}, Lio/grpc/internal/RetriableStream$FutureCanceller;->markCancelled()Ljava/util/concurrent/Future;

    move-result-object v3

    .line 183
    .local v3, "hedgingFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iput-object v2, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    move-object v2, v3

    goto :goto_1

    .line 185
    .end local v3    # "hedgingFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_2
    const/4 v2, 0x0

    move-object v3, v2

    .line 208
    .local v2, "hedgingFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_1
    new-instance v9, Lio/grpc/internal/RetriableStream$1CommitTask;

    move-object v3, v9

    move-object v4, p0

    move-object v6, p1

    move-object v7, v1

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lio/grpc/internal/RetriableStream$1CommitTask;-><init>(Lio/grpc/internal/RetriableStream;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    monitor-exit v0

    return-object v9

    .line 209
    .end local v1    # "retryFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v2    # "hedgingFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v5    # "savedDrainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private commitAndRun(Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 1
    .param p1, "winningSubstream"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 218
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    invoke-direct {p0, p1}, Lio/grpc/internal/RetriableStream;->commit(Lio/grpc/internal/RetriableStream$Substream;)Ljava/lang/Runnable;

    move-result-object v0

    .line 220
    .local v0, "postCommitTask":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 223
    :cond_0
    return-void
.end method

.method private createSubstream(IZ)Lio/grpc/internal/RetriableStream$Substream;
    .locals 6
    .param p1, "previousAttemptCount"    # I
    .param p2, "isTransparentRetry"    # Z
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 230
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    nop

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->inFlightSubStreams:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 231
    .local v0, "inFlight":I
    if-gez v0, :cond_1

    .line 232
    const/4 v1, 0x0

    return-object v1

    .line 234
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->inFlightSubStreams:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    new-instance v1, Lio/grpc/internal/RetriableStream$Substream;

    invoke-direct {v1, p1}, Lio/grpc/internal/RetriableStream$Substream;-><init>(I)V

    .line 237
    .local v1, "sub":Lio/grpc/internal/RetriableStream$Substream;
    new-instance v2, Lio/grpc/internal/RetriableStream$BufferSizeTracer;

    invoke-direct {v2, p0, v1}, Lio/grpc/internal/RetriableStream$BufferSizeTracer;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 238
    .local v2, "bufferSizeTracer":Lio/grpc/ClientStreamTracer;
    new-instance v3, Lio/grpc/internal/RetriableStream$2;

    invoke-direct {v3, p0, v2}, Lio/grpc/internal/RetriableStream$2;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/ClientStreamTracer;)V

    .line 246
    .local v3, "tracerFactory":Lio/grpc/ClientStreamTracer$Factory;
    iget-object v4, p0, Lio/grpc/internal/RetriableStream;->headers:Lio/grpc/Metadata;

    invoke-virtual {p0, v4, p1}, Lio/grpc/internal/RetriableStream;->updateHeaders(Lio/grpc/Metadata;I)Lio/grpc/Metadata;

    move-result-object v4

    .line 248
    .local v4, "newHeaders":Lio/grpc/Metadata;
    invoke-virtual {p0, v4, v3, p1, p2}, Lio/grpc/internal/RetriableStream;->newSubstream(Lio/grpc/Metadata;Lio/grpc/ClientStreamTracer$Factory;IZ)Lio/grpc/internal/ClientStream;

    move-result-object v5

    iput-object v5, v1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    .line 249
    return-object v1
.end method

.method private delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V
    .locals 3
    .param p1, "bufferEntry"    # Lio/grpc/internal/RetriableStream$BufferEntry;

    .line 533
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-boolean v1, v1, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    if-nez v1, :cond_0

    .line 535
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    .line 538
    .local v1, "savedDrainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/RetriableStream$Substream;

    .line 541
    .local v2, "substream":Lio/grpc/internal/RetriableStream$Substream;
    invoke-interface {p1, v2}, Lio/grpc/internal/RetriableStream$BufferEntry;->runWith(Lio/grpc/internal/RetriableStream$Substream;)V

    .line 542
    .end local v2    # "substream":Lio/grpc/internal/RetriableStream$Substream;
    goto :goto_0

    .line 543
    :cond_1
    return-void

    .line 538
    .end local v1    # "savedDrainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private drain(Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 10
    .param p1, "substream"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 273
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    const/4 v0, 0x0

    .line 274
    .local v0, "index":I
    const/16 v1, 0x80

    .line 275
    .local v1, "chunk":I
    const/4 v2, 0x0

    .line 276
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/RetriableStream$BufferEntry;>;"
    const/4 v3, 0x0

    .line 277
    .local v3, "streamStarted":Z
    const/4 v4, 0x0

    .line 282
    .local v4, "onReadyRunnable":Ljava/lang/Runnable;
    :goto_0
    iget-object v5, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 283
    :try_start_0
    iget-object v6, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 284
    .local v6, "savedState":Lio/grpc/internal/RetriableStream$State;
    if-eqz v3, :cond_1

    .line 285
    iget-object v7, v6, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eqz v7, :cond_0

    iget-object v7, v6, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eq v7, p1, :cond_0

    .line 287
    monitor-exit v5

    goto :goto_1

    .line 289
    :cond_0
    iget-boolean v7, v6, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    if-eqz v7, :cond_1

    .line 290
    monitor-exit v5

    goto :goto_1

    .line 293
    :cond_1
    iget-object v7, v6, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v0, v7, :cond_5

    .line 294
    invoke-virtual {v6, p1}, Lio/grpc/internal/RetriableStream$State;->substreamDrained(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v7

    iput-object v7, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 295
    invoke-virtual {p0}, Lio/grpc/internal/RetriableStream;->isReady()Z

    move-result v7

    if-nez v7, :cond_2

    .line 296
    monitor-exit v5

    return-void

    .line 298
    :cond_2
    new-instance v7, Lio/grpc/internal/RetriableStream$3;

    invoke-direct {v7, p0}, Lio/grpc/internal/RetriableStream$3;-><init>(Lio/grpc/internal/RetriableStream;)V

    move-object v4, v7

    .line 306
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    .end local v6    # "savedState":Lio/grpc/internal/RetriableStream$State;
    :goto_1
    if-eqz v4, :cond_3

    .line 342
    iget-object v5, p0, Lio/grpc/internal/RetriableStream;->listenerSerializeExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v5, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 343
    return-void

    .line 346
    :cond_3
    iget-object v5, p1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    .line 347
    iget-object v6, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v6, v6, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-ne v6, p1, :cond_4

    iget-object v6, p0, Lio/grpc/internal/RetriableStream;->cancellationStatus:Lio/grpc/Status;

    goto :goto_2

    :cond_4
    sget-object v6, Lio/grpc/internal/RetriableStream;->CANCELLED_BECAUSE_COMMITTED:Lio/grpc/Status;

    .line 346
    :goto_2
    invoke-interface {v5, v6}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 348
    return-void

    .line 309
    .restart local v6    # "savedState":Lio/grpc/internal/RetriableStream$State;
    :cond_5
    :try_start_1
    iget-boolean v7, p1, Lio/grpc/internal/RetriableStream$Substream;->closed:Z

    if-eqz v7, :cond_6

    .line 310
    monitor-exit v5

    return-void

    .line 313
    :cond_6
    add-int v7, v0, v1

    iget-object v8, v6, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 314
    .local v7, "stop":I
    if-nez v2, :cond_7

    .line 315
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v6, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    invoke-interface {v9, v0, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v8

    goto :goto_3

    .line 317
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 318
    iget-object v8, v6, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    invoke-interface {v8, v0, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 320
    :goto_3
    move v0, v7

    .line 321
    .end local v7    # "stop":I
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/grpc/internal/RetriableStream$BufferEntry;

    .line 324
    .local v7, "bufferEntry":Lio/grpc/internal/RetriableStream$BufferEntry;
    invoke-interface {v7, p1}, Lio/grpc/internal/RetriableStream$BufferEntry;->runWith(Lio/grpc/internal/RetriableStream$Substream;)V

    .line 325
    instance-of v8, v7, Lio/grpc/internal/RetriableStream$StartEntry;

    if-eqz v8, :cond_8

    .line 326
    const/4 v3, 0x1

    .line 328
    :cond_8
    if-eqz v3, :cond_a

    .line 329
    iget-object v6, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 330
    iget-object v8, v6, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eqz v8, :cond_9

    iget-object v8, v6, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eq v8, p1, :cond_9

    .line 332
    goto :goto_5

    .line 334
    :cond_9
    iget-boolean v8, v6, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    if-eqz v8, :cond_a

    .line 335
    goto :goto_5

    .line 338
    .end local v7    # "bufferEntry":Lio/grpc/internal/RetriableStream$BufferEntry;
    :cond_a
    goto :goto_4

    .line 339
    .end local v6    # "savedState":Lio/grpc/internal/RetriableStream$State;
    :cond_b
    :goto_5
    goto/16 :goto_0

    .line 321
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method private freezeHedging()V
    .locals 3

    .line 802
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    const/4 v0, 0x0

    .line 803
    .local v0, "futureToBeCancelled":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 804
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    if-eqz v2, :cond_0

    .line 807
    invoke-virtual {v2}, Lio/grpc/internal/RetriableStream$FutureCanceller;->markCancelled()Ljava/util/concurrent/Future;

    move-result-object v2

    move-object v0, v2

    .line 808
    const/4 v2, 0x0

    iput-object v2, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 810
    :cond_0
    iget-object v2, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    invoke-virtual {v2}, Lio/grpc/internal/RetriableStream$State;->freezeHedging()Lio/grpc/internal/RetriableStream$State;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 811
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    if-eqz v0, :cond_1

    .line 814
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 816
    :cond_1
    return-void

    .line 811
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private hasPotentialHedging(Lio/grpc/internal/RetriableStream$State;)Z
    .locals 2
    .param p1, "state"    # Lio/grpc/internal/RetriableStream$State;

    .line 795
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p1, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-nez v0, :cond_0

    iget v0, p1, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    iget v1, v1, Lio/grpc/internal/HedgingPolicy;->maxAttempts:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p1, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private pushbackHedging(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "delayMillis"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 409
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    if-nez p1, :cond_0

    .line 410
    return-void

    .line 412
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 413
    invoke-direct {p0}, Lio/grpc/internal/RetriableStream;->freezeHedging()V

    .line 414
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    if-nez v1, :cond_2

    .line 423
    monitor-exit v0

    return-void

    .line 428
    :cond_2
    invoke-virtual {v1}, Lio/grpc/internal/RetriableStream$FutureCanceller;->markCancelled()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 429
    .local v1, "futureToBeCancelled":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v2, Lio/grpc/internal/RetriableStream$FutureCanceller;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    invoke-direct {v2, v3}, Lio/grpc/internal/RetriableStream$FutureCanceller;-><init>(Ljava/lang/Object;)V

    move-object v3, v2

    .local v3, "future":Lio/grpc/internal/RetriableStream$FutureCanceller;
    iput-object v2, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 430
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    if-eqz v1, :cond_3

    .line 433
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 435
    :cond_3
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lio/grpc/internal/RetriableStream$HedgingRunnable;

    invoke-direct {v2, p0, v3}, Lio/grpc/internal/RetriableStream$HedgingRunnable;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)V

    .line 436
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 435
    invoke-interface {v0, v2, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/grpc/internal/RetriableStream$FutureCanceller;->setFuture(Ljava/util/concurrent/Future;)V

    .line 437
    return-void

    .line 430
    .end local v1    # "futureToBeCancelled":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v3    # "future":Lio/grpc/internal/RetriableStream$FutureCanceller;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private safeCloseMasterListener(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    .locals 2
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "progress"    # Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .param p3, "metadata"    # Lio/grpc/Metadata;

    .line 819
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->listenerSerializeExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/RetriableStream$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/grpc/internal/RetriableStream$4;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 827
    return-void
.end method

.method static setRandom(Ljava/util/Random;)V
    .locals 0
    .param p0, "random"    # Ljava/util/Random;

    .line 784
    sput-object p0, Lio/grpc/internal/RetriableStream;->random:Ljava/util/Random;

    .line 785
    return-void
.end method


# virtual methods
.method public appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V
    .locals 6
    .param p1, "insight"    # Lio/grpc/internal/InsightBuilder;

    .line 752
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_0
    const-string v1, "closed"

    iget-object v2, p0, Lio/grpc/internal/RetriableStream;->closedSubstreamsInsight:Lio/grpc/internal/InsightBuilder;

    invoke-virtual {p1, v1, v2}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 754
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 755
    .local v1, "currentState":Lio/grpc/internal/RetriableStream$State;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    iget-object v0, v1, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eqz v0, :cond_0

    .line 761
    new-instance v0, Lio/grpc/internal/InsightBuilder;

    invoke-direct {v0}, Lio/grpc/internal/InsightBuilder;-><init>()V

    .line 762
    .local v0, "substreamInsight":Lio/grpc/internal/InsightBuilder;
    iget-object v2, v1, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v2, v2, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v2, v0}, Lio/grpc/internal/ClientStream;->appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V

    .line 763
    const-string v2, "committed"

    invoke-virtual {p1, v2, v0}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 764
    .end local v0    # "substreamInsight":Lio/grpc/internal/InsightBuilder;
    goto :goto_1

    .line 765
    :cond_0
    new-instance v0, Lio/grpc/internal/InsightBuilder;

    invoke-direct {v0}, Lio/grpc/internal/InsightBuilder;-><init>()V

    .line 771
    .local v0, "openSubstreamsInsight":Lio/grpc/internal/InsightBuilder;
    iget-object v2, v1, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/internal/RetriableStream$Substream;

    .line 772
    .local v3, "sub":Lio/grpc/internal/RetriableStream$Substream;
    new-instance v4, Lio/grpc/internal/InsightBuilder;

    invoke-direct {v4}, Lio/grpc/internal/InsightBuilder;-><init>()V

    .line 773
    .local v4, "substreamInsight":Lio/grpc/internal/InsightBuilder;
    iget-object v5, v3, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v5, v4}, Lio/grpc/internal/ClientStream;->appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V

    .line 774
    invoke-virtual {v0, v4}, Lio/grpc/internal/InsightBuilder;->append(Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 775
    .end local v3    # "sub":Lio/grpc/internal/RetriableStream$Substream;
    .end local v4    # "substreamInsight":Lio/grpc/internal/InsightBuilder;
    goto :goto_0

    .line 776
    :cond_1
    const-string v2, "open"

    invoke-virtual {p1, v2, v0}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 778
    .end local v0    # "openSubstreamsInsight":Lio/grpc/internal/InsightBuilder;
    :goto_1
    return-void

    .line 755
    .end local v1    # "currentState":Lio/grpc/internal/RetriableStream$State;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final cancel(Lio/grpc/Status;)V
    .locals 6
    .param p1, "reason"    # Lio/grpc/Status;

    .line 504
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$Substream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/internal/RetriableStream$Substream;-><init>(I)V

    .line 505
    .local v0, "noopSubstream":Lio/grpc/internal/RetriableStream$Substream;
    new-instance v1, Lio/grpc/internal/NoopClientStream;

    invoke-direct {v1}, Lio/grpc/internal/NoopClientStream;-><init>()V

    iput-object v1, v0, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    .line 506
    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->commit(Lio/grpc/internal/RetriableStream$Substream;)Ljava/lang/Runnable;

    move-result-object v1

    .line 508
    .local v1, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 509
    iput-object p1, p0, Lio/grpc/internal/RetriableStream;->savedCancellationReason:Lio/grpc/Status;

    .line 510
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 511
    iget-object v2, p0, Lio/grpc/internal/RetriableStream;->inFlightSubStreams:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 512
    sget-object v2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    invoke-direct {p0, p1, v2, v3}, Lio/grpc/internal/RetriableStream;->safeCloseMasterListener(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    .line 514
    :cond_0
    return-void

    .line 517
    :cond_1
    const/4 v2, 0x0

    .line 518
    .local v2, "winningSubstreamToCancel":Lio/grpc/internal/RetriableStream$Substream;
    iget-object v3, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 519
    :try_start_0
    iget-object v4, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v5, v5, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 520
    iget-object v4, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v4, v4, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    move-object v2, v4

    goto :goto_0

    .line 522
    :cond_2
    iput-object p1, p0, Lio/grpc/internal/RetriableStream;->cancellationStatus:Lio/grpc/Status;

    .line 524
    :goto_0
    iget-object v4, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    invoke-virtual {v4}, Lio/grpc/internal/RetriableStream$State;->cancelled()Lio/grpc/internal/RetriableStream$State;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 525
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    if-eqz v2, :cond_3

    .line 527
    iget-object v3, v2, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v3, p1}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 529
    :cond_3
    return-void

    .line 525
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public final flush()V
    .locals 2

    .line 595
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 596
    .local v0, "savedState":Lio/grpc/internal/RetriableStream$State;
    iget-boolean v1, v0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v1}, Lio/grpc/internal/ClientStream;->flush()V

    .line 598
    return-void

    .line 608
    :cond_0
    new-instance v1, Lio/grpc/internal/RetriableStream$1FlushEntry;

    invoke-direct {v1, p0}, Lio/grpc/internal/RetriableStream$1FlushEntry;-><init>(Lio/grpc/internal/RetriableStream;)V

    invoke-direct {p0, v1}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 609
    return-void
.end method

.method public final getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 743
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0

    .line 746
    :cond_0
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    return-object v0
.end method

.method public final halfClose()V
    .locals 1

    .line 678
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1HalfCloseEntry;

    invoke-direct {v0, p0}, Lio/grpc/internal/RetriableStream$1HalfCloseEntry;-><init>(Lio/grpc/internal/RetriableStream;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 679
    return-void
.end method

.method public final isReady()Z
    .locals 3

    .line 613
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/RetriableStream$Substream;

    .line 614
    .local v1, "substream":Lio/grpc/internal/RetriableStream$Substream;
    iget-object v2, v1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v2}, Lio/grpc/internal/ClientStream;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    const/4 v0, 0x1

    return v0

    .line 617
    .end local v1    # "substream":Lio/grpc/internal/RetriableStream$Substream;
    :cond_0
    goto :goto_0

    .line 618
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method abstract newSubstream(Lio/grpc/Metadata;Lio/grpc/ClientStreamTracer$Factory;IZ)Lio/grpc/internal/ClientStream;
.end method

.method public optimizeForDirectExecutor()V
    .locals 1

    .line 630
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1OptimizeDirectEntry;

    invoke-direct {v0, p0}, Lio/grpc/internal/RetriableStream$1OptimizeDirectEntry;-><init>(Lio/grpc/internal/RetriableStream;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 631
    return-void
.end method

.method abstract postCommit()V
.end method

.method abstract prestart()Lio/grpc/Status;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public final request(I)V
    .locals 2
    .param p1, "numMessages"    # I

    .line 577
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 578
    .local v0, "savedState":Lio/grpc/internal/RetriableStream$State;
    iget-boolean v1, v0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v1, p1}, Lio/grpc/internal/ClientStream;->request(I)V

    .line 580
    return-void

    .line 590
    :cond_0
    new-instance v1, Lio/grpc/internal/RetriableStream$1RequestEntry;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/RetriableStream$1RequestEntry;-><init>(Lio/grpc/internal/RetriableStream;I)V

    invoke-direct {p0, v1}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 591
    return-void
.end method

.method final sendMessage(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 555
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    .local p1, "message":Ljava/lang/Object;, "TReqT;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 556
    .local v0, "savedState":Lio/grpc/internal/RetriableStream$State;
    iget-boolean v1, v0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v2, p1}, Lio/grpc/MethodDescriptor;->streamRequest(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/ClientStream;->writeMessage(Ljava/io/InputStream;)V

    .line 558
    return-void

    .line 572
    :cond_0
    new-instance v1, Lio/grpc/internal/RetriableStream$1SendMessageEntry;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/RetriableStream$1SendMessageEntry;-><init>(Lio/grpc/internal/RetriableStream;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 573
    return-void
.end method

.method public final setAuthority(Ljava/lang/String;)V
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .line 690
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1AuthorityEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1AuthorityEntry;-><init>(Lio/grpc/internal/RetriableStream;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 691
    return-void
.end method

.method public final setCompressor(Lio/grpc/Compressor;)V
    .locals 1
    .param p1, "compressor"    # Lio/grpc/Compressor;

    .line 642
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1CompressorEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1CompressorEntry;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/Compressor;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 643
    return-void
.end method

.method public final setDeadline(Lio/grpc/Deadline;)V
    .locals 1
    .param p1, "deadline"    # Lio/grpc/Deadline;

    .line 738
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1DeadlineEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1DeadlineEntry;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/Deadline;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 739
    return-void
.end method

.method public final setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V
    .locals 1
    .param p1, "decompressorRegistry"    # Lio/grpc/DecompressorRegistry;

    .line 702
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1DecompressorRegistryEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1DecompressorRegistryEntry;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/DecompressorRegistry;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 703
    return-void
.end method

.method public final setFullStreamDecompression(Z)V
    .locals 1
    .param p1, "fullStreamDecompression"    # Z

    .line 654
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1FullStreamDecompressionEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1FullStreamDecompressionEntry;-><init>(Lio/grpc/internal/RetriableStream;Z)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 655
    return-void
.end method

.method public final setMaxInboundMessageSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 714
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1MaxInboundMessageSizeEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1MaxInboundMessageSizeEntry;-><init>(Lio/grpc/internal/RetriableStream;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 715
    return-void
.end method

.method public final setMaxOutboundMessageSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 726
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1MaxOutboundMessageSizeEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1MaxOutboundMessageSizeEntry;-><init>(Lio/grpc/internal/RetriableStream;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 727
    return-void
.end method

.method public final setMessageCompression(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 666
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;-><init>(Lio/grpc/internal/RetriableStream;Z)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 667
    return-void
.end method

.method public final start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 8
    .param p1, "listener"    # Lio/grpc/internal/ClientStreamListener;

    .line 367
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream;->masterListener:Lio/grpc/internal/ClientStreamListener;

    .line 369
    invoke-virtual {p0}, Lio/grpc/internal/RetriableStream;->prestart()Lio/grpc/Status;

    move-result-object v0

    .line 371
    .local v0, "shutdownStatus":Lio/grpc/Status;
    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0, v0}, Lio/grpc/internal/RetriableStream;->cancel(Lio/grpc/Status;)V

    .line 373
    return-void

    .line 376
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v2, v2, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    new-instance v3, Lio/grpc/internal/RetriableStream$StartEntry;

    invoke-direct {v3, p0}, Lio/grpc/internal/RetriableStream$StartEntry;-><init>(Lio/grpc/internal/RetriableStream;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 380
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lio/grpc/internal/RetriableStream;->createSubstream(IZ)Lio/grpc/internal/RetriableStream$Substream;

    move-result-object v1

    .line 381
    .local v1, "substream":Lio/grpc/internal/RetriableStream$Substream;
    if-nez v1, :cond_1

    .line 382
    return-void

    .line 384
    :cond_1
    iget-boolean v2, p0, Lio/grpc/internal/RetriableStream;->isHedging:Z

    if-eqz v2, :cond_4

    .line 385
    const/4 v2, 0x0

    .line 387
    .local v2, "scheduledHedgingRef":Lio/grpc/internal/RetriableStream$FutureCanceller;
    iget-object v3, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 388
    :try_start_1
    iget-object v4, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    invoke-virtual {v4, v1}, Lio/grpc/internal/RetriableStream$State;->addActiveHedge(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 389
    iget-object v4, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    invoke-direct {p0, v4}, Lio/grpc/internal/RetriableStream;->hasPotentialHedging(Lio/grpc/internal/RetriableStream$State;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lio/grpc/internal/RetriableStream;->throttle:Lio/grpc/internal/RetriableStream$Throttle;

    if-eqz v4, :cond_2

    .line 390
    invoke-virtual {v4}, Lio/grpc/internal/RetriableStream$Throttle;->isAboveThreshold()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 391
    :cond_2
    new-instance v4, Lio/grpc/internal/RetriableStream$FutureCanceller;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    invoke-direct {v4, v5}, Lio/grpc/internal/RetriableStream$FutureCanceller;-><init>(Ljava/lang/Object;)V

    move-object v2, v4

    iput-object v4, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 393
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    if-eqz v2, :cond_4

    .line 396
    iget-object v3, p0, Lio/grpc/internal/RetriableStream;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;

    invoke-direct {v4, p0, v2}, Lio/grpc/internal/RetriableStream$HedgingRunnable;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)V

    iget-object v5, p0, Lio/grpc/internal/RetriableStream;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    iget-wide v5, v5, Lio/grpc/internal/HedgingPolicy;->hedgingDelayNanos:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 397
    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    .line 396
    invoke-virtual {v2, v3}, Lio/grpc/internal/RetriableStream$FutureCanceller;->setFuture(Ljava/util/concurrent/Future;)V

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 404
    .end local v2    # "scheduledHedgingRef":Lio/grpc/internal/RetriableStream$FutureCanceller;
    :cond_4
    :goto_0
    invoke-direct {p0, v1}, Lio/grpc/internal/RetriableStream;->drain(Lio/grpc/internal/RetriableStream$Substream;)V

    .line 405
    return-void

    .line 378
    .end local v1    # "substream":Lio/grpc/internal/RetriableStream$Substream;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method final updateHeaders(Lio/grpc/Metadata;I)Lio/grpc/Metadata;
    .locals 3
    .param p1, "originalHeaders"    # Lio/grpc/Metadata;
    .param p2, "previousAttemptCount"    # I

    .line 264
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    .line 265
    .local v0, "newHeaders":Lio/grpc/Metadata;
    invoke-virtual {v0, p1}, Lio/grpc/Metadata;->merge(Lio/grpc/Metadata;)V

    .line 266
    if-lez p2, :cond_0

    .line 267
    sget-object v1, Lio/grpc/internal/RetriableStream;->GRPC_PREVIOUS_RPC_ATTEMPTS:Lio/grpc/Metadata$Key;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 269
    :cond_0
    return-object v0
.end method

.method public final writeMessage(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "message"    # Ljava/io/InputStream;

    .line 551
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RetriableStream.writeMessage() should not be called directly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
