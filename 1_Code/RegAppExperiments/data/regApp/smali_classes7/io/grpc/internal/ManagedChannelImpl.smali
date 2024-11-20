.class final Lio/grpc/internal/ManagedChannelImpl;
.super Lio/grpc/ManagedChannel;
.source "ManagedChannelImpl.java"

# interfaces
.implements Lio/grpc/InternalInstrumented;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ManagedChannelImpl$ResolutionState;,
        Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;,
        Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;,
        Lio/grpc/internal/ManagedChannelImpl$IdleModeStateAggregator;,
        Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;,
        Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;,
        Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;,
        Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;,
        Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;,
        Lio/grpc/internal/ManagedChannelImpl$ConfigSelectingClientCall;,
        Lio/grpc/internal/ManagedChannelImpl$RealChannel;,
        Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;,
        Lio/grpc/internal/ManagedChannelImpl$DelayedNameResolverRefresh;,
        Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ManagedChannel;",
        "Lio/grpc/InternalInstrumented<",
        "Lio/grpc/InternalChannelz$ChannelStats;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_SERVICE_CONFIG:Lio/grpc/internal/ManagedChannelServiceConfig;

.field static final IDLE_TIMEOUT_MILLIS_DISABLE:J = -0x1L

.field private static final INITIAL_PENDING_SELECTOR:Lio/grpc/InternalConfigSelector;

.field private static final NOOP_CALL:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final SHUTDOWN_NOW_STATUS:Lio/grpc/Status;

.field static final SHUTDOWN_STATUS:Lio/grpc/Status;

.field static final SUBCHANNEL_SHUTDOWN_DELAY_SECONDS:J = 0x5L

.field static final SUBCHANNEL_SHUTDOWN_STATUS:Lio/grpc/Status;

.field static final URI_PATTERN:Ljava/util/regex/Pattern;

.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final authorityOverride:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final backoffPolicyProvider:Lio/grpc/internal/BackoffPolicy$Provider;

.field private final balancerRpcExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

.field private final balancerRpcExecutorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final callTracerFactory:Lio/grpc/internal/CallTracer$Factory;

.field private final channelBufferLimit:J

.field private final channelBufferUsed:Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

.field private final channelCallTracer:Lio/grpc/internal/CallTracer;

.field private final channelLogger:Lio/grpc/ChannelLogger;

.field private final channelStateManager:Lio/grpc/internal/ConnectivityStateManager;

.field private final channelTracer:Lio/grpc/internal/ChannelTracer;

.field private final channelz:Lio/grpc/InternalChannelz;

.field private final compressorRegistry:Lio/grpc/CompressorRegistry;

.field private final decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field private final defaultServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final delayedTransport:Lio/grpc/internal/DelayedClientTransport;

.field private final delayedTransportListener:Lio/grpc/internal/ManagedClientTransport$Listener;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final executorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private fullStreamDecompression:Z

.field private final idleTimeoutMillis:J

.field private final idleTimer:Lio/grpc/internal/Rescheduler;

.field final inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/InUseStateAggregator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final interceptorChannel:Lio/grpc/Channel;

.field private lastResolutionState:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

.field private lastServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

.field private lbHelper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final loadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

.field private final logId:Lio/grpc/InternalLogId;

.field private final lookUpServiceConfig:Z

.field private final maxTraceEvents:I

.field private nameResolver:Lio/grpc/NameResolver;

.field private final nameResolverArgs:Lio/grpc/NameResolver$Args;

.field private nameResolverBackoffPolicy:Lio/grpc/internal/BackoffPolicy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final nameResolverFactory:Lio/grpc/NameResolver$Factory;

.field private final nameResolverRegistry:Lio/grpc/NameResolverRegistry;

.field private nameResolverStarted:Z

.field private final offloadExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

.field private final oobChannels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/grpc/internal/OobChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final oobTransportFactory:Lio/grpc/internal/ClientTransportFactory;

.field private final originalChannelCreds:Lio/grpc/ChannelCredentials;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final originalTransportFactory:Lio/grpc/internal/ClientTransportFactory;

.field private panicMode:Z

.field private pendingCalls:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall<",
            "**>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final pendingCallsInUseObject:Ljava/lang/Object;

.field private final perRpcBufferLimit:J

.field private final realChannel:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

.field private final retryEnabled:Z

.field private final scheduledExecutor:Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;

.field private scheduledNameResolverRefresh:Lio/grpc/SynchronizationContext$ScheduledHandle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private serviceConfigUpdated:Z

.field private final shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private shutdownNowed:Z

.field private final stopwatchSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation
.end field

.field private volatile subchannelPicker:Lio/grpc/LoadBalancer$SubchannelPicker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final subchannels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/grpc/internal/InternalSubchannel;",
            ">;"
        }
    .end annotation
.end field

.field final syncContext:Lio/grpc/SynchronizationContext;

.field private final target:Ljava/lang/String;

.field private volatile terminated:Z

.field private final terminatedLatch:Ljava/util/concurrent/CountDownLatch;

.field private terminating:Z

.field private final timeProvider:Lio/grpc/internal/TimeProvider;

.field private final transportFactory:Lio/grpc/internal/ClientTransportFactory;

.field private final transportProvider:Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;

.field private final uncommittedRetriableStreamsRegistry:Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

