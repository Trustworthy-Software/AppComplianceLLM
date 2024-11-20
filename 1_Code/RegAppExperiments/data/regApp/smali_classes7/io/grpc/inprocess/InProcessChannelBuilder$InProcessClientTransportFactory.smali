.class final Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;
.super Ljava/lang/Object;
.source "InProcessChannelBuilder.java"

# interfaces
.implements Lio/grpc/internal/ClientTransportFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/inprocess/InProcessChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InProcessClientTransportFactory"
.end annotation


# instance fields
.field private closed:Z

.field private final includeCauseWithStatus:Z

.field private final maxInboundMetadataSize:I

.field private final timerService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final useSharedTimer:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;IZ)V
    .locals 1
    .param p1, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "maxInboundMetadataSize"    # I
    .param p3, "includeCauseWithStatus"    # Z

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->useSharedTimer:Z

    .line 248
    if-eqz v0, :cond_1

    .line 249
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v0}, Lio/grpc/internal/SharedResourceHolder;->get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    iput-object v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 250
    iput p2, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->maxInboundMetadataSize:I

    .line 251
    iput-boolean p3, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->includeCauseWithStatus:Z

    .line 252
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;IZLio/grpc/inprocess/InProcessChannelBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lio/grpc/inprocess/InProcessChannelBuilder$1;

    .line 237
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;-><init>(Ljava/util/concurrent/ScheduledExecutorService;IZ)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 278
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->closed:Z

    if-eqz v0, :cond_0

    .line 279
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->closed:Z

    .line 282
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->useSharedTimer:Z

    if-eqz v0, :cond_1

    .line 283
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    iget-object v1, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1}, Lio/grpc/internal/SharedResourceHolder;->release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_1
    return-void
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 268
    iget-object v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public newClientTransport(Ljava/net/SocketAddress;Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;Lio/grpc/ChannelLogger;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 8
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .param p2, "options"    # Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;
    .param p3, "channelLogger"    # Lio/grpc/ChannelLogger;

    .line 257
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->closed:Z

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lio/grpc/inprocess/InProcessTransport;

    iget v3, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->maxInboundMetadataSize:I

    .line 262
    invoke-virtual {p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    .line 263
    invoke-virtual {p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getEagAttributes()Lio/grpc/Attributes;

    move-result-object v6

    iget-boolean v7, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->includeCauseWithStatus:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/grpc/inprocess/InProcessTransport;-><init>(Ljava/net/SocketAddress;ILjava/lang/String;Ljava/lang/String;Lio/grpc/Attributes;Z)V

    .line 261
    return-object v0

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The transport factory is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public swapChannelCredentials(Lio/grpc/ChannelCredentials;)Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;
    .locals 1
    .param p1, "channelCreds"    # Lio/grpc/ChannelCredentials;

    .line 273
    const/4 v0, 0x0

    return-object v0
.end method
