.class public final Lio/grpc/internal/ManagedChannelImplBuilder;
.super Lio/grpc/ManagedChannelBuilder;
.source "ManagedChannelImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverFactory;,
        Lio/grpc/internal/ManagedChannelImplBuilder$ManagedChannelDefaultPortProvider;,
        Lio/grpc/internal/ManagedChannelImplBuilder$FixedPortProvider;,
        Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;,
        Lio/grpc/internal/ManagedChannelImplBuilder$UnsupportedClientTransportFactoryBuilder;,
        Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ManagedChannelBuilder<",
        "Lio/grpc/internal/ManagedChannelImplBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

.field private static final DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

.field private static final DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PER_RPC_BUFFER_LIMIT_IN_BYTES:J = 0x100000L

.field private static final DEFAULT_RETRY_BUFFER_SIZE_IN_BYTES:J = 0x1000000L

.field private static final DIRECT_ADDRESS_SCHEME:Ljava/lang/String; = "directaddress"

.field static final IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

.field static final IDLE_MODE_MAX_TIMEOUT_DAYS:J = 0x1eL

.field static final IDLE_MODE_MIN_TIMEOUT_MILLIS:J

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private authorityCheckerDisabled:Z

.field authorityOverride:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field binlog:Lio/grpc/BinaryLog;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final callCredentials:Lio/grpc/CallCredentials;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final channelBuilderDefaultPortProvider:Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;

.field final channelCredentials:Lio/grpc/ChannelCredentials;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field channelz:Lio/grpc/InternalChannelz;

.field private final clientTransportFactoryBuilder:Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;

.field compressorRegistry:Lio/grpc/CompressorRegistry;

.field decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field defaultLbPolicy:Ljava/lang/String;

.field defaultServiceConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final directServerAddress:Ljava/net/SocketAddress;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field executorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field fullStreamDecompression:Z

.field idleTimeoutMillis:J

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field lookUpServiceConfig:Z

.field maxHedgedAttempts:I

.field maxRetryAttempts:I

.field maxTraceEvents:I

.field nameResolverFactory:Lio/grpc/NameResolver$Factory;

.field final nameResolverRegistry:Lio/grpc/NameResolverRegistry;

.field offloadExecutorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field perRpcBufferLimit:J

.field proxyDetector:Lio/grpc/ProxyDetector;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private recordFinishedRpcs:Z

.field private recordRealTimeMetrics:Z

.field private recordRetryMetrics:Z

.field private recordStartedRpcs:Z

.field retryBufferSize:J

.field retryEnabled:Z

.field private statsEnabled:Z

.field final target:Ljava/lang/String;

.field private tracingEnabled:Z

