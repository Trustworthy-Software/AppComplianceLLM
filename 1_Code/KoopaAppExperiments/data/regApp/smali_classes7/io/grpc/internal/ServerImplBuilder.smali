.class public final Lio/grpc/internal/ServerImplBuilder;
.super Lio/grpc/ServerBuilder;
.source "ServerImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ServerImplBuilder$DefaultFallbackRegistry;,
        Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ServerBuilder<",
        "Lio/grpc/internal/ServerImplBuilder;",
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

.field private static final DEFAULT_FALLBACK_REGISTRY:Lio/grpc/HandlerRegistry;

.field private static final DEFAULT_HANDSHAKE_TIMEOUT_MILLIS:J

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field binlog:Lio/grpc/BinaryLog;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field callTracerFactory:Lio/grpc/internal/CallTracer$Factory;

.field channelz:Lio/grpc/InternalChannelz;

.field private final clientTransportServersBuilder:Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;

.field compressorRegistry:Lio/grpc/CompressorRegistry;

.field decompressorRegistry:Lio/grpc/DecompressorRegistry;

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

.field executorSupplier:Lio/grpc/ServerCallExecutorSupplier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field fallbackRegistry:Lio/grpc/HandlerRegistry;

.field handshakeTimeoutMillis:J

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private recordFinishedRpcs:Z

.field private recordRealTimeMetrics:Z

.field private recordStartedRpcs:Z

.field final registryBuilder:Lio/grpc/internal/InternalHandlerRegistry$Builder;

.field private statsEnabled:Z

.field private final streamTracerFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation
.end field

.field ticker:Lio/grpc/Deadline$Ticker;

.field private tracingEnabled:Z

.field final transportFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerTransportFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    const-class v0, Lio/grpc/internal/ServerImplBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    .line 68
    sget-object v0, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 69
    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    .line 70
    new-instance v0, Lio/grpc/internal/ServerImplBuilder$DefaultFallbackRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/internal/ServerImplBuilder$DefaultFallbackRegistry;-><init>(Lio/grpc/internal/ServerImplBuilder$1;)V

    sput-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_FALLBACK_REGISTRY:Lio/grpc/HandlerRegistry;

    .line 72
    invoke-static {}, Lio/grpc/DecompressorRegistry;->getDefaultInstance()Lio/grpc/DecompressorRegistry;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    .line 74
    invoke-static {}, Lio/grpc/CompressorRegistry;->getDefaultInstance()Lio/grpc/CompressorRegistry;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    .line 75
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_HANDSHAKE_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;)V
    .locals 2
    .param p1, "clientTransportServersBuilder"    # Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;

    .line 113
    invoke-direct {p0}, Lio/grpc/ServerBuilder;-><init>()V

    .line 78
    new-instance v0, Lio/grpc/internal/InternalHandlerRegistry$Builder;

    invoke-direct {v0}, Lio/grpc/internal/InternalHandlerRegistry$Builder;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->registryBuilder:Lio/grpc/internal/InternalHandlerRegistry$Builder;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->transportFilters:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->interceptors:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->streamTracerFactories:Ljava/util/List;

    .line 84
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_FALLBACK_REGISTRY:Lio/grpc/HandlerRegistry;

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->fallbackRegistry:Lio/grpc/HandlerRegistry;

    .line 85
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 86
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 87
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 88
    sget-wide v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_HANDSHAKE_TIMEOUT_MILLIS:J

    iput-wide v0, p0, Lio/grpc/internal/ServerImplBuilder;->handshakeTimeoutMillis:J

    .line 89
    invoke-static {}, Lio/grpc/Deadline;->getSystemTicker()Lio/grpc/Deadline$Ticker;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->ticker:Lio/grpc/Deadline$Ticker;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ServerImplBuilder;->statsEnabled:Z

    .line 91
    iput-boolean v0, p0, Lio/grpc/internal/ServerImplBuilder;->recordStartedRpcs:Z

    .line 92
    iput-boolean v0, p0, Lio/grpc/internal/ServerImplBuilder;->recordFinishedRpcs:Z

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/grpc/internal/ServerImplBuilder;->recordRealTimeMetrics:Z

    .line 94
    iput-boolean v0, p0, Lio/grpc/internal/ServerImplBuilder;->tracingEnabled:Z

    .line 96
    invoke-static {}, Lio/grpc/InternalChannelz;->instance()Lio/grpc/InternalChannelz;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    .line 97
    invoke-static {}, Lio/grpc/internal/CallTracer;->getDefaultFactory()Lio/grpc/internal/CallTracer$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->callTracerFactory:Lio/grpc/internal/CallTracer$Factory;

    .line 114
    const-string v0, "clientTransportServersBuilder"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->clientTransportServersBuilder:Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;

    .line 116
    return-void
