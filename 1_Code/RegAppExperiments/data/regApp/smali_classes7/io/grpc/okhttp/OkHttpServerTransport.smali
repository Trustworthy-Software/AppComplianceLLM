.class final Lio/grpc/okhttp/OkHttpServerTransport;
.super Ljava/lang/Object;
.source "OkHttpServerTransport.java"

# interfaces
.implements Lio/grpc/internal/ServerTransport;
.implements Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;
.implements Lio/grpc/okhttp/OutboundFlowController$Transport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;,
        Lio/grpc/okhttp/OkHttpServerTransport$StreamState;,
        Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;,
        Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;,
        Lio/grpc/okhttp/OkHttpServerTransport$Config;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Lokio/ByteString;

.field private static final CONNECTION:Lokio/ByteString;

.field private static final CONNECT_METHOD:Lokio/ByteString;

.field private static final CONTENT_LENGTH:Lokio/ByteString;

.field private static final CONTENT_TYPE:Lokio/ByteString;

.field private static final GRACEFUL_SHUTDOWN_PING:I = 0x1111

.field private static final HOST:Lokio/ByteString;

.field private static final HTTP_METHOD:Lokio/ByteString;

.field private static final KEEPALIVE_PING:I = 0xdead

.field private static final PATH:Lokio/ByteString;

.field private static final POST_METHOD:Lokio/ByteString;

.field private static final SCHEME:Lokio/ByteString;

.field private static final TE:Lokio/ByteString;

.field private static final TE_TRAILERS:Lokio/ByteString;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private abruptShutdown:Z

.field private attributes:Lio/grpc/Attributes;

.field private final bareSocket:Ljava/net/Socket;

.field private final config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

.field private forcefulCloseTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

.field private goAwayStatus:Lio/grpc/Status;

.field private goAwayStreamId:I

.field private gracefulShutdown:Z

.field private handshakeShutdown:Z

.field private final keepAliveEnforcer:Lio/grpc/internal/KeepAliveEnforcer;

.field private keepAliveManager:Lio/grpc/internal/KeepAliveManager;

.field private lastStreamId:I

.field private listener:Lio/grpc/internal/ServerTransportListener;

.field private final lock:Ljava/lang/Object;

.field private final logId:Lio/grpc/InternalLogId;

.field private maxConnectionAgeMonitor:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

.field private outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private secondGoawayTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private securityInfo:Lio/grpc/InternalChannelz$Security;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/grpc/okhttp/OkHttpServerTransport$StreamState;",
            ">;"
        }
    .end annotation
.end field

.field private final tracer:Lio/grpc/internal/TransportTracer;

.field private transportExecutor:Ljava/util/concurrent/Executor;

.field private final variant:Lio/grpc/okhttp/internal/framed/Variant;


