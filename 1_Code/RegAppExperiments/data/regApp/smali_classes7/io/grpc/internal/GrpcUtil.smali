.class public final Lio/grpc/internal/GrpcUtil;
.super Ljava/lang/Object;
.source "GrpcUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/GrpcUtil$TimeoutMarshaller;,
        Lio/grpc/internal/GrpcUtil$GrpcBuildVersion;,
        Lio/grpc/internal/GrpcUtil$Http2Error;,
        Lio/grpc/internal/GrpcUtil$AcceptEncodingMarshaller;
    }
.end annotation


# static fields
.field public static final ACCEPT_ENCODING_SPLITTER:Lcom/google/common/base/Splitter;

.field public static final CALL_OPTIONS_RPC_OWNED_BY_BALANCER:Lio/grpc/CallOptions$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/CallOptions$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_ACCEPT_ENCODING:Ljava/lang/String; = "accept-encoding"

.field public static final CONTENT_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "content-encoding"

.field public static final CONTENT_ENCODING_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final CONTENT_LENGTH_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_TYPE_GRPC:Ljava/lang/String; = "application/grpc"

.field public static final CONTENT_TYPE_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_KEEPALIVE_TIMEOUT_NANOS:J

.field public static final DEFAULT_LB_POLICY:Ljava/lang/String; = "pick_first"

.field public static final DEFAULT_MAX_HEADER_LIST_SIZE:I = 0x2000

.field public static final DEFAULT_MAX_MESSAGE_SIZE:I = 0x400000

.field public static final DEFAULT_PORT_PLAINTEXT:I = 0x50

.field public static final DEFAULT_PORT_SSL:I = 0x1bb

.field public static final DEFAULT_PROXY_DETECTOR:Lio/grpc/ProxyDetector;

.field public static final DEFAULT_SERVER_KEEPALIVE_TIMEOUT_NANOS:J

.field public static final DEFAULT_SERVER_KEEPALIVE_TIME_NANOS:J

.field public static final HTTP_METHOD:Ljava/lang/String; = "POST"

.field private static final IMPLEMENTATION_VERSION:Ljava/lang/String; = "1.52.1"

.field private static final INAPPROPRIATE_CONTROL_PLANE_STATUS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/grpc/Status$Code;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEEPALIVE_TIME_NANOS_DISABLED:J = 0x7fffffffffffffffL

.field public static final MESSAGE_ACCEPT_ENCODING:Ljava/lang/String; = "grpc-accept-encoding"

.field public static final MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final MESSAGE_ENCODING:Ljava/lang/String; = "grpc-encoding"

.field public static final MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOOP_PROXY_DETECTOR:Lio/grpc/ProxyDetector;

.field private static final NOOP_TRACER:Lio/grpc/ClientStreamTracer;

.field public static final SERVER_KEEPALIVE_TIME_NANOS_DISABLED:J = 0x7fffffffffffffffL

.field public static final SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public static final STOPWATCH_SUPPLIER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation
.end field

.field public static final TE_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TE_TRAILERS:Ljava/lang/String; = "trailers"

.field public static final TIMEOUT:Ljava/lang/String; = "grpc-timeout"

