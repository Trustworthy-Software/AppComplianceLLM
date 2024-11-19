.class Lio/grpc/okhttp/OkHttpClientTransport;
.super Ljava/lang/Object;
.source "OkHttpClientTransport.java"

# interfaces
.implements Lio/grpc/internal/ConnectionClientTransport;
.implements Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;
.implements Lio/grpc/okhttp/OutboundFlowController$Transport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    }
.end annotation


# static fields
.field private static final ERROR_CODE_TO_STATUS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/okhttp/internal/framed/ErrorCode;",
            "Lio/grpc/Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final address:Ljava/net/InetSocketAddress;

.field private attributes:Lio/grpc/Attributes;

.field private clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

.field connectedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field connectingCallback:Ljava/lang/Runnable;

.field private final connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

.field private connectionUnacknowledgedBytesRead:I

.field private final defaultAuthority:Ljava/lang/String;

.field private enableKeepAlive:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

.field private goAwaySent:Z

.field private goAwayStatus:Lio/grpc/Status;

.field private hasStream:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final inUseState:Lio/grpc/internal/InUseStateAggregator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/InUseStateAggregator<",
            "Lio/grpc/okhttp/OkHttpClientStream;",
            ">;"
        }
    .end annotation
.end field

.field private final initialWindowSize:I

.field private keepAliveManager:Lio/grpc/internal/KeepAliveManager;

.field private keepAliveTimeNanos:J

.field private keepAliveTimeoutNanos:J

.field private keepAliveWithoutCalls:Z

.field private listener:Lio/grpc/internal/ManagedClientTransport$Listener;

.field private final lock:Ljava/lang/Object;

.field private final logId:Lio/grpc/InternalLogId;

.field private maxConcurrentStreams:I

.field private final maxInboundMetadataSize:I

.field private final maxMessageSize:I

.field private nextStreamId:I

.field private outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

.field private final pendingStreams:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/grpc/okhttp/OkHttpClientStream;",
            ">;"
        }
    .end annotation
.end field

.field private ping:Lio/grpc/internal/Http2Ping;

.field final proxiedAddr:Lio/grpc/HttpConnectProxiedSocketAddress;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field proxySocketTimeout:I

.field private final random:Ljava/util/Random;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private securityInfo:Lio/grpc/InternalChannelz$Security;

.field private final serializingExecutor:Lio/grpc/internal/SerializingExecutor;

.field private socket:Ljava/net/Socket;

.field private final socketFactory:Ljavax/net/SocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private stopped:Z

.field private final stopwatchFactory:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation
.end field

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/grpc/okhttp/OkHttpClientStream;",
            ">;"
        }
    .end annotation
.end field

.field private final tooManyPingsRunnable:Ljava/lang/Runnable;

.field private final transportTracer:Lio/grpc/internal/TransportTracer;

.field private final useGetForSafeMethods:Z

.field private final userAgent:Ljava/lang/String;