# direct methods
.method public static synthetic $r8$lambda$ALOBgbbDELx6tGFqwlJhh8l9tXw(Lio/grpc/okhttp/OkHttpServerTransport;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpServerTransport;->triggerGracefulSecondGoaway()V

    return-void
.end method

.method public static synthetic $r8$lambda$flgsAsNzYEmFgg-lWiIuWF4ZDco(Lio/grpc/okhttp/OkHttpServerTransport;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpServerTransport;->triggerForcefulClose()V

    return-void
.end method

.method public static synthetic $r8$lambda$lp3kgwTOPa4ym7SMWPJ_Q3pTsnQ(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/TransportTracer$FlowControlWindows;
    .locals 0

    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpServerTransport;->readFlowControlWindow()Lio/grpc/internal/TransportTracer$FlowControlWindows;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->log:Ljava/util/logging/Logger;

    .line 77
    const-string v0, ":method"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->HTTP_METHOD:Lokio/ByteString;

    .line 78
    const-string v0, "CONNECT"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONNECT_METHOD:Lokio/ByteString;

    .line 79
    const-string v0, "POST"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->POST_METHOD:Lokio/ByteString;

    .line 80
    const-string v0, ":scheme"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->SCHEME:Lokio/ByteString;

    .line 81
    const-string v0, ":path"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->PATH:Lokio/ByteString;

    .line 82
    const-string v0, ":authority"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->AUTHORITY:Lokio/ByteString;

    .line 83
    const-string v0, "connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONNECTION:Lokio/ByteString;

    .line 84
    const-string v0, "host"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->HOST:Lokio/ByteString;

    .line 85
    const-string v0, "te"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->TE:Lokio/ByteString;

    .line 86
    const-string v0, "trailers"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->TE_TRAILERS:Lokio/ByteString;

    .line 87
    const-string v0, "content-type"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONTENT_TYPE:Lokio/ByteString;

    .line 88
    const-string v0, "content-length"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONTENT_LENGTH:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport$Config;Ljava/net/Socket;)V
    .locals 5
    .param p1, "config"    # Lio/grpc/okhttp/OkHttpServerTransport$Config;
    .param p2, "bareSocket"    # Ljava/net/Socket;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lio/grpc/okhttp/internal/framed/Http2;

    invoke-direct {v0}, Lio/grpc/okhttp/internal/framed/Http2;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->variant:Lio/grpc/okhttp/internal/framed/Variant;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    .line 121
    const v0, 0x7fffffff

    iput v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->goAwayStreamId:I

    .line 137
    const-string v0, "config"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    .line 138
    const-string v0, "bareSocket"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    .line 140
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerTransport$Config;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    invoke-virtual {v0}, Lio/grpc/internal/TransportTracer$Factory;->create()Lio/grpc/internal/TransportTracer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->tracer:Lio/grpc/internal/TransportTracer;

    .line 141
    new-instance v1, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda5;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/TransportTracer;->setFlowControlWindowReader(Lio/grpc/internal/TransportTracer$FlowControlReader;)V

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->logId:Lio/grpc/InternalLogId;

    .line 143
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerTransport$Config;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    invoke-interface {v0}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->transportExecutor:Ljava/util/concurrent/Executor;

    .line 144
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerTransport$Config;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    invoke-interface {v0}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 145
    new-instance v0, Lio/grpc/internal/KeepAliveEnforcer;

    iget-boolean v1, p1, Lio/grpc/okhttp/OkHttpServerTransport$Config;->permitKeepAliveWithoutCalls:Z

    iget-wide v2, p1, Lio/grpc/okhttp/OkHttpServerTransport$Config;->permitKeepAliveTimeInNanos:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/internal/KeepAliveEnforcer;-><init>(ZJLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->keepAliveEnforcer:Lio/grpc/internal/KeepAliveEnforcer;

    .line 147
    return-void
.end method

.method private abruptShutdown(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V
    .locals 6
    .param p1, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p2, "moreDetail"    # Ljava/lang/String;
    .param p3, "reason"    # Lio/grpc/Status;
    .param p4, "rstStreams"    # Z

    .line 319
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->abruptShutdown:Z

    if-eqz v1, :cond_0

    .line 321
    monitor-exit v0

    return-void

    .line 323
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->abruptShutdown:Z

    .line 324
    iput-object p3, p0, Lio/grpc/okhttp/OkHttpServerTransport;->goAwayStatus:Lio/grpc/Status;

    .line 326
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->secondGoawayTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 327
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 328
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->secondGoawayTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 330
    :cond_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 331
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpServerTransport$StreamState;>;"
    if-eqz p4, :cond_2

    .line 332
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v3, v4, v5}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 334
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    invoke-interface {v3, p3}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->transportReportStatus(Lio/grpc/Status;)V

    .line 335
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/grpc/okhttp/OkHttpServerTransport$StreamState;>;"
    goto :goto_0

    .line 336
    :cond_3
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 341
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    iget v2, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lastStreamId:I

    sget-object v3, Lio/grpc/internal/GrpcUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    .line 342
    iget v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lastStreamId:I

    iput v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->goAwayStreamId:I

    .line 343
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->close()V

    .line 344
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda1;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->forcefulCloseTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 346
    monitor-exit v0

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveEnforcer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->keepAliveEnforcer:Lio/grpc/internal/KeepAliveEnforcer;

    return-object v0
.end method

.method static synthetic access$1000(Lio/grpc/okhttp/OkHttpServerTransport;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    iget v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lastStreamId:I

    return v0
.end method

.method static synthetic access$1002(Lio/grpc/okhttp/OkHttpServerTransport;I)I
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;
    .param p1, "x1"    # I

    .line 72
    iput p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lastStreamId:I

    return p1
.end method

.method static synthetic access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    return-object v0
.end method

.method static synthetic access$1200(Ljava/util/List;Lokio/ByteString;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Lokio/ByteString;

    .line 72
    invoke-static {p0, p1}, Lio/grpc/okhttp/OkHttpServerTransport;->headerRemove(Ljava/util/List;Lokio/ByteString;)V

    return-void
.end method

.method static synthetic access$1300()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->HTTP_METHOD:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$1400()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->SCHEME:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$1500()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->PATH:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$1600()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->AUTHORITY:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$1700()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONNECT_METHOD:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$1800()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONNECTION:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$1900(Ljava/util/List;Lokio/ByteString;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Lokio/ByteString;

    .line 72
    invoke-static {p0, p1}, Lio/grpc/okhttp/OkHttpServerTransport;->headerContains(Ljava/util/List;Lokio/ByteString;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveManager;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    return-object v0
.end method

.method static synthetic access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2100()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->HOST:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$2200(Ljava/util/List;Lokio/ByteString;I)I
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Lokio/ByteString;
    .param p2, "x2"    # I

    .line 72
    invoke-static {p0, p1, p2}, Lio/grpc/okhttp/OkHttpServerTransport;->headerFind(Ljava/util/List;Lokio/ByteString;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lokio/ByteString;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lokio/ByteString;

    .line 72
    invoke-static {p0}, Lio/grpc/okhttp/OkHttpServerTransport;->asciiString(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONTENT_TYPE:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$2500(Ljava/util/List;Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Lokio/ByteString;

    .line 72
    invoke-static {p0, p1}, Lio/grpc/okhttp/OkHttpServerTransport;->headerGetRequiredSingle(Ljava/util/List;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->POST_METHOD:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$2700()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->TE:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$2800()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->TE_TRAILERS:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$2900()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONTENT_LENGTH:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    return-object v0
.end method

.method static synthetic access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    return-object v0
.end method

.method static synthetic access$3200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/TransportTracer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->tracer:Lio/grpc/internal/TransportTracer;

    return-object v0
.end method

.method static synthetic access$3300(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/Attributes;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->attributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method static synthetic access$3302(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/Attributes;)Lio/grpc/Attributes;
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;
    .param p1, "x1"    # Lio/grpc/Attributes;

    .line 72
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->attributes:Lio/grpc/Attributes;

    return-object p1
.end method

.method static synthetic access$3400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/MaxConnectionIdleManager;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

    return-object v0
.end method

.method static synthetic access$3500(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/ServerTransportListener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->listener:Lio/grpc/internal/ServerTransportListener;

    return-object v0
.end method

.method static synthetic access$3600(Lio/grpc/okhttp/OkHttpServerTransport;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpServerTransport;->triggerGracefulSecondGoaway()V

    return-void
.end method

.method static synthetic access$400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/Status;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->goAwayStatus:Lio/grpc/Status;

    return-object v0
.end method

.method static synthetic access$402(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/Status;)Lio/grpc/Status;
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;
    .param p1, "x1"    # Lio/grpc/Status;

    .line 72
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->goAwayStatus:Lio/grpc/Status;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;
    .param p1, "x1"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lio/grpc/Status;
    .param p4, "x4"    # Z

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/okhttp/OkHttpServerTransport;->abruptShutdown(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/logging/Logger;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/okhttp/OkHttpServerTransport;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpServerTransport;->terminated()V

    return-void
.end method

.method static synthetic access$900(Lio/grpc/okhttp/OkHttpServerTransport;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerTransport;

    .line 72
    iget v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->goAwayStreamId:I

    return v0
.end method

.method private static asciiString(Lokio/ByteString;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Lokio/ByteString;

    .line 448
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 449
    invoke-virtual {p0, v0}, Lokio/ByteString;->getByte(I)B

    move-result v1

    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    .line 450
    sget-object v1, Lio/grpc/internal/GrpcUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Lokio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 448
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static headerContains(Ljava/util/List;Lokio/ByteString;)Z
    .locals 3
    .param p1, "key"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;",
            "Lokio/ByteString;",
            ")Z"
        }
    .end annotation

    .line 466
    .local p0, "header":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->headerFind(Ljava/util/List;Lokio/ByteString;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static headerFind(Ljava/util/List;Lokio/ByteString;I)I
    .locals 2
    .param p1, "key"    # Lokio/ByteString;
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;",
            "Lokio/ByteString;",
            "I)I"
        }
    .end annotation

    .line 457
    .local p0, "header":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    move v0, p2

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 458
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/internal/framed/Header;

    iget-object v1, v1, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v1, p1}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    return v0

    .line 457
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static headerGetRequiredSingle(Ljava/util/List;Lokio/ByteString;)Lokio/ByteString;
    .locals 4
    .param p1, "key"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lokio/ByteString;"
        }
    .end annotation

    .line 478
    .local p0, "header":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->headerFind(Ljava/util/List;Lokio/ByteString;I)I

    move-result v0

    .line 479
    .local v0, "i":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 480
    return-object v1

    .line 482
    :cond_0
    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, p1, v3}, Lio/grpc/okhttp/OkHttpServerTransport;->headerFind(Ljava/util/List;Lokio/ByteString;I)I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 483
    return-object v1

    .line 485
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/internal/framed/Header;

    iget-object v1, v1, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    return-object v1
.end method

.method private static headerRemove(Ljava/util/List;Lokio/ByteString;)V
    .locals 3
    .param p1, "key"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    .line 470
    .local p0, "header":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    const/4 v0, 0x0

    .line 471
    .local v0, "i":I
    :goto_0
    invoke-static {p0, p1, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->headerFind(Ljava/util/List;Lokio/ByteString;I)I

    move-result v1

    move v0, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 472
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 474
    :cond_0
    return-void
.end method

.method private readFlowControlWindow()Lio/grpc/internal/TransportTracer$FlowControlWindows;
    .locals 6

    .line 395
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lio/grpc/okhttp/OutboundFlowController;->windowUpdate(Lio/grpc/okhttp/OutboundFlowController$StreamState;I)I

    move-result v1

    int-to-long v1, v1

    .line 399
    .local v1, "local":J
    :goto_0
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget v3, v3, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-long v3, v3

    .line 400
    .local v3, "remote":J
    new-instance v5, Lio/grpc/internal/TransportTracer$FlowControlWindows;

    invoke-direct {v5, v1, v2, v3, v4}, Lio/grpc/internal/TransportTracer$FlowControlWindows;-><init>(JJ)V

    monitor-exit v0

    return-object v5

    .line 401
    .end local v1    # "local":J
    .end local v3    # "remote":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shutdown(Ljava/lang/Long;)V
    .locals 6
    .param p1, "graceTimeInNanos"    # Ljava/lang/Long;

    .line 257
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->gracefulShutdown:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->abruptShutdown:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 261
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->gracefulShutdown:Z

    .line 262
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    if-nez v2, :cond_1

    .line 263
    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->handshakeShutdown:Z

    .line 264
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda0;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;)V

    .line 270
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 269
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->secondGoawayTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 271
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const/4 v3, 0x0

    new-array v4, v3, [B

    const v5, 0x7fffffff

    invoke-virtual {v1, v5, v2, v4}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    .line 272
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    const/16 v2, 0x1111

    invoke-virtual {v1, v3, v3, v2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->ping(ZII)V

    .line 273
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 275
    :goto_0
    monitor-exit v0

    .line 276
    return-void

    .line 259
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startIo(Lio/grpc/internal/SerializingExecutor;)V
    .locals 23
    .param p1, "serializingExecutor"    # Lio/grpc/internal/SerializingExecutor;

    .line 158
    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 159
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-object v0, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->handshakerSocketFactory:Lio/grpc/okhttp/HandshakerSocketFactory;

    iget-object v2, v1, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    sget-object v3, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    .line 160
    invoke-interface {v0, v2, v3}, Lio/grpc/okhttp/HandshakerSocketFactory;->handshake(Ljava/net/Socket;Lio/grpc/Attributes;)Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;

    move-result-object v0

    move-object v2, v0

    .line 161
    .local v2, "result":Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;
    iget-object v0, v2, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;->socket:Ljava/net/Socket;

    move-object v3, v0

    .line 162
    .local v3, "socket":Ljava/net/Socket;
    iget-object v0, v2, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;->attributes:Lio/grpc/Attributes;

    iput-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->attributes:Lio/grpc/Attributes;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 164
    const/16 v4, 0x2710

    .line 165
    .local v4, "maxQueuedControlFrames":I
    move-object/from16 v5, p1

    :try_start_1
    invoke-static {v5, v1, v4}, Lio/grpc/okhttp/AsyncSink;->sink(Lio/grpc/internal/SerializingExecutor;Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;I)Lio/grpc/okhttp/AsyncSink;

    move-result-object v0

    move-object v6, v0

    .line 166
    .local v6, "asyncSink":Lio/grpc/okhttp/AsyncSink;
    invoke-static {v3}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v0

    invoke-virtual {v6, v0, v3}, Lio/grpc/okhttp/AsyncSink;->becomeConnected(Lokio/Sink;Ljava/net/Socket;)V

    .line 167
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->variant:Lio/grpc/okhttp/internal/framed/Variant;

    .line 168
    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v0, v7, v8}, Lio/grpc/okhttp/internal/framed/Variant;->newWriter(Lokio/BufferedSink;Z)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    .line 167
    invoke-virtual {v6, v0}, Lio/grpc/okhttp/AsyncSink;->limitControlFramesWriter(Lio/grpc/okhttp/internal/framed/FrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    move-object v7, v0

    .line 169
    .local v7, "rawFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    new-instance v0, Lio/grpc/okhttp/OkHttpServerTransport$1;

    invoke-direct {v0, v1, v7}, Lio/grpc/okhttp/OkHttpServerTransport$1;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    move-object v9, v0

    .line 190
    .local v9, "writeMonitoringFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    iget-object v10, v1, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    :try_start_2
    iget-object v0, v2, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;->securityInfo:Lio/grpc/InternalChannelz$Security;

    iput-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->securityInfo:Lio/grpc/InternalChannelz$Security;

    .line 198
    new-instance v0, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-direct {v0, v1, v9}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;-><init>(Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    iput-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    .line 199
    new-instance v0, Lio/grpc/okhttp/OutboundFlowController;

    iget-object v11, v1, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-direct {v0, v1, v11}, Lio/grpc/okhttp/OutboundFlowController;-><init>(Lio/grpc/okhttp/OutboundFlowController$Transport;Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    iput-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    .line 203
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v0}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->connectionPreface()V

    .line 204
    new-instance v0, Lio/grpc/okhttp/internal/framed/Settings;

    invoke-direct {v0}, Lio/grpc/okhttp/internal/framed/Settings;-><init>()V

    .line 205
    .local v0, "settings":Lio/grpc/okhttp/internal/framed/Settings;
    iget-object v11, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget v11, v11, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    const/4 v12, 0x7

    invoke-static {v0, v12, v11}, Lio/grpc/okhttp/OkHttpSettingsUtil;->set(Lio/grpc/okhttp/internal/framed/Settings;II)V

    .line 207
    iget-object v11, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget v11, v11, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxInboundMetadataSize:I

    const/4 v12, 0x6

    invoke-static {v0, v12, v11}, Lio/grpc/okhttp/OkHttpSettingsUtil;->set(Lio/grpc/okhttp/internal/framed/Settings;II)V

    .line 209
    iget-object v11, v1, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v11, v0}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->settings(Lio/grpc/okhttp/internal/framed/Settings;)V

    .line 210
    iget-object v11, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget v11, v11, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const v12, 0xffff

    if-le v11, v12, :cond_0

    .line 211
    :try_start_3
    iget-object v11, v1, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    iget-object v13, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget v13, v13, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    sub-int/2addr v13, v12

    int-to-long v12, v13

    invoke-virtual {v11, v8, v12, v13}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->windowUpdate(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 215
    .end local v0    # "settings":Lio/grpc/okhttp/internal/framed/Settings;
    :catchall_0
    move-exception v0

    move-object/from16 v22, v9

    goto/16 :goto_2

    .line 214
    .restart local v0    # "settings":Lio/grpc/okhttp/internal/framed/Settings;
    :cond_0
    :goto_0
    :try_start_4
    iget-object v11, v1, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v11}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 215
    .end local v0    # "settings":Lio/grpc/okhttp/internal/framed/Settings;
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    :try_start_5
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-wide v10, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->keepAliveTimeNanos:J

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v0, v10, v12

    if-eqz v0, :cond_1

    .line 218
    new-instance v0, Lio/grpc/internal/KeepAliveManager;

    new-instance v15, Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;

    const/4 v10, 0x0

    invoke-direct {v15, v1, v10}, Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/OkHttpServerTransport$1;)V

    iget-object v10, v1, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v11, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-object/from16 v22, v9

    .end local v9    # "writeMonitoringFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    .local v22, "writeMonitoringFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    iget-wide v8, v11, Lio/grpc/okhttp/OkHttpServerTransport$Config;->keepAliveTimeNanos:J

    iget-object v11, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-wide v12, v11, Lio/grpc/okhttp/OkHttpServerTransport$Config;->keepAliveTimeoutNanos:J

    const/16 v21, 0x1

    move-object v14, v0

    move-object/from16 v16, v10

    move-wide/from16 v17, v8

    move-wide/from16 v19, v12

    invoke-direct/range {v14 .. v21}, Lio/grpc/internal/KeepAliveManager;-><init>(Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;Ljava/util/concurrent/ScheduledExecutorService;JJZ)V

    iput-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    .line 221
    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onTransportStarted()V

    goto :goto_1

    .line 217
    .end local v22    # "writeMonitoringFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    .restart local v9    # "writeMonitoringFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    :cond_1
    move-object/from16 v22, v9

    .line 224
    .end local v9    # "writeMonitoringFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    .restart local v22    # "writeMonitoringFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    :goto_1
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-wide v8, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxConnectionIdleNanos:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v0, v8, v10

    if-eqz v0, :cond_2

    .line 225
    new-instance v0, Lio/grpc/internal/MaxConnectionIdleManager;

    iget-object v8, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-wide v8, v8, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxConnectionIdleNanos:J

    invoke-direct {v0, v8, v9}, Lio/grpc/internal/MaxConnectionIdleManager;-><init>(J)V

    iput-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

    .line 226
    new-instance v8, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda3;

    invoke-direct {v8, v1}, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda3;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;)V

    iget-object v9, v1, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v8, v9}, Lio/grpc/internal/MaxConnectionIdleManager;->start(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 229
    :cond_2
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-wide v8, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxConnectionAgeInNanos:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v0, v8, v10

    if-eqz v0, :cond_3

    .line 230
    nop

    .line 231
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    add-double/2addr v8, v10

    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-wide v10, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxConnectionAgeInNanos:J

    long-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-long v8, v8

    .line 232
    .local v8, "maxConnectionAgeInNanos":J
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v10, Lio/grpc/internal/LogExceptionRunnable;

    new-instance v11, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda4;

    invoke-direct {v11, v1}, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda4;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;)V

    invoke-direct {v10, v11}, Lio/grpc/internal/LogExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v10, v8, v9, v11}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->maxConnectionAgeMonitor:Ljava/util/concurrent/ScheduledFuture;

    .line 238
    .end local v8    # "maxConnectionAgeInNanos":J
    :cond_3
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->transportExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;

    iget-object v9, v1, Lio/grpc/okhttp/OkHttpServerTransport;->variant:Lio/grpc/okhttp/internal/framed/Variant;

    .line 239
    invoke-static {v3}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v10

    invoke-static {v10}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lio/grpc/okhttp/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lio/grpc/okhttp/internal/framed/FrameReader;

    move-result-object v9

    invoke-direct {v8, v1, v9}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/FrameReader;)V

    .line 238
    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 248
    .end local v2    # "result":Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;
    .end local v3    # "socket":Ljava/net/Socket;
    .end local v4    # "maxQueuedControlFrames":I
    .end local v6    # "asyncSink":Lio/grpc/okhttp/AsyncSink;
    .end local v7    # "rawFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    .end local v22    # "writeMonitoringFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    goto :goto_5

    .line 215
    .restart local v2    # "result":Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;
    .restart local v3    # "socket":Ljava/net/Socket;
    .restart local v4    # "maxQueuedControlFrames":I
    .restart local v6    # "asyncSink":Lio/grpc/okhttp/AsyncSink;
    .restart local v7    # "rawFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    .restart local v9    # "writeMonitoringFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v9

    .end local v9    # "writeMonitoringFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    .restart local v22    # "writeMonitoringFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    :goto_2
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local p1    # "serializingExecutor":Lio/grpc/internal/SerializingExecutor;
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .restart local p1    # "serializingExecutor":Lio/grpc/internal/SerializingExecutor;
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 240
    .end local v2    # "result":Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;
    .end local v3    # "socket":Ljava/net/Socket;
    .end local v4    # "maxQueuedControlFrames":I
    .end local v6    # "asyncSink":Lio/grpc/okhttp/AsyncSink;
    .end local v7    # "rawFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    .end local v22    # "writeMonitoringFrameWriter":Lio/grpc/okhttp/internal/framed/FrameWriter;
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    :goto_3
    move-object/from16 v5, p1

    :goto_4
    move-object v2, v0

    .line 241
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v3, v1, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 242
    :try_start_8
    iget-boolean v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->handshakeShutdown:Z

    if-nez v0, :cond_4

    .line 243
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v6, "Socket failed to handshake"

    invoke-virtual {v0, v4, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    :cond_4
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 246
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 247
    invoke-direct/range {p0 .. p0}, Lio/grpc/okhttp/OkHttpServerTransport;->terminated()V

    .line 249
    .end local v2    # "ex":Ljava/lang/Throwable;
    :goto_5
    return-void

    .line 245
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method private terminated()V
    .locals 3

    .line 355
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->forcefulCloseTimer:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 357
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 358
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->forcefulCloseTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 360
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onTransportTermination()V

    .line 364
    :cond_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {v0}, Lio/grpc/internal/MaxConnectionIdleManager;->onTransportTermination()V

    .line 368
    :cond_2
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->maxConnectionAgeMonitor:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_3

    .line 369
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 371
    :cond_3
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-object v0, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->transportExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->transportExecutor:Ljava/util/concurrent/Executor;

    .line 372
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-object v0, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 373
    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 374
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->listener:Lio/grpc/internal/ServerTransportListener;

    invoke-interface {v0}, Lio/grpc/internal/ServerTransportListener;->transportTerminated()V

    .line 375
    return-void

    .line 360
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private triggerForcefulClose()V
    .locals 1

    .line 351
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 352
    return-void
.end method

.method private triggerGracefulSecondGoaway()V
    .locals 5

    .line 279
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->secondGoawayTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_0

    .line 281
    monitor-exit v0

    return-void

    .line 283
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 284
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->secondGoawayTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 285
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    iget v3, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lastStreamId:I

    sget-object v4, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    new-array v2, v2, [B

    invoke-virtual {v1, v3, v4, v2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    .line 286
    iget v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lastStreamId:I

    iput v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->goAwayStreamId:I

    .line 287
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->close()V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 292
    :goto_0
    monitor-exit v0

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getActiveStreams()[Lio/grpc/okhttp/OutboundFlowController$StreamState;
    .locals 7

    .line 411
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    .line 413
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lio/grpc/okhttp/OutboundFlowController$StreamState;

    .line 414
    .local v1, "flowStreams":[Lio/grpc/okhttp/OutboundFlowController$StreamState;
    const/4 v2, 0x0

    .line 415
    .local v2, "i":I
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

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

    check-cast v4, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    .line 416
    .local v4, "stream":Lio/grpc/okhttp/OkHttpServerTransport$StreamState;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-interface {v4}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->getOutboundFlowState()Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object v6

    aput-object v6, v1, v2

    .line 417
    .end local v4    # "stream":Lio/grpc/okhttp/OkHttpServerTransport$StreamState;
    move v2, v5

    goto :goto_0

    .line 418
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_0
    monitor-exit v0

    return-object v1

    .line 419
    .end local v1    # "flowStreams":[Lio/grpc/okhttp/OutboundFlowController$StreamState;
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    .line 406
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->logId:Lio/grpc/InternalLogId;

    return-object v0
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 379
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_0
    new-instance v7, Lio/grpc/InternalChannelz$SocketStats;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->tracer:Lio/grpc/internal/TransportTracer;

    .line 386
    invoke-virtual {v1}, Lio/grpc/internal/TransportTracer;->getStats()Lio/grpc/InternalChannelz$TransportStats;

    move-result-object v2

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    .line 387
    invoke-virtual {v1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    .line 388
    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    .line 389
    invoke-static {v1}, Lio/grpc/okhttp/Utils;->getSocketOptions(Ljava/net/Socket;)Lio/grpc/InternalChannelz$SocketOptions;

    move-result-object v5

    iget-object v6, p0, Lio/grpc/okhttp/OkHttpServerTransport;->securityInfo:Lio/grpc/InternalChannelz$Security;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/grpc/InternalChannelz$SocketStats;-><init>(Lio/grpc/InternalChannelz$TransportStats;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/InternalChannelz$SocketOptions;Lio/grpc/InternalChannelz$Security;)V

    .line 385
    invoke-static {v7}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 391
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$start$0$io-grpc-okhttp-OkHttpServerTransport(Lio/grpc/internal/SerializingExecutor;)V
    .locals 0
    .param p1, "serializingExecutor"    # Lio/grpc/internal/SerializingExecutor;

    .line 153
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpServerTransport;->startIo(Lio/grpc/internal/SerializingExecutor;)V

    return-void
.end method

.method synthetic lambda$startIo$1$io-grpc-okhttp-OkHttpServerTransport()V
    .locals 2

    .line 233
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-wide v0, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxConnectionAgeGraceInNanos:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->shutdown(Ljava/lang/Long;)V

    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "failureCause"    # Ljava/lang/Throwable;

    .line 312
    const-string v0, "failureCause"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    invoke-virtual {v0, p1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 314
    .local v0, "status":Lio/grpc/Status;
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v2, "I/O failure"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lio/grpc/okhttp/OkHttpServerTransport;->abruptShutdown(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V

    .line 315
    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 253
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->shutdown(Ljava/lang/Long;)V

    .line 254
    return-void
.end method

.method public shutdownNow(Lio/grpc/Status;)V
    .locals 3
    .param p1, "reason"    # Lio/grpc/Status;

    .line 297
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 299
    iput-boolean v2, p0, Lio/grpc/okhttp/OkHttpServerTransport;->handshakeShutdown:Z

    .line 300
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 301
    monitor-exit v0

    return-void

    .line 303
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1, v2}, Lio/grpc/okhttp/OkHttpServerTransport;->abruptShutdown(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V

    .line 305
    return-void

    .line 303
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public start(Lio/grpc/internal/ServerTransportListener;)V
    .locals 2
    .param p1, "listener"    # Lio/grpc/internal/ServerTransportListener;

    .line 150
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ServerTransportListener;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->listener:Lio/grpc/internal/ServerTransportListener;

    .line 152
    new-instance v0, Lio/grpc/internal/SerializingExecutor;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->transportExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Lio/grpc/internal/SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 153
    .local v0, "serializingExecutor":Lio/grpc/internal/SerializingExecutor;
    new-instance v1, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda2;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/internal/SerializingExecutor;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method streamClosed(IZ)V
    .locals 3
    .param p1, "streamId"    # I
    .param p2, "flush"    # Z

    .line 427
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->keepAliveEnforcer:Lio/grpc/internal/KeepAliveEnforcer;

    invoke-virtual {v1}, Lio/grpc/internal/KeepAliveEnforcer;->onTransportIdle()V

    .line 431
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {v1}, Lio/grpc/internal/MaxConnectionIdleManager;->onTransportIdle()V

    .line 435
    :cond_0
    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->gracefulShutdown:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->close()V

    goto :goto_0

    .line 438
    :cond_1
    if-eqz p2, :cond_2

    .line 439
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 442
    :cond_2
    :goto_0
    monitor-exit v0

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
