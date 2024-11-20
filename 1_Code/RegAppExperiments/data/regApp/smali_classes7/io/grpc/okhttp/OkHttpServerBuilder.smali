.class public final Lio/grpc/okhttp/OkHttpServerBuilder;
.super Lio/grpc/ForwardingServerBuilder;
.source "OkHttpServerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpServerBuilder$ClientCertRequestingSocketFactory;,
        Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ForwardingServerBuilder<",
        "Lio/grpc/okhttp/OkHttpServerBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final AS_LARGE_AS_INFINITE:J

.field private static final DEFAULT_FLOW_CONTROL_WINDOW:I = 0xffff

.field private static final DEFAULT_TRANSPORT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field static final MAX_CONNECTION_AGE_GRACE_NANOS_INFINITE:J = 0x7fffffffffffffffL

.field static final MAX_CONNECTION_AGE_NANOS_DISABLED:J = 0x7fffffffffffffffL

.field static final MAX_CONNECTION_IDLE_NANOS_DISABLED:J = 0x7fffffffffffffffL

.field private static final MIN_MAX_CONNECTION_AGE_NANO:J

.field private static final MIN_MAX_CONNECTION_IDLE_NANO:J

.field private static final log:Ljava/util/logging/Logger;

.field private static final understoodTlsFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lio/grpc/TlsServerCredentials$Feature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field flowControlWindow:I

.field final handshakerSocketFactory:Lio/grpc/okhttp/HandshakerSocketFactory;

.field keepAliveTimeNanos:J

.field keepAliveTimeoutNanos:J

.field final listenAddress:Ljava/net/SocketAddress;

.field maxConnectionAgeGraceInNanos:J

.field maxConnectionAgeInNanos:J

.field maxConnectionIdleInNanos:J

.field maxInboundMessageSize:I

.field maxInboundMetadataSize:I

.field permitKeepAliveTimeInNanos:J

.field permitKeepAliveWithoutCalls:Z

.field scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field final serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

.field socketFactory:Ljavax/net/ServerSocketFactory;

.field transportExecutorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 71
    const-class v0, Lio/grpc/okhttp/OkHttpServerBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerBuilder;->log:Ljava/util/logging/Logger;

    .line 75
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lio/grpc/okhttp/OkHttpServerBuilder;->MIN_MAX_CONNECTION_IDLE_NANO:J

    .line 78
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/okhttp/OkHttpServerBuilder;->MIN_MAX_CONNECTION_AGE_NANO:J

    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/okhttp/OkHttpServerBuilder;->AS_LARGE_AS_INFINITE:J

    .line 81
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->DEFAULT_TRANSPORT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    sput-object v0, Lio/grpc/okhttp/OkHttpServerBuilder;->DEFAULT_TRANSPORT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    .line 381
    sget-object v0, Lio/grpc/TlsServerCredentials$Feature;->MTLS:Lio/grpc/TlsServerCredentials$Feature;

    sget-object v1, Lio/grpc/TlsServerCredentials$Feature;->CUSTOM_MANAGERS:Lio/grpc/TlsServerCredentials$Feature;

    .line 382
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerBuilder;->understoodTlsFeatures:Ljava/util/EnumSet;

    .line 381
    return-void
.end method

