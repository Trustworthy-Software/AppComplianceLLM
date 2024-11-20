.class final Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;
.super Ljava/lang/Object;
.source "OkHttpChannelBuilder.java"

# interfaces
.implements Lio/grpc/internal/ClientTransportFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OkHttpTransportFactory"
.end annotation


# instance fields
.field private closed:Z

.field final connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

.field private final enableKeepAlive:Z

.field final executor:Ljava/util/concurrent/Executor;

.field private final executorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field final flowControlWindow:I

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final keepAliveBackoff:Lio/grpc/internal/AtomicBackoff;

.field private final keepAliveTimeNanos:J

.field private final keepAliveTimeoutNanos:J

.field private final keepAliveWithoutCalls:Z

.field final maxInboundMetadataSize:I

.field final maxMessageSize:I

.field final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

.field final useGetForSafeMethods:Z


# direct methods
.method private constructor <init>(Lio/grpc/internal/ObjectPool;Lio/grpc/internal/ObjectPool;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/ConnectionSpec;IZJJIZILio/grpc/internal/TransportTracer$Factory;Z)V
    .locals 16
    .param p3, "socketFactory"    # Ljavax/net/SocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "connectionSpec"    # Lio/grpc/okhttp/internal/ConnectionSpec;
    .param p7, "maxMessageSize"    # I
    .param p8, "enableKeepAlive"    # Z
    .param p9, "keepAliveTimeNanos"    # J
    .param p11, "keepAliveTimeoutNanos"    # J
    .param p13, "flowControlWindow"    # I
    .param p14, "keepAliveWithoutCalls"    # Z
    .param p15, "maxInboundMetadataSize"    # I
    .param p16, "transportTracerFactory"    # Lio/grpc/internal/TransportTracer$Factory;
    .param p17, "useGetForSafeMethods"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lio/grpc/okhttp/internal/ConnectionSpec;",
            "IZJJIZI",
            "Lio/grpc/internal/TransportTracer$Factory;",
            "Z)V"
        }
    .end annotation

    .line 806
    .local p1, "executorPool":Lio/grpc/internal/ObjectPool;, "Lio/grpc/internal/ObjectPool<Ljava/util/concurrent/Executor;>;"
    .local p2, "scheduledExecutorServicePool":Lio/grpc/internal/ObjectPool;, "Lio/grpc/internal/ObjectPool<Ljava/util/concurrent/ScheduledExecutorService;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 807
    move-object/from16 v3, p1

    iput-object v3, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 808
    invoke-interface/range {p1 .. p1}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    iput-object v4, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->executor:Ljava/util/concurrent/Executor;

    .line 809
    move-object/from16 v4, p2

    iput-object v4, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    .line 810
    invoke-interface/range {p2 .. p2}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v5, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 811
    move-object/from16 v5, p3

    iput-object v5, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->socketFactory:Ljavax/net/SocketFactory;

    .line 812
    move-object/from16 v6, p4

    iput-object v6, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 813
    move-object/from16 v7, p5

    iput-object v7, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 814
    move-object/from16 v8, p6

    iput-object v8, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 815
    move/from16 v9, p7

    iput v9, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->maxMessageSize:I

    .line 816
    move/from16 v10, p8

    iput-boolean v10, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->enableKeepAlive:Z

    .line 817
    iput-wide v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveTimeNanos:J

    .line 818
    new-instance v11, Lio/grpc/internal/AtomicBackoff;

    const-string v12, "keepalive time nanos"

    invoke-direct {v11, v12, v1, v2}, Lio/grpc/internal/AtomicBackoff;-><init>(Ljava/lang/String;J)V

    iput-object v11, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveBackoff:Lio/grpc/internal/AtomicBackoff;

    .line 819
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveTimeoutNanos:J

    .line 820
    move/from16 v13, p13

    iput v13, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->flowControlWindow:I

    .line 821
    move/from16 v14, p14

    iput-boolean v14, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveWithoutCalls:Z

    .line 822
    move/from16 v15, p15

    iput v15, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->maxInboundMetadataSize:I

    .line 823
    move/from16 v1, p17

    iput-boolean v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->useGetForSafeMethods:Z

    .line 825
    nop

    .line 826
    const-string v2, "transportTracerFactory"

    move-object/from16 v1, p16

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/TransportTracer$Factory;

    iput-object v2, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    .line 827
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ObjectPool;Lio/grpc/internal/ObjectPool;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/ConnectionSpec;IZJJIZILio/grpc/internal/TransportTracer$Factory;ZLio/grpc/okhttp/OkHttpChannelBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/ObjectPool;
    .param p2, "x1"    # Lio/grpc/internal/ObjectPool;
    .param p3, "x2"    # Ljavax/net/SocketFactory;
    .param p4, "x3"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p5, "x4"    # Ljavax/net/ssl/HostnameVerifier;
    .param p6, "x5"    # Lio/grpc/okhttp/internal/ConnectionSpec;
    .param p7, "x6"    # I
    .param p8, "x7"    # Z
    .param p9, "x8"    # J
    .param p11, "x9"    # J
    .param p13, "x10"    # I
    .param p14, "x11"    # Z
    .param p15, "x12"    # I
    .param p16, "x13"    # Lio/grpc/internal/TransportTracer$Factory;
    .param p17, "x14"    # Z
    .param p18, "x15"    # Lio/grpc/okhttp/OkHttpChannelBuilder$1;

    .line 769
    invoke-direct/range {p0 .. p17}, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;-><init>(Lio/grpc/internal/ObjectPool;Lio/grpc/internal/ObjectPool;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/ConnectionSpec;IZJJIZILio/grpc/internal/TransportTracer$Factory;Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 893
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->closed:Z

    if-eqz v0, :cond_0

    .line 894
    return-void

    .line 896
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->closed:Z

    .line 898
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->executorPool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    return-void
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 861
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public newClientTransport(Ljava/net/SocketAddress;Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;Lio/grpc/ChannelLogger;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 19
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .param p2, "options"    # Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;
    .param p3, "channelLogger"    # Lio/grpc/ChannelLogger;

    .line 832
    move-object/from16 v8, p0

    iget-boolean v0, v8, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->closed:Z

    if-nez v0, :cond_1

    .line 835
    iget-object v0, v8, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveBackoff:Lio/grpc/internal/AtomicBackoff;

    invoke-virtual {v0}, Lio/grpc/internal/AtomicBackoff;->getState()Lio/grpc/internal/AtomicBackoff$State;

    move-result-object v9

    .line 836
    .local v9, "keepAliveTimeNanosState":Lio/grpc/internal/AtomicBackoff$State;
    new-instance v7, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory$1;

    invoke-direct {v7, v8, v9}, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory$1;-><init>(Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;Lio/grpc/internal/AtomicBackoff$State;)V

    .line 842
    .local v7, "tooManyPingsRunnable":Ljava/lang/Runnable;
    move-object/from16 v10, p1

    check-cast v10, Ljava/net/InetSocketAddress;

    .line 844
    .local v10, "inetSocketAddr":Ljava/net/InetSocketAddress;
    new-instance v11, Lio/grpc/okhttp/OkHttpClientTransport;

    .line 847
    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 848
    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    .line 849
    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getEagAttributes()Lio/grpc/Attributes;

    move-result-object v5

    .line 850
    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getHttpConnectProxiedSocketAddress()Lio/grpc/HttpConnectProxiedSocketAddress;

    move-result-object v6

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct/range {v0 .. v7}, Lio/grpc/okhttp/OkHttpClientTransport;-><init>(Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/Attributes;Lio/grpc/HttpConnectProxiedSocketAddress;Ljava/lang/Runnable;)V

    .line 852
    .local v0, "transport":Lio/grpc/okhttp/OkHttpClientTransport;
    iget-boolean v1, v8, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->enableKeepAlive:Z

    if-eqz v1, :cond_0

    .line 853
    const/4 v13, 0x1

    .line 854
    invoke-virtual {v9}, Lio/grpc/internal/AtomicBackoff$State;->get()J

    move-result-wide v14

    iget-wide v1, v8, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveTimeoutNanos:J

    iget-boolean v3, v8, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveWithoutCalls:Z

    .line 853
    move-object v12, v0

    move-wide/from16 v16, v1

    move/from16 v18, v3

    invoke-virtual/range {v12 .. v18}, Lio/grpc/okhttp/OkHttpClientTransport;->enableKeepAlive(ZJJZ)V

    .line 856
    :cond_0
    return-object v0

    .line 833
    .end local v0    # "transport":Lio/grpc/okhttp/OkHttpClientTransport;
    .end local v7    # "tooManyPingsRunnable":Ljava/lang/Runnable;
    .end local v9    # "keepAliveTimeNanosState":Lio/grpc/internal/AtomicBackoff$State;
    .end local v10    # "inetSocketAddr":Ljava/net/InetSocketAddress;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The transport factory is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public swapChannelCredentials(Lio/grpc/ChannelCredentials;)Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;
    .locals 22
    .param p1, "channelCreds"    # Lio/grpc/ChannelCredentials;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 868
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactoryFrom(Lio/grpc/ChannelCredentials;)Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;

    move-result-object v1

    .line 869
    .local v1, "result":Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;
    iget-object v2, v1, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->error:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 870
    const/4 v2, 0x0

    return-object v2

    .line 872
    :cond_0
    new-instance v2, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;

    move-object v3, v2

    iget-object v4, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->executorPool:Lio/grpc/internal/ObjectPool;

    iget-object v5, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    iget-object v6, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->socketFactory:Ljavax/net/SocketFactory;

    iget-object v7, v1, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->factory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v8, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v9, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    iget v10, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->maxMessageSize:I

    iget-boolean v11, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->enableKeepAlive:Z

    iget-wide v12, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveTimeNanos:J

    iget-wide v14, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveTimeoutNanos:J

    move-object/from16 v21, v1

    .end local v1    # "result":Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;
    .local v21, "result":Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;
    iget v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->flowControlWindow:I

    move/from16 v16, v1

    iget-boolean v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveWithoutCalls:Z

    move/from16 v17, v1

    iget v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->maxInboundMetadataSize:I

    move/from16 v18, v1

    iget-object v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->useGetForSafeMethods:Z

    move/from16 v20, v1

    invoke-direct/range {v3 .. v20}, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;-><init>(Lio/grpc/internal/ObjectPool;Lio/grpc/internal/ObjectPool;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/ConnectionSpec;IZJJIZILio/grpc/internal/TransportTracer$Factory;Z)V

    move-object v1, v2

    .line 888
    .local v1, "factory":Lio/grpc/internal/ClientTransportFactory;
    new-instance v2, Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;

    move-object/from16 v3, v21

    .end local v21    # "result":Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;
    .local v3, "result":Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;
    iget-object v4, v3, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->callCredentials:Lio/grpc/CallCredentials;

    invoke-direct {v2, v1, v4}, Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;-><init>(Lio/grpc/internal/ClientTransportFactory;Lio/grpc/CallCredentials;)V

    return-object v2
.end method
