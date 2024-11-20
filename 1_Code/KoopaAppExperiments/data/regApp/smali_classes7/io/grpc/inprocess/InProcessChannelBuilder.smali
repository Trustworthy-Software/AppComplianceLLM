.class public final Lio/grpc/inprocess/InProcessChannelBuilder;
.super Lio/grpc/internal/AbstractManagedChannelImplBuilder;
.source "InProcessChannelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/AbstractManagedChannelImplBuilder<",
        "Lio/grpc/inprocess/InProcessChannelBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private final managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

.field private maxInboundMetadataSize:I

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private transportIncludeStatusCause:Z


# direct methods
.method private constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;)V
    .locals 5
    .param p1, "directAddress"    # Ljava/net/SocketAddress;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "target"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 95
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;-><init>()V

    .line 92
    const v0, 0x7fffffff

    iput v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMetadataSize:I

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->transportIncludeStatusCause:Z

    .line 104
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 105
    new-instance v2, Lio/grpc/internal/ManagedChannelImplBuilder;

    new-instance v3, Lio/grpc/inprocess/InProcessChannelBuilder$1InProcessChannelTransportFactoryBuilder;

    invoke-direct {v3, p0}, Lio/grpc/inprocess/InProcessChannelBuilder$1InProcessChannelTransportFactoryBuilder;-><init>(Lio/grpc/inprocess/InProcessChannelBuilder;)V

    const-string v4, "localhost"

    invoke-direct {v2, p1, v4, v3, v1}, Lio/grpc/internal/ManagedChannelImplBuilder;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V

    iput-object v2, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    goto :goto_0

    .line 108
    :cond_0
    new-instance v2, Lio/grpc/internal/ManagedChannelImplBuilder;

    new-instance v3, Lio/grpc/inprocess/InProcessChannelBuilder$1InProcessChannelTransportFactoryBuilder;

    invoke-direct {v3, p0}, Lio/grpc/inprocess/InProcessChannelBuilder$1InProcessChannelTransportFactoryBuilder;-><init>(Lio/grpc/inprocess/InProcessChannelBuilder;)V

    invoke-direct {v2, p2, v3, v1}, Lio/grpc/internal/ManagedChannelImplBuilder;-><init>(Ljava/lang/String;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V

    iput-object v2, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    .line 114
    :goto_0
    iget-object v1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    invoke-virtual {v1, v0}, Lio/grpc/internal/ManagedChannelImplBuilder;->setStatsRecordStartedRpcs(Z)V

    .line 115
    iget-object v1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    invoke-virtual {v1, v0}, Lio/grpc/internal/ManagedChannelImplBuilder;->setStatsRecordFinishedRpcs(Z)V

    .line 116
    iget-object v1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    invoke-virtual {v1, v0}, Lio/grpc/internal/ManagedChannelImplBuilder;->setStatsRecordRetryMetrics(Z)V

    .line 120
    iget-object v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImplBuilder;->disableRetry()Lio/grpc/internal/ManagedChannelImplBuilder;

    .line 121
    return-void
.end method

.method public static forAddress(Ljava/lang/String;I)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "call forName() instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forAddress(Ljava/net/SocketAddress;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 3
    .param p0, "address"    # Ljava/net/SocketAddress;

    .line 79
    new-instance v0, Lio/grpc/inprocess/InProcessChannelBuilder;

    const-string v1, "address"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/inprocess/InProcessChannelBuilder;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forName(Ljava/lang/String;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 58
    new-instance v0, Lio/grpc/inprocess/InProcessSocketAddress;

    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/grpc/inprocess/InProcessSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/grpc/inprocess/InProcessChannelBuilder;->forAddress(Ljava/net/SocketAddress;)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static forTarget(Ljava/lang/String;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 3
    .param p0, "target"    # Ljava/lang/String;

    .line 69
    new-instance v0, Lio/grpc/inprocess/InProcessChannelBuilder;

    const-string v1, "target"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lio/grpc/inprocess/InProcessChannelBuilder;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method buildTransportFactory()Lio/grpc/internal/ClientTransportFactory;
    .locals 5

    .line 226
    new-instance v0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;

    iget-object v1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget v2, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMetadataSize:I

    iget-boolean v3, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->transportIncludeStatusCause:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;-><init>(Ljava/util/concurrent/ScheduledExecutorService;IZLio/grpc/inprocess/InProcessChannelBuilder$1;)V

    return-object v0
.end method

.method protected delegate()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    return-object v0
.end method

.method public bridge synthetic keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/inprocess/InProcessChannelBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0
    .param p1, "keepAliveTime"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 154
    return-object p0
.end method

.method public bridge synthetic keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/inprocess/InProcessChannelBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/inprocess/InProcessChannelBuilder;->keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0
    .param p1, "keepAliveTimeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 160
    return-object p0
.end method

.method public bridge synthetic keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/inprocess/InProcessChannelBuilder;->keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keepAliveWithoutCalls(Z)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->keepAliveWithoutCalls(Z)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveWithoutCalls(Z)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0
    .param p1, "enable"    # Z

    .line 166
    return-object p0
.end method

.method public bridge synthetic keepAliveWithoutCalls(Z)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->keepAliveWithoutCalls(Z)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic maxInboundMessageSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMessageSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMessageSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 1
    .param p1, "max"    # I

    .line 132
    invoke-super {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    check-cast v0, Lio/grpc/inprocess/InProcessChannelBuilder;

    return-object v0
.end method

.method public bridge synthetic maxInboundMessageSize(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMessageSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic maxInboundMetadataSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMetadataSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMetadataSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 2
    .param p1, "bytes"    # I

    .line 201
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxInboundMetadataSize must be > 0"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 202
    iput p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMetadataSize:I

    .line 203
    return-object p0
.end method

.method public bridge synthetic maxInboundMetadataSize(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMetadataSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public propagateCauseWithStatus(Z)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0
    .param p1, "enable"    # Z

    .line 221
    iput-boolean p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->transportIncludeStatusCause:Z

    .line 222
    return-object p0
.end method

.method public scheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 1
    .param p1, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 181
    nop

    .line 182
    const-string v0, "scheduledExecutorService"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 183
    return-object p0
.end method

.method setStatsEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 231
    iget-object v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    invoke-virtual {v0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->setStatsEnabled(Z)V

    .line 232
    return-void
.end method

.method public bridge synthetic usePlaintext()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lio/grpc/inprocess/InProcessChannelBuilder;->usePlaintext()Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public usePlaintext()Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0

    .line 148
    return-object p0
.end method

.method public bridge synthetic usePlaintext()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lio/grpc/inprocess/InProcessChannelBuilder;->usePlaintext()Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic useTransportSecurity()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lio/grpc/inprocess/InProcessChannelBuilder;->useTransportSecurity()Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public useTransportSecurity()Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0

    .line 140
    return-object p0
.end method

.method public bridge synthetic useTransportSecurity()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lio/grpc/inprocess/InProcessChannelBuilder;->useTransportSecurity()Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object v0

    return-object v0
.end method