.field private final variant:Lio/grpc/okhttp/internal/framed/Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientTransport;->buildErrorCodeToStatusMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpClientTransport;->ERROR_CODE_TO_STATUS:Ljava/util/Map;

    .line 112
    const-class v0, Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpClientTransport;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;Ljava/lang/String;Lcom/google/common/base/Supplier;Lio/grpc/okhttp/internal/framed/Variant;Ljava/lang/Runnable;Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Runnable;)V
    .locals 11
    .param p1, "transportFactory"    # Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p4, "variant"    # Lio/grpc/okhttp/internal/framed/Variant;
    .param p5, "connectingCallback"    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "tooManyPingsRunnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;",
            "Ljava/lang/String;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;",
            "Lio/grpc/okhttp/internal/framed/Variant;",
            "Ljava/lang/Runnable;",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 305
    .local p3, "stopwatchFactory":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/base/Stopwatch;>;"
    .local p6, "connectedFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Void;>;"
    move-object v10, p0

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v0, "127.0.0.1"

    const/16 v1, 0x50

    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const-string v3, "notarealauthority:80"

    sget-object v5, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lio/grpc/okhttp/OkHttpClientTransport;-><init>(Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/Attributes;Lcom/google/common/base/Supplier;Lio/grpc/okhttp/internal/framed/Variant;Lio/grpc/HttpConnectProxiedSocketAddress;Ljava/lang/Runnable;)V

    .line 315
    move-object/from16 v0, p5

    iput-object v0, v10, Lio/grpc/okhttp/OkHttpClientTransport;->connectingCallback:Ljava/lang/Runnable;

    .line 316
    const-string v1, "connectedFuture"

    move-object/from16 v2, p6

    invoke-static {v2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/SettableFuture;

    iput-object v1, v10, Lio/grpc/okhttp/OkHttpClientTransport;->connectedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 317
    return-void
.end method

.method private constructor <init>(Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/Attributes;Lcom/google/common/base/Supplier;Lio/grpc/okhttp/internal/framed/Variant;Lio/grpc/HttpConnectProxiedSocketAddress;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "transportFactory"    # Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "userAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "eagAttrs"    # Lio/grpc/Attributes;
    .param p7, "variant"    # Lio/grpc/okhttp/internal/framed/Variant;
    .param p8, "proxiedAddr"    # Lio/grpc/HttpConnectProxiedSocketAddress;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "tooManyPingsRunnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;",
            "Ljava/net/InetSocketAddress;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/Attributes;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;",
            "Lio/grpc/okhttp/internal/framed/Variant;",
            "Lio/grpc/HttpConnectProxiedSocketAddress;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 260
    .local p6, "stopwatchFactory":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/base/Stopwatch;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->random:Ljava/util/Random;

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I

    .line 190
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/Deque;

    .line 204
    new-instance v0, Lio/grpc/okhttp/OkHttpClientTransport$1;

    invoke-direct {v0, p0}, Lio/grpc/okhttp/OkHttpClientTransport$1;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->inUseState:Lio/grpc/internal/InUseStateAggregator;

    .line 224
    const/16 v0, 0x7530

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->proxySocketTimeout:I

    .line 261
    const-string v0, "address"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    .line 262
    iput-object p3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    .line 263
    iget v0, p1, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->maxMessageSize:I

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxMessageSize:I

    .line 264
    iget v0, p1, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->flowControlWindow:I

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->initialWindowSize:I

    .line 265
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->executor:Ljava/util/concurrent/Executor;

    const-string v1, "executor"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->executor:Ljava/util/concurrent/Executor;

    .line 266
    new-instance v0, Lio/grpc/internal/SerializingExecutor;

    iget-object v1, p1, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Lio/grpc/internal/SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    .line 267
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v1, "scheduledExecutorService"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 271
    const/4 v0, 0x3

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    .line 272
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->socketFactory:Ljavax/net/SocketFactory;

    if-nez v0, :cond_0

    .line 273
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->socketFactory:Ljavax/net/SocketFactory;

    :goto_0
    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socketFactory:Ljavax/net/SocketFactory;

    .line 274
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 275
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 276
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    const-string v1, "connectionSpec"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/ConnectionSpec;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 278
    const-string v0, "stopwatchFactory"

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->stopwatchFactory:Lcom/google/common/base/Supplier;

    .line 279
    const-string v0, "variant"

    invoke-static {p7, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/framed/Variant;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->variant:Lio/grpc/okhttp/internal/framed/Variant;

    .line 280
    const-string v0, "okhttp"

    invoke-static {v0, p4}, Lio/grpc/internal/GrpcUtil;->getGrpcUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->userAgent:Ljava/lang/String;

    .line 281
    iput-object p8, p0, Lio/grpc/okhttp/OkHttpClientTransport;->proxiedAddr:Lio/grpc/HttpConnectProxiedSocketAddress;

    .line 282
    nop

    .line 283
    const-string v0, "tooManyPingsRunnable"

    invoke-static {p9, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->tooManyPingsRunnable:Ljava/lang/Runnable;

    .line 284
    iget v0, p1, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->maxInboundMetadataSize:I

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxInboundMetadataSize:I

    .line 285
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    invoke-virtual {v0}, Lio/grpc/internal/TransportTracer$Factory;->create()Lio/grpc/internal/TransportTracer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    .line 286
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->logId:Lio/grpc/InternalLogId;

    .line 287
    invoke-static {}, Lio/grpc/Attributes;->newBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/GrpcAttributes;->ATTR_CLIENT_EAG_ATTRS:Lio/grpc/Attributes$Key;

    .line 288
    invoke-virtual {v0, v1, p5}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->attributes:Lio/grpc/Attributes;

    .line 289
    iget-boolean v0, p1, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->useGetForSafeMethods:Z

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->useGetForSafeMethods:Z

    .line 290
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->initTransportTracer()V

    .line 291
    return-void
.end method

.method public constructor <init>(Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/Attributes;Lio/grpc/HttpConnectProxiedSocketAddress;Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "transportFactory"    # Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "userAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "eagAttrs"    # Lio/grpc/Attributes;
    .param p6, "proxiedAddr"    # Lio/grpc/HttpConnectProxiedSocketAddress;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "tooManyPingsRunnable"    # Ljava/lang/Runnable;

    .line 239
    sget-object v6, Lio/grpc/internal/GrpcUtil;->STOPWATCH_SUPPLIER:Lcom/google/common/base/Supplier;

    new-instance v7, Lio/grpc/okhttp/internal/framed/Http2;

    invoke-direct {v7}, Lio/grpc/okhttp/internal/framed/Http2;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lio/grpc/okhttp/OkHttpClientTransport;-><init>(Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/Attributes;Lcom/google/common/base/Supplier;Lio/grpc/okhttp/internal/framed/Variant;Lio/grpc/HttpConnectProxiedSocketAddress;Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method static synthetic access$000(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/Attributes;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->attributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method static synthetic access$1002(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/Attributes;)Lio/grpc/Attributes;
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # Lio/grpc/Attributes;

    .line 109
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->attributes:Lio/grpc/Attributes;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/okhttp/OkHttpClientTransport;ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p3, "x3"    # Lio/grpc/Status;

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpClientTransport;->startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    return-void
.end method

.method static synthetic access$1200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    return-object v0
.end method

.method static synthetic access$1202(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    .line 109
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    return-object p1
.end method

.method static synthetic access$1300(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/internal/framed/Variant;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->variant:Lio/grpc/okhttp/internal/framed/Variant;

    return-object v0
.end method

.method static synthetic access$1402(Lio/grpc/okhttp/OkHttpClientTransport;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # Ljava/net/Socket;

    .line 109
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$1502(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/InternalChannelz$Security;)Lio/grpc/InternalChannelz$Security;
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # Lio/grpc/InternalChannelz$Security;

    .line 109
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->securityInfo:Lio/grpc/InternalChannelz$Security;

    return-object p1
.end method

.method static synthetic access$1600(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$1702(Lio/grpc/okhttp/OkHttpClientTransport;I)I
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # I

    .line 109
    iput p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I

    return p1
.end method

.method static synthetic access$1800(Lio/grpc/okhttp/OkHttpClientTransport;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->startPendingStreams()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/KeepAliveManager;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OutboundFlowController;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    return-object v0
.end method

.method static synthetic access$2000(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/Status;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/logging/Logger;
    .locals 1

    .line 109
    sget-object v0, Lio/grpc/okhttp/OkHttpClientTransport;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$2200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    return-object v0
.end method

.method static synthetic access$2300(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p2, "x2"    # Ljava/lang/String;

    .line 109
    invoke-direct {p0, p1, p2}, Lio/grpc/okhttp/OkHttpClientTransport;->onError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lio/grpc/okhttp/OkHttpClientTransport;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionUnacknowledgedBytesRead:I

    return v0
.end method

.method static synthetic access$2402(Lio/grpc/okhttp/OkHttpClientTransport;I)I
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # I

    .line 109
    iput p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionUnacknowledgedBytesRead:I

    return p1
.end method

.method static synthetic access$2412(Lio/grpc/okhttp/OkHttpClientTransport;I)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # I

    .line 109
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionUnacknowledgedBytesRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionUnacknowledgedBytesRead:I

    return v0
.end method

.method static synthetic access$2500(Lio/grpc/okhttp/OkHttpClientTransport;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxInboundMetadataSize:I

    return v0
.end method

.method static synthetic access$2600(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2700(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/Http2Ping;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    return-object v0
.end method

.method static synthetic access$2702(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/internal/Http2Ping;)Lio/grpc/internal/Http2Ping;
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # Lio/grpc/internal/Http2Ping;

    .line 109
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    return-object p1
.end method

.method static synthetic access$2800(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->tooManyPingsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/okhttp/OkHttpClientTransport;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->initialWindowSize:I

    return v0
.end method

.method static synthetic access$400(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/okhttp/OkHttpClientTransport;)Ljavax/net/SocketFactory;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method static synthetic access$600(Lio/grpc/okhttp/OkHttpClientTransport;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p1, "x1"    # Ljava/net/InetSocketAddress;
    .param p2, "x2"    # Ljava/net/InetSocketAddress;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/okhttp/OkHttpClientTransport;->createHttpProxySocket(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/okhttp/OkHttpClientTransport;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/okhttp/OkHttpClientTransport;)Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method static synthetic access$900(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/internal/ConnectionSpec;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpClientTransport;

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    return-object v0
.end method

.method private static buildErrorCodeToStatusMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/grpc/okhttp/internal/framed/ErrorCode;",
            "Lio/grpc/Status;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 116
    .local v0, "errorToStatus":Ljava/util/Map;, "Ljava/util/Map<Lio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;>;"
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 117
    const-string v3, "No error: A GRPC status of OK should have been sent"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 116
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 119
    const-string v3, "Protocol error"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 118
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 121
    const-string v3, "Internal error"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 120
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 123
    const-string v3, "Flow control error"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 122
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 125
    const-string v3, "Stream closed"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 124
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->FRAME_TOO_LARGE:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 127
    const-string v3, "Frame too large"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 126
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 129
    const-string v3, "Refused stream"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 128
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    .line 131
    const-string v3, "Cancelled"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 130
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->COMPRESSION_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 133
    const-string v3, "Compression error"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 132
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->CONNECT_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 135
    const-string v3, "Connect error"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 134
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->ENHANCE_YOUR_CALM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    .line 137
    const-string v3, "Enhance your calm"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 136
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->INADEQUATE_SECURITY:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->PERMISSION_DENIED:Lio/grpc/Status;

    .line 139
    const-string v3, "Inadequate security"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 138
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private createHttpProxyRequest(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/okhttp/internal/proxy/Request;
    .locals 4
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "proxyUsername"    # Ljava/lang/String;
    .param p3, "proxyPassword"    # Ljava/lang/String;

    .line 705
    new-instance v0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;

    invoke-direct {v0}, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;-><init>()V

    .line 706
    const-string v1, "https"

    invoke-virtual {v0, v1}, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;

    move-result-object v0

    .line 707
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->host(Ljava/lang/String;)Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;

    move-result-object v0

    .line 708
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->port(I)Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->build()Lio/grpc/okhttp/internal/proxy/HttpUrl;

    move-result-object v0

    .line 711
    .local v0, "tunnelUrl":Lio/grpc/okhttp/internal/proxy/HttpUrl;
    new-instance v1, Lio/grpc/okhttp/internal/proxy/Request$Builder;

    invoke-direct {v1}, Lio/grpc/okhttp/internal/proxy/Request$Builder;-><init>()V

    .line 712
    invoke-virtual {v1, v0}, Lio/grpc/okhttp/internal/proxy/Request$Builder;->url(Lio/grpc/okhttp/internal/proxy/HttpUrl;)Lio/grpc/okhttp/internal/proxy/Request$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    invoke-virtual {v0}, Lio/grpc/okhttp/internal/proxy/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lio/grpc/okhttp/internal/proxy/HttpUrl;->port()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Host"

    invoke-virtual {v1, v3, v2}, Lio/grpc/okhttp/internal/proxy/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/okhttp/internal/proxy/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->userAgent:Ljava/lang/String;

    .line 714
    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, v2}, Lio/grpc/okhttp/internal/proxy/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/okhttp/internal/proxy/Request$Builder;

    move-result-object v1

    .line 717
    .local v1, "request":Lio/grpc/okhttp/internal/proxy/Request$Builder;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 718
    const-string v2, "Proxy-Authorization"

    invoke-static {p2, p3}, Lio/grpc/okhttp/internal/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/grpc/okhttp/internal/proxy/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/okhttp/internal/proxy/Request$Builder;

    .line 720
    :cond_0
    invoke-virtual {v1}, Lio/grpc/okhttp/internal/proxy/Request$Builder;->build()Lio/grpc/okhttp/internal/proxy/Request;

    move-result-object v2

    return-object v2
.end method

.method private createHttpProxySocket(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 19
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "proxyAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxyUsername"    # Ljava/lang/String;
    .param p4, "proxyPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .line 632
    move-object/from16 v1, p0

    const-string v0, "\r\n"

    const/4 v2, 0x0

    .line 635
    .local v2, "sock":Ljava/net/Socket;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 636
    iget-object v3, v1, Lio/grpc/okhttp/OkHttpClientTransport;->socketFactory:Ljavax/net/SocketFactory;

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 638
    :cond_0
    iget-object v3, v1, Lio/grpc/okhttp/OkHttpClientTransport;->socketFactory:Ljavax/net/SocketFactory;

    .line 639
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    move-object v2, v3

    .line 641
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 644
    iget v4, v1, Lio/grpc/okhttp/OkHttpClientTransport;->proxySocketTimeout:I

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 646
    invoke-static {v2}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v4

    .line 647
    .local v4, "source":Lokio/Source;
    invoke-static {v2}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 650
    .local v5, "sink":Lokio/BufferedSink;
    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    :try_start_1
    invoke-direct {v1, v6, v7, v8}, Lio/grpc/okhttp/OkHttpClientTransport;->createHttpProxyRequest(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/okhttp/internal/proxy/Request;

    move-result-object v9

    .line 651
    .local v9, "proxyRequest":Lio/grpc/okhttp/internal/proxy/Request;
    invoke-virtual {v9}, Lio/grpc/okhttp/internal/proxy/Request;->httpUrl()Lio/grpc/okhttp/internal/proxy/HttpUrl;

    move-result-object v10

    .line 652
    .local v10, "url":Lio/grpc/okhttp/internal/proxy/HttpUrl;
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "CONNECT %s:%d HTTP/1.1"

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    .line 653
    invoke-virtual {v10}, Lio/grpc/okhttp/internal/proxy/HttpUrl;->host()Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x0

    aput-object v15, v14, v13

    invoke-virtual {v10}, Lio/grpc/okhttp/internal/proxy/HttpUrl;->port()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v3

    invoke-static {v11, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 656
    .local v11, "requestLine":Ljava/lang/String;
    invoke-interface {v5, v11}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v12

    invoke-interface {v12, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 657
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-virtual {v9}, Lio/grpc/okhttp/internal/proxy/Request;->headers()Lio/grpc/okhttp/internal/Headers;

    move-result-object v14

    invoke-virtual {v14}, Lio/grpc/okhttp/internal/Headers;->size()I

    move-result v14

    .local v14, "size":I
    :goto_1
    if-ge v12, v14, :cond_1

    .line 658
    invoke-virtual {v9}, Lio/grpc/okhttp/internal/proxy/Request;->headers()Lio/grpc/okhttp/internal/Headers;

    move-result-object v15

    invoke-virtual {v15, v12}, Lio/grpc/okhttp/internal/Headers;->name(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v15

    const-string v3, ": "

    .line 659
    invoke-interface {v15, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    .line 660
    invoke-virtual {v9}, Lio/grpc/okhttp/internal/proxy/Request;->headers()Lio/grpc/okhttp/internal/Headers;

    move-result-object v15

    invoke-virtual {v15, v12}, Lio/grpc/okhttp/internal/Headers;->value(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    .line 661
    invoke-interface {v3, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 657
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x1

    goto :goto_1

    .line 663
    .end local v12    # "i":I
    .end local v14    # "size":I
    :cond_1
    invoke-interface {v5, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 665
    invoke-interface {v5}, Lokio/BufferedSink;->flush()V

    .line 668
    invoke-static {v4}, Lio/grpc/okhttp/OkHttpClientTransport;->readUtf8LineStrictUnbuffered(Lokio/Source;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/internal/StatusLine;->parse(Ljava/lang/String;)Lio/grpc/okhttp/internal/StatusLine;

    move-result-object v0

    move-object v3, v0

    .line 670
    .local v3, "statusLine":Lio/grpc/okhttp/internal/StatusLine;
    :goto_2
    invoke-static {v4}, Lio/grpc/okhttp/OkHttpClientTransport;->readUtf8LineStrictUnbuffered(Lokio/Source;)Ljava/lang/String;

    move-result-object v0

    const-string v12, ""

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 671
    :cond_2
    iget v0, v3, Lio/grpc/okhttp/internal/StatusLine;->code:I

    const/16 v12, 0xc8

    if-lt v0, v12, :cond_3

    iget v0, v3, Lio/grpc/okhttp/internal/StatusLine;->code:I

    const/16 v12, 0x12c

    if-ge v0, v12, :cond_3

    .line 692
    invoke-virtual {v2, v13}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 693
    return-object v2

    .line 672
    :cond_3
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v12, v0

    .line 674
    .local v12, "body":Lokio/Buffer;
    :try_start_2
    invoke-virtual {v2}, Ljava/net/Socket;->shutdownOutput()V

    .line 675
    const-wide/16 v14, 0x400

    invoke-interface {v4, v12, v14, v15}, Lokio/Source;->read(Lokio/Buffer;J)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 678
    goto :goto_3

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to read body: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 680
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 683
    goto :goto_4

    .line 681
    :catch_1
    move-exception v0

    .line 684
    :goto_4
    :try_start_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "Response returned from proxy was not successful (expected 2xx, got %d %s). Response body:\n%s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    iget v13, v3, Lio/grpc/okhttp/internal/StatusLine;->code:I

    .line 688
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v18, 0x0

    aput-object v13, v15, v18

    iget-object v13, v3, Lio/grpc/okhttp/internal/StatusLine;->message:Ljava/lang/String;

    const/16 v17, 0x1

    aput-object v13, v15, v17

    invoke-virtual {v12}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x2

    aput-object v13, v15, v16

    .line 684
    invoke-static {v0, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "message":Ljava/lang/String;
    sget-object v13, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    invoke-virtual {v13, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v13

    invoke-virtual {v13}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v13

    .end local v2    # "sock":Ljava/net/Socket;
    .end local p1    # "address":Ljava/net/InetSocketAddress;
    .end local p2    # "proxyAddress":Ljava/net/InetSocketAddress;
    .end local p3    # "proxyUsername":Ljava/lang/String;
    .end local p4    # "proxyPassword":Ljava/lang/String;
    throw v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 694
    .end local v0    # "message":Ljava/lang/String;
    .end local v3    # "statusLine":Lio/grpc/okhttp/internal/StatusLine;
    .end local v4    # "source":Lokio/Source;
    .end local v5    # "sink":Lokio/BufferedSink;
    .end local v9    # "proxyRequest":Lio/grpc/okhttp/internal/proxy/Request;
    .end local v10    # "url":Lio/grpc/okhttp/internal/proxy/HttpUrl;
    .end local v11    # "requestLine":Ljava/lang/String;
    .end local v12    # "body":Lokio/Buffer;
    .restart local v2    # "sock":Ljava/net/Socket;
    .restart local p1    # "address":Ljava/net/InetSocketAddress;
    .restart local p2    # "proxyAddress":Ljava/net/InetSocketAddress;
    .restart local p3    # "proxyUsername":Ljava/lang/String;
    .restart local p4    # "proxyPassword":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 695
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    if-eqz v2, :cond_4

    .line 696
    invoke-static {v2}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 698
    :cond_4
    sget-object v3, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v4, "Failed trying to connect with proxy"

    invoke-virtual {v3, v4}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v3

    .line 699
    invoke-virtual {v3}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v3

    throw v3
.end method

.method private getPingFailure()Ljava/lang/Throwable;
    .locals 3

    .line 1031
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1032
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    if-eqz v1, :cond_0

    .line 1033
    invoke-virtual {v1}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1035
    :cond_0
    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v2, "Connection closed"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1037
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initTransportTracer()V
    .locals 3

    .line 325
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    new-instance v2, Lio/grpc/okhttp/OkHttpClientTransport$2;

    invoke-direct {v2, p0}, Lio/grpc/okhttp/OkHttpClientTransport$2;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;)V

    invoke-virtual {v1, v2}, Lio/grpc/internal/TransportTracer;->setFlowControlWindowReader(Lio/grpc/internal/TransportTracer$FlowControlReader;)V

    .line 338
    monitor-exit v0

    .line 339
    return-void

    .line 338
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeClearInUse(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 2
    .param p1, "stream"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 997
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->hasStream:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->hasStream:Z

    .line 1000
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    if-eqz v0, :cond_0

    .line 1004
    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onTransportIdle()V

    .line 1008
    :cond_0
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->shouldBeCountedForInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->inUseState:Lio/grpc/internal/InUseStateAggregator;

    invoke-virtual {v0, p1, v1}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 1011
    :cond_1
    return-void
.end method

.method private onError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p2, "moreDetail"    # Ljava/lang/String;

    .line 878
    invoke-static {p1}, Lio/grpc/okhttp/OkHttpClientTransport;->toGrpcStatus(Lio/grpc/okhttp/internal/framed/ErrorCode;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    .line 879
    return-void
.end method

.method private static readUtf8LineStrictUnbuffered(Lokio/Source;)Ljava/lang/String;
    .locals 7
    .param p0, "source"    # Lokio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 726
    .local v0, "buffer":Lokio/Buffer;
    :cond_0
    const-wide/16 v1, 0x1

    invoke-interface {p0, v0, v1, v2}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 729
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 730
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 727
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sendConnectionPrefaceAndSettings()V
    .locals 6

    .line 618
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->connectionPreface()V

    .line 620
    new-instance v1, Lio/grpc/okhttp/internal/framed/Settings;

    invoke-direct {v1}, Lio/grpc/okhttp/internal/framed/Settings;-><init>()V

    .line 621
    .local v1, "settings":Lio/grpc/okhttp/internal/framed/Settings;
    iget v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->initialWindowSize:I

    const/4 v3, 0x7

    invoke-static {v1, v3, v2}, Lio/grpc/okhttp/OkHttpSettingsUtil;->set(Lio/grpc/okhttp/internal/framed/Settings;II)V

    .line 622
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v2, v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->settings(Lio/grpc/okhttp/internal/framed/Settings;)V

    .line 623
    iget v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->initialWindowSize:I

    const v3, 0xffff

    if-le v2, v3, :cond_0

    .line 624
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    sub-int/2addr v2, v3

    int-to-long v2, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2, v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->windowUpdate(IJ)V

    .line 627
    .end local v1    # "settings":Lio/grpc/okhttp/internal/framed/Settings;
    :cond_0
    monitor-exit v0

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setInUse(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 2
    .param p1, "stream"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 1015
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->hasStream:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1016
    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->hasStream:Z

    .line 1017
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    if-eqz v0, :cond_0

    .line 1022
    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onTransportActive()V

    .line 1025
    :cond_0
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->shouldBeCountedForInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->inUseState:Lio/grpc/internal/InUseStateAggregator;

    invoke-virtual {v0, p1, v1}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 1028
    :cond_1
    return-void
.end method

.method private startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    .locals 8
    .param p1, "lastKnownStreamId"    # I
    .param p2, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p3, "status"    # Lio/grpc/Status;

    .line 882
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 883
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    if-nez v1, :cond_0

    .line 884
    iput-object p3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    .line 885
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    invoke-interface {v1, p3}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportShutdown(Lio/grpc/Status;)V

    .line 887
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwaySent:Z

    if-nez v3, :cond_1

    .line 890
    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwaySent:Z

    .line 891
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    new-array v4, v2, [B

    invoke-virtual {v3, v2, p2, v4}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    .line 894
    :cond_1
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 895
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 896
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 897
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, p1, :cond_2

    .line 898
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 899
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/okhttp/OkHttpClientStream;

    invoke-virtual {v5}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v5

    sget-object v6, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v7, Lio/grpc/Metadata;

    invoke-direct {v7}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v5, p3, v6, v2, v7}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/Metadata;)V

    .line 901
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/okhttp/OkHttpClientStream;

    invoke-direct {p0, v5}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 903
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;"
    :cond_2
    goto :goto_0

    .line 905
    :cond_3
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/okhttp/OkHttpClientStream;

    .line 906
    .local v4, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    invoke-virtual {v4}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v5

    sget-object v6, Lio/grpc/internal/ClientStreamListener$RpcProgress;->MISCARRIED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v7, Lio/grpc/Metadata;

    invoke-direct {v7}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v5, p3, v6, v1, v7}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/Metadata;)V

    .line 908
    invoke-direct {p0, v4}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 909
    .end local v4    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    goto :goto_1

    .line 910
    :cond_4
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 912
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->stopIfNecessary()V

    .line 913
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;>;"
    monitor-exit v0

    .line 914
    return-void

    .line 913
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startPendingStreams()Z
    .locals 3

    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "hasStreamStarted":Z
    :goto_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I

    if-ge v1, v2, :cond_0

    .line 460
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/OkHttpClientStream;

    .line 461
    .local v1, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    invoke-direct {p0, v1}, Lio/grpc/okhttp/OkHttpClientTransport;->startStream(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 462
    const/4 v0, 0x1

    .line 463
    .end local v1    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    goto :goto_0

    .line 464
    :cond_0
    return v0
.end method

.method private startStream(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 4
    .param p1, "stream"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 430
    nop

    .line 431
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->id()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 430
    :goto_0
    const-string v1, "StreamId already assigned"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    iget v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpClientTransport;->setInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 436
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v0

    iget v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    invoke-virtual {v0, v1}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->start(I)V

    .line 438
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    if-ne v0, v1, :cond_2

    .line 439
    :cond_1
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->useGet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 440
    :cond_2
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v0}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 442
    :cond_3
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    const v1, 0x7ffffffd

    if-lt v0, v1, :cond_4

    .line 445
    const v0, 0x7fffffff

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    .line 446
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 447
    const-string v3, "Stream ids exhausted"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 446
    invoke-direct {p0, v0, v1, v2}, Lio/grpc/okhttp/OkHttpClientTransport;->startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    goto :goto_1

    .line 449
    :cond_4
    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    .line 451
    :goto_1
    return-void
.end method

.method private stopIfNecessary()V
    .locals 4

    .line 966
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 969
    :cond_0
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->stopped:Z

    if-eqz v0, :cond_1

    .line 970
    return-void

    .line 972
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->stopped:Z

    .line 974
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    if-eqz v1, :cond_2

    .line 975
    invoke-virtual {v1}, Lio/grpc/internal/KeepAliveManager;->onTransportTermination()V

    .line 978
    :cond_2
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    if-eqz v1, :cond_3

    .line 979
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->getPingFailure()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/internal/Http2Ping;->failed(Ljava/lang/Throwable;)V

    .line 980
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    .line 983
    :cond_3
    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwaySent:Z

    if-nez v1, :cond_4

    .line 986
    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwaySent:Z

    .line 987
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-virtual {v0, v2, v1, v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    .line 992
    :cond_4
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v0}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->close()V

    .line 993
    return-void

    .line 967
    :cond_5
    :goto_0
    return-void
.end method

.method static toGrpcStatus(Lio/grpc/okhttp/internal/framed/ErrorCode;)Lio/grpc/Status;
    .locals 4
    .param p0, "code"    # Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 1057
    sget-object v0, Lio/grpc/okhttp/OkHttpClientTransport;->ERROR_CODE_TO_STATUS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Status;

    .line 1058
    .local v0, "status":Lio/grpc/Status;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown http2 error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method enableKeepAlive(ZJJZ)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "keepAliveTimeNanos"    # J
    .param p4, "keepAliveTimeoutNanos"    # J
    .param p6, "keepAliveWithoutCalls"    # Z

    .line 346
    iput-boolean p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->enableKeepAlive:Z

    .line 347
    iput-wide p2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveTimeNanos:J

    .line 348
    iput-wide p4, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveTimeoutNanos:J

    .line 349
    iput-boolean p6, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveWithoutCalls:Z

    .line 350
    return-void
.end method

.method finishStream(ILio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Metadata;)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "status"    # Lio/grpc/Status;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "rpcProgress"    # Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .param p4, "stopDelivery"    # Z
    .param p5, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "trailers"    # Lio/grpc/Metadata;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 938
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 939
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/OkHttpClientStream;

    .line 940
    .local v1, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    if-eqz v1, :cond_3

    .line 941
    if-eqz p5, :cond_0

    .line 942
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    sget-object v3, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v2, p1, v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 944
    :cond_0
    if-eqz p2, :cond_2

    .line 945
    nop

    .line 946
    invoke-virtual {v1}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v2

    .line 951
    if-eqz p6, :cond_1

    move-object v3, p6

    goto :goto_0

    :cond_1
    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    .line 947
    :goto_0
    invoke-virtual {v2, p2, p3, p4, v3}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/Metadata;)V

    .line 953
    :cond_2
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->startPendingStreams()Z

    move-result v2

    if-nez v2, :cond_3

    .line 954
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->stopIfNecessary()V

    .line 955
    invoke-direct {p0, v1}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 958
    .end local v1    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    :cond_3
    monitor-exit v0

    .line 959
    return-void

    .line 958
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getActiveStreams()[Lio/grpc/okhttp/OutboundFlowController$StreamState;
    .locals 7

    .line 829
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 830
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    .line 831
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lio/grpc/okhttp/OutboundFlowController$StreamState;

    .line 832
    .local v1, "flowStreams":[Lio/grpc/okhttp/OutboundFlowController$StreamState;
    const/4 v2, 0x0

    .line 833
    .local v2, "i":I
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/okhttp/OkHttpClientStream;

    .line 834
    .local v4, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-virtual {v4}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v6

    invoke-virtual {v6}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->getOutboundFlowState()Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object v6

    aput-object v6, v1, v2

    .line 835
    .end local v4    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    move v2, v5

    goto :goto_0

    .line 836
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_0
    monitor-exit v0

    return-object v1

    .line 837
    .end local v1    # "flowStreams":[Lio/grpc/okhttp/OutboundFlowController$StreamState;
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 821
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->attributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method getHandler()Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    .locals 1

    .line 842
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    return-object v0
.end method

.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    .line 745
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->logId:Lio/grpc/InternalLogId;

    return-object v0
.end method

.method getOverridenHost()Ljava/lang/String;
    .locals 2

    .line 763
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->authorityToUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 764
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 765
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 768
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    return-object v1
.end method

.method getOverridenPort()I
    .locals 3

    .line 773
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->authorityToUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 774
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 775
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    return v1

    .line 778
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    return v1
.end method

.method getPendingStreamSize()I
    .locals 2

    .line 852
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 853
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 854
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 847
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    .line 1064
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 1065
    .local v0, "ret":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lio/grpc/InternalChannelz$SocketStats;>;"
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1066
    :try_start_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;

    if-nez v2, :cond_0

    .line 1067
    new-instance v2, Lio/grpc/InternalChannelz$SocketStats;

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    .line 1068
    invoke-virtual {v3}, Lio/grpc/internal/TransportTracer;->getStats()Lio/grpc/InternalChannelz$TransportStats;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v3, Lio/grpc/InternalChannelz$SocketOptions$Builder;

    invoke-direct {v3}, Lio/grpc/InternalChannelz$SocketOptions$Builder;-><init>()V

    .line 1071
    invoke-virtual {v3}, Lio/grpc/InternalChannelz$SocketOptions$Builder;->build()Lio/grpc/InternalChannelz$SocketOptions;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lio/grpc/InternalChannelz$SocketStats;-><init>(Lio/grpc/InternalChannelz$TransportStats;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/InternalChannelz$SocketOptions;Lio/grpc/InternalChannelz$Security;)V

    .line 1067
    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1074
    :cond_0
    new-instance v2, Lio/grpc/InternalChannelz$SocketStats;

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    .line 1075
    invoke-virtual {v3}, Lio/grpc/internal/TransportTracer;->getStats()Lio/grpc/InternalChannelz$TransportStats;

    move-result-object v4

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;

    .line 1076
    invoke-virtual {v3}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;

    .line 1077
    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v6

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;

    .line 1078
    invoke-static {v3}, Lio/grpc/okhttp/Utils;->getSocketOptions(Ljava/net/Socket;)Lio/grpc/InternalChannelz$SocketOptions;

    move-result-object v7

    iget-object v8, p0, Lio/grpc/okhttp/OkHttpClientTransport;->securityInfo:Lio/grpc/InternalChannelz$Security;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lio/grpc/InternalChannelz$SocketStats;-><init>(Lio/grpc/InternalChannelz$TransportStats;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/InternalChannelz$SocketOptions;Lio/grpc/InternalChannelz$Security;)V

    .line 1074
    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 1081
    :goto_0
    monitor-exit v1

    return-object v0

    .line 1082
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getStream(I)Lio/grpc/okhttp/OkHttpClientStream;
    .locals 3
    .param p1, "streamId"    # I

    .line 1047
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1048
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/OkHttpClientStream;

    monitor-exit v0

    return-object v1

    .line 1049
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isUsingPlaintext()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method mayHaveCreatedStream(I)Z
    .locals 3
    .param p1, "streamId"    # I

    .line 1041
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1042
    :try_start_0
    iget v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    if-ge p1, v1, :cond_0

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1043
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/grpc/okhttp/OkHttpClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object p1

    return-object p1
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/okhttp/OkHttpClientStream;
    .locals 21
    .param p2, "headers"    # Lio/grpc/Metadata;
    .param p3, "callOptions"    # Lio/grpc/CallOptions;
    .param p4, "tracers"    # [Lio/grpc/ClientStreamTracer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            "[",
            "Lio/grpc/ClientStreamTracer;",
            ")",
            "Lio/grpc/okhttp/OkHttpClientStream;"
        }
    .end annotation

    .line 390
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p2

    const-string v0, "method"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v0, "headers"

    invoke-static {v14, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    nop

    .line 393
    invoke-virtual/range {p0 .. p0}, Lio/grpc/okhttp/OkHttpClientTransport;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    move-object/from16 v12, p4

    invoke-static {v12, v0, v14}, Lio/grpc/internal/StatsTraceContext;->newClientContext([Lio/grpc/ClientStreamTracer;Lio/grpc/Attributes;Lio/grpc/Metadata;)Lio/grpc/internal/StatsTraceContext;

    move-result-object v16

    .line 395
    .local v16, "statsTraceContext":Lio/grpc/internal/StatsTraceContext;
    iget-object v11, v15, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v11

    .line 396
    :try_start_0
    new-instance v0, Lio/grpc/okhttp/OkHttpClientStream;

    iget-object v4, v15, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    iget-object v6, v15, Lio/grpc/okhttp/OkHttpClientTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    iget-object v7, v15, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    iget v8, v15, Lio/grpc/okhttp/OkHttpClientTransport;->maxMessageSize:I

    iget v9, v15, Lio/grpc/okhttp/OkHttpClientTransport;->initialWindowSize:I

    iget-object v10, v15, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    iget-object v5, v15, Lio/grpc/okhttp/OkHttpClientTransport;->userAgent:Ljava/lang/String;

    iget-object v3, v15, Lio/grpc/okhttp/OkHttpClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    iget-boolean v2, v15, Lio/grpc/okhttp/OkHttpClientTransport;->useGetForSafeMethods:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    move/from16 v17, v2

    move-object/from16 v2, p1

    move-object/from16 v18, v3

    move-object/from16 v3, p2

    move-object/from16 v19, v5

    move-object/from16 v5, p0

    move-object/from16 v20, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v16

    move-object/from16 v13, v18

    move-object/from16 v14, p3

    move/from16 v15, v17

    :try_start_1
    invoke-direct/range {v1 .. v15}, Lio/grpc/okhttp/OkHttpClientStream;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/okhttp/ExceptionHandlingFrameWriter;Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OutboundFlowController;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Lio/grpc/CallOptions;Z)V

    monitor-exit v20

    return-object v0

    .line 411
    :catchall_0
    move-exception v0

    move-object/from16 v20, v11

    :goto_0
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "failureCause"    # Ljava/lang/Throwable;

    .line 869
    const-string v0, "failureCause"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    invoke-virtual {v0, p1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 871
    .local v0, "status":Lio/grpc/Status;
    const/4 v1, 0x0

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, v1, v2, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    .line 872
    return-void
.end method

.method public ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 9
    .param p1, "callback"    # Lio/grpc/internal/ClientTransport$PingCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 354
    const-wide/16 v0, 0x0

    .line 357
    .local v0, "data":J
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 358
    :try_start_0
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 359
    iget-boolean v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->stopped:Z

    if-eqz v3, :cond_1

    .line 360
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->getPingFailure()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {p1, p2, v3}, Lio/grpc/internal/Http2Ping;->notifyFailed(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;)V

    .line 361
    monitor-exit v2

    return-void

    .line 363
    :cond_1
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    if-eqz v3, :cond_2

    .line 366
    nop

    .line 367
    .local v3, "p":Lio/grpc/internal/Http2Ping;
    const/4 v5, 0x0

    .local v5, "writePing":Z
    goto :goto_1

    .line 370
    .end local v3    # "p":Lio/grpc/internal/Http2Ping;
    .end local v5    # "writePing":Z
    :cond_2
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    move-wide v0, v5

    .line 371
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->stopwatchFactory:Lcom/google/common/base/Supplier;

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/base/Stopwatch;

    .line 372
    .local v3, "stopwatch":Lcom/google/common/base/Stopwatch;
    invoke-virtual {v3}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 373
    new-instance v5, Lio/grpc/internal/Http2Ping;

    invoke-direct {v5, v0, v1, v3}, Lio/grpc/internal/Http2Ping;-><init>(JLcom/google/common/base/Stopwatch;)V

    iput-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    .line 374
    .local v5, "p":Lio/grpc/internal/Http2Ping;
    const/4 v6, 0x1

    .line 375
    .local v6, "writePing":Z
    iget-object v7, p0, Lio/grpc/okhttp/OkHttpClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    invoke-virtual {v7}, Lio/grpc/internal/TransportTracer;->reportKeepAliveSent()V

    move-object v3, v5

    move v5, v6

    .line 377
    .end local v6    # "writePing":Z
    .local v3, "p":Lio/grpc/internal/Http2Ping;
    .local v5, "writePing":Z
    :goto_1
    if-eqz v5, :cond_3

    .line 378
    iget-object v6, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    const/16 v7, 0x20

    ushr-long v7, v0, v7

    long-to-int v7, v7

    long-to-int v8, v0

    invoke-virtual {v6, v4, v7, v8}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->ping(ZII)V

    .line 380
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-virtual {v3, p1, p2}, Lio/grpc/internal/Http2Ping;->addCallback(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V

    .line 384
    return-void

    .line 380
    .end local v3    # "p":Lio/grpc/internal/Http2Ping;
    .end local v5    # "writePing":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method removePendingStream(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 1
    .param p1, "pendingStream"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 472
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 473
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 474
    return-void
.end method

.method setNextStreamId(I)V
    .locals 2
    .param p1, "nextStreamId"    # I

    .line 859
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 860
    :try_start_0
    iput p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    .line 861
    monitor-exit v0

    .line 862
    return-void

    .line 861
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdown(Lio/grpc/Status;)V
    .locals 2
    .param p1, "reason"    # Lio/grpc/Status;

    .line 783
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    if-eqz v1, :cond_0

    .line 785
    monitor-exit v0

    return-void

    .line 788
    :cond_0
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    .line 789
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    invoke-interface {v1, p1}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportShutdown(Lio/grpc/Status;)V

    .line 790
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->stopIfNecessary()V

    .line 791
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdownNow(Lio/grpc/Status;)V
    .locals 8
    .param p1, "reason"    # Lio/grpc/Status;

    .line 796
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpClientTransport;->shutdown(Lio/grpc/Status;)V

    .line 797
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 799
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 800
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 801
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 802
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/OkHttpClientStream;

    invoke-virtual {v3}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v3

    new-instance v4, Lio/grpc/Metadata;

    invoke-direct {v4}, Lio/grpc/Metadata;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, v4}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    .line 803
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/OkHttpClientStream;

    invoke-direct {p0, v3}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 804
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;"
    goto :goto_0

    .line 806
    :cond_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/OkHttpClientStream;

    .line 809
    .local v3, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    invoke-virtual {v3}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v4

    sget-object v5, Lio/grpc/internal/ClientStreamListener$RpcProgress;->MISCARRIED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v6, Lio/grpc/Metadata;

    invoke-direct {v6}, Lio/grpc/Metadata;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v4, p1, v5, v7, v6}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/Metadata;)V

    .line 811
    invoke-direct {p0, v3}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 812
    .end local v3    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    goto :goto_1

    .line 813
    :cond_1
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->clear()V

    .line 815
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->stopIfNecessary()V

    .line 816
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpClientStream;>;>;"
    monitor-exit v0

    .line 817
    return-void

    .line 816
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
    .locals 9
    .param p1, "listener"    # Lio/grpc/internal/ManagedClientTransport$Listener;

    .line 478
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedClientTransport$Listener;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    .line 480
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->enableKeepAlive:Z

    if-eqz v0, :cond_0

    .line 481
    new-instance v0, Lio/grpc/internal/KeepAliveManager;

    new-instance v2, Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;

    invoke-direct {v2, p0}, Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;-><init>(Lio/grpc/internal/ConnectionClientTransport;)V

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v4, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveTimeNanos:J

    iget-wide v6, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveTimeoutNanos:J

    iget-boolean v8, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveWithoutCalls:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lio/grpc/internal/KeepAliveManager;-><init>(Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;Ljava/util/concurrent/ScheduledExecutorService;JJZ)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    .line 484
    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onTransportStarted()V

    .line 487
    :cond_0
    const/16 v0, 0x2710

    .line 488
    .local v0, "maxQueuedControlFrames":I
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    invoke-static {v1, p0, v0}, Lio/grpc/okhttp/AsyncSink;->sink(Lio/grpc/internal/SerializingExecutor;Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;I)Lio/grpc/okhttp/AsyncSink;

    move-result-object v1

    .line 489
    .local v1, "asyncSink":Lio/grpc/okhttp/AsyncSink;
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->variant:Lio/grpc/okhttp/internal/framed/Variant;

    .line 490
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lio/grpc/okhttp/internal/framed/Variant;->newWriter(Lokio/BufferedSink;Z)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v2

    .line 489
    invoke-virtual {v1, v2}, Lio/grpc/okhttp/AsyncSink;->limitControlFramesWriter(Lio/grpc/okhttp/internal/framed/FrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v2

    .line 492
    .local v2, "rawFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 497
    :try_start_0
    new-instance v5, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-direct {v5, p0, v2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;-><init>(Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    iput-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    .line 498
    new-instance v5, Lio/grpc/okhttp/OutboundFlowController;

    iget-object v6, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-direct {v5, p0, v6}, Lio/grpc/okhttp/OutboundFlowController;-><init>(Lio/grpc/okhttp/OutboundFlowController$Transport;Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    iput-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    .line 499
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 500
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 503
    .local v3, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v5, Lio/grpc/okhttp/OkHttpClientTransport$3;

    invoke-direct {v5, p0, v3, v1}, Lio/grpc/okhttp/OkHttpClientTransport$3;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;Ljava/util/concurrent/CountDownLatch;Lio/grpc/okhttp/AsyncSink;)V

    invoke-virtual {v4, v5}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 588
    :try_start_1
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->sendConnectionPrefaceAndSettings()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 591
    nop

    .line 593
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v5, Lio/grpc/okhttp/OkHttpClientTransport$4;

    invoke-direct {v5, p0}, Lio/grpc/okhttp/OkHttpClientTransport$4;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;)V

    invoke-virtual {v4, v5}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 611
    const/4 v4, 0x0

    return-object v4

    .line 590
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v4

    .line 499
    .end local v3    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method streamReadyToStart(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 5
    .param p1, "clientStream"    # Lio/grpc/okhttp/OkHttpClientStream;

    .line 416
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    sget-object v2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->MISCARRIED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/Metadata;)V

    goto :goto_0

    .line 419
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I

    if-lt v0, v1, :cond_1

    .line 420
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpClientTransport;->setInUse(Lio/grpc/okhttp/OkHttpClientStream;)V

    goto :goto_0

    .line 423
    :cond_1
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpClientTransport;->startStream(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 425
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 737
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->logId:Lio/grpc/InternalLogId;

    .line 738
    invoke-virtual {v1}, Lio/grpc/InternalLogId;->getId()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    .line 739
    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 740
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    return-object v0
.end method