.method constructor <init>(Ljava/net/SocketAddress;Lio/grpc/okhttp/HandshakerSocketFactory;)V
    .locals 5
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "handshakerSocketFactory"    # Lio/grpc/okhttp/HandshakerSocketFactory;

    .line 136
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;-><init>()V

    .line 113
    new-instance v0, Lio/grpc/internal/ServerImplBuilder;

    new-instance v1, Lio/grpc/okhttp/OkHttpServerBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/grpc/okhttp/OkHttpServerBuilder$$ExternalSyntheticLambda0;-><init>(Lio/grpc/okhttp/OkHttpServerBuilder;)V

    invoke-direct {v0, v1}, Lio/grpc/internal/ServerImplBuilder;-><init>(Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    .line 116
    invoke-static {}, Lio/grpc/internal/TransportTracer;->getDefaultFactory()Lio/grpc/internal/TransportTracer$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    .line 118
    sget-object v0, Lio/grpc/okhttp/OkHttpServerBuilder;->DEFAULT_TRANSPORT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 119
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 120
    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    .line 122
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->socketFactory:Ljavax/net/ServerSocketFactory;

    .line 123
    sget-wide v0, Lio/grpc/internal/GrpcUtil;->DEFAULT_SERVER_KEEPALIVE_TIME_NANOS:J

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->keepAliveTimeNanos:J

    .line 124
    sget-wide v0, Lio/grpc/internal/GrpcUtil;->DEFAULT_SERVER_KEEPALIVE_TIMEOUT_NANOS:J

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->keepAliveTimeoutNanos:J

    .line 125
    const v0, 0xffff

    iput v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->flowControlWindow:I

    .line 126
    const/16 v0, 0x2000

    iput v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxInboundMetadataSize:I

    .line 127
    const/high16 v0, 0x400000

    iput v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxInboundMessageSize:I

    .line 128
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionIdleInNanos:J

    .line 130
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->permitKeepAliveTimeInNanos:J

    .line 131
    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionAgeInNanos:J

    .line 132
    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionAgeGraceInNanos:J

    .line 137
    const-string v0, "address"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->listenAddress:Ljava/net/SocketAddress;

    .line 138
    nop

    .line 139
    const-string v0, "handshakerSocketFactory"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/HandshakerSocketFactory;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->handshakerSocketFactory:Lio/grpc/okhttp/HandshakerSocketFactory;

    .line 140
    return-void
.end method

.method public static forPort(I)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 1
    .param p0, "port"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static forPort(ILio/grpc/ServerCredentials;)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 1
    .param p0, "port"    # I
    .param p1, "creds"    # Lio/grpc/ServerCredentials;

    .line 99
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p0}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-static {v0, p1}, Lio/grpc/okhttp/OkHttpServerBuilder;->forPort(Ljava/net/SocketAddress;Lio/grpc/ServerCredentials;)Lio/grpc/okhttp/OkHttpServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static forPort(Ljava/net/SocketAddress;Lio/grpc/ServerCredentials;)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 3
    .param p0, "address"    # Ljava/net/SocketAddress;
    .param p1, "creds"    # Lio/grpc/ServerCredentials;

    .line 106
    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerBuilder;->handshakerSocketFactoryFrom(Lio/grpc/ServerCredentials;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    move-result-object v0

    .line 107
    .local v0, "result":Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;
    iget-object v1, v0, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Lio/grpc/okhttp/OkHttpServerBuilder;

    iget-object v2, v0, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->factory:Lio/grpc/okhttp/HandshakerSocketFactory;

    invoke-direct {v1, p0, v2}, Lio/grpc/okhttp/OkHttpServerBuilder;-><init>(Ljava/net/SocketAddress;Lio/grpc/okhttp/HandshakerSocketFactory;)V

    return-object v1

    .line 108
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, v0, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static handshakerSocketFactoryFrom(Lio/grpc/ServerCredentials;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;
    .locals 9
    .param p0, "creds"    # Lio/grpc/ServerCredentials;

    .line 386
    instance-of v0, p0, Lio/grpc/TlsServerCredentials;

    if-eqz v0, :cond_6

    .line 387
    move-object v0, p0

    check-cast v0, Lio/grpc/TlsServerCredentials;

    .line 388
    .local v0, "tlsCreds":Lio/grpc/TlsServerCredentials;
    sget-object v1, Lio/grpc/okhttp/OkHttpServerBuilder;->understoodTlsFeatures:Ljava/util/EnumSet;

    .line 389
    invoke-virtual {v0, v1}, Lio/grpc/TlsServerCredentials;->incomprehensible(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 390
    .local v1, "incomprehensible":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/TlsServerCredentials$Feature;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TLS features not understood: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    move-result-object v2

    return-object v2

    .line 394
    :cond_0
    const/4 v2, 0x0

    .line 395
    .local v2, "km":[Ljavax/net/ssl/KeyManager;
    invoke-virtual {v0}, Lio/grpc/TlsServerCredentials;->getKeyManagers()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 396
    invoke-virtual {v0}, Lio/grpc/TlsServerCredentials;->getKeyManagers()Ljava/util/List;

    move-result-object v3

    new-array v5, v4, [Ljavax/net/ssl/KeyManager;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Ljavax/net/ssl/KeyManager;

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {v0}, Lio/grpc/TlsServerCredentials;->getPrivateKey()[B

    move-result-object v3

    if-eqz v3, :cond_3

    .line 398
    invoke-virtual {v0}, Lio/grpc/TlsServerCredentials;->getPrivateKeyPassword()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 399
    const-string v3, "byte[]-based private key with password unsupported. Use unencrypted file or KeyManager"

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    move-result-object v3

    return-object v3

    .line 403
    :cond_2
    nop

    .line 404
    :try_start_0
    invoke-virtual {v0}, Lio/grpc/TlsServerCredentials;->getCertificateChain()[B

    move-result-object v3

    invoke-virtual {v0}, Lio/grpc/TlsServerCredentials;->getPrivateKey()[B

    move-result-object v5

    .line 403
    invoke-static {v3, v5}, Lio/grpc/okhttp/OkHttpChannelBuilder;->createKeyManager([B[B)[Ljavax/net/ssl/KeyManager;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 409
    goto :goto_0

    .line 405
    :catch_0
    move-exception v3

    .line 406
    .local v3, "gse":Ljava/security/GeneralSecurityException;
    sget-object v4, Lio/grpc/okhttp/OkHttpServerBuilder;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Exception loading private key from credential"

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load private key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 408
    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-static {v4}, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    move-result-object v4

    return-object v4

    .line 411
    .end local v3    # "gse":Ljava/security/GeneralSecurityException;
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 412
    .local v3, "tm":[Ljavax/net/ssl/TrustManager;
    invoke-virtual {v0}, Lio/grpc/TlsServerCredentials;->getTrustManagers()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 413
    invoke-virtual {v0}, Lio/grpc/TlsServerCredentials;->getTrustManagers()Ljava/util/List;

    move-result-object v5

    new-array v6, v4, [Ljavax/net/ssl/TrustManager;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, [Ljavax/net/ssl/TrustManager;

    goto :goto_1

    .line 414
    :cond_4
    invoke-virtual {v0}, Lio/grpc/TlsServerCredentials;->getRootCertificates()[B

    move-result-object v5

    if-eqz v5, :cond_5

    .line 416
    :try_start_1
    invoke-virtual {v0}, Lio/grpc/TlsServerCredentials;->getRootCertificates()[B

    move-result-object v5

    invoke-static {v5}, Lio/grpc/okhttp/OkHttpChannelBuilder;->createTrustManager([B)[Ljavax/net/ssl/TrustManager;

    move-result-object v5
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v5

    .line 421
    goto :goto_1

    .line 417
    :catch_1
    move-exception v4

    .line 418
    .local v4, "gse":Ljava/security/GeneralSecurityException;
    sget-object v5, Lio/grpc/okhttp/OkHttpServerBuilder;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Exception loading root certificates from credential"

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load root certificates: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 420
    invoke-virtual {v4}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 419
    invoke-static {v5}, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    move-result-object v5

    return-object v5

    .line 425
    .end local v4    # "gse":Ljava/security/GeneralSecurityException;
    :cond_5
    :goto_1
    :try_start_2
    const-string v5, "TLS"

    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->get()Lio/grpc/okhttp/internal/Platform;

    move-result-object v6

    invoke-virtual {v6}, Lio/grpc/okhttp/internal/Platform;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-static {v5, v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    .line 426
    .local v5, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v6, 0x0

    invoke-virtual {v5, v2, v3, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 429
    nop

    .line 430
    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    .line 431
    .local v6, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    sget-object v7, Lio/grpc/okhttp/OkHttpServerBuilder$1;->$SwitchMap$io$grpc$TlsServerCredentials$ClientAuth:[I

    invoke-virtual {v0}, Lio/grpc/TlsServerCredentials;->getClientAuth()Lio/grpc/TlsServerCredentials$ClientAuth;

    move-result-object v8

    invoke-virtual {v8}, Lio/grpc/TlsServerCredentials$ClientAuth;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown TlsServerCredentials.ClientAuth value: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 446
    invoke-virtual {v0}, Lio/grpc/TlsServerCredentials;->getClientAuth()Lio/grpc/TlsServerCredentials$ClientAuth;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-static {v4}, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    move-result-object v4

    return-object v4

    .line 442
    :pswitch_0
    goto :goto_2

    .line 437
    :pswitch_1
    new-instance v4, Lio/grpc/okhttp/OkHttpServerBuilder$ClientCertRequestingSocketFactory;

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Lio/grpc/okhttp/OkHttpServerBuilder$ClientCertRequestingSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Z)V

    move-object v6, v4

    .line 438
    goto :goto_2

    .line 433
    :pswitch_2
    new-instance v7, Lio/grpc/okhttp/OkHttpServerBuilder$ClientCertRequestingSocketFactory;

    invoke-direct {v7, v6, v4}, Lio/grpc/okhttp/OkHttpServerBuilder$ClientCertRequestingSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Z)V

    move-object v6, v7

    .line 434
    nop

    .line 448
    :goto_2
    new-instance v4, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;

    new-instance v7, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;

    invoke-direct {v7, v6}, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-direct {v4, v7}, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;-><init>(Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;)V

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->factory(Lio/grpc/okhttp/HandshakerSocketFactory;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    move-result-object v4

    return-object v4

    .line 427
    .end local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v6    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catch_2
    move-exception v4

    .line 428
    .restart local v4    # "gse":Ljava/security/GeneralSecurityException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "TLS Provider failure"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 451
    .end local v0    # "tlsCreds":Lio/grpc/TlsServerCredentials;
    .end local v1    # "incomprehensible":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/TlsServerCredentials$Feature;>;"
    .end local v2    # "km":[Ljavax/net/ssl/KeyManager;
    .end local v3    # "tm":[Ljavax/net/ssl/TrustManager;
    .end local v4    # "gse":Ljava/security/GeneralSecurityException;
    :cond_6
    instance-of v0, p0, Lio/grpc/InsecureServerCredentials;

    if-eqz v0, :cond_7

    .line 452
    new-instance v0, Lio/grpc/okhttp/PlaintextHandshakerSocketFactory;

    invoke-direct {v0}, Lio/grpc/okhttp/PlaintextHandshakerSocketFactory;-><init>()V

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->factory(Lio/grpc/okhttp/HandshakerSocketFactory;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    move-result-object v0

    return-object v0

    .line 454
    :cond_7
    instance-of v0, p0, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;

    if-eqz v0, :cond_8

    .line 455
    move-object v0, p0

    check-cast v0, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;

    .line 457
    .local v0, "factoryCreds":Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;
    new-instance v1, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;

    invoke-direct {v1, v0}, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;-><init>(Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;)V

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->factory(Lio/grpc/okhttp/HandshakerSocketFactory;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    move-result-object v1

    return-object v1

    .line 460
    .end local v0    # "factoryCreds":Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;
    :cond_8
    instance-of v0, p0, Lio/grpc/ChoiceServerCredentials;

    if-eqz v0, :cond_b

    .line 461
    move-object v0, p0

    check-cast v0, Lio/grpc/ChoiceServerCredentials;

    .line 462
    .local v0, "choiceCreds":Lio/grpc/ChoiceServerCredentials;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .local v1, "error":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lio/grpc/ChoiceServerCredentials;->getCredentialsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/ServerCredentials;

    .line 464
    .local v3, "innerCreds":Lio/grpc/ServerCredentials;
    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerBuilder;->handshakerSocketFactoryFrom(Lio/grpc/ServerCredentials;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    move-result-object v4

    .line 465
    .local v4, "result":Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;
    iget-object v5, v4, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error:Ljava/lang/String;

    if-nez v5, :cond_9

    .line 466
    return-object v4

    .line 468
    :cond_9
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget-object v5, v4, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .end local v3    # "innerCreds":Lio/grpc/ServerCredentials;
    .end local v4    # "result":Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;
    goto :goto_3

    .line 471
    :cond_a
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    move-result-object v2

    return-object v2

    .line 474
    .end local v0    # "choiceCreds":Lio/grpc/ChoiceServerCredentials;
    .end local v1    # "error":Ljava/lang/StringBuilder;
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported credential type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 475
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;->error(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpServerBuilder$HandshakerSocketFactoryResult;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method buildTransportServers(Ljava/util/List;)Lio/grpc/internal/InternalServer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;)",
            "Lio/grpc/internal/InternalServer;"
        }
    .end annotation

    .line 378
    .local p1, "streamTracerFactories":Ljava/util/List;, "Ljava/util/List<+Lio/grpc/ServerStreamTracer$Factory;>;"
    new-instance v0, Lio/grpc/okhttp/OkHttpServer;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    invoke-virtual {v1}, Lio/grpc/internal/ServerImplBuilder;->getChannelz()Lio/grpc/InternalChannelz;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/okhttp/OkHttpServer;-><init>(Lio/grpc/okhttp/OkHttpServerBuilder;Ljava/util/List;Lio/grpc/InternalChannelz;)V

    return-object v0
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

    .line 145
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    return-object v0
.end method

.method public flowControlWindow(I)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 2
    .param p1, "flowControlWindow"    # I

    .line 317
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "flowControlWindow must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 318
    iput p1, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->flowControlWindow:I

    .line 319
    return-object p0
.end method

.method public bridge synthetic keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpServerBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 4
    .param p1, "keepAliveTime"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 191
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "keepalive time must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 192
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->keepAliveTimeNanos:J

    .line 193
    invoke-static {v0, v1}, Lio/grpc/internal/KeepAliveManager;->clampKeepAliveTimeInNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->keepAliveTimeNanos:J

    .line 194
    sget-wide v2, Lio/grpc/okhttp/OkHttpServerBuilder;->AS_LARGE_AS_INFINITE:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 196
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->keepAliveTimeNanos:J

    .line 198
    :cond_1
    return-object p0
.end method

.method public bridge synthetic keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpServerBuilder;->keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 2
    .param p1, "keepAliveTimeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 272
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "keepalive timeout must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 273
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->keepAliveTimeoutNanos:J

    .line 274
    invoke-static {v0, v1}, Lio/grpc/internal/KeepAliveManager;->clampKeepAliveTimeoutInNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->keepAliveTimeoutNanos:J

    .line 275
    return-object p0
.end method

.method public bridge synthetic maxConnectionAge(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionAge(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxConnectionAge(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 4
    .param p1, "maxConnectionAge"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 230
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "max connection age must be positive: %s"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 232
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionAgeInNanos:J

    .line 233
    sget-wide v2, Lio/grpc/okhttp/OkHttpServerBuilder;->AS_LARGE_AS_INFINITE:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 234
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionAgeInNanos:J

    .line 236
    :cond_1
    iget-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionAgeInNanos:J

    sget-wide v2, Lio/grpc/okhttp/OkHttpServerBuilder;->MIN_MAX_CONNECTION_AGE_NANO:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 237
    iput-wide v2, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionAgeInNanos:J

    .line 239
    :cond_2
    return-object p0
.end method

.method public bridge synthetic maxConnectionAgeGrace(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionAgeGrace(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxConnectionAgeGrace(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 4
    .param p1, "maxConnectionAgeGrace"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 252
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "max connection age grace must be non-negative: %s"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 254
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionAgeGraceInNanos:J

    .line 255
    sget-wide v2, Lio/grpc/okhttp/OkHttpServerBuilder;->AS_LARGE_AS_INFINITE:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 256
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionAgeGraceInNanos:J

    .line 258
    :cond_1
    return-object p0
.end method

.method public bridge synthetic maxConnectionIdle(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionIdle(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxConnectionIdle(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 4
    .param p1, "maxConnectionIdle"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 210
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "max connection idle must be positive: %s"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 212
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionIdleInNanos:J

    .line 213
    sget-wide v2, Lio/grpc/okhttp/OkHttpServerBuilder;->AS_LARGE_AS_INFINITE:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 214
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionIdleInNanos:J

    .line 216
    :cond_1
    iget-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionIdleInNanos:J

    sget-wide v2, Lio/grpc/okhttp/OkHttpServerBuilder;->MIN_MAX_CONNECTION_IDLE_NANO:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 217
    iput-wide v2, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionIdleInNanos:J

    .line 219
    :cond_2
    return-object p0
.end method

.method public bridge synthetic maxInboundMessageSize(I)Lio/grpc/ServerBuilder;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpServerBuilder;->maxInboundMessageSize(I)Lio/grpc/okhttp/OkHttpServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMessageSize(I)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 2
    .param p1, "bytes"    # I

    .line 367
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "negative max bytes"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 368
    iput p1, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxInboundMessageSize:I

    .line 369
    return-object p0
.end method

.method public bridge synthetic maxInboundMetadataSize(I)Lio/grpc/ServerBuilder;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpServerBuilder;->maxInboundMetadataSize(I)Lio/grpc/okhttp/OkHttpServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMetadataSize(I)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 2
    .param p1, "bytes"    # I

    .line 350
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxInboundMetadataSize must be > 0"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 351
    iput p1, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->maxInboundMetadataSize:I

    .line 352
    return-object p0
.end method

.method public bridge synthetic permitKeepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpServerBuilder;->permitKeepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public permitKeepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 2
    .param p1, "keepAliveTime"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 294
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "permit keepalive time must be non-negative: %s"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 296
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->permitKeepAliveTimeInNanos:J

    .line 297
    return-object p0
.end method

.method public bridge synthetic permitKeepAliveWithoutCalls(Z)Lio/grpc/ServerBuilder;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpServerBuilder;->permitKeepAliveWithoutCalls(Z)Lio/grpc/okhttp/OkHttpServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public permitKeepAliveWithoutCalls(Z)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 0
    .param p1, "permit"    # Z

    .line 309
    iput-boolean p1, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->permitKeepAliveWithoutCalls:Z

    .line 310
    return-object p0
.end method

.method public scheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 2
    .param p1, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 332
    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    .line 333
    const-string v1, "scheduledExecutorService"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    .line 334
    return-object p0
.end method

.method setStatsEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 373
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    invoke-virtual {v0, p1}, Lio/grpc/internal/ServerImplBuilder;->setStatsEnabled(Z)V

    .line 374
    return-void
.end method

.method setTransportTracerFactory(Lio/grpc/internal/TransportTracer$Factory;)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 0
    .param p1, "transportTracerFactory"    # Lio/grpc/internal/TransportTracer$Factory;

    .line 150
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    .line 151
    return-object p0
.end method

.method public socketFactory(Ljavax/net/ServerSocketFactory;)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 1
    .param p1, "socketFactory"    # Ljavax/net/ServerSocketFactory;

    .line 174
    if-nez p1, :cond_0

    .line 175
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->socketFactory:Ljavax/net/ServerSocketFactory;

    goto :goto_0

    .line 177
    :cond_0
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->socketFactory:Ljavax/net/ServerSocketFactory;

    .line 179
    :goto_0
    return-object p0
.end method

.method public transportExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/okhttp/OkHttpServerBuilder;
    .locals 1
    .param p1, "transportExecutor"    # Ljava/util/concurrent/Executor;

    .line 161
    if-nez p1, :cond_0

    .line 162
    sget-object v0, Lio/grpc/okhttp/OkHttpServerBuilder;->DEFAULT_TRANSPORT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    goto :goto_0

    .line 164
    :cond_0
    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    invoke-direct {v0, p1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerBuilder;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 166
    :goto_0
    return-object p0
.end method