.end method

.method public static forPort(I)Lio/grpc/ServerBuilder;
    .locals 2
    .param p0, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ClientTransportServersBuilder is required, use a constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic addService(Lio/grpc/BindableService;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->addService(Lio/grpc/BindableService;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addService(Lio/grpc/BindableService;)Lio/grpc/internal/ServerImplBuilder;
    .locals 1
    .param p1, "bindableService"    # Lio/grpc/BindableService;

    .line 143
    const-string v0, "bindableService"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/BindableService;

    invoke-interface {v0}, Lio/grpc/BindableService;->bindService()Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/ServerImplBuilder;->addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/internal/ServerImplBuilder;
    .locals 2
    .param p1, "service"    # Lio/grpc/ServerServiceDefinition;

    .line 137
    iget-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->registryBuilder:Lio/grpc/internal/InternalHandlerRegistry$Builder;

    const-string v1, "service"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerServiceDefinition;

    invoke-virtual {v0, v1}, Lio/grpc/internal/InternalHandlerRegistry$Builder;->addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/internal/InternalHandlerRegistry$Builder;

    .line 138
    return-object p0
.end method

.method public bridge synthetic addStreamTracerFactory(Lio/grpc/ServerStreamTracer$Factory;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->addStreamTracerFactory(Lio/grpc/ServerStreamTracer$Factory;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addStreamTracerFactory(Lio/grpc/ServerStreamTracer$Factory;)Lio/grpc/internal/ServerImplBuilder;
    .locals 2
    .param p1, "factory"    # Lio/grpc/ServerStreamTracer$Factory;

    .line 160
    iget-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->streamTracerFactories:Ljava/util/List;

    const-string v1, "factory"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerStreamTracer$Factory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-object p0
.end method

.method public bridge synthetic addTransportFilter(Lio/grpc/ServerTransportFilter;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->addTransportFilter(Lio/grpc/ServerTransportFilter;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addTransportFilter(Lio/grpc/ServerTransportFilter;)Lio/grpc/internal/ServerImplBuilder;
    .locals 2
    .param p1, "filter"    # Lio/grpc/ServerTransportFilter;

    .line 148
    iget-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->transportFilters:Ljava/util/List;

    const-string v1, "filter"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerTransportFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-object p0
.end method

.method public build()Lio/grpc/Server;
    .locals 3

    .line 242
    new-instance v0, Lio/grpc/internal/ServerImpl;

    iget-object v1, p0, Lio/grpc/internal/ServerImplBuilder;->clientTransportServersBuilder:Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;

    .line 243
    invoke-virtual {p0}, Lio/grpc/internal/ServerImplBuilder;->getTracerFactories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;->buildClientTransportServers(Ljava/util/List;)Lio/grpc/internal/InternalServer;

    move-result-object v1

    sget-object v2, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    invoke-direct {v0, p0, v1, v2}, Lio/grpc/internal/ServerImpl;-><init>(Lio/grpc/internal/ServerImplBuilder;Lio/grpc/internal/InternalServer;Lio/grpc/Context;)V

    .line 242
    return-object v0
.end method

.method public bridge synthetic callExecutor(Lio/grpc/ServerCallExecutorSupplier;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->callExecutor(Lio/grpc/ServerCallExecutorSupplier;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public callExecutor(Lio/grpc/ServerCallExecutorSupplier;)Lio/grpc/internal/ServerImplBuilder;
    .locals 1
    .param p1, "executorSupplier"    # Lio/grpc/ServerCallExecutorSupplier;

    .line 131
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ServerCallExecutorSupplier;

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->executorSupplier:Lio/grpc/ServerCallExecutorSupplier;

    .line 132
    return-object p0
.end method

.method public bridge synthetic compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ServerBuilder;
    .locals 0
    .param p1    # Lio/grpc/CompressorRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/ServerImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/CompressorRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 178
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    :goto_0
    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 179
    return-object p0
.end method

.method public bridge synthetic decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ServerBuilder;
    .locals 0
    .param p1    # Lio/grpc/DecompressorRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/ServerImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/DecompressorRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 172
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    :goto_0
    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 173
    return-object p0
.end method

.method public bridge synthetic directExecutor()Lio/grpc/ServerBuilder;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lio/grpc/internal/ServerImplBuilder;->directExecutor()Lio/grpc/internal/ServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public directExecutor()Lio/grpc/internal/ServerImplBuilder;
    .locals 1

    .line 120
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/ServerImplBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic executor(Ljava/util/concurrent/Executor;)Lio/grpc/ServerBuilder;
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ServerImplBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 125
    if-eqz p1, :cond_0

    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    invoke-direct {v0, p1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    :goto_0
    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 126
    return-object p0
.end method

.method public bridge synthetic fallbackHandlerRegistry(Lio/grpc/HandlerRegistry;)Lio/grpc/ServerBuilder;
    .locals 0
    .param p1    # Lio/grpc/HandlerRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->fallbackHandlerRegistry(Lio/grpc/HandlerRegistry;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public fallbackHandlerRegistry(Lio/grpc/HandlerRegistry;)Lio/grpc/internal/ServerImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/HandlerRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 166
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/internal/ServerImplBuilder;->DEFAULT_FALLBACK_REGISTRY:Lio/grpc/HandlerRegistry;

    :goto_0
    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->fallbackRegistry:Lio/grpc/HandlerRegistry;

    .line 167
    return-object p0
.end method

.method public getChannelz()Lio/grpc/InternalChannelz;
    .locals 1

    .line 321
    iget-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    return-object v0
.end method

.method public getExecutorPool()Lio/grpc/internal/ObjectPool;
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

    .line 342
    iget-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    return-object v0
.end method

.method getTracerFactories()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v0, "tracerFactories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/ServerStreamTracer$Factory;>;"
    const/4 v1, 0x0

    .line 252
    .local v1, "isGlobalInterceptorsTracersSet":Z
    invoke-static {}, Lio/grpc/InternalGlobalInterceptors;->getServerInterceptors()Ljava/util/List;

    move-result-object v2

    .line 254
    .local v2, "globalServerInterceptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerInterceptor;>;"
    invoke-static {}, Lio/grpc/InternalGlobalInterceptors;->getServerStreamTracerFactories()Ljava/util/List;

    move-result-object v3

    .line 255
    .local v3, "globalServerStreamTracerFactories":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerStreamTracer$Factory;>;"
    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 257
    iget-object v4, p0, Lio/grpc/internal/ServerImplBuilder;->interceptors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    const/4 v1, 0x1

    .line 260
    :cond_0
    const/4 v4, 0x0

    const-string v5, "getServerStreamTracerFactory"

    const/4 v6, 0x0

    const-string v7, "Unable to apply census stats"

    if-nez v1, :cond_1

    iget-boolean v8, p0, Lio/grpc/internal/ServerImplBuilder;->statsEnabled:Z

    if-eqz v8, :cond_1

    .line 261
    const/4 v8, 0x0

    .line 263
    .local v8, "censusStatsTracerFactory":Lio/grpc/ServerStreamTracer$Factory;
    :try_start_0
    const-string v9, "io.grpc.census.InternalCensusStatsAccessor"

    .line 264
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 265
    .local v9, "censusStatsAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v6

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x1

    aput-object v12, v11, v13

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x2

    aput-object v12, v11, v14

    .line 266
    invoke-virtual {v9, v5, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 271
    .local v11, "getServerStreamTracerFactoryMethod":Ljava/lang/reflect/Method;
    new-array v10, v10, [Ljava/lang/Object;

    iget-boolean v12, p0, Lio/grpc/internal/ServerImplBuilder;->recordStartedRpcs:Z

    .line 275
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v6

    iget-boolean v12, p0, Lio/grpc/internal/ServerImplBuilder;->recordFinishedRpcs:Z

    .line 276
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v13

    iget-boolean v12, p0, Lio/grpc/internal/ServerImplBuilder;->recordRealTimeMetrics:Z

    .line 277
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v14

    .line 273
    invoke-virtual {v11, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/grpc/ServerStreamTracer$Factory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v10

    .line 287
    .end local v9    # "censusStatsAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "getServerStreamTracerFactoryMethod":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 285
    :catch_0
    move-exception v9

    .line 286
    .local v9, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v10, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v10, v11, v7, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 283
    .end local v9    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v9

    .line 284
    .local v9, "e":Ljava/lang/IllegalAccessException;
    sget-object v10, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v10, v11, v7, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v9    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 281
    :catch_2
    move-exception v9

    .line 282
    .local v9, "e":Ljava/lang/NoSuchMethodException;
    sget-object v10, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v10, v11, v7, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v9    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 278
    :catch_3
    move-exception v9

    .line 280
    .local v9, "e":Ljava/lang/ClassNotFoundException;
    sget-object v10, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v10, v11, v7, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 288
    :goto_1
    if-eqz v8, :cond_1

    .line 289
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v8    # "censusStatsTracerFactory":Lio/grpc/ServerStreamTracer$Factory;
    :cond_1
    if-nez v1, :cond_2

    iget-boolean v8, p0, Lio/grpc/internal/ServerImplBuilder;->tracingEnabled:Z

    if-eqz v8, :cond_2

    .line 293
    const/4 v8, 0x0

    .line 295
    .local v8, "tracingStreamTracerFactory":Lio/grpc/ServerStreamTracer$Factory;
    :try_start_1
    const-string v9, "io.grpc.census.InternalCensusTracingAccessor"

    .line 296
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 297
    .local v9, "censusTracingAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v10, v6, [Ljava/lang/Class;

    .line 298
    invoke-virtual {v9, v5, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 299
    .local v5, "getServerStreamTracerFactoryMethod":Ljava/lang/reflect/Method;
    new-array v6, v6, [Ljava/lang/Object;

    .line 300
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/ServerStreamTracer$Factory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v8, v4

    .line 310
    .end local v5    # "getServerStreamTracerFactoryMethod":Ljava/lang/reflect/Method;
    .end local v9    # "censusTracingAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    goto :goto_3

    .line 308
    :catch_4
    move-exception v4

    .line 309
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v5, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 306
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v4

    .line 307
    .local v4, "e":Ljava/lang/IllegalAccessException;
    sget-object v5, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 304
    :catch_6
    move-exception v4

    .line 305
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    sget-object v5, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    .line 301
    :catch_7
    move-exception v4

    .line 303
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    sget-object v5, Lio/grpc/internal/ServerImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_2

    .line 311
    :goto_3
    if-eqz v8, :cond_2

    .line 312
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v8    # "tracingStreamTracerFactory":Lio/grpc/ServerStreamTracer$Factory;
    :cond_2
    iget-object v4, p0, Lio/grpc/internal/ServerImplBuilder;->streamTracerFactories:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 317
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/internal/ServerImplBuilder;->handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/ServerImplBuilder;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 184
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "handshake timeout is %s, but must be positive"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 185
    const-string v0, "unit"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/ServerImplBuilder;->handshakeTimeoutMillis:J

    .line 186
    return-object p0
.end method

.method public bridge synthetic intercept(Lio/grpc/ServerInterceptor;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->intercept(Lio/grpc/ServerInterceptor;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public intercept(Lio/grpc/ServerInterceptor;)Lio/grpc/internal/ServerImplBuilder;
    .locals 2
    .param p1, "interceptor"    # Lio/grpc/ServerInterceptor;

    .line 154
    iget-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->interceptors:Ljava/util/List;

    const-string v1, "interceptor"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerInterceptor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-object p0
.end method

.method public bridge synthetic setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ServerBuilder;
    .locals 0
    .param p1    # Lio/grpc/BinaryLog;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServerImplBuilder;->setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/internal/ServerImplBuilder;
    .locals 0
    .param p1, "binaryLog"    # Lio/grpc/BinaryLog;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 191
    iput-object p1, p0, Lio/grpc/internal/ServerImplBuilder;->binlog:Lio/grpc/BinaryLog;

    .line 192
    return-object p0
.end method

.method public setDeadlineTicker(Lio/grpc/Deadline$Ticker;)V
    .locals 1
    .param p1, "ticker"    # Lio/grpc/Deadline$Ticker;

    .line 237
    const-string v0, "ticker"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Deadline$Ticker;

    iput-object v0, p0, Lio/grpc/internal/ServerImplBuilder;->ticker:Lio/grpc/Deadline$Ticker;

    .line 238
    return-void
.end method

.method public setStatsEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 199
    iput-boolean p1, p0, Lio/grpc/internal/ServerImplBuilder;->statsEnabled:Z

    .line 200
    return-void
.end method

.method public setStatsRecordFinishedRpcs(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 215
    iput-boolean p1, p0, Lio/grpc/internal/ServerImplBuilder;->recordFinishedRpcs:Z

    .line 216
    return-void
.end method

.method public setStatsRecordRealTimeMetrics(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 223
    iput-boolean p1, p0, Lio/grpc/internal/ServerImplBuilder;->recordRealTimeMetrics:Z

    .line 224
    return-void
.end method

.method public setStatsRecordStartedRpcs(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 207
    iput-boolean p1, p0, Lio/grpc/internal/ServerImplBuilder;->recordStartedRpcs:Z

    .line 208
    return-void
.end method

.method public setTracingEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 230
    iput-boolean p1, p0, Lio/grpc/internal/ServerImplBuilder;->tracingEnabled:Z

    .line 231
    return-void
.end method

.method public bridge synthetic useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/ServerImplBuilder;->useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/internal/ServerImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/internal/ServerImplBuilder;
    .locals 2
    .param p1, "certChain"    # Ljava/io/File;
    .param p2, "privateKey"    # Ljava/io/File;

    .line 347
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TLS not supported in ServerImplBuilder"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