.field userAgent:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    const-class v0, Lio/grpc/internal/ManagedChannelImplBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/ManagedChannelImplBuilder;->IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

    .line 93
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/ManagedChannelImplBuilder;->IDLE_MODE_MIN_TIMEOUT_MILLIS:J

    .line 95
    sget-object v0, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 96
    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    .line 99
    invoke-static {}, Lio/grpc/DecompressorRegistry;->getDefaultInstance()Lio/grpc/DecompressorRegistry;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    .line 102
    invoke-static {}, Lio/grpc/CompressorRegistry;->getDefaultInstance()Lio/grpc/CompressorRegistry;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "channelCreds"    # Lio/grpc/ChannelCredentials;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "callCreds"    # Lio/grpc/CallCredentials;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "clientTransportFactoryBuilder"    # Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;
    .param p5, "channelBuilderDefaultPortProvider"    # Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 246
    invoke-direct {p0}, Lio/grpc/ManagedChannelBuilder;-><init>()V

    .line 107
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 109
    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    .line 112
    invoke-static {}, Lio/grpc/NameResolverRegistry;->getDefaultRegistry()Lio/grpc/NameResolverRegistry;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    .line 115
    invoke-virtual {v0}, Lio/grpc/NameResolverRegistry;->asFactory()Lio/grpc/NameResolver$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    .line 132
    const-string v0, "pick_first"

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->defaultLbPolicy:Ljava/lang/String;

    .line 136
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 138
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 140
    sget-wide v0, Lio/grpc/internal/ManagedChannelImplBuilder;->IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->idleTimeoutMillis:J

    .line 142
    const/4 v0, 0x5

    iput v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->maxRetryAttempts:I

    .line 143
    iput v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->maxHedgedAttempts:I

    .line 144
    const-wide/32 v0, 0x1000000

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->retryBufferSize:J

    .line 145
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->perRpcBufferLimit:J

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->retryEnabled:Z

    .line 148
    invoke-static {}, Lio/grpc/InternalChannelz;->instance()Lio/grpc/InternalChannelz;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    .line 153
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->lookUpServiceConfig:Z

    .line 162
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->statsEnabled:Z

    .line 163
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordStartedRpcs:Z

    .line 164
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordFinishedRpcs:Z

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    .line 166
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRetryMetrics:Z

    .line 167
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->tracingEnabled:Z

    .line 247
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->target:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelCredentials:Lio/grpc/ChannelCredentials;

    .line 249
    iput-object p3, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->callCredentials:Lio/grpc/CallCredentials;

    .line 250
    nop

    .line 251
    const-string v0, "clientTransportFactoryBuilder"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->clientTransportFactoryBuilder:Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    .line 254
    if-eqz p5, :cond_0

    .line 255
    iput-object p5, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelBuilderDefaultPortProvider:Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;

    goto :goto_0

    .line 257
    :cond_0
    new-instance v1, Lio/grpc/internal/ManagedChannelImplBuilder$ManagedChannelDefaultPortProvider;

    invoke-direct {v1, v0}, Lio/grpc/internal/ManagedChannelImplBuilder$ManagedChannelDefaultPortProvider;-><init>(Lio/grpc/internal/ManagedChannelImplBuilder$1;)V

    iput-object v1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelBuilderDefaultPortProvider:Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;

    .line 259
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "clientTransportFactoryBuilder"    # Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;
    .param p3, "channelBuilderDefaultPortProvider"    # Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 232
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/grpc/internal/ManagedChannelImplBuilder;-><init>(Ljava/lang/String;Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V
    .locals 2
    .param p1, "directServerAddress"    # Ljava/net/SocketAddress;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "channelCreds"    # Lio/grpc/ChannelCredentials;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "callCreds"    # Lio/grpc/CallCredentials;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "clientTransportFactoryBuilder"    # Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;
    .param p6, "channelBuilderDefaultPortProvider"    # Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 299
    invoke-direct {p0}, Lio/grpc/ManagedChannelBuilder;-><init>()V

    .line 107
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 109
    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    .line 112
    invoke-static {}, Lio/grpc/NameResolverRegistry;->getDefaultRegistry()Lio/grpc/NameResolverRegistry;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    .line 115
    invoke-virtual {v0}, Lio/grpc/NameResolverRegistry;->asFactory()Lio/grpc/NameResolver$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    .line 132
    const-string v0, "pick_first"

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->defaultLbPolicy:Ljava/lang/String;

    .line 136
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 138
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 140
    sget-wide v0, Lio/grpc/internal/ManagedChannelImplBuilder;->IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->idleTimeoutMillis:J

    .line 142
    const/4 v0, 0x5

    iput v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->maxRetryAttempts:I

    .line 143
    iput v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->maxHedgedAttempts:I

    .line 144
    const-wide/32 v0, 0x1000000

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->retryBufferSize:J

    .line 145
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->perRpcBufferLimit:J

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->retryEnabled:Z

    .line 148
    invoke-static {}, Lio/grpc/InternalChannelz;->instance()Lio/grpc/InternalChannelz;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    .line 153
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->lookUpServiceConfig:Z

    .line 162
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->statsEnabled:Z

    .line 163
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordStartedRpcs:Z

    .line 164
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordFinishedRpcs:Z

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    .line 166
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRetryMetrics:Z

    .line 167
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->tracingEnabled:Z

    .line 300
    invoke-static {p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->makeTargetStringForDirectAddress(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->target:Ljava/lang/String;

    .line 301
    iput-object p3, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelCredentials:Lio/grpc/ChannelCredentials;

    .line 302
    iput-object p4, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->callCredentials:Lio/grpc/CallCredentials;

    .line 303
    nop

    .line 304
    const-string v0, "clientTransportFactoryBuilder"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->clientTransportFactoryBuilder:Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;

    .line 305
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    .line 306
    new-instance v0, Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverFactory;

    invoke-direct {v0, p1, p2}, Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverFactory;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;)V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    .line 308
    if-eqz p6, :cond_0

    .line 309
    iput-object p6, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelBuilderDefaultPortProvider:Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;

    goto :goto_0

    .line 311
    :cond_0
    new-instance v0, Lio/grpc/internal/ManagedChannelImplBuilder$ManagedChannelDefaultPortProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/internal/ManagedChannelImplBuilder$ManagedChannelDefaultPortProvider;-><init>(Lio/grpc/internal/ManagedChannelImplBuilder$1;)V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelBuilderDefaultPortProvider:Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;

    .line 313
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V
    .locals 7
    .param p1, "directServerAddress"    # Ljava/net/SocketAddress;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "clientTransportFactoryBuilder"    # Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;
    .param p4, "channelBuilderDefaultPortProvider"    # Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 284
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/grpc/internal/ManagedChannelImplBuilder;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V

    .line 286
    return-void
.end method

.method private static checkListEntryTypes(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 526
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 527
    .local v0, "parsedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 528
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 529
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 530
    :cond_0
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 531
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImplBuilder;->checkMapEntryTypes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 532
    :cond_1
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 533
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImplBuilder;->checkListEntryTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 534
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 535
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 536
    :cond_3
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_4

    .line 537
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 538
    :cond_4
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    .line 539
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 541
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The entry \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 542
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', which is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 546
    .end local v2    # "value":Ljava/lang/Object;
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static checkMapEntryTypes(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .param p0    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 492
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 493
    return-object v0

    .line 496
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 497
    .local v1, "parsedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 498
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    nop

    .line 499
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    .line 498
    const-string v5, "The key of the entry \'%s\' is not of String type"

    invoke-static {v4, v5, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 502
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 503
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 504
    .local v5, "value":Ljava/lang/Object;
    if-nez v5, :cond_1

    .line 505
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 506
    :cond_1
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_2

    .line 507
    move-object v6, v5

    check-cast v6, Ljava/util/Map;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImplBuilder;->checkMapEntryTypes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 508
    :cond_2
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_3

    .line 509
    move-object v6, v5

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImplBuilder;->checkListEntryTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 510
    :cond_3
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 511
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 512
    :cond_4
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_5

    .line 513
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 514
    :cond_5
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_6

    .line 515
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 517
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The value of the map entry \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\' is of type \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 518
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\', which is not supported"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_7
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static forAddress(Ljava/lang/String;I)Lio/grpc/ManagedChannelBuilder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ClientTransportFactoryBuilder is required, use a constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forTarget(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 2
    .param p0, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ClientTransportFactoryBuilder is required, use a constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static makeTargetStringForDirectAddress(Ljava/net/SocketAddress;)Ljava/lang/String;
    .locals 5
    .param p0, "address"    # Ljava/net/SocketAddress;

    .line 269
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "directaddress"

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 270
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public build()Lio/grpc/ManagedChannel;
    .locals 10

    .line 625
    new-instance v0, Lio/grpc/internal/ManagedChannelOrphanWrapper;

    new-instance v9, Lio/grpc/internal/ManagedChannelImpl;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->clientTransportFactoryBuilder:Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;

    .line 627
    invoke-interface {v1}, Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;->buildClientTransportFactory()Lio/grpc/internal/ClientTransportFactory;

    move-result-object v3

    new-instance v4, Lio/grpc/internal/ExponentialBackoffPolicy$Provider;

    invoke-direct {v4}, Lio/grpc/internal/ExponentialBackoffPolicy$Provider;-><init>()V

    sget-object v1, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 629
    invoke-static {v1}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v5

    sget-object v6, Lio/grpc/internal/GrpcUtil;->STOPWATCH_SUPPLIER:Lcom/google/common/base/Supplier;

    .line 631
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImplBuilder;->getEffectiveInterceptors()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lio/grpc/internal/TimeProvider;->SYSTEM_TIME_PROVIDER:Lio/grpc/internal/TimeProvider;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lio/grpc/internal/ManagedChannelImpl;-><init>(Lio/grpc/internal/ManagedChannelImplBuilder;Lio/grpc/internal/ClientTransportFactory;Lio/grpc/internal/BackoffPolicy$Provider;Lio/grpc/internal/ObjectPool;Lcom/google/common/base/Supplier;Ljava/util/List;Lio/grpc/internal/TimeProvider;)V

    invoke-direct {v0, v9}, Lio/grpc/internal/ManagedChannelOrphanWrapper;-><init>(Lio/grpc/ManagedChannel;)V

    .line 625
    return-object v0
.end method

.method checkAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .line 605
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->authorityCheckerDisabled:Z

    if-eqz v0, :cond_0

    .line 606
    return-object p1

    .line 608
    :cond_0
    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->checkAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/CompressorRegistry;

    .line 393
    if-eqz p1, :cond_0

    .line 394
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    goto :goto_0

    .line 396
    :cond_0
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 398
    :goto_0
    return-object p0
.end method

.method public bridge synthetic decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/DecompressorRegistry;

    .line 383
    if-eqz p1, :cond_0

    .line 384
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    goto :goto_0

    .line 386
    :cond_0
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 388
    :goto_0
    return-object p0
.end method

.method public bridge synthetic defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 5
    .param p1, "policy"    # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "directServerAddress is set (%s), which forbids the use of load-balancing policy"

    invoke-static {v3, v4, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 370
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "policy cannot be null"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 371
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->defaultLbPolicy:Ljava/lang/String;

    .line 372
    return-object p0
.end method

.method public bridge synthetic defaultServiceConfig(Ljava/util/Map;)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->defaultServiceConfig(Ljava/util/Map;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultServiceConfig(Ljava/util/Map;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/internal/ManagedChannelImplBuilder;"
        }
    .end annotation

    .line 486
    .local p1, "serviceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->checkMapEntryTypes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->defaultServiceConfig:Ljava/util/Map;

    .line 487
    return-object p0
.end method

.method public bridge synthetic directExecutor()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImplBuilder;->directExecutor()Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public directExecutor()Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1

    .line 317
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/ManagedChannelImplBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableCheckAuthority()Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->authorityCheckerDisabled:Z

    .line 614
    return-object p0
.end method

.method public bridge synthetic disableRetry()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImplBuilder;->disableRetry()Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableRetry()Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->retryEnabled:Z

    .line 455
    return-object p0
.end method

.method public bridge synthetic disableServiceConfigLookUp()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImplBuilder;->disableServiceConfigLookUp()Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableServiceConfigLookUp()Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->lookUpServiceConfig:Z

    .line 552
    return-object p0
.end method

.method public enableCheckAuthority()Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->authorityCheckerDisabled:Z

    .line 620
    return-object p0
.end method

.method public bridge synthetic enableFullStreamDecompression()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImplBuilder;->enableFullStreamDecompression()Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enableFullStreamDecompression()Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->fullStreamDecompression:Z

    .line 378
    return-object p0
.end method

.method public bridge synthetic enableRetry()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImplBuilder;->enableRetry()Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enableRetry()Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->retryEnabled:Z

    .line 461
    return-object p0
.end method

.method public bridge synthetic executor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 322
    if-eqz p1, :cond_0

    .line 323
    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    invoke-direct {v0, p1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    goto :goto_0

    .line 325
    :cond_0
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 327
    :goto_0
    return-object p0
.end method

.method getDefaultPort()I
    .locals 1

    .line 714
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelBuilderDefaultPortProvider:Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;

    invoke-interface {v0}, Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;->getDefaultPort()I

    move-result v0

    return v0
.end method

.method getEffectiveInterceptors()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation

    .line 640
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 641
    .local v0, "effectiveInterceptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    const/4 v1, 0x0

    .line 643
    .local v1, "isGlobalInterceptorsSet":Z
    invoke-static {}, Lio/grpc/InternalGlobalInterceptors;->getClientInterceptors()Ljava/util/List;

    move-result-object v2

    .line 644
    .local v2, "globalClientInterceptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    if-eqz v2, :cond_0

    .line 645
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 646
    const/4 v1, 0x1

    .line 648
    :cond_0
    const/4 v3, 0x0

    const-string v4, "getClientInterceptor"

    const/4 v5, 0x0

    const-string v6, "Unable to apply census stats"

    if-nez v1, :cond_1

    iget-boolean v7, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->statsEnabled:Z

    if-eqz v7, :cond_1

    .line 649
    const/4 v7, 0x0

    .line 651
    .local v7, "statsInterceptor":Lio/grpc/ClientInterceptor;
    :try_start_0
    const-string v8, "io.grpc.census.InternalCensusStatsAccessor"

    .line 652
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 653
    .local v8, "censusStatsAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x4

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x2

    aput-object v11, v10, v13

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x3

    aput-object v11, v10, v14

    .line 654
    invoke-virtual {v8, v4, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 660
    .local v10, "getClientInterceptorMethod":Ljava/lang/reflect/Method;
    new-array v9, v9, [Ljava/lang/Object;

    iget-boolean v11, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordStartedRpcs:Z

    .line 664
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v5

    iget-boolean v11, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordFinishedRpcs:Z

    .line 665
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v12

    iget-boolean v11, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    .line 666
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v13

    iget-boolean v11, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRetryMetrics:Z

    .line 667
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v14

    .line 662
    invoke-virtual {v10, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/grpc/ClientInterceptor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v9

    .line 677
    .end local v8    # "censusStatsAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "getClientInterceptorMethod":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 675
    :catch_0
    move-exception v8

    .line 676
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v9, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10, v6, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 673
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v8

    .line 674
    .local v8, "e":Ljava/lang/IllegalAccessException;
    sget-object v9, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10, v6, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 671
    :catch_2
    move-exception v8

    .line 672
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    sget-object v9, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10, v6, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 668
    :catch_3
    move-exception v8

    .line 670
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    sget-object v9, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10, v6, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 678
    :goto_1
    if-eqz v7, :cond_1

    .line 681
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 684
    .end local v7    # "statsInterceptor":Lio/grpc/ClientInterceptor;
    :cond_1
    if-nez v1, :cond_2

    iget-boolean v7, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->tracingEnabled:Z

    if-eqz v7, :cond_2

    .line 685
    const/4 v7, 0x0

    .line 687
    .local v7, "tracingInterceptor":Lio/grpc/ClientInterceptor;
    :try_start_1
    const-string v8, "io.grpc.census.InternalCensusTracingAccessor"

    .line 688
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 689
    .local v8, "censusTracingAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v9, v5, [Ljava/lang/Class;

    .line 690
    invoke-virtual {v8, v4, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 691
    .local v4, "getClientInterceptroMethod":Ljava/lang/reflect/Method;
    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/ClientInterceptor;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v7, v3

    .line 701
    .end local v4    # "getClientInterceptroMethod":Ljava/lang/reflect/Method;
    .end local v8    # "censusTracingAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    goto :goto_3

    .line 699
    :catch_4
    move-exception v3

    .line 700
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v8, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 697
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v3

    .line 698
    .local v3, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v8, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 695
    :catch_6
    move-exception v3

    .line 696
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v8, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    .line 692
    :catch_7
    move-exception v3

    .line 694
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v8, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_2

    .line 702
    :goto_3
    if-eqz v7, :cond_2

    .line 703
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 706
    .end local v7    # "tracingInterceptor":Lio/grpc/ClientInterceptor;
    :cond_2
    return-object v0
.end method

.method public getOffloadExecutorPool()Lio/grpc/internal/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    return-object v0
.end method

.method public bridge synthetic idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/internal/ManagedChannelImplBuilder;->idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 4
    .param p1, "value"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 415
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "idle timeout is %s, but must be positive"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 417
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 419
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->idleTimeoutMillis:J

    goto :goto_1

    .line 421
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sget-wide v2, Lio/grpc/internal/ManagedChannelImplBuilder;->IDLE_MODE_MIN_TIMEOUT_MILLIS:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->idleTimeoutMillis:J

    .line 423
    :goto_1
    return-object p0
.end method

.method public bridge synthetic intercept(Ljava/util/List;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->intercept(Ljava/util/List;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public intercept(Ljava/util/List;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;)",
            "Lio/grpc/internal/ManagedChannelImplBuilder;"
        }
    .end annotation

    .line 342
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 343
    return-object p0
.end method

.method public varargs intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .param p1, "interceptors"    # [Lio/grpc/ClientInterceptor;

    .line 348
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/ManagedChannelImplBuilder;->intercept(Ljava/util/List;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maxHedgedAttempts(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->maxHedgedAttempts(I)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxHedgedAttempts(I)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 0
    .param p1, "maxHedgedAttempts"    # I

    .line 434
    iput p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->maxHedgedAttempts:I

    .line 435
    return-object p0
.end method

.method public bridge synthetic maxRetryAttempts(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->maxRetryAttempts(I)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxRetryAttempts(I)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 0
    .param p1, "maxRetryAttempts"    # I

    .line 428
    iput p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->maxRetryAttempts:I

    .line 429
    return-object p0
.end method

.method public bridge synthetic maxTraceEvents(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->maxTraceEvents(I)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxTraceEvents(I)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 2
    .param p1, "maxTraceEvents"    # I

    .line 472
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxTraceEvents must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 473
    iput p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->maxTraceEvents:I

    .line 474
    return-object p0
.end method

.method public bridge synthetic nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 3
    .param p1, "resolverFactory"    # Lio/grpc/NameResolver$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "directServerAddress is set (%s), which forbids the use of NameResolverFactory"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 357
    if-eqz p1, :cond_1

    .line 358
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    goto :goto_1

    .line 360
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    invoke-virtual {v0}, Lio/grpc/NameResolverRegistry;->asFactory()Lio/grpc/NameResolver$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    .line 362
    :goto_1
    return-object p0
.end method

.method public bridge synthetic offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 332
    if-eqz p1, :cond_0

    .line 333
    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    invoke-direct {v0, p1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    goto :goto_0

    .line 335
    :cond_0
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 337
    :goto_0
    return-object p0
.end method

.method public bridge synthetic overrideAuthority(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->overrideAuthority(Ljava/lang/String;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public overrideAuthority(Ljava/lang/String;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .line 409
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->checkAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->authorityOverride:Ljava/lang/String;

    .line 410
    return-object p0
.end method

.method public bridge synthetic perRpcBufferLimit(J)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/ManagedChannelImplBuilder;->perRpcBufferLimit(J)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public perRpcBufferLimit(J)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 2
    .param p1, "bytes"    # J

    .line 447
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "per RPC buffer limit must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 448
    iput-wide p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->perRpcBufferLimit:J

    .line 449
    return-object p0
.end method

.method public bridge synthetic proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .param p1    # Lio/grpc/ProxyDetector;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 0
    .param p1, "proxyDetector"    # Lio/grpc/ProxyDetector;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 479
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->proxyDetector:Lio/grpc/ProxyDetector;

    .line 480
    return-object p0
.end method

.method public bridge synthetic retryBufferSize(J)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/ManagedChannelImplBuilder;->retryBufferSize(J)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public retryBufferSize(J)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 2
    .param p1, "bytes"    # J

    .line 440
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "retry buffer size must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 441
    iput-wide p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->retryBufferSize:J

    .line 442
    return-object p0
.end method

.method public bridge synthetic setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 0
    .param p1, "binlog"    # Lio/grpc/BinaryLog;

    .line 466
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->binlog:Lio/grpc/BinaryLog;

    .line 467
    return-object p0
.end method

.method public setStatsEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 562
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->statsEnabled:Z

    .line 563
    return-void
.end method

.method public setStatsRecordFinishedRpcs(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 578
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordFinishedRpcs:Z

    .line 579
    return-void
.end method

.method public setStatsRecordRealTimeMetrics(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 586
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    .line 587
    return-void
.end method

.method public setStatsRecordRetryMetrics(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 590
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRetryMetrics:Z

    .line 591
    return-void
.end method

.method public setStatsRecordStartedRpcs(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 570
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordStartedRpcs:Z

    .line 571
    return-void
.end method

.method public setTracingEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 597
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->tracingEnabled:Z

    .line 598
    return-void
.end method

.method public bridge synthetic userAgent(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->userAgent(Ljava/lang/String;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public userAgent(Ljava/lang/String;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 403
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->userAgent:Ljava/lang/String;

    .line 404
    return-object p0
.end method