.field private final userAgent:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 121
    const-class v0, Lio/grpc/internal/ManagedChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl;->logger:Ljava/util/logging/Logger;

    .line 127
    const-string v0, "[a-zA-Z][a-zA-Z0-9+.-]*:/.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl;->URI_PATTERN:Ljava/util/regex/Pattern;

    .line 134
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 135
    const-string v1, "Channel shutdownNow invoked"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl;->SHUTDOWN_NOW_STATUS:Lio/grpc/Status;

    .line 138
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 139
    const-string v1, "Channel shutdown invoked"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl;->SHUTDOWN_STATUS:Lio/grpc/Status;

    .line 142
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 143
    const-string v1, "Subchannel shutdown invoked"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl;->SUBCHANNEL_SHUTDOWN_STATUS:Lio/grpc/Status;

    .line 146
    invoke-static {}, Lio/grpc/internal/ManagedChannelServiceConfig;->empty()Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl;->EMPTY_SERVICE_CONFIG:Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 147
    new-instance v0, Lio/grpc/internal/ManagedChannelImpl$1;

    invoke-direct {v0}, Lio/grpc/internal/ManagedChannelImpl$1;-><init>()V

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl;->INITIAL_PENDING_SELECTOR:Lio/grpc/InternalConfigSelector;

    .line 1245
    new-instance v0, Lio/grpc/internal/ManagedChannelImpl$4;

    invoke-direct {v0}, Lio/grpc/internal/ManagedChannelImpl$4;-><init>()V

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl;->NOOP_CALL:Lio/grpc/ClientCall;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/ManagedChannelImplBuilder;Lio/grpc/internal/ClientTransportFactory;Lio/grpc/internal/BackoffPolicy$Provider;Lio/grpc/internal/ObjectPool;Lcom/google/common/base/Supplier;Ljava/util/List;Lio/grpc/internal/TimeProvider;)V
    .locals 19
    .param p1, "builder"    # Lio/grpc/internal/ManagedChannelImplBuilder;
    .param p2, "clientTransportFactory"    # Lio/grpc/internal/ClientTransportFactory;
    .param p3, "backoffPolicyProvider"    # Lio/grpc/internal/BackoffPolicy$Provider;
    .param p7, "timeProvider"    # Lio/grpc/internal/TimeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ManagedChannelImplBuilder;",
            "Lio/grpc/internal/ClientTransportFactory;",
            "Lio/grpc/internal/BackoffPolicy$Provider;",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;",
            "Lio/grpc/internal/TimeProvider;",
            ")V"
        }
    .end annotation

    .line 616
    .local p4, "balancerRpcExecutorPool":Lio/grpc/internal/ObjectPool;, "Lio/grpc/internal/ObjectPool<+Ljava/util/concurrent/Executor;>;"
    .local p5, "stopwatchSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/base/Stopwatch;>;"
    .local p6, "interceptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    invoke-direct/range {p0 .. p0}, Lio/grpc/ManagedChannel;-><init>()V

    .line 177
    new-instance v5, Lio/grpc/SynchronizationContext;

    new-instance v6, Lio/grpc/internal/ManagedChannelImpl$2;

    invoke-direct {v6, v0}, Lio/grpc/internal/ManagedChannelImpl$2;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    invoke-direct {v5, v6}, Lio/grpc/SynchronizationContext;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    .line 199
    new-instance v6, Lio/grpc/internal/ConnectivityStateManager;

    invoke-direct {v6}, Lio/grpc/internal/ConnectivityStateManager;-><init>()V

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->channelStateManager:Lio/grpc/internal/ConnectivityStateManager;

    .line 231
    new-instance v6, Ljava/util/HashSet;

    const/16 v7, 0x10

    const/high16 v8, 0x3f400000    # 0.75f

    invoke-direct {v6, v7, v8}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->subchannels:Ljava/util/Set;

    .line 236
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->pendingCallsInUseObject:Ljava/lang/Object;

    .line 239
    new-instance v6, Ljava/util/HashSet;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v8}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->oobChannels:Ljava/util/Set;

    .line 243
    new-instance v6, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

    const/4 v8, 0x0

    invoke-direct {v6, v0, v8}, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->uncommittedRetriableStreamsRegistry:Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

    .line 262
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 269
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->terminatedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 279
    sget-object v6, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->NO_RESOLUTION:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->lastResolutionState:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    .line 282
    sget-object v6, Lio/grpc/internal/ManagedChannelImpl;->EMPTY_SERVICE_CONFIG:Lio/grpc/internal/ManagedChannelServiceConfig;

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->lastServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 287
    iput-boolean v9, v0, Lio/grpc/internal/ManagedChannelImpl;->serviceConfigUpdated:Z

    .line 291
    new-instance v6, Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    invoke-direct {v6}, Lio/grpc/internal/RetriableStream$ChannelBufferMeter;-><init>()V

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->channelBufferUsed:Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    .line 300
    new-instance v6, Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;

    invoke-direct {v6, v0, v8}, Lio/grpc/internal/ManagedChannelImpl$DelayedTransportListener;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->delayedTransportListener:Lio/grpc/internal/ManagedClientTransport$Listener;

    .line 316
    new-instance v10, Lio/grpc/internal/ManagedChannelImpl$IdleModeStateAggregator;

    invoke-direct {v10, v0, v8}, Lio/grpc/internal/ManagedChannelImpl$IdleModeStateAggregator;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V

    iput-object v10, v0, Lio/grpc/internal/ManagedChannelImpl;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    .line 605
    new-instance v10, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;

    invoke-direct {v10, v0, v8}, Lio/grpc/internal/ManagedChannelImpl$ChannelStreamProvider;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V

    iput-object v10, v0, Lio/grpc/internal/ManagedChannelImpl;->transportProvider:Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;

    .line 617
    iget-object v10, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->target:Ljava/lang/String;

    const-string v11, "target"

    invoke-static {v10, v11}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v0, Lio/grpc/internal/ManagedChannelImpl;->target:Ljava/lang/String;

    .line 618
    const-string v11, "Channel"

    invoke-static {v11, v10}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v13

    iput-object v13, v0, Lio/grpc/internal/ManagedChannelImpl;->logId:Lio/grpc/InternalLogId;

    .line 619
    const-string v11, "timeProvider"

    invoke-static {v4, v11}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/grpc/internal/TimeProvider;

    iput-object v11, v0, Lio/grpc/internal/ManagedChannelImpl;->timeProvider:Lio/grpc/internal/TimeProvider;

    .line 620
    iget-object v11, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    const-string v12, "executorPool"

    invoke-static {v11, v12}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/grpc/internal/ObjectPool;

    iput-object v11, v0, Lio/grpc/internal/ManagedChannelImpl;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 621
    invoke-interface {v11}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/Executor;

    const-string v12, "executor"

    invoke-static {v11, v12}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/Executor;

    iput-object v11, v0, Lio/grpc/internal/ManagedChannelImpl;->executor:Ljava/util/concurrent/Executor;

    .line 622
    iget-object v12, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->channelCredentials:Lio/grpc/ChannelCredentials;

    iput-object v12, v0, Lio/grpc/internal/ManagedChannelImpl;->originalChannelCreds:Lio/grpc/ChannelCredentials;

    .line 623
    iput-object v2, v0, Lio/grpc/internal/ManagedChannelImpl;->originalTransportFactory:Lio/grpc/internal/ClientTransportFactory;

    .line 624
    new-instance v15, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    iget-object v12, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 625
    const-string v14, "offloadExecutorPool"

    invoke-static {v12, v14}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/grpc/internal/ObjectPool;

    invoke-direct {v15, v12}, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;-><init>(Lio/grpc/internal/ObjectPool;)V

    iput-object v15, v0, Lio/grpc/internal/ManagedChannelImpl;->offloadExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    .line 626
    new-instance v14, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    iget-object v12, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->callCredentials:Lio/grpc/CallCredentials;

    invoke-direct {v14, v2, v12, v15}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;-><init>(Lio/grpc/internal/ClientTransportFactory;Lio/grpc/CallCredentials;Ljava/util/concurrent/Executor;)V

    iput-object v14, v0, Lio/grpc/internal/ManagedChannelImpl;->transportFactory:Lio/grpc/internal/ClientTransportFactory;

    .line 628
    new-instance v12, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    invoke-direct {v12, v2, v8, v15}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;-><init>(Lio/grpc/internal/ClientTransportFactory;Lio/grpc/CallCredentials;Ljava/util/concurrent/Executor;)V

    iput-object v12, v0, Lio/grpc/internal/ManagedChannelImpl;->oobTransportFactory:Lio/grpc/internal/ClientTransportFactory;

    .line 630
    new-instance v12, Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;

    .line 631
    invoke-interface {v14}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    invoke-direct {v12, v9, v8}, Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/ManagedChannelImpl$1;)V

    iput-object v12, v0, Lio/grpc/internal/ManagedChannelImpl;->scheduledExecutor:Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;

    .line 632
    iget v9, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->maxTraceEvents:I

    iput v9, v0, Lio/grpc/internal/ManagedChannelImpl;->maxTraceEvents:I

    .line 633
    new-instance v9, Lio/grpc/internal/ChannelTracer;

    iget v7, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->maxTraceEvents:I

    .line 634
    invoke-interface/range {p7 .. p7}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    move-result-wide v16

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel for \'"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v12

    move-object v12, v9

    move-object/from16 v18, v14

    move v14, v7

    move-object v7, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Lio/grpc/internal/ChannelTracer;-><init>(Lio/grpc/InternalLogId;IJLjava/lang/String;)V

    iput-object v9, v0, Lio/grpc/internal/ManagedChannelImpl;->channelTracer:Lio/grpc/internal/ChannelTracer;

    .line 636
    new-instance v2, Lio/grpc/internal/ChannelLoggerImpl;

    invoke-direct {v2, v9, v4}, Lio/grpc/internal/ChannelLoggerImpl;-><init>(Lio/grpc/internal/ChannelTracer;Lio/grpc/internal/TimeProvider;)V

    iput-object v2, v0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    .line 638
    iget-object v9, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->proxyDetector:Lio/grpc/ProxyDetector;

    if-eqz v9, :cond_0

    iget-object v9, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->proxyDetector:Lio/grpc/ProxyDetector;

    goto :goto_0

    :cond_0
    sget-object v9, Lio/grpc/internal/GrpcUtil;->DEFAULT_PROXY_DETECTOR:Lio/grpc/ProxyDetector;

    .line 639
    .local v9, "proxyDetector":Lio/grpc/ProxyDetector;
    :goto_0
    iget-boolean v12, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->retryEnabled:Z

    iput-boolean v12, v0, Lio/grpc/internal/ManagedChannelImpl;->retryEnabled:Z

    .line 640
    new-instance v13, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    iget-object v14, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->defaultLbPolicy:Ljava/lang/String;

    invoke-direct {v13, v14}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;-><init>(Ljava/lang/String;)V

    iput-object v13, v0, Lio/grpc/internal/ManagedChannelImpl;->loadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    .line 641
    iget-object v14, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    iput-object v14, v0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    .line 642
    new-instance v14, Lio/grpc/internal/ScParser;

    iget v15, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->maxRetryAttempts:I

    iget v4, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->maxHedgedAttempts:I

    invoke-direct {v14, v12, v15, v4, v13}, Lio/grpc/internal/ScParser;-><init>(ZIILio/grpc/internal/AutoConfiguredLoadBalancerFactory;)V

    move-object v4, v14

    .line 648
    .local v4, "serviceConfigParser":Lio/grpc/internal/ScParser;
    iget-object v12, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->authorityOverride:Ljava/lang/String;

    iput-object v12, v0, Lio/grpc/internal/ManagedChannelImpl;->authorityOverride:Ljava/lang/String;

    .line 649
    nop

    .line 650
    invoke-static {}, Lio/grpc/NameResolver$Args;->newBuilder()Lio/grpc/NameResolver$Args$Builder;

    move-result-object v13

    .line 651
    invoke-virtual/range {p1 .. p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->getDefaultPort()I

    move-result v14

    invoke-virtual {v13, v14}, Lio/grpc/NameResolver$Args$Builder;->setDefaultPort(I)Lio/grpc/NameResolver$Args$Builder;

    move-result-object v13

    .line 652
    invoke-virtual {v13, v9}, Lio/grpc/NameResolver$Args$Builder;->setProxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/NameResolver$Args$Builder;

    move-result-object v13

    .line 653
    invoke-virtual {v13, v5}, Lio/grpc/NameResolver$Args$Builder;->setSynchronizationContext(Lio/grpc/SynchronizationContext;)Lio/grpc/NameResolver$Args$Builder;

    move-result-object v13

    .line 654
    invoke-virtual {v13, v8}, Lio/grpc/NameResolver$Args$Builder;->setScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/NameResolver$Args$Builder;

    move-result-object v8

    .line 655
    invoke-virtual {v8, v4}, Lio/grpc/NameResolver$Args$Builder;->setServiceConfigParser(Lio/grpc/NameResolver$ServiceConfigParser;)Lio/grpc/NameResolver$Args$Builder;

    move-result-object v8

    .line 656
    invoke-virtual {v8, v2}, Lio/grpc/NameResolver$Args$Builder;->setChannelLogger(Lio/grpc/ChannelLogger;)Lio/grpc/NameResolver$Args$Builder;

    move-result-object v8

    .line 657
    invoke-virtual {v8, v7}, Lio/grpc/NameResolver$Args$Builder;->setOffloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/NameResolver$Args$Builder;

    move-result-object v7

    .line 658
    invoke-virtual {v7, v12}, Lio/grpc/NameResolver$Args$Builder;->setOverrideAuthority(Ljava/lang/String;)Lio/grpc/NameResolver$Args$Builder;

    move-result-object v7

    .line 659
    invoke-virtual {v7}, Lio/grpc/NameResolver$Args$Builder;->build()Lio/grpc/NameResolver$Args;

    move-result-object v7

    iput-object v7, v0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverArgs:Lio/grpc/NameResolver$Args;

    .line 660
    iget-object v8, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    iput-object v8, v0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    .line 661
    invoke-static {v10, v12, v8, v7}, Lio/grpc/internal/ManagedChannelImpl;->getNameResolver(Ljava/lang/String;Ljava/lang/String;Lio/grpc/NameResolver$Factory;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;

    move-result-object v7

    iput-object v7, v0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    .line 663
    const-string v7, "balancerRpcExecutorPool"

    invoke-static {v3, v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/grpc/internal/ObjectPool;

    iput-object v7, v0, Lio/grpc/internal/ManagedChannelImpl;->balancerRpcExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 664
    new-instance v7, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    invoke-direct {v7, v3}, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;-><init>(Lio/grpc/internal/ObjectPool;)V

    iput-object v7, v0, Lio/grpc/internal/ManagedChannelImpl;->balancerRpcExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    .line 665
    new-instance v7, Lio/grpc/internal/DelayedClientTransport;

    invoke-direct {v7, v11, v5}, Lio/grpc/internal/DelayedClientTransport;-><init>(Ljava/util/concurrent/Executor;Lio/grpc/SynchronizationContext;)V

    iput-object v7, v0, Lio/grpc/internal/ManagedChannelImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    .line 666
    invoke-virtual {v7, v6}, Lio/grpc/internal/DelayedClientTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;

    .line 667
    move-object/from16 v6, p3

    iput-object v6, v0, Lio/grpc/internal/ManagedChannelImpl;->backoffPolicyProvider:Lio/grpc/internal/BackoffPolicy$Provider;

    .line 669
    iget-object v7, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->defaultServiceConfig:Ljava/util/Map;

    if-eqz v7, :cond_2

    .line 670
    iget-object v7, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->defaultServiceConfig:Ljava/util/Map;

    .line 671
    invoke-virtual {v4, v7}, Lio/grpc/internal/ScParser;->parseServiceConfig(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v7

    .line 672
    .local v7, "parsedDefaultServiceConfig":Lio/grpc/NameResolver$ConfigOrError;
    nop

    .line 673
    invoke-virtual {v7}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 675
    :goto_1
    invoke-virtual {v7}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v10

    .line 672
    const-string v11, "Default config is invalid: %s"

    invoke-static {v8, v11, v10}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 676
    nop

    .line 677
    invoke-virtual {v7}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/grpc/internal/ManagedChannelServiceConfig;

    iput-object v8, v0, Lio/grpc/internal/ManagedChannelImpl;->defaultServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 678
    iput-object v8, v0, Lio/grpc/internal/ManagedChannelImpl;->lastServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 679
    .end local v7    # "parsedDefaultServiceConfig":Lio/grpc/NameResolver$ConfigOrError;
    const/4 v7, 0x0

    goto :goto_2

    .line 680
    :cond_2
    const/4 v7, 0x0

    iput-object v7, v0, Lio/grpc/internal/ManagedChannelImpl;->defaultServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 682
    :goto_2
    iget-boolean v8, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->lookUpServiceConfig:Z

    iput-boolean v8, v0, Lio/grpc/internal/ManagedChannelImpl;->lookUpServiceConfig:Z

    .line 683
    new-instance v10, Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v11, v0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    invoke-virtual {v11}, Lio/grpc/NameResolver;->getServiceAuthority()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11, v7}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;-><init>(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/String;Lio/grpc/internal/ManagedChannelImpl$1;)V

    iput-object v10, v0, Lio/grpc/internal/ManagedChannelImpl;->realChannel:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    .line 684
    iget-object v7, v0, Lio/grpc/internal/ManagedChannelImpl;->realChannel:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    .line 685
    .local v7, "channel":Lio/grpc/Channel;
    iget-object v10, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->binlog:Lio/grpc/BinaryLog;

    if-eqz v10, :cond_3

    .line 686
    iget-object v10, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->binlog:Lio/grpc/BinaryLog;

    invoke-virtual {v10, v7}, Lio/grpc/BinaryLog;->wrapChannel(Lio/grpc/Channel;)Lio/grpc/Channel;

    move-result-object v7

    .line 688
    :cond_3
    move-object/from16 v10, p6

    invoke-static {v7, v10}, Lio/grpc/ClientInterceptors;->intercept(Lio/grpc/Channel;Ljava/util/List;)Lio/grpc/Channel;

    move-result-object v11

    iput-object v11, v0, Lio/grpc/internal/ManagedChannelImpl;->interceptorChannel:Lio/grpc/Channel;

    .line 689
    const-string v11, "stopwatchSupplier"

    move-object/from16 v12, p5

    invoke-static {v12, v11}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/common/base/Supplier;

    iput-object v11, v0, Lio/grpc/internal/ManagedChannelImpl;->stopwatchSupplier:Lcom/google/common/base/Supplier;

    .line 690
    iget-wide v13, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->idleTimeoutMillis:J

    const-wide/16 v15, -0x1

    cmp-long v11, v13, v15

    if-nez v11, :cond_4

    .line 691
    iget-wide v13, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->idleTimeoutMillis:J

    iput-wide v13, v0, Lio/grpc/internal/ManagedChannelImpl;->idleTimeoutMillis:J

    goto :goto_4

    .line 693
    :cond_4
    iget-wide v13, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->idleTimeoutMillis:J

    sget-wide v15, Lio/grpc/internal/ManagedChannelImplBuilder;->IDLE_MODE_MIN_TIMEOUT_MILLIS:J

    cmp-long v11, v13, v15

    if-ltz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    const-string v13, "invalid idleTimeoutMillis %s"

    iget-wide v14, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->idleTimeoutMillis:J

    invoke-static {v11, v13, v14, v15}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 697
    iget-wide v13, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->idleTimeoutMillis:J

    iput-wide v13, v0, Lio/grpc/internal/ManagedChannelImpl;->idleTimeoutMillis:J

    .line 700
    :goto_4
    new-instance v11, Lio/grpc/internal/Rescheduler;

    new-instance v13, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v14}, Lio/grpc/internal/ManagedChannelImpl$IdleModeTimer;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V

    .line 703
    invoke-interface/range {v18 .. v18}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v14

    .line 704
    invoke-interface/range {p5 .. p5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/common/base/Stopwatch;

    invoke-direct {v11, v13, v5, v14, v15}, Lio/grpc/internal/Rescheduler;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Stopwatch;)V

    iput-object v11, v0, Lio/grpc/internal/ManagedChannelImpl;->idleTimer:Lio/grpc/internal/Rescheduler;

    .line 705
    iget-boolean v5, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->fullStreamDecompression:Z

    iput-boolean v5, v0, Lio/grpc/internal/ManagedChannelImpl;->fullStreamDecompression:Z

    .line 706
    iget-object v5, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    const-string v11, "decompressorRegistry"

    invoke-static {v5, v11}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/DecompressorRegistry;

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 707
    iget-object v5, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    const-string v11, "compressorRegistry"

    invoke-static {v5, v11}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/CompressorRegistry;

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 708
    iget-object v5, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->userAgent:Ljava/lang/String;

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->userAgent:Ljava/lang/String;

    .line 710
    iget-wide v13, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->retryBufferSize:J

    iput-wide v13, v0, Lio/grpc/internal/ManagedChannelImpl;->channelBufferLimit:J

    .line 711
    iget-wide v13, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->perRpcBufferLimit:J

    iput-wide v13, v0, Lio/grpc/internal/ManagedChannelImpl;->perRpcBufferLimit:J

    .line 719
    new-instance v5, Lio/grpc/internal/ManagedChannelImpl$1ChannelCallTracerFactory;

    move-object/from16 v11, p7

    invoke-direct {v5, v0, v11}, Lio/grpc/internal/ManagedChannelImpl$1ChannelCallTracerFactory;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/TimeProvider;)V

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->callTracerFactory:Lio/grpc/internal/CallTracer$Factory;

    .line 720
    invoke-interface {v5}, Lio/grpc/internal/CallTracer$Factory;->create()Lio/grpc/internal/CallTracer;

    move-result-object v5

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->channelCallTracer:Lio/grpc/internal/CallTracer;

    .line 721
    iget-object v5, v1, Lio/grpc/internal/ManagedChannelImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/InternalChannelz;

    iput-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->channelz:Lio/grpc/InternalChannelz;

    .line 722
    invoke-virtual {v5, v0}, Lio/grpc/InternalChannelz;->addRootChannel(Lio/grpc/InternalInstrumented;)V

    .line 724
    if-nez v8, :cond_7

    .line 725
    iget-object v5, v0, Lio/grpc/internal/ManagedChannelImpl;->defaultServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

    if-eqz v5, :cond_6

    .line 726
    sget-object v5, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v8, "Service config look-up disabled, using default service config"

    invoke-virtual {v2, v5, v8}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 729
    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, v0, Lio/grpc/internal/ManagedChannelImpl;->serviceConfigUpdated:Z

    .line 731
    :cond_7
    return-void
.end method

.method static synthetic access$1000(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->enterIdleMode()V

    return-void
.end method

.method static synthetic access$1200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/SynchronizationContext$ScheduledHandle;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->scheduledNameResolverRefresh:Lio/grpc/SynchronizationContext$ScheduledHandle;

    return-object v0
.end method

.method static synthetic access$1202(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/SynchronizationContext$ScheduledHandle;)Lio/grpc/SynchronizationContext$ScheduledHandle;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 118
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl;->scheduledNameResolverRefresh:Lio/grpc/SynchronizationContext$ScheduledHandle;

    return-object p1
.end method

.method static synthetic access$1300(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->refreshNameResolution()V

    return-void
.end method

.method static synthetic access$1400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/LoadBalancer$SubchannelPicker;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->subchannelPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    return-object v0
.end method

.method static synthetic access$1500(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/DelayedClientTransport;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    return-object v0
.end method

.method static synthetic access$1700(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->retryEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->lastServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

    return-object v0
.end method

.method static synthetic access$1802(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelServiceConfig;)Lio/grpc/internal/ManagedChannelServiceConfig;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 118
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl;->lastServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

    return-object p1
.end method

.method static synthetic access$1900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/RetriableStream$ChannelBufferMeter;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelBufferUsed:Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    return-object v0
.end method

.method static synthetic access$2000(Lio/grpc/internal/ManagedChannelImpl;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-wide v0, p0, Lio/grpc/internal/ManagedChannelImpl;->perRpcBufferLimit:J

    return-wide v0
.end method

.method static synthetic access$2100(Lio/grpc/internal/ManagedChannelImpl;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-wide v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelBufferLimit:J

    return-wide v0
.end method

.method static synthetic access$2200(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/CallOptions;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Lio/grpc/CallOptions;

    .line 118
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl;->getCallExecutor(Lio/grpc/CallOptions;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->transportFactory:Lio/grpc/internal/ClientTransportFactory;

    return-object v0
.end method

.method static synthetic access$2400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->uncommittedRetriableStreamsRegistry:Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/CallTracer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelCallTracer:Lio/grpc/internal/CallTracer;

    return-object v0
.end method

.method static synthetic access$3100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    return-object v0
.end method

.method static synthetic access$3200(Lio/grpc/internal/ManagedChannelImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Z

    .line 118
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl;->cancelIdleTimer(Z)V

    return-void
.end method

.method static synthetic access$3300(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdownNowed:Z

    return v0
.end method

.method static synthetic access$3302(Lio/grpc/internal/ManagedChannelImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Z

    .line 118
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdownNowed:Z

    return p1
.end method

.method static synthetic access$3400(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->maybeShutdownNowSubchannels()V

    return-void
.end method

.method static synthetic access$3500()Lio/grpc/InternalConfigSelector;
    .locals 1

    .line 118
    sget-object v0, Lio/grpc/internal/ManagedChannelImpl;->INITIAL_PENDING_SELECTOR:Lio/grpc/InternalConfigSelector;

    return-object v0
.end method

.method static synthetic access$3600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/CompressorRegistry;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    return-object v0
.end method

.method static synthetic access$3700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/DecompressorRegistry;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    return-object v0
.end method

.method static synthetic access$3800(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->fullStreamDecompression:Z

    return v0
.end method

.method static synthetic access$3900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->transportProvider:Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ChannelTracer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelTracer:Lio/grpc/internal/ChannelTracer;

    return-object v0
.end method

.method static synthetic access$4000(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->terminated:Z

    return v0
.end method

.method static synthetic access$4200(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->pendingCalls:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$4202(Lio/grpc/internal/ManagedChannelImpl;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Ljava/util/Collection;

    .line 118
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl;->pendingCalls:Ljava/util/Collection;

    return-object p1
.end method

.method static synthetic access$4300(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->pendingCallsInUseObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->scheduledExecutor:Lio/grpc/internal/ManagedChannelImpl$RestrictedScheduledExecutor;

    return-object v0
.end method

.method static synthetic access$4600(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$4700()Lio/grpc/ClientCall;
    .locals 1

    .line 118
    sget-object v0, Lio/grpc/internal/ManagedChannelImpl;->NOOP_CALL:Lio/grpc/ClientCall;

    return-object v0
.end method

.method static synthetic access$4900(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverStarted:Z

    return v0
.end method

.method static synthetic access$500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ConnectivityStateManager;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelStateManager:Lio/grpc/internal/ConnectivityStateManager;

    return-object v0
.end method

.method static synthetic access$5000(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->refreshAndResetNameResolution()V

    return-void
.end method

.method static synthetic access$5100(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->terminating:Z

    return v0
.end method

.method static synthetic access$5102(Lio/grpc/internal/ManagedChannelImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Z

    .line 118
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImpl;->terminating:Z

    return p1
.end method

.method static synthetic access$5200(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 118
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl;->updateSubchannelPicker(Lio/grpc/LoadBalancer$SubchannelPicker;)V

    return-void
.end method

.method static synthetic access$5300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/TimeProvider;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->timeProvider:Lio/grpc/internal/TimeProvider;

    return-object v0
.end method

.method static synthetic access$5400(Lio/grpc/internal/ManagedChannelImpl;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget v0, p0, Lio/grpc/internal/ManagedChannelImpl;->maxTraceEvents:I

    return v0
.end method

.method static synthetic access$5500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ObjectPool;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->balancerRpcExecutorPool:Lio/grpc/internal/ObjectPool;

    return-object v0
.end method

.method static synthetic access$5600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->oobTransportFactory:Lio/grpc/internal/ClientTransportFactory;

    return-object v0
.end method

.method static synthetic access$5700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/CallTracer$Factory;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->callTracerFactory:Lio/grpc/internal/CallTracer$Factory;

    return-object v0
.end method

.method static synthetic access$5800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelz:Lio/grpc/InternalChannelz;

    return-object v0
.end method

.method static synthetic access$5900(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->maybeTerminateChannel()V

    return-void
.end method

.method static synthetic access$600(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->target:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6000(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/ConnectivityStateInfo;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Lio/grpc/ConnectivityStateInfo;

    .line 118
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl;->handleInternalSubchannelState(Lio/grpc/ConnectivityStateInfo;)V

    return-void
.end method

.method static synthetic access$6100(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/BackoffPolicy$Provider;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->backoffPolicyProvider:Lio/grpc/internal/BackoffPolicy$Provider;

    return-object v0
.end method

.method static synthetic access$6300(Lio/grpc/internal/ManagedChannelImpl;)Lcom/google/common/base/Supplier;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->stopwatchSupplier:Lcom/google/common/base/Supplier;

    return-object v0
.end method

.method static synthetic access$6400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->originalTransportFactory:Lio/grpc/internal/ClientTransportFactory;

    return-object v0
.end method

.method static synthetic access$6500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver$Args;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverArgs:Lio/grpc/NameResolver$Args;

    return-object v0
.end method

.method static synthetic access$6600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver$Factory;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    return-object v0
.end method

.method static synthetic access$6700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->offloadExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    return-object v0
.end method

.method static synthetic access$6800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelCredentials;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->originalChannelCreds:Lio/grpc/ChannelCredentials;

    return-object v0
.end method

.method static synthetic access$6900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolverRegistry;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->subchannels:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$7000(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    return-object v0
.end method

.method static synthetic access$7100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->lastResolutionState:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    return-object v0
.end method

.method static synthetic access$7102(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$ResolutionState;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    .line 118
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl;->lastResolutionState:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    return-object p1
.end method

.method static synthetic access$7200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/BackoffPolicy;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverBackoffPolicy:Lio/grpc/internal/BackoffPolicy;

    return-object v0
.end method

.method static synthetic access$7202(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/BackoffPolicy;)Lio/grpc/internal/BackoffPolicy;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Lio/grpc/internal/BackoffPolicy;

    .line 118
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverBackoffPolicy:Lio/grpc/internal/BackoffPolicy;

    return-object p1
.end method

.method static synthetic access$7300(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->lookUpServiceConfig:Z

    return v0
.end method

.method static synthetic access$7400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelServiceConfig;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->defaultServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

    return-object v0
.end method

.method static synthetic access$7500()Lio/grpc/internal/ManagedChannelServiceConfig;
    .locals 1

    .line 118
    sget-object v0, Lio/grpc/internal/ManagedChannelImpl;->EMPTY_SERVICE_CONFIG:Lio/grpc/internal/ManagedChannelServiceConfig;

    return-object v0
.end method

.method static synthetic access$7600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->realChannel:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    return-object v0
.end method

.method static synthetic access$7700(Lio/grpc/internal/ManagedChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->serviceConfigUpdated:Z

    return v0
.end method

.method static synthetic access$7702(Lio/grpc/internal/ManagedChannelImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Z

    .line 118
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImpl;->serviceConfigUpdated:Z

    return p1
.end method

.method static synthetic access$800(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->oobChannels:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$8000(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->authorityOverride:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->balancerRpcExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    return-object v0
.end method

.method static synthetic access$8200(Lio/grpc/internal/ManagedChannelImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;
    .param p1, "x1"    # Z

    .line 118
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl;->shutdownNameResolverAndLoadBalancer(Z)V

    return-void
.end method

.method static synthetic access$8300(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->rescheduleIdleTimer()V

    return-void
.end method

.method static synthetic access$900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->lbHelper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    return-object v0
.end method

.method private cancelIdleTimer(Z)V
    .locals 1
    .param p1, "permanent"    # Z

    .line 442
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->idleTimer:Lio/grpc/internal/Rescheduler;

    invoke-virtual {v0, p1}, Lio/grpc/internal/Rescheduler;->cancel(Z)V

    .line 443
    return-void
.end method

.method private cancelNameResolverBackoff()V
    .locals 1

    .line 471
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 472
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->scheduledNameResolverRefresh:Lio/grpc/SynchronizationContext$ScheduledHandle;

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Lio/grpc/SynchronizationContext$ScheduledHandle;->cancel()V

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->scheduledNameResolverRefresh:Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 475
    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverBackoffPolicy:Lio/grpc/internal/BackoffPolicy;

    .line 477
    :cond_0
    return-void
.end method

.method private enterIdleMode()V
    .locals 3

    .line 428
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/grpc/internal/ManagedChannelImpl;->shutdownNameResolverAndLoadBalancer(Z)V

    .line 429
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/grpc/internal/DelayedClientTransport;->reprocess(Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 430
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "Entering IDLE state"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelStateManager:Lio/grpc/internal/ConnectivityStateManager;

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    invoke-virtual {v0, v1}, Lio/grpc/internal/ConnectivityStateManager;->gotoState(Lio/grpc/ConnectivityState;)V

    .line 435
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->pendingCallsInUseObject:Ljava/lang/Object;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/InUseStateAggregator;->anyObjectInUse([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImpl;->exitIdleMode()V

    .line 438
    :cond_0
    return-void
.end method

.method private getCallExecutor(Lio/grpc/CallOptions;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p1, "callOptions"    # Lio/grpc/CallOptions;

    .line 929
    invoke-virtual {p1}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 930
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-nez v0, :cond_0

    .line 931
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->executor:Ljava/util/concurrent/Executor;

    .line 933
    :cond_0
    return-object v0
.end method

.method private static getNameResolver(Ljava/lang/String;Lio/grpc/NameResolver$Factory;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;
    .locals 7
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "nameResolverFactory"    # Lio/grpc/NameResolver$Factory;
    .param p2, "nameResolverArgs"    # Lio/grpc/NameResolver$Args;

    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, "targetUri":Ljava/net/URI;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 740
    .local v1, "uriSyntaxErrors":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 747
    goto :goto_0

    .line 744
    :catch_0
    move-exception v2

    .line 746
    .local v2, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :goto_0
    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {p1, v0, p2}, Lio/grpc/NameResolver$Factory;->newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;

    move-result-object v2

    .line 750
    .local v2, "resolver":Lio/grpc/NameResolver;
    if-eqz v2, :cond_0

    .line 751
    return-object v2

    .line 758
    .end local v2    # "resolver":Lio/grpc/NameResolver;
    :cond_0
    sget-object v2, Lio/grpc/internal/ManagedChannelImpl;->URI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_1

    .line 762
    :try_start_1
    new-instance v2, Ljava/net/URI;

    invoke-virtual {p1}, Lio/grpc/NameResolver$Factory;->getDefaultScheme()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v4, v3, v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 766
    nop

    .line 767
    invoke-virtual {p1, v0, p2}, Lio/grpc/NameResolver$Factory;->newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;

    move-result-object v2

    .line 768
    .restart local v2    # "resolver":Lio/grpc/NameResolver;
    if-eqz v2, :cond_1

    .line 769
    return-object v2

    .line 763
    .end local v2    # "resolver":Lio/grpc/NameResolver;
    :catch_1
    move-exception v2

    .line 765
    .local v2, "e":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 772
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 774
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 772
    const-string v3, "cannot find a NameResolver for %s%s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static getNameResolver(Ljava/lang/String;Ljava/lang/String;Lio/grpc/NameResolver$Factory;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;
    .locals 2
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "overrideAuthority"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "nameResolverFactory"    # Lio/grpc/NameResolver$Factory;
    .param p3, "nameResolverArgs"    # Lio/grpc/NameResolver$Args;

    .line 781
    invoke-static {p0, p2, p3}, Lio/grpc/internal/ManagedChannelImpl;->getNameResolver(Ljava/lang/String;Lio/grpc/NameResolver$Factory;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;

    move-result-object v0

    .line 782
    .local v0, "resolver":Lio/grpc/NameResolver;
    if-nez p1, :cond_0

    .line 783
    return-object v0

    .line 785
    :cond_0
    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$3;

    invoke-direct {v1, v0, p1}, Lio/grpc/internal/ManagedChannelImpl$3;-><init>(Lio/grpc/NameResolver;Ljava/lang/String;)V

    return-object v1
.end method

.method private handleInternalSubchannelState(Lio/grpc/ConnectivityStateInfo;)V
    .locals 2
    .param p1, "newState"    # Lio/grpc/ConnectivityStateInfo;

    .line 1292
    invoke-virtual {p1}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_1

    .line 1293
    :cond_0
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->refreshAndResetNameResolution()V

    .line 1295
    :cond_1
    return-void
.end method

.method private maybeShutdownNowSubchannels()V
    .locals 4

    .line 305
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdownNowed:Z

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->subchannels:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/InternalSubchannel;

    .line 307
    .local v1, "subchannel":Lio/grpc/internal/InternalSubchannel;
    sget-object v2, Lio/grpc/internal/ManagedChannelImpl;->SHUTDOWN_NOW_STATUS:Lio/grpc/Status;

    invoke-virtual {v1, v2}, Lio/grpc/internal/InternalSubchannel;->shutdownNow(Lio/grpc/Status;)V

    .line 308
    .end local v1    # "subchannel":Lio/grpc/internal/InternalSubchannel;
    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->oobChannels:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/OobChannel;

    .line 310
    .local v1, "oobChannel":Lio/grpc/internal/OobChannel;
    invoke-virtual {v1}, Lio/grpc/internal/OobChannel;->getInternalSubchannel()Lio/grpc/internal/InternalSubchannel;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/ManagedChannelImpl;->SHUTDOWN_NOW_STATUS:Lio/grpc/Status;

    invoke-virtual {v2, v3}, Lio/grpc/internal/InternalSubchannel;->shutdownNow(Lio/grpc/Status;)V

    .line 311
    .end local v1    # "oobChannel":Lio/grpc/internal/OobChannel;
    goto :goto_1

    .line 313
    :cond_1
    return-void
.end method

.method private maybeTerminateChannel()V
    .locals 3

    .line 1273
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->terminated:Z

    if-eqz v0, :cond_0

    .line 1274
    return-void

    .line 1276
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->subchannels:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->oobChannels:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1277
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelz:Lio/grpc/InternalChannelz;

    invoke-virtual {v0, p0}, Lio/grpc/InternalChannelz;->removeRootChannel(Lio/grpc/InternalInstrumented;)V

    .line 1279
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->executorPool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->balancerRpcExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->release()V

    .line 1281
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->offloadExecutorHolder:Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->release()V

    .line 1283
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->transportFactory:Lio/grpc/internal/ClientTransportFactory;

    invoke-interface {v0}, Lio/grpc/internal/ClientTransportFactory;->close()V

    .line 1285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->terminated:Z

    .line 1286
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->terminatedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1288
    :cond_1
    return-void
.end method

.method private refreshAndResetNameResolution()V
    .locals 1

    .line 484
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 485
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->cancelNameResolverBackoff()V

    .line 486
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->refreshNameResolution()V

    .line 487
    return-void
.end method

.method private refreshNameResolution()V
    .locals 1

    .line 490
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 491
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverStarted:Z

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    invoke-virtual {v0}, Lio/grpc/NameResolver;->refresh()V

    .line 494
    :cond_0
    return-void
.end method

.method private rescheduleIdleTimer()V
    .locals 4

    .line 447
    iget-wide v0, p0, Lio/grpc/internal/ManagedChannelImpl;->idleTimeoutMillis:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 448
    return-void

    .line 450
    :cond_0
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl;->idleTimer:Lio/grpc/internal/Rescheduler;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Lio/grpc/internal/Rescheduler;->reschedule(JLjava/util/concurrent/TimeUnit;)V

    .line 451
    return-void
.end method

.method private shutdownNameResolverAndLoadBalancer(Z)V
    .locals 5
    .param p1, "channelIsActive"    # Z

    .line 364
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 365
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 366
    iget-boolean v1, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverStarted:Z

    const-string v2, "nameResolver is not started"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 367
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->lbHelper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "lbHelper is null"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 369
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 370
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->cancelNameResolverBackoff()V

    .line 371
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    invoke-virtual {v1}, Lio/grpc/NameResolver;->shutdown()V

    .line 372
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverStarted:Z

    .line 373
    if-eqz p1, :cond_2

    .line 374
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->target:Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->authorityOverride:Ljava/lang/String;

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverArgs:Lio/grpc/NameResolver$Args;

    invoke-static {v0, v1, v3, v4}, Lio/grpc/internal/ManagedChannelImpl;->getNameResolver(Ljava/lang/String;Ljava/lang/String;Lio/grpc/NameResolver$Factory;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    goto :goto_1

    .line 377
    :cond_2
    iput-object v2, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    .line 380
    :cond_3
    :goto_1
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->lbHelper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    if-eqz v0, :cond_4

    .line 381
    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->lb:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

    invoke-virtual {v0}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->shutdown()V

    .line 382
    iput-object v2, p0, Lio/grpc/internal/ManagedChannelImpl;->lbHelper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    .line 384
    :cond_4
    iput-object v2, p0, Lio/grpc/internal/ManagedChannelImpl;->subchannelPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 385
    return-void
.end method

.method private updateSubchannelPicker(Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 1
    .param p1, "newPicker"    # Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 895
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl;->subchannelPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 896
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    invoke-virtual {v0, p1}, Lio/grpc/internal/DelayedClientTransport;->reprocess(Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 897
    return-void
.end method


# virtual methods
.method public authority()Ljava/lang/String;
    .locals 1

    .line 925
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->interceptorChannel:Lio/grpc/Channel;

    invoke-virtual {v0}, Lio/grpc/Channel;->authority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 906
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->terminatedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterIdle()V
    .locals 2

    .line 1369
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$1PrepareToLoseNetworkRunnable;

    invoke-direct {v1, p0}, Lio/grpc/internal/ManagedChannelImpl$1PrepareToLoseNetworkRunnable;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1370
    return-void
.end method

.method exitIdleMode()V
    .locals 3

    .line 394
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 395
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->panicMode:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 398
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    invoke-virtual {v0}, Lio/grpc/internal/InUseStateAggregator;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/grpc/internal/ManagedChannelImpl;->cancelIdleTimer(Z)V

    goto :goto_0

    .line 405
    :cond_1
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl;->rescheduleIdleTimer()V

    .line 407
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->lbHelper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    if-eqz v0, :cond_2

    .line 408
    return-void

    .line 410
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "Exiting idle mode"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 411
    new-instance v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V

    .line 412
    .local v0, "lbHelper":Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->loadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    invoke-virtual {v1, v0}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->newLoadBalancer(Lio/grpc/LoadBalancer$Helper;)Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->lb:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

    .line 415
    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->lbHelper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    .line 417
    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    invoke-direct {v1, p0, v0, v2}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/NameResolver;)V

    .line 418
    .local v1, "listener":Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;

    invoke-virtual {v2, v1}, Lio/grpc/NameResolver;->start(Lio/grpc/NameResolver$Listener2;)V

    .line 419
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/grpc/internal/ManagedChannelImpl;->nameResolverStarted:Z

    .line 420
    return-void

    .line 396
    .end local v0    # "lbHelper":Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;
    .end local v1    # "listener":Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;
    :cond_3
    :goto_1
    return-void
.end method

.method getConfigSelector()Lio/grpc/InternalConfigSelector;
    .locals 1

    .line 795
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->realChannel:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->access$3000(Lio/grpc/internal/ManagedChannelImpl$RealChannel;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalConfigSelector;

    return-object v0
.end method

.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    .line 344
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->logId:Lio/grpc/InternalLogId;

    return-object v0
.end method

.method public getState(Z)Lio/grpc/ConnectivityState;
    .locals 3
    .param p1, "requestConnection"    # Z

    .line 1300
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelStateManager:Lio/grpc/internal/ConnectivityStateManager;

    invoke-virtual {v0}, Lio/grpc/internal/ConnectivityStateManager;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    .line 1301
    .local v0, "savedChannelState":Lio/grpc/ConnectivityState;
    if-eqz p1, :cond_0

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    .line 1315
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v2, Lio/grpc/internal/ManagedChannelImpl$1RequestConnection;

    invoke-direct {v2, p0}, Lio/grpc/internal/ManagedChannelImpl$1RequestConnection;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    invoke-virtual {v1, v2}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1317
    :cond_0
    return-object v0
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;"
        }
    .end annotation

    .line 321
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 338
    .local v0, "ret":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lio/grpc/InternalChannelz$ChannelStats;>;"
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v2, Lio/grpc/internal/ManagedChannelImpl$1StatsFetcher;

    invoke-direct {v2, p0, v0}, Lio/grpc/internal/ManagedChannelImpl$1StatsFetcher;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v1, v2}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 339
    return-object v0
.end method

.method isInPanicMode()Z
    .locals 1

    .line 890
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->panicMode:Z

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 901
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 911
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->terminated:Z

    return v0
.end method

.method public newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;
    .locals 1
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 920
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->interceptorChannel:Lio/grpc/Channel;

    invoke-virtual {v0, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v0

    return-object v0
.end method

.method public notifyWhenStateChanged(Lio/grpc/ConnectivityState;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "source"    # Lio/grpc/ConnectivityState;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 1329
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$1NotifyStateChanged;

    invoke-direct {v1, p0, p2, p1}, Lio/grpc/internal/ManagedChannelImpl$1NotifyStateChanged;-><init>(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/Runnable;Lio/grpc/ConnectivityState;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1330
    return-void
.end method

.method panic(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 857
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->panicMode:Z

    if-eqz v0, :cond_0

    .line 859
    return-void

    .line 861
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl;->panicMode:Z

    .line 862
    invoke-direct {p0, v0}, Lio/grpc/internal/ManagedChannelImpl;->cancelIdleTimer(Z)V

    .line 863
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/grpc/internal/ManagedChannelImpl;->shutdownNameResolverAndLoadBalancer(Z)V

    .line 882
    new-instance v0, Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;-><init>(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/ManagedChannelImpl;->updateSubchannelPicker(Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 883
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->realChannel:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->updateConfigSelector(Lio/grpc/InternalConfigSelector;)V

    .line 884
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->ERROR:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "PANIC! Entering TRANSIENT_FAILURE"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelStateManager:Lio/grpc/internal/ConnectivityStateManager;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    invoke-virtual {v0, v1}, Lio/grpc/internal/ConnectivityStateManager;->gotoState(Lio/grpc/ConnectivityState;)V

    .line 886
    return-void
.end method

.method public resetConnectBackoff()V
    .locals 2

    .line 1353
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$1ResetConnectBackoff;

    invoke-direct {v1, p0}, Lio/grpc/internal/ManagedChannelImpl$1ResetConnectBackoff;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1354
    return-void
.end method

.method public bridge synthetic shutdown()Lio/grpc/ManagedChannel;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImpl;->shutdown()Lio/grpc/internal/ManagedChannelImpl;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()Lio/grpc/internal/ManagedChannelImpl;
    .locals 3

    .line 804
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "shutdown() called"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 806
    return-object p0

    .line 816
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$1Shutdown;

    invoke-direct {v1, p0}, Lio/grpc/internal/ManagedChannelImpl$1Shutdown;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 817
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->realChannel:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->shutdown()V

    .line 825
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$1CancelIdleTimer;

    invoke-direct {v1, p0}, Lio/grpc/internal/ManagedChannelImpl$1CancelIdleTimer;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 826
    return-object p0
.end method

.method public bridge synthetic shutdownNow()Lio/grpc/ManagedChannel;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImpl;->shutdownNow()Lio/grpc/internal/ManagedChannelImpl;

    move-result-object v0

    return-object v0
.end method

.method public shutdownNow()Lio/grpc/internal/ManagedChannelImpl;
    .locals 3

    .line 836
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->channelLogger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "shutdownNow() called"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 837
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImpl;->shutdown()Lio/grpc/internal/ManagedChannelImpl;

    .line 838
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->realChannel:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->shutdownNow()V

    .line 850
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$1ShutdownNow;

    invoke-direct {v1, p0}, Lio/grpc/internal/ManagedChannelImpl$1ShutdownNow;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 851
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2146
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->logId:Lio/grpc/InternalLogId;

    .line 2147
    invoke-virtual {v1}, Lio/grpc/InternalLogId;->getId()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl;->target:Ljava/lang/String;

    .line 2148
    const-string v2, "target"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 2149
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2146
    return-object v0
.end method
