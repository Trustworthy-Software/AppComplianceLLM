.class public final Lio/grpc/okhttp/OkHttpChannelBuilder;
.super Lio/grpc/internal/AbstractManagedChannelImplBuilder;
.source "OkHttpChannelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;,
        Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;,
        Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelDefaultPortProvider;,
        Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelTransportFactoryBuilder;,
        Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/AbstractManagedChannelImplBuilder<",
        "Lio/grpc/okhttp/OkHttpChannelBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final AS_LARGE_AS_INFINITE:J

.field public static final DEFAULT_FLOW_CONTROL_WINDOW:I = 0xffff

.field static final DEFAULT_TRANSPORT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field static final INTERNAL_DEFAULT_CONNECTION_SPEC:Lio/grpc/okhttp/internal/ConnectionSpec;

.field private static final SHARED_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Ljava/util/logging/Logger;

.field private static final understoodTlsFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lio/grpc/TlsChannelCredentials$Feature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

.field private flowControlWindow:I

.field private final freezeSecurityConfiguration:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private keepAliveTimeNanos:J

.field private keepAliveTimeoutNanos:J

.field private keepAliveWithoutCalls:Z

.field private final managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

.field private maxInboundMetadataSize:I

.field private negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

.field private scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private socketFactory:Ljavax/net/SocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private transportExecutorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