.field public static final TIMEOUT_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_AGENT_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 79
    const-class v0, Lio/grpc/internal/GrpcUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->log:Ljava/util/logging/Logger;

    .line 81
    sget-object v0, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    const/4 v1, 0x7

    new-array v1, v1, [Lio/grpc/Status$Code;

    const/4 v2, 0x0

    sget-object v3, Lio/grpc/Status$Code;->INVALID_ARGUMENT:Lio/grpc/Status$Code;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lio/grpc/Status$Code;->NOT_FOUND:Lio/grpc/Status$Code;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lio/grpc/Status$Code;->ALREADY_EXISTS:Lio/grpc/Status$Code;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lio/grpc/Status$Code;->FAILED_PRECONDITION:Lio/grpc/Status$Code;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lio/grpc/Status$Code;->ABORTED:Lio/grpc/Status$Code;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lio/grpc/Status$Code;->OUT_OF_RANGE:Lio/grpc/Status$Code;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lio/grpc/Status$Code;->DATA_LOSS:Lio/grpc/Status$Code;

    aput-object v3, v1, v2

    .line 82
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->INAPPROPRIATE_CONTROL_PLANE_STATUS:Ljava/util/Set;

    .line 92
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->US_ASCII:Ljava/nio/charset/Charset;

    .line 97
    new-instance v0, Lio/grpc/internal/GrpcUtil$TimeoutMarshaller;

    invoke-direct {v0}, Lio/grpc/internal/GrpcUtil$TimeoutMarshaller;-><init>()V

    .line 98
    const-string v1, "grpc-timeout"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->TIMEOUT_KEY:Lio/grpc/Metadata$Key;

    .line 103
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 104
    const-string v1, "grpc-encoding"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    .line 109
    new-instance v0, Lio/grpc/internal/GrpcUtil$AcceptEncodingMarshaller;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/internal/GrpcUtil$AcceptEncodingMarshaller;-><init>(Lio/grpc/internal/GrpcUtil$1;)V

    .line 110
    const-string v2, "grpc-accept-encoding"

    invoke-static {v2, v0}, Lio/grpc/InternalMetadata;->keyOf(Ljava/lang/String;Lio/grpc/InternalMetadata$TrustedAsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    .line 115
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 116
    const-string v2, "content-encoding"

    invoke-static {v2, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->CONTENT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    .line 121
    new-instance v0, Lio/grpc/internal/GrpcUtil$AcceptEncodingMarshaller;

    invoke-direct {v0, v1}, Lio/grpc/internal/GrpcUtil$AcceptEncodingMarshaller;-><init>(Lio/grpc/internal/GrpcUtil$1;)V

    .line 122
    const-string v1, "accept-encoding"

    invoke-static {v1, v0}, Lio/grpc/InternalMetadata;->keyOf(Ljava/lang/String;Lio/grpc/InternalMetadata$TrustedAsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->CONTENT_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    .line 124
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 125
    const-string v1, "content-length"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->CONTENT_LENGTH_KEY:Lio/grpc/Metadata$Key;

    .line 142
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 143
    const-string v1, "content-type"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->CONTENT_TYPE_KEY:Lio/grpc/Metadata$Key;

    .line 148
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 149
    const-string v1, "te"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->TE_HEADER:Lio/grpc/Metadata$Key;

    .line 154
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 155
    const-string v1, "user-agent"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->USER_AGENT_KEY:Lio/grpc/Metadata$Key;

    .line 218
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->ACCEPT_ENCODING_SPLITTER:Lcom/google/common/base/Splitter;

    .line 225
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lio/grpc/internal/GrpcUtil;->DEFAULT_KEEPALIVE_TIMEOUT_NANOS:J

    .line 235
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lio/grpc/internal/GrpcUtil;->DEFAULT_SERVER_KEEPALIVE_TIME_NANOS:J

    .line 240
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/GrpcUtil;->DEFAULT_SERVER_KEEPALIVE_TIMEOUT_NANOS:J

    .line 250
    new-instance v0, Lio/grpc/internal/ProxyDetectorImpl;

    invoke-direct {v0}, Lio/grpc/internal/ProxyDetectorImpl;-><init>()V

    sput-object v0, Lio/grpc/internal/GrpcUtil;->DEFAULT_PROXY_DETECTOR:Lio/grpc/ProxyDetector;

    .line 255
    new-instance v0, Lio/grpc/internal/GrpcUtil$1;

    invoke-direct {v0}, Lio/grpc/internal/GrpcUtil$1;-><init>()V

    sput-object v0, Lio/grpc/internal/GrpcUtil;->NOOP_PROXY_DETECTOR:Lio/grpc/ProxyDetector;

    .line 273
    nop

    .line 274
    const-string v0, "io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER"

    invoke-static {v0}, Lio/grpc/CallOptions$Key;->create(Ljava/lang/String;)Lio/grpc/CallOptions$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->CALL_OPTIONS_RPC_OWNED_BY_BALANCER:Lio/grpc/CallOptions$Key;

    .line 276
    new-instance v0, Lio/grpc/internal/GrpcUtil$2;

    invoke-direct {v0}, Lio/grpc/internal/GrpcUtil$2;-><init>()V

    sput-object v0, Lio/grpc/internal/GrpcUtil;->NOOP_TRACER:Lio/grpc/ClientStreamTracer;

    .line 549
    new-instance v0, Lio/grpc/internal/GrpcUtil$3;

    invoke-direct {v0}, Lio/grpc/internal/GrpcUtil$3;-><init>()V

    sput-object v0, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 571
    new-instance v0, Lio/grpc/internal/GrpcUtil$4;

    invoke-direct {v0}, Lio/grpc/internal/GrpcUtil$4;-><init>()V

    sput-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 624
    new-instance v0, Lio/grpc/internal/GrpcUtil$5;

    invoke-direct {v0}, Lio/grpc/internal/GrpcUtil$5;-><init>()V

    sput-object v0, Lio/grpc/internal/GrpcUtil;->STOPWATCH_SUPPLIER:Lcom/google/common/base/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lio/grpc/ClientStreamTracer;
    .locals 1

    .line 77
    sget-object v0, Lio/grpc/internal/GrpcUtil;->NOOP_TRACER:Lio/grpc/ClientStreamTracer;

    return-object v0
.end method

.method public static authorityFromHostAndPort(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 540
    :try_start_0
    new-instance v8, Ljava/net/URI;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid host or port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static authorityToUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 7
    .param p0, "authority"    # Ljava/lang/String;

    .line 510
    const-string v0, "authority"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .local v0, "uri":Ljava/net/URI;
    nop

    .line 517
    return-object v0

    .line 514
    .end local v0    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 515
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid authority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static checkAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "authority"    # Ljava/lang/String;

    .line 527
    invoke-static {p0}, Lio/grpc/internal/GrpcUtil;->authorityToUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 528
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "No host in authority \'%s\'"

    invoke-static {v1, v4, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 529
    invoke-virtual {v0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v1, "Userinfo must not be present on authority: \'%s\'"

    invoke-static {v2, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 531
    return-object p0
.end method

.method static closeQuietly(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 2
    .param p0, "producer"    # Lio/grpc/internal/StreamListener$MessageProducer;

    .line 797
    nop

    :goto_0
    invoke-interface {p0}, Lio/grpc/internal/StreamListener$MessageProducer;->next()Ljava/io/InputStream;

    move-result-object v0

    move-object v1, v0

    .local v1, "message":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 798
    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 800
    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 4
    .param p0, "message"    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 807
    if-nez p0, :cond_0

    .line 808
    return-void

    .line 811
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 814
    .local v0, "ioException":Ljava/io/IOException;
    sget-object v1, Lio/grpc/internal/GrpcUtil;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "exception caught in closeQuietly"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 816
    .end local v0    # "ioException":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public static exhaust(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 821
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 822
    :cond_0
    return-void
.end method

.method public static getClientStreamTracers(Lio/grpc/CallOptions;Lio/grpc/Metadata;IZ)[Lio/grpc/ClientStreamTracer;
    .locals 5
    .param p0, "callOptions"    # Lio/grpc/CallOptions;
    .param p1, "headers"    # Lio/grpc/Metadata;
    .param p2, "previousAttempts"    # I
    .param p3, "isTransparentRetry"    # Z

    .line 778
    invoke-virtual {p0}, Lio/grpc/CallOptions;->getStreamTracerFactories()Ljava/util/List;

    move-result-object v0

    .line 779
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientStreamTracer$Factory;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lio/grpc/ClientStreamTracer;

    .line 780
    .local v1, "tracers":[Lio/grpc/ClientStreamTracer;
    invoke-static {}, Lio/grpc/ClientStreamTracer$StreamInfo;->newBuilder()Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    move-result-object v2

    .line 781
    invoke-virtual {v2, p0}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->setCallOptions(Lio/grpc/CallOptions;)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    move-result-object v2

    .line 782
    invoke-virtual {v2, p2}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->setPreviousAttempts(I)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    move-result-object v2

    .line 783
    invoke-virtual {v2, p3}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->setIsTransparentRetry(Z)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;

    move-result-object v2

    .line 784
    invoke-virtual {v2}, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->build()Lio/grpc/ClientStreamTracer$StreamInfo;

    move-result-object v2

    .line 785
    .local v2, "streamInfo":Lio/grpc/ClientStreamTracer$StreamInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 786
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/ClientStreamTracer$Factory;

    invoke-virtual {v4, v2, p1}, Lio/grpc/ClientStreamTracer$Factory;->newClientStreamTracer(Lio/grpc/ClientStreamTracer$StreamInfo;Lio/grpc/Metadata;)Lio/grpc/ClientStreamTracer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 785
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 790
    .end local v3    # "i":I
    :cond_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lio/grpc/internal/GrpcUtil;->NOOP_TRACER:Lio/grpc/ClientStreamTracer;

    aput-object v4, v1, v3

    .line 791
    return-object v1
.end method

.method public static getGrpcBuildVersion()Lio/grpc/internal/GrpcUtil$GrpcBuildVersion;
    .locals 4

    .line 503
    new-instance v0, Lio/grpc/internal/GrpcUtil$GrpcBuildVersion;

    const-string v1, "1.52.1"

    const/4 v2, 0x0

    const-string v3, "gRPC Java"

    invoke-direct {v0, v3, v1, v2}, Lio/grpc/internal/GrpcUtil$GrpcBuildVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/grpc/internal/GrpcUtil$1;)V

    return-object v0
.end method

.method public static getGrpcUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "transportName"    # Ljava/lang/String;
    .param p1, "applicationUserAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 464
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    :cond_0
    const-string v1, "grpc-java-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    const-string v1, "1.52.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 4
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .line 638
    :try_start_0
    const-class v0, Ljava/net/InetSocketAddress;

    const-string v1, "getHostString"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 639
    .local v0, "getHostStringMethod":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 644
    .end local v0    # "getHostStringMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 642
    :catch_1
    move-exception v0

    goto :goto_0

    .line 640
    :catch_2
    move-exception v0

    .line 646
    :goto_0
    nop

    .line 647
    :goto_1
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0, "nameFormat"    # Ljava/lang/String;
    .param p1, "daemon"    # Z

    .line 615
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    .line 616
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    .line 617
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 615
    return-object v0
.end method

.method static getTransportFromPickResult(Lio/grpc/LoadBalancer$PickResult;Z)Lio/grpc/internal/ClientTransport;
    .locals 5
    .param p0, "result"    # Lio/grpc/LoadBalancer$PickResult;
    .param p1, "isWaitForReady"    # Z
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 722
    invoke-virtual {p0}, Lio/grpc/LoadBalancer$PickResult;->getSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v0

    .line 723
    .local v0, "subchannel":Lio/grpc/LoadBalancer$Subchannel;
    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Subchannel;->getInternalSubchannel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/TransportProvider;

    invoke-interface {v1}, Lio/grpc/internal/TransportProvider;->obtainActiveTransport()Lio/grpc/internal/ClientTransport;

    move-result-object v1

    .local v1, "transport":Lio/grpc/internal/ClientTransport;
    goto :goto_0

    .line 726
    .end local v1    # "transport":Lio/grpc/internal/ClientTransport;
    :cond_0
    const/4 v1, 0x0

    .line 728
    .restart local v1    # "transport":Lio/grpc/internal/ClientTransport;
    :goto_0
    if-eqz v1, :cond_2

    .line 729
    invoke-virtual {p0}, Lio/grpc/LoadBalancer$PickResult;->getStreamTracerFactory()Lio/grpc/ClientStreamTracer$Factory;

    move-result-object v2

    .line 730
    .local v2, "streamTracerFactory":Lio/grpc/ClientStreamTracer$Factory;
    if-nez v2, :cond_1

    .line 731
    return-object v1

    .line 733
    :cond_1
    new-instance v3, Lio/grpc/internal/GrpcUtil$6;

    invoke-direct {v3, v2, v1}, Lio/grpc/internal/GrpcUtil$6;-><init>(Lio/grpc/ClientStreamTracer$Factory;Lio/grpc/internal/ClientTransport;)V

    return-object v3

    .line 762
    .end local v2    # "streamTracerFactory":Lio/grpc/ClientStreamTracer$Factory;
    :cond_2
    invoke-virtual {p0}, Lio/grpc/LoadBalancer$PickResult;->getStatus()Lio/grpc/Status;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/Status;->isOk()Z

    move-result v2

    if-nez v2, :cond_4

    .line 763
    invoke-virtual {p0}, Lio/grpc/LoadBalancer$PickResult;->isDrop()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 764
    new-instance v2, Lio/grpc/internal/FailingClientTransport;

    .line 765
    invoke-virtual {p0}, Lio/grpc/LoadBalancer$PickResult;->getStatus()Lio/grpc/Status;

    move-result-object v3

    invoke-static {v3}, Lio/grpc/internal/GrpcUtil;->replaceInappropriateControlPlaneStatus(Lio/grpc/Status;)Lio/grpc/Status;

    move-result-object v3

    sget-object v4, Lio/grpc/internal/ClientStreamListener$RpcProgress;->DROPPED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {v2, v3, v4}, Lio/grpc/internal/FailingClientTransport;-><init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;)V

    .line 764
    return-object v2

    .line 767
    :cond_3
    if-nez p1, :cond_4

    .line 768
    new-instance v2, Lio/grpc/internal/FailingClientTransport;

    .line 769
    invoke-virtual {p0}, Lio/grpc/LoadBalancer$PickResult;->getStatus()Lio/grpc/Status;

    move-result-object v3

    invoke-static {v3}, Lio/grpc/internal/GrpcUtil;->replaceInappropriateControlPlaneStatus(Lio/grpc/Status;)Lio/grpc/Status;

    move-result-object v3

    sget-object v4, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {v2, v3, v4}, Lio/grpc/internal/FailingClientTransport;-><init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;)V

    .line 768
    return-object v2

    .line 772
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private static httpStatusToGrpcCode(I)Lio/grpc/Status$Code;
    .locals 1
    .param p0, "httpStatusCode"    # I

    .line 298
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    .line 300
    sget-object v0, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    return-object v0

    .line 302
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 319
    sget-object v0, Lio/grpc/Status$Code;->UNKNOWN:Lio/grpc/Status$Code;

    return-object v0

    .line 317
    :sswitch_0
    sget-object v0, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    return-object v0

    .line 312
    :sswitch_1
    sget-object v0, Lio/grpc/Status$Code;->UNIMPLEMENTED:Lio/grpc/Status$Code;

    return-object v0

    .line 310
    :sswitch_2
    sget-object v0, Lio/grpc/Status$Code;->PERMISSION_DENIED:Lio/grpc/Status$Code;

    return-object v0

    .line 308
    :sswitch_3
    sget-object v0, Lio/grpc/Status$Code;->UNAUTHENTICATED:Lio/grpc/Status$Code;

    return-object v0

    .line 306
    :sswitch_4
    sget-object v0, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_4
        0x191 -> :sswitch_3
        0x193 -> :sswitch_2
        0x194 -> :sswitch_1
        0x1ad -> :sswitch_0
        0x1af -> :sswitch_4
        0x1f6 -> :sswitch_0
        0x1f7 -> :sswitch_0
        0x1f8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static httpStatusToGrpcStatus(I)Lio/grpc/Status;
    .locals 3
    .param p0, "httpStatusCode"    # I

    .line 293
    invoke-static {p0}, Lio/grpc/internal/GrpcUtil;->httpStatusToGrpcCode(I)Lio/grpc/Status$Code;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 293
    return-object v0
.end method

.method public static isGrpcContentType(Ljava/lang/String;)Z
    .locals 5
    .param p0, "contentType"    # Ljava/lang/String;

    .line 431
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 432
    return v0

    .line 435
    :cond_0
    const-string v1, "application/grpc"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 436
    return v0

    .line 439
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 440
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 442
    return v0

    .line 445
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    .line 447
    return v4

    .line 453
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 454
    .local v1, "nextChar":C
    const/16 v2, 0x2b

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_5

    :cond_4
    move v0, v4

    :cond_5
    return v0
.end method

.method static iterableContains(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 843
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 844
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 846
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 849
    :catch_0
    move-exception v2

    .line 850
    .local v2, "e":Ljava/lang/ClassCastException;
    return v1

    .line 847
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .line 848
    .local v2, "e":Ljava/lang/NullPointerException;
    return v1

    .line 853
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 854
    .local v2, "i":Ljava/lang/Object;, "TT;"
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 855
    const/4 v0, 0x1

    return v0

    .line 857
    .end local v2    # "i":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0

    .line 858
    :cond_2
    return v1
.end method

.method public static replaceInappropriateControlPlaneStatus(Lio/grpc/Status;)Lio/grpc/Status;
    .locals 3
    .param p0, "status"    # Lio/grpc/Status;

    .line 830
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 831
    sget-object v0, Lio/grpc/internal/GrpcUtil;->INAPPROPRIATE_CONTROL_PLANE_STATUS:Ljava/util/Set;

    invoke-virtual {p0}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inappropriate status code from control plane: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 833
    invoke-virtual {p0}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 834
    invoke-virtual {p0}, Lio/grpc/Status;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 832
    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 834
    invoke-virtual {p0}, Lio/grpc/Status;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p0

    .line 831
    :goto_1
    return-object v0
.end method

.method public static shouldBeCountedForInUse(Lio/grpc/CallOptions;)Z
    .locals 2
    .param p0, "callOptions"    # Lio/grpc/CallOptions;

    .line 283
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lio/grpc/internal/GrpcUtil;->CALL_OPTIONS_RPC_OWNED_BY_BALANCER:Lio/grpc/CallOptions$Key;

    invoke-virtual {p0, v1}, Lio/grpc/CallOptions;->getOption(Lio/grpc/CallOptions$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
