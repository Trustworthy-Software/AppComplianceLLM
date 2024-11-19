.class public final Lio/grpc/inprocess/InProcessServerBuilder;
.super Lio/grpc/internal/AbstractServerImplBuilder;
.source "InProcessServerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/AbstractServerImplBuilder<",
        "Lio/grpc/inprocess/InProcessServerBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final listenAddress:Ljava/net/SocketAddress;

.field maxInboundMetadataSize:I

.field schedulerPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;


# direct methods
.method private constructor <init>(Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "listenAddress"    # Ljava/net/SocketAddress;

    .line 118
    invoke-direct {p0}, Lio/grpc/internal/AbstractServerImplBuilder;-><init>()V

    .line 114
    const v0, 0x7fffffff

    iput v0, p0, Lio/grpc/inprocess/InProcessServerBuilder;->maxInboundMetadataSize:I

    .line 115
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 116
    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/inprocess/InProcessServerBuilder;->schedulerPool:Lio/grpc/internal/ObjectPool;

    .line 119
    const-string v0, "listenAddress"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    iput-object v0, p0, Lio/grpc/inprocess/InProcessServerBuilder;->listenAddress:Ljava/net/SocketAddress;

    .line 129
    new-instance v0, Lio/grpc/internal/ServerImplBuilder;

    new-instance v1, Lio/grpc/inprocess/InProcessServerBuilder$1InProcessClientTransportServersBuilder;

    invoke-direct {v1, p0}, Lio/grpc/inprocess/InProcessServerBuilder$1InProcessClientTransportServersBuilder;-><init>(Lio/grpc/inprocess/InProcessServerBuilder;)V

    invoke-direct {v0, v1}, Lio/grpc/internal/ServerImplBuilder;-><init>(Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;)V

    iput-object v0, p0, Lio/grpc/inprocess/InProcessServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/grpc/internal/ServerImplBuilder;->setStatsRecordStartedRpcs(Z)V

    .line 134
    invoke-virtual {v0, v1}, Lio/grpc/internal/ServerImplBuilder;->setStatsRecordFinishedRpcs(Z)V

    .line 137
    const-wide v0, 0x7fffffffffffffffL

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lio/grpc/inprocess/InProcessServerBuilder;->handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractServerImplBuilder;

    .line 138
    return-void
.end method

.method public static forAddress(Ljava/net/SocketAddress;)Lio/grpc/inprocess/InProcessServerBuilder;
    .locals 1
    .param p0, "listenAddress"    # Ljava/net/SocketAddress;

    .line 94
    new-instance v0, Lio/grpc/inprocess/InProcessServerBuilder;

    invoke-direct {v0, p0}, Lio/grpc/inprocess/InProcessServerBuilder;-><init>(Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method public static forName(Ljava/lang/String;)Lio/grpc/inprocess/InProcessServerBuilder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 85
    new-instance v0, Lio/grpc/inprocess/InProcessSocketAddress;

    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/grpc/inprocess/InProcessSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/grpc/inprocess/InProcessServerBuilder;->forAddress(Ljava/net/SocketAddress;)Lio/grpc/inprocess/InProcessServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static forPort(I)Lio/grpc/inprocess/InProcessServerBuilder;
    .locals 2
    .param p0, "port"    # I

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "call forName() instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateName()Ljava/lang/String;
    .locals 1

    .line 109
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method buildTransportServers(Ljava/util/List;)Lio/grpc/inprocess/InProcessServer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;)",
            "Lio/grpc/inprocess/InProcessServer;"
        }
    .end annotation

    .line 203
    .local p1, "streamTracerFactories":Ljava/util/List;, "Ljava/util/List<+Lio/grpc/ServerStreamTracer$Factory;>;"
    new-instance v0, Lio/grpc/inprocess/InProcessServer;

    invoke-direct {v0, p0, p1}, Lio/grpc/inprocess/InProcessServer;-><init>(Lio/grpc/inprocess/InProcessServerBuilder;Ljava/util/List;)V

    return-object v0
.end method

.method public deadlineTicker(Lio/grpc/Deadline$Ticker;)Lio/grpc/inprocess/InProcessServerBuilder;
    .locals 1
    .param p1, "ticker"    # Lio/grpc/Deadline$Ticker;

    .line 177
    iget-object v0, p0, Lio/grpc/inprocess/InProcessServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    invoke-virtual {v0, p1}, Lio/grpc/internal/ServerImplBuilder;->setDeadlineTicker(Lio/grpc/Deadline$Ticker;)V

    .line 178
    return-object p0
.end method

.method protected delegate()Lio/grpc/ServerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lio/grpc/inprocess/InProcessServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    return-object v0
.end method

.method public bridge synthetic maxInboundMetadataSize(I)Lio/grpc/ServerBuilder;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessServerBuilder;->maxInboundMetadataSize(I)Lio/grpc/inprocess/InProcessServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMetadataSize(I)Lio/grpc/inprocess/InProcessServerBuilder;
    .locals 2
    .param p1, "bytes"    # I

    .line 196
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxInboundMetadataSize must be > 0"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 197
    iput p1, p0, Lio/grpc/inprocess/InProcessServerBuilder;->maxInboundMetadataSize:I

    .line 198
    return-object p0
.end method

.method public bridge synthetic maxInboundMetadataSize(I)Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessServerBuilder;->maxInboundMetadataSize(I)Lio/grpc/inprocess/InProcessServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public scheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/inprocess/InProcessServerBuilder;
    .locals 2
    .param p1, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 158
    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    .line 159
    const-string v1, "scheduledExecutorService"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/inprocess/InProcessServerBuilder;->schedulerPool:Lio/grpc/internal/ObjectPool;

    .line 160
    return-object p0
.end method

.method setStatsEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 212
    iget-object v0, p0, Lio/grpc/inprocess/InProcessServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    invoke-virtual {v0, p1}, Lio/grpc/internal/ServerImplBuilder;->setStatsEnabled(Z)V

    .line 213
    return-void
.end method

.method public bridge synthetic useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 75
    invoke-virtual {p0, p1, p2}, Lio/grpc/inprocess/InProcessServerBuilder;->useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/inprocess/InProcessServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/inprocess/InProcessServerBuilder;
    .locals 2
    .param p1, "certChain"    # Ljava/io/File;
    .param p2, "privateKey"    # Ljava/io/File;

    .line 208
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TLS not supported in InProcessServer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/internal/AbstractServerImplBuilder;
    .locals 0

    .line 75
    invoke-virtual {p0, p1, p2}, Lio/grpc/inprocess/InProcessServerBuilder;->useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/inprocess/InProcessServerBuilder;

    move-result-object p1

    return-object p1
.end method