.field private final useGetForSafeMethods:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 88
    const-class v0, Lio/grpc/okhttp/OkHttpChannelBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->log:Ljava/util/logging/Logger;

    .line 108
    new-instance v0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    sget-object v1, Lio/grpc/okhttp/internal/ConnectionSpec;->MODERN_TLS:Lio/grpc/okhttp/internal/ConnectionSpec;

    invoke-direct {v0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;-><init>(Lio/grpc/okhttp/internal/ConnectionSpec;)V

    const/4 v1, 0x6

    new-array v1, v1, [Lio/grpc/okhttp/internal/CipherSuite;

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v5, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v5, v1, v2

    const/4 v2, 0x3

    sget-object v5, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v5, v1, v2

    const/4 v2, 0x4

    sget-object v5, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v5, v1, v2

    const/4 v2, 0x5

    sget-object v5, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    aput-object v5, v1, v2

    .line 110
    invoke-virtual {v0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->cipherSuites([Lio/grpc/okhttp/internal/CipherSuite;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v4, [Lio/grpc/okhttp/internal/TlsVersion;

    sget-object v2, Lio/grpc/okhttp/internal/TlsVersion;->TLS_1_2:Lio/grpc/okhttp/internal/TlsVersion;

    aput-object v2, v1, v3

    .line 127
    invoke-virtual {v0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions([Lio/grpc/okhttp/internal/TlsVersion;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v4}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->build()Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->INTERNAL_DEFAULT_CONNECTION_SPEC:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 131
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->AS_LARGE_AS_INFINITE:J

    .line 132
    new-instance v0, Lio/grpc/okhttp/OkHttpChannelBuilder$1;

    invoke-direct {v0}, Lio/grpc/okhttp/OkHttpChannelBuilder$1;-><init>()V

    sput-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->SHARED_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 144
    nop

    .line 145
    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->DEFAULT_TRANSPORT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    .line 585
    sget-object v0, Lio/grpc/TlsChannelCredentials$Feature;->MTLS:Lio/grpc/TlsChannelCredentials$Feature;

    sget-object v1, Lio/grpc/TlsChannelCredentials$Feature;->CUSTOM_MANAGERS:Lio/grpc/TlsChannelCredentials$Feature;

    .line 586
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->understoodTlsFeatures:Ljava/util/EnumSet;

    .line 585
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;-><init>()V

    .line 92
    invoke-static {}, Lio/grpc/internal/TransportTracer;->getDefaultFactory()Lio/grpc/internal/TransportTracer$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    .line 177
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->DEFAULT_TRANSPORT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 178
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 179
    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    .line 185
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->INTERNAL_DEFAULT_CONNECTION_SPEC:Lio/grpc/okhttp/internal/ConnectionSpec;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 186
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->TLS:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    .line 187
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeNanos:J

    .line 188
    sget-wide v0, Lio/grpc/internal/GrpcUtil;->DEFAULT_KEEPALIVE_TIMEOUT_NANOS:J

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeoutNanos:J

    .line 189
    const v0, 0xffff

    iput v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->flowControlWindow:I

    .line 191
    const v0, 0x7fffffff

    iput v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->maxInboundMetadataSize:I

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->useGetForSafeMethods:Z

    .line 204
    new-instance v1, Lio/grpc/internal/ManagedChannelImplBuilder;

    new-instance v2, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelTransportFactoryBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelTransportFactoryBuilder;-><init>(Lio/grpc/okhttp/OkHttpChannelBuilder;Lio/grpc/okhttp/OkHttpChannelBuilder$1;)V

    new-instance v4, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelDefaultPortProvider;

    invoke-direct {v4, p0, v3}, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelDefaultPortProvider;-><init>(Lio/grpc/okhttp/OkHttpChannelBuilder;Lio/grpc/okhttp/OkHttpChannelBuilder$1;)V

    invoke-direct {v1, p1, v2, v4}, Lio/grpc/internal/ManagedChannelImplBuilder;-><init>(Ljava/lang/String;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    .line 207
    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->freezeSecurityConfiguration:Z

    .line 208
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 200
    invoke-static {p1, p2}, Lio/grpc/internal/GrpcUtil;->authorityFromHostAndPort(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/okhttp/OkHttpChannelBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 7
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "channelCreds"    # Lio/grpc/ChannelCredentials;
    .param p3, "callCreds"    # Lio/grpc/CallCredentials;
    .param p4, "factory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 212
    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;-><init>()V

    .line 92
    invoke-static {}, Lio/grpc/internal/TransportTracer;->getDefaultFactory()Lio/grpc/internal/TransportTracer$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    .line 177
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->DEFAULT_TRANSPORT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 178
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 179
    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    .line 185
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->INTERNAL_DEFAULT_CONNECTION_SPEC:Lio/grpc/okhttp/internal/ConnectionSpec;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 186
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->TLS:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    .line 187
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeNanos:J

    .line 188
    sget-wide v0, Lio/grpc/internal/GrpcUtil;->DEFAULT_KEEPALIVE_TIMEOUT_NANOS:J

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeoutNanos:J

    .line 189
    const v0, 0xffff

    iput v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->flowControlWindow:I

    .line 191
    const v0, 0x7fffffff

    iput v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->maxInboundMetadataSize:I

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->useGetForSafeMethods:Z

    .line 213
    new-instance v0, Lio/grpc/internal/ManagedChannelImplBuilder;

    new-instance v5, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelTransportFactoryBuilder;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelTransportFactoryBuilder;-><init>(Lio/grpc/okhttp/OkHttpChannelBuilder;Lio/grpc/okhttp/OkHttpChannelBuilder$1;)V

    new-instance v6, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelDefaultPortProvider;

    invoke-direct {v6, p0, v1}, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelDefaultPortProvider;-><init>(Lio/grpc/okhttp/OkHttpChannelBuilder;Lio/grpc/okhttp/OkHttpChannelBuilder$1;)V

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lio/grpc/internal/ManagedChannelImplBuilder;-><init>(Ljava/lang/String;Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    .line 217
    iput-object p4, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 218
    if-nez p4, :cond_0

    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->PLAINTEXT:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->TLS:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    :goto_0
    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->freezeSecurityConfiguration:Z

    .line 220
    return-void
.end method

.method static createKeyManager([B[B)[Ljavax/net/ssl/KeyManager;
    .locals 8
    .param p0, "certChain"    # [B
    .param p1, "privateKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 669
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 671
    .local v0, "inCertChain":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-static {v0}, Lio/grpc/util/CertificateUtils;->getX509Certificates(Ljava/io/InputStream;)[Ljava/security/cert/X509Certificate;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 673
    .local v1, "chain":[Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 674
    nop

    .line 676
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 678
    .local v2, "inPrivateKey":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {v2}, Lio/grpc/util/CertificateUtils;->getPrivateKey(Ljava/io/InputStream;)Ljava/security/PrivateKey;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 682
    .local v3, "key":Ljava/security/PrivateKey;
    invoke-static {v2}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 683
    nop

    .line 684
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 686
    .local v4, "ks":Ljava/security/KeyStore;
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v4, v5, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 690
    nop

    .line 691
    const-string v5, "key"

    const/4 v6, 0x0

    new-array v7, v6, [C

    invoke-virtual {v4, v5, v3, v7, v1}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 694
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v5

    .line 695
    .local v5, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    new-array v6, v6, [C

    invoke-virtual {v5, v4, v6}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 696
    invoke-virtual {v5}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v6

    return-object v6

    .line 687
    .end local v5    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :catch_0
    move-exception v5

    .line 689
    .local v5, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/security/GeneralSecurityException;

    invoke-direct {v6, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 682
    .end local v3    # "key":Ljava/security/PrivateKey;
    .end local v4    # "ks":Ljava/security/KeyStore;
    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 679
    :catch_1
    move-exception v3

    .line 680
    .local v3, "uee":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Ljava/security/GeneralSecurityException;

    const-string v5, "Unable to decode private key"

    invoke-direct {v4, v5, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "inCertChain":Ljava/io/ByteArrayInputStream;
    .end local v1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local v2    # "inPrivateKey":Ljava/io/ByteArrayInputStream;
    .end local p0    # "certChain":[B
    .end local p1    # "privateKey":[B
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 682
    .end local v3    # "uee":Ljava/io/IOException;
    .restart local v0    # "inCertChain":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "chain":[Ljava/security/cert/X509Certificate;
    .restart local v2    # "inPrivateKey":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "certChain":[B
    .restart local p1    # "privateKey":[B
    :goto_0
    invoke-static {v2}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .line 673
    .end local v1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local v2    # "inPrivateKey":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method static createTrustManager([B)[Ljavax/net/ssl/TrustManager;
    .locals 8
    .param p0, "rootCerts"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 700
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 702
    .local v0, "ks":Ljava/security/KeyStore;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    nop

    .line 708
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 710
    .local v1, "in":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {v1}, Lio/grpc/util/CertificateUtils;->getX509Certificates(Ljava/io/InputStream;)[Ljava/security/cert/X509Certificate;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    .local v2, "certs":[Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 713
    nop

    .line 714
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 715
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 716
    .local v6, "principal":Ljavax/security/auth/x500/X500Principal;
    const-string v7, "RFC2253"

    invoke-virtual {v6, v7}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 714
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "principal":Ljavax/security/auth/x500/X500Principal;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 720
    :cond_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 721
    .local v3, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v3, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 722
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    return-object v4

    .line 712
    .end local v2    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v3    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .line 703
    .end local v1    # "in":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v1

    .line 705
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/security/GeneralSecurityException;

    invoke-direct {v2, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static forAddress(Ljava/lang/String;I)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 149
    new-instance v0, Lio/grpc/okhttp/OkHttpChannelBuilder;

    invoke-direct {v0, p0, p1}, Lio/grpc/okhttp/OkHttpChannelBuilder;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static forAddress(Ljava/lang/String;ILio/grpc/ChannelCredentials;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "creds"    # Lio/grpc/ChannelCredentials;

    .line 154
    invoke-static {p0, p1}, Lio/grpc/internal/GrpcUtil;->authorityFromHostAndPort(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lio/grpc/okhttp/OkHttpChannelBuilder;->forTarget(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static forTarget(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 1
    .param p0, "target"    # Ljava/lang/String;

    .line 162
    new-instance v0, Lio/grpc/okhttp/OkHttpChannelBuilder;

    invoke-direct {v0, p0}, Lio/grpc/okhttp/OkHttpChannelBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static forTarget(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 4
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "creds"    # Lio/grpc/ChannelCredentials;

    .line 170
    invoke-static {p1}, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactoryFrom(Lio/grpc/ChannelCredentials;)Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;

    move-result-object v0

    .line 171
    .local v0, "result":Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;
    iget-object v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->error:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Lio/grpc/okhttp/OkHttpChannelBuilder;

    iget-object v2, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->callCredentials:Lio/grpc/CallCredentials;

    iget-object v3, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->factory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v1, p0, p1, v2, v3}, Lio/grpc/okhttp/OkHttpChannelBuilder;-><init>(Ljava/lang/String;Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v1

    .line 172
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->error:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static sslSocketFactoryFrom(Lio/grpc/ChannelCredentials;)Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;
    .locals 8
    .param p0, "creds"    # Lio/grpc/ChannelCredentials;

    .line 590
    instance-of v0, p0, Lio/grpc/TlsChannelCredentials;

    if-eqz v0, :cond_6

    .line 591
    move-object v0, p0

    check-cast v0, Lio/grpc/TlsChannelCredentials;

    .line 592
    .local v0, "tlsCreds":Lio/grpc/TlsChannelCredentials;
    sget-object v1, Lio/grpc/okhttp/OkHttpChannelBuilder;->understoodTlsFeatures:Ljava/util/EnumSet;

    .line 593
    invoke-virtual {v0, v1}, Lio/grpc/TlsChannelCredentials;->incomprehensible(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 594
    .local v1, "incomprehensible":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/TlsChannelCredentials$Feature;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TLS features not understood: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->error(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;

    move-result-object v2

    return-object v2

    .line 598
    :cond_0
    const/4 v2, 0x0

    .line 599
    .local v2, "km":[Ljavax/net/ssl/KeyManager;
    invoke-virtual {v0}, Lio/grpc/TlsChannelCredentials;->getKeyManagers()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 600
    invoke-virtual {v0}, Lio/grpc/TlsChannelCredentials;->getKeyManagers()Ljava/util/List;

    move-result-object v3

    new-array v5, v4, [Ljavax/net/ssl/KeyManager;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Ljavax/net/ssl/KeyManager;

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual {v0}, Lio/grpc/TlsChannelCredentials;->getPrivateKey()[B

    move-result-object v3

    if-eqz v3, :cond_3

    .line 602
    invoke-virtual {v0}, Lio/grpc/TlsChannelCredentials;->getPrivateKeyPassword()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 603
    const-string v3, "byte[]-based private key with password unsupported. Use unencrypted file or KeyManager"

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->error(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;

    move-result-object v3

    return-object v3

    .line 607
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lio/grpc/TlsChannelCredentials;->getCertificateChain()[B

    move-result-object v3

    invoke-virtual {v0}, Lio/grpc/TlsChannelCredentials;->getPrivateKey()[B

    move-result-object v5

    invoke-static {v3, v5}, Lio/grpc/okhttp/OkHttpChannelBuilder;->createKeyManager([B[B)[Ljavax/net/ssl/KeyManager;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 611
    goto :goto_0

    .line 608
    :catch_0
    move-exception v3

    .line 609
    .local v3, "gse":Ljava/security/GeneralSecurityException;
    sget-object v4, Lio/grpc/okhttp/OkHttpChannelBuilder;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Exception loading private key from credential"

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 610
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load private key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->error(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;

    move-result-object v4

    return-object v4

    .line 613
    .end local v3    # "gse":Ljava/security/GeneralSecurityException;
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 614
    .local v3, "tm":[Ljavax/net/ssl/TrustManager;
    invoke-virtual {v0}, Lio/grpc/TlsChannelCredentials;->getTrustManagers()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 615
    invoke-virtual {v0}, Lio/grpc/TlsChannelCredentials;->getTrustManagers()Ljava/util/List;

    move-result-object v5

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, [Ljavax/net/ssl/TrustManager;

    goto :goto_1

    .line 616
    :cond_4
    invoke-virtual {v0}, Lio/grpc/TlsChannelCredentials;->getRootCertificates()[B

    move-result-object v4

    if-eqz v4, :cond_5

    .line 618
    :try_start_1
    invoke-virtual {v0}, Lio/grpc/TlsChannelCredentials;->getRootCertificates()[B

    move-result-object v4

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpChannelBuilder;->createTrustManager([B)[Ljavax/net/ssl/TrustManager;

    move-result-object v4
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 623
    goto :goto_1

    .line 619
    :catch_1
    move-exception v4

    .line 620
    .local v4, "gse":Ljava/security/GeneralSecurityException;
    sget-object v5, Lio/grpc/okhttp/OkHttpChannelBuilder;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Exception loading root certificates from credential"

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 621
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load root certificates: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 622
    invoke-virtual {v4}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 621
    invoke-static {v5}, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->error(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;

    move-result-object v5

    return-object v5

    .line 627
    .end local v4    # "gse":Ljava/security/GeneralSecurityException;
    :cond_5
    :goto_1
    :try_start_2
    const-string v4, "TLS"

    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->get()Lio/grpc/okhttp/internal/Platform;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/okhttp/internal/Platform;->getProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-static {v4, v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 628
    .local v4, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 631
    nop

    .line 632
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-static {v5}, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->factory(Ljavax/net/ssl/SSLSocketFactory;)Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;

    move-result-object v5

    return-object v5

    .line 629
    .end local v4    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_2
    move-exception v4

    .line 630
    .local v4, "gse":Ljava/security/GeneralSecurityException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "TLS Provider failure"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 634
    .end local v0    # "tlsCreds":Lio/grpc/TlsChannelCredentials;
    .end local v1    # "incomprehensible":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/TlsChannelCredentials$Feature;>;"
    .end local v2    # "km":[Ljavax/net/ssl/KeyManager;
    .end local v3    # "tm":[Ljavax/net/ssl/TrustManager;
    .end local v4    # "gse":Ljava/security/GeneralSecurityException;
    :cond_6
    instance-of v0, p0, Lio/grpc/InsecureChannelCredentials;

    if-eqz v0, :cond_7

    .line 635
    invoke-static {}, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->plaintext()Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;

    move-result-object v0

    return-object v0

    .line 637
    :cond_7
    instance-of v0, p0, Lio/grpc/CompositeChannelCredentials;

    if-eqz v0, :cond_8

    .line 638
    move-object v0, p0

    check-cast v0, Lio/grpc/CompositeChannelCredentials;

    .line 639
    .local v0, "compCreds":Lio/grpc/CompositeChannelCredentials;
    invoke-virtual {v0}, Lio/grpc/CompositeChannelCredentials;->getChannelCredentials()Lio/grpc/ChannelCredentials;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactoryFrom(Lio/grpc/ChannelCredentials;)Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;

    move-result-object v1

    .line 640
    invoke-virtual {v0}, Lio/grpc/CompositeChannelCredentials;->getCallCredentials()Lio/grpc/CallCredentials;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->withCallCredentials(Lio/grpc/CallCredentials;)Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;

    move-result-object v1

    .line 639
    return-object v1

    .line 642
    .end local v0    # "compCreds":Lio/grpc/CompositeChannelCredentials;
    :cond_8
    instance-of v0, p0, Lio/grpc/okhttp/SslSocketFactoryChannelCredentials$ChannelCredentials;

    if-eqz v0, :cond_9

    .line 643
    move-object v0, p0

    check-cast v0, Lio/grpc/okhttp/SslSocketFactoryChannelCredentials$ChannelCredentials;

    .line 645
    .local v0, "factoryCreds":Lio/grpc/okhttp/SslSocketFactoryChannelCredentials$ChannelCredentials;
    invoke-virtual {v0}, Lio/grpc/okhttp/SslSocketFactoryChannelCredentials$ChannelCredentials;->getFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->factory(Ljavax/net/ssl/SSLSocketFactory;)Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;

    move-result-object v1

    return-object v1

    .line 647
    .end local v0    # "factoryCreds":Lio/grpc/okhttp/SslSocketFactoryChannelCredentials$ChannelCredentials;
    :cond_9
    instance-of v0, p0, Lio/grpc/ChoiceChannelCredentials;

    if-eqz v0, :cond_c

    .line 648
    move-object v0, p0

    check-cast v0, Lio/grpc/ChoiceChannelCredentials;

    .line 649
    .local v0, "choiceCreds":Lio/grpc/ChoiceChannelCredentials;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .local v1, "error":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lio/grpc/ChoiceChannelCredentials;->getCredentialsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/ChannelCredentials;

    .line 651
    .local v3, "innerCreds":Lio/grpc/ChannelCredentials;
    invoke-static {v3}, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactoryFrom(Lio/grpc/ChannelCredentials;)Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;

    move-result-object v4

    .line 652
    .local v4, "result":Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;
    iget-object v5, v4, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->error:Ljava/lang/String;

    if-nez v5, :cond_a

    .line 653
    return-object v4

    .line 655
    :cond_a
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    iget-object v5, v4, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->error:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .end local v3    # "innerCreds":Lio/grpc/ChannelCredentials;
    .end local v4    # "result":Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;
    goto :goto_2

    .line 658
    :cond_b
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->error(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;

    move-result-object v2

    return-object v2

    .line 661
    .end local v0    # "choiceCreds":Lio/grpc/ChoiceChannelCredentials;
    .end local v1    # "error":Ljava/lang/StringBuilder;
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported credential type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 662
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->error(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method buildTransportFactory()Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;
    .locals 22

    .line 520
    move-object/from16 v0, p0

    iget-wide v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeNanos:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v10, v1

    .line 521
    .local v10, "enableKeepAlive":Z
    new-instance v1, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;

    move-object v2, v1

    iget-object v3, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    iget-object v4, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    iget-object v5, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->socketFactory:Ljavax/net/SocketFactory;

    .line 525
    invoke-virtual/range {p0 .. p0}, Lio/grpc/okhttp/OkHttpChannelBuilder;->createSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    iget-object v7, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v8, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    iget v9, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->maxInboundMessageSize:I

    iget-wide v11, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeNanos:J

    iget-wide v13, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeoutNanos:J

    iget v15, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->flowControlWindow:I

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveWithoutCalls:Z

    move/from16 v16, v1

    iget v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->maxInboundMetadataSize:I

    move/from16 v17, v1

    iget-object v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    move-object/from16 v18, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v20}, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;-><init>(Lio/grpc/internal/ObjectPool;Lio/grpc/internal/ObjectPool;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/ConnectionSpec;IZJJIZILio/grpc/internal/TransportTracer$Factory;ZLio/grpc/okhttp/OkHttpChannelBuilder$1;)V

    .line 521
    return-object v21
.end method

.method public connectionSpec(Lcom/squareup/okhttp/ConnectionSpec;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 2
    .param p1, "connectionSpec"    # Lcom/squareup/okhttp/ConnectionSpec;

    .line 410
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->freezeSecurityConfiguration:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change security when using ChannelCredentials"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 412
    invoke-virtual {p1}, Lcom/squareup/okhttp/ConnectionSpec;->isTls()Z

    move-result v0

    const-string v1, "plaintext ConnectionSpec is not accepted"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 413
    invoke-static {p1}, Lio/grpc/okhttp/Utils;->convertSpec(Lcom/squareup/okhttp/ConnectionSpec;)Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 414
    return-object p0
.end method

.method createSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 567
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$2;->$SwitchMap$io$grpc$okhttp$OkHttpChannelBuilder$NegotiationType:[I

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    invoke-virtual {v1}, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 581
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown negotiation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 571
    const-string v0, "Default"

    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->get()Lio/grpc/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/okhttp/internal/Platform;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 572
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 574
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "TLS Provider failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 579
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    :pswitch_1
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 241
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    return-object v0
.end method

.method disableCheckAuthority()Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 1

    .line 540
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImplBuilder;->disableCheckAuthority()Lio/grpc/internal/ManagedChannelImplBuilder;

    .line 541
    return-object p0
.end method

.method enableCheckAuthority()Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 1

    .line 545
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImplBuilder;->enableCheckAuthority()Lio/grpc/internal/ManagedChannelImplBuilder;

    .line 546
    return-object p0
.end method

.method public flowControlWindow(I)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 2
    .param p1, "flowControlWindow"    # I

    .line 341
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "flowControlWindow must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 342
    iput p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->flowControlWindow:I

    .line 343
    return-object p0
.end method

.method getDefaultPort()I
    .locals 3

    .line 550
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$2;->$SwitchMap$io$grpc$okhttp$OkHttpChannelBuilder$NegotiationType:[I

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    invoke-virtual {v1}, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 556
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 554
    :pswitch_0
    const/16 v0, 0x1bb

    return v0

    .line 552
    :pswitch_1
    const/16 v0, 0x50

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 2
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 390
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->freezeSecurityConfiguration:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change security when using ChannelCredentials"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 392
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 393
    return-object p0
.end method

.method public bridge synthetic keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 4
    .param p1, "keepAliveTime"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 313
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

    .line 314
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeNanos:J

    .line 315
    invoke-static {v0, v1}, Lio/grpc/internal/KeepAliveManager;->clampKeepAliveTimeInNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeNanos:J

    .line 316
    sget-wide v2, Lio/grpc/okhttp/OkHttpChannelBuilder;->AS_LARGE_AS_INFINITE:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 318
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeNanos:J

    .line 320
    :cond_1
    return-object p0
.end method

.method public bridge synthetic keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 2
    .param p1, "keepAliveTimeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 330
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

    .line 331
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeoutNanos:J

    .line 332
    invoke-static {v0, v1}, Lio/grpc/internal/KeepAliveManager;->clampKeepAliveTimeoutInNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeoutNanos:J

    .line 333
    return-object p0
.end method

.method public bridge synthetic keepAliveWithoutCalls(Z)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveWithoutCalls(Z)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveWithoutCalls(Z)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 0
    .param p1, "enable"    # Z

    .line 354
    iput-boolean p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveWithoutCalls:Z

    .line 355
    return-object p0
.end method

.method public bridge synthetic maxInboundMessageSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpChannelBuilder;->maxInboundMessageSize(I)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMessageSize(I)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 2
    .param p1, "max"    # I

    .line 514
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "negative max"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 515
    iput p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->maxInboundMessageSize:I

    .line 516
    return-object p0
.end method

.method public bridge synthetic maxInboundMetadataSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpChannelBuilder;->maxInboundMetadataSize(I)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMetadataSize(I)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 2
    .param p1, "bytes"    # I

    .line 502
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxInboundMetadataSize must be > 0"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 503
    iput p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->maxInboundMetadataSize:I

    .line 504
    return-object p0
.end method

.method public negotiationType(Lio/grpc/okhttp/NegotiationType;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 3
    .param p1, "type"    # Lio/grpc/okhttp/NegotiationType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->freezeSecurityConfiguration:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change security when using ChannelCredentials"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 292
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$2;->$SwitchMap$io$grpc$okhttp$NegotiationType:[I

    invoke-virtual {p1}, Lio/grpc/okhttp/NegotiationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 301
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown negotiation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 298
    :pswitch_0
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->PLAINTEXT:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    .line 299
    goto :goto_0

    .line 295
    :pswitch_1
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->TLS:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    .line 296
    nop

    .line 303
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 2
    .param p1, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 482
    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    .line 483
    const-string v1, "scheduledExecutorService"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    .line 484
    return-object p0
.end method

.method setStatsEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 561
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    invoke-virtual {v0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->setStatsEnabled(Z)V

    .line 562
    return-void
.end method

.method setTransportTracerFactory(Lio/grpc/internal/TransportTracer$Factory;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 0
    .param p1, "transportTracerFactory"    # Lio/grpc/internal/TransportTracer$Factory;

    .line 246
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    .line 247
    return-object p0
.end method

.method public socketFactory(Ljavax/net/SocketFactory;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 0
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 272
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->socketFactory:Ljavax/net/SocketFactory;

    .line 273
    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 2
    .param p1, "factory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 362
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->freezeSecurityConfiguration:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change security when using ChannelCredentials"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 364
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 365
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->TLS:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    .line 366
    return-object p0
.end method

.method public tlsConnectionSpec([Ljava/lang/String;[Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 3
    .param p1, "tlsVersions"    # [Ljava/lang/String;
    .param p2, "cipherSuites"    # [Ljava/lang/String;

    .line 432
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->freezeSecurityConfiguration:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Cannot change security when using ChannelCredentials"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 434
    const-string v0, "tls versions must not null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v0, "ciphers must not null"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    new-instance v0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    invoke-direct {v0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;-><init>(Z)V

    .line 438
    invoke-virtual {v0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 439
    invoke-virtual {v0, p1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 440
    invoke-virtual {v0, p2}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->build()Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 442
    return-object p0
.end method

.method public transportExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 1
    .param p1, "transportExecutor"    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 257
    if-nez p1, :cond_0

    .line 258
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->DEFAULT_TRANSPORT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    goto :goto_0

    .line 260
    :cond_0
    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    invoke-direct {v0, p1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 262
    :goto_0
    return-object p0
.end method

.method public bridge synthetic usePlaintext()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpChannelBuilder;->usePlaintext()Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public usePlaintext()Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 2

    .line 448
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->freezeSecurityConfiguration:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change security when using ChannelCredentials"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 450
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->PLAINTEXT:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    .line 451
    return-object p0
.end method

.method public bridge synthetic useTransportSecurity()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpChannelBuilder;->useTransportSecurity()Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public useTransportSecurity()Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 2

    .line 464
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->freezeSecurityConfiguration:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change security when using ChannelCredentials"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 466
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->TLS:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    .line 467
    return-object p0
.end method
