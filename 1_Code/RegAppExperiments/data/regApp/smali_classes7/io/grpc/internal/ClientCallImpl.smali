.class final Lio/grpc/internal/ClientCallImpl;
.super Lio/grpc/ClientCall;
.source "ClientCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;,
        Lio/grpc/internal/ClientCallImpl$DeadlineTimer;,
        Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;,
        Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# static fields
.field private static final FULL_STREAM_DECOMPRESSION_ENCODINGS:[B

.field private static final NANO_TO_SECS:D

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final callExecutor:Ljava/util/concurrent/Executor;

.field private final callExecutorIsDirect:Z

.field private callOptions:Lio/grpc/CallOptions;

.field private cancelCalled:Z

.field private volatile cancelListenersShouldBeRemoved:Z

.field private final cancellationListener:Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ClientCallImpl<",
            "TReqT;TRespT;>.ContextCancellation",
            "Listener;"
        }
    .end annotation
.end field

.field private final channelCallsTracer:Lio/grpc/internal/CallTracer;

.field private final clientStreamProvider:Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;

.field private compressorRegistry:Lio/grpc/CompressorRegistry;

.field private final context:Lio/grpc/Context;

.field private final deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile deadlineCancellationFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field private fullStreamDecompression:Z

.field private halfCloseCalled:Z

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private stream:Lio/grpc/internal/ClientStream;

.field private final tag:Lio/perfmark/Tag;

.field private final unaryRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    const-class v0, Lio/grpc/internal/ClientCallImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ClientCallImpl;->log:Ljava/util/logging/Logger;

    .line 73
    nop

    .line 74
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ClientCallImpl;->FULL_STREAM_DECOMPRESSION_ENCODINGS:[B

    .line 75
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    sput-wide v0, Lio/grpc/internal/ClientCallImpl;->NANO_TO_SECS:D

    return-void
.end method

.method constructor <init>(Lio/grpc/MethodDescriptor;Ljava/util/concurrent/Executor;Lio/grpc/CallOptions;Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/CallTracer;Lio/grpc/InternalConfigSelector;)V
    .locals 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callOptions"    # Lio/grpc/CallOptions;
    .param p4, "clientStreamProvider"    # Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;
    .param p5, "deadlineCancellationExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p6, "channelCallsTracer"    # Lio/grpc/internal/CallTracer;
    .param p7, "configSelector"    # Lio/grpc/InternalConfigSelector;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/internal/CallTracer;",
            "Lio/grpc/InternalConfigSelector;",
            ")V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    invoke-direct {p0}, Lio/grpc/ClientCall;-><init>()V

    .line 91
    new-instance v0, Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;-><init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/internal/ClientCallImpl$1;)V

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->cancellationListener:Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;

    .line 95
    invoke-static {}, Lio/grpc/DecompressorRegistry;->getDefaultInstance()Lio/grpc/DecompressorRegistry;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 96
    invoke-static {}, Lio/grpc/CompressorRegistry;->getDefaultInstance()Lio/grpc/CompressorRegistry;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 105
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl;->method:Lio/grpc/MethodDescriptor;

    .line 107
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lio/perfmark/PerfMark;->createTag(Ljava/lang/String;J)Lio/perfmark/Tag;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    .line 111
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    .line 112
    new-instance v1, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;

    invoke-direct {v1}, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;-><init>()V

    iput-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;

    .line 113
    iput-boolean v2, p0, Lio/grpc/internal/ClientCallImpl;->callExecutorIsDirect:Z

    goto :goto_0

    .line 115
    :cond_0
    new-instance v1, Lio/grpc/internal/SerializingExecutor;

    invoke-direct {v1, p2}, Lio/grpc/internal/SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;

    .line 116
    iput-boolean v3, p0, Lio/grpc/internal/ClientCallImpl;->callExecutorIsDirect:Z

    .line 118
    :goto_0
    iput-object p6, p0, Lio/grpc/internal/ClientCallImpl;->channelCallsTracer:Lio/grpc/internal/CallTracer;

    .line 120
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    .line 121
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v1

    sget-object v4, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    if-eq v1, v4, :cond_2

    .line 122
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v1

    sget-object v4, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    nop

    :goto_2
    iput-boolean v2, p0, Lio/grpc/internal/ClientCallImpl;->unaryRequest:Z

    .line 123
    iput-object p3, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 124
    iput-object p4, p0, Lio/grpc/internal/ClientCallImpl;->clientStreamProvider:Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;

    .line 125
    iput-object p5, p0, Lio/grpc/internal/ClientCallImpl;->deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 126
    const-string v1, "ClientCall.<init>"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->event(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 127
    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    return-object v0
.end method

.method static synthetic access$1000(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Deadline;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->effectiveDeadline()Lio/grpc/Deadline;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1102(Lio/grpc/internal/ClientCallImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lio/grpc/internal/ClientCallImpl;->cancelListenersShouldBeRemoved:Z

    return p1
.end method

.method static synthetic access$1200(Lio/grpc/internal/ClientCallImpl;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->removeContextListenerAndCancelDeadlineFuture()V

    return-void
.end method

.method static synthetic access$1300(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/CallTracer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->channelCallsTracer:Lio/grpc/internal/CallTracer;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Context;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;
    .param p1, "x1"    # Lio/grpc/ClientCall$Listener;
    .param p2, "x2"    # Lio/grpc/Status;
    .param p3, "x3"    # Lio/grpc/Metadata;

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/ClientCallImpl;->closeObserver(Lio/grpc/ClientCall$Listener;Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-void
.end method

.method static synthetic access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/internal/ClientCallImpl;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$900(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/MethodDescriptor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ClientCallImpl;

    .line 70
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->method:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method private applyMethodConfig()V
    .locals 5

    .line 316
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    sget-object v1, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->KEY:Lio/grpc/CallOptions$Key;

    invoke-virtual {v0, v1}, Lio/grpc/CallOptions;->getOption(Lio/grpc/CallOptions$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    .line 317
    .local v0, "info":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    if-nez v0, :cond_0

    .line 318
    return-void

    .line 320
    :cond_0
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->timeoutNanos:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 321
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->timeoutNanos:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lio/grpc/Deadline;->after(JLjava/util/concurrent/TimeUnit;)Lio/grpc/Deadline;

    move-result-object v1

    .line 322
    .local v1, "newDeadline":Lio/grpc/Deadline;
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v2}, Lio/grpc/CallOptions;->getDeadline()Lio/grpc/Deadline;

    move-result-object v2

    .line 324
    .local v2, "existingDeadline":Lio/grpc/Deadline;
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lio/grpc/Deadline;->compareTo(Lio/grpc/Deadline;)I

    move-result v3

    if-gez v3, :cond_2

    .line 325
    :cond_1
    iget-object v3, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v3, v1}, Lio/grpc/CallOptions;->withDeadline(Lio/grpc/Deadline;)Lio/grpc/CallOptions;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 328
    .end local v1    # "newDeadline":Lio/grpc/Deadline;
    .end local v2    # "existingDeadline":Lio/grpc/Deadline;
    :cond_2
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->waitForReady:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 329
    nop

    .line 330
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->waitForReady:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1}, Lio/grpc/CallOptions;->withWaitForReady()Lio/grpc/CallOptions;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1}, Lio/grpc/CallOptions;->withoutWaitForReady()Lio/grpc/CallOptions;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 332
    :cond_4
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 333
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1}, Lio/grpc/CallOptions;->getMaxInboundMessageSize()Ljava/lang/Integer;

    move-result-object v1

    .line 334
    .local v1, "existingLimit":Ljava/lang/Integer;
    if-eqz v1, :cond_5

    .line 335
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 337
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 336
    invoke-virtual {v2, v3}, Lio/grpc/CallOptions;->withMaxInboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    goto :goto_1

    .line 339
    :cond_5
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/grpc/CallOptions;->withMaxInboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 342
    .end local v1    # "existingLimit":Ljava/lang/Integer;
    :cond_6
    :goto_1
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 343
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1}, Lio/grpc/CallOptions;->getMaxOutboundMessageSize()Ljava/lang/Integer;

    move-result-object v1

    .line 344
    .restart local v1    # "existingLimit":Ljava/lang/Integer;
    if-eqz v1, :cond_7

    .line 345
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 347
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 346
    invoke-virtual {v2, v3}, Lio/grpc/CallOptions;->withMaxOutboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    goto :goto_2

    .line 349
    :cond_7
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/grpc/CallOptions;->withMaxOutboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 352
    .end local v1    # "existingLimit":Ljava/lang/Integer;
    :cond_8
    :goto_2
    return-void
.end method

.method private cancelInternal(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 470
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 471
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Cancelled without a message or cause"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    .line 472
    sget-object v0, Lio/grpc/internal/ClientCallImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Cancelling without a message or cause is suboptimal"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    :cond_0
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->cancelCalled:Z

    if-eqz v0, :cond_1

    .line 475
    return-void

    .line 477
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->cancelCalled:Z

    .line 481
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_4

    .line 482
    sget-object v0, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    .line 483
    .local v0, "status":Lio/grpc/Status;
    if-eqz p1, :cond_2

    .line 484
    invoke-virtual {v0, p1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 486
    :cond_2
    const-string v1, "Call cancelled without message"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    move-object v0, v1

    .line 488
    :goto_0
    if-eqz p2, :cond_3

    .line 489
    invoke-virtual {v0, p2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    move-object v0, v1

    .line 491
    :cond_3
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v1, v0}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    .end local v0    # "status":Lio/grpc/Status;
    :cond_4
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->removeContextListenerAndCancelDeadlineFuture()V

    .line 495
    nop

    .line 496
    return-void

    .line 494
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->removeContextListenerAndCancelDeadlineFuture()V

    throw v0
.end method

.method private closeObserver(Lio/grpc/ClientCall$Listener;Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0
    .param p2, "status"    # Lio/grpc/Status;
    .param p3, "trailers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Status;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 576
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    .local p1, "observer":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    invoke-virtual {p1, p2, p3}, Lio/grpc/ClientCall$Listener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 577
    return-void
.end method

.method private effectiveDeadline()Lio/grpc/Deadline;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 423
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v0}, Lio/grpc/CallOptions;->getDeadline()Lio/grpc/Deadline;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    invoke-virtual {v1}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/internal/ClientCallImpl;->min(Lio/grpc/Deadline;Lio/grpc/Deadline;)Lio/grpc/Deadline;

    move-result-object v0

    return-object v0
.end method

.method private halfCloseInternal()V
    .locals 3

    .line 509
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 510
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->cancelCalled:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 511
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->halfCloseCalled:Z

    xor-int/2addr v0, v1

    const-string v2, "call already half-closed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 512
    iput-boolean v1, p0, Lio/grpc/internal/ClientCallImpl;->halfCloseCalled:Z

    .line 513
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->halfClose()V

    .line 514
    return-void
.end method

.method private static isFirstMin(Lio/grpc/Deadline;Lio/grpc/Deadline;)Z
    .locals 1
    .param p0, "deadline0"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "deadline1"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 438
    if-nez p0, :cond_0

    .line 439
    const/4 v0, 0x0

    return v0

    .line 441
    :cond_0
    if-nez p1, :cond_1

    .line 442
    const/4 v0, 0x1

    return v0

    .line 444
    :cond_1
    invoke-virtual {p0, p1}, Lio/grpc/Deadline;->isBefore(Lio/grpc/Deadline;)Z

    move-result v0

    return v0
.end method

.method private static logIfContextNarrowedTimeout(Lio/grpc/Deadline;Lio/grpc/Deadline;Lio/grpc/Deadline;)V
    .locals 9
    .param p0, "effectiveDeadline"    # Lio/grpc/Deadline;
    .param p1, "outerCallDeadline"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "callDeadline"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 357
    sget-object v0, Lio/grpc/internal/ClientCallImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 358
    invoke-virtual {p0, p1}, Lio/grpc/Deadline;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 362
    :cond_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 363
    .local v1, "effectiveTimeout":J
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 365
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 363
    const-string v6, "Call timeout set to \'%d\' ns, due to context deadline."

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .local v3, "builder":Ljava/lang/StringBuilder;
    if-nez p2, :cond_1

    .line 367
    const-string v4, " Explicit call timeout was not set."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 369
    :cond_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v4}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 370
    .local v4, "callTimeout":J
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, " Explicit call timeout was \'%d\' ns."

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .end local v4    # "callTimeout":J
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 374
    return-void

    .line 359
    .end local v1    # "effectiveTimeout":J
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    return-void
.end method

.method private static min(Lio/grpc/Deadline;Lio/grpc/Deadline;)Lio/grpc/Deadline;
    .locals 1
    .param p0, "deadline0"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "deadline1"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 428
    if-nez p0, :cond_0

    .line 429
    return-object p1

    .line 431
    :cond_0
    if-nez p1, :cond_1

    .line 432
    return-object p0

    .line 434
    :cond_1
    invoke-virtual {p0, p1}, Lio/grpc/Deadline;->minimum(Lio/grpc/Deadline;)Lio/grpc/Deadline;

    move-result-object v0

    return-object v0
.end method

.method static prepareHeaders(Lio/grpc/Metadata;Lio/grpc/DecompressorRegistry;Lio/grpc/Compressor;Z)V
    .locals 3
    .param p0, "headers"    # Lio/grpc/Metadata;
    .param p1, "decompressorRegistry"    # Lio/grpc/DecompressorRegistry;
    .param p2, "compressor"    # Lio/grpc/Compressor;
    .param p3, "fullStreamDecompression"    # Z

    .line 168
    sget-object v0, Lio/grpc/internal/GrpcUtil;->CONTENT_LENGTH_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 169
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 170
    sget-object v0, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    if-eq p2, v0, :cond_0

    .line 171
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-interface {p2}, Lio/grpc/Compressor;->getMessageEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 174
    :cond_0
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 175
    nop

    .line 176
    invoke-static {p1}, Lio/grpc/InternalDecompressorRegistry;->getRawAdvertisedMessageEncodings(Lio/grpc/DecompressorRegistry;)[B

    move-result-object v0

    .line 177
    .local v0, "advertisedEncodings":[B
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 178
    sget-object v1, Lio/grpc/internal/GrpcUtil;->MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v1, v0}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 181
    :cond_1
    sget-object v1, Lio/grpc/internal/GrpcUtil;->CONTENT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v1}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 182
    sget-object v1, Lio/grpc/internal/GrpcUtil;->CONTENT_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v1}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 183
    if-eqz p3, :cond_2

    .line 184
    sget-object v1, Lio/grpc/internal/GrpcUtil;->CONTENT_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    sget-object v2, Lio/grpc/internal/ClientCallImpl;->FULL_STREAM_DECOMPRESSION_ENCODINGS:[B

    invoke-virtual {p0, v1, v2}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 186
    :cond_2
    return-void
.end method

.method private removeContextListenerAndCancelDeadlineFuture()V
    .locals 2

    .line 377
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->cancellationListener:Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;

    invoke-virtual {v0, v1}, Lio/grpc/Context;->removeListener(Lio/grpc/Context$CancellationListener;)V

    .line 378
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->deadlineCancellationFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 379
    .local v0, "f":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz v0, :cond_0

    .line 380
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 382
    :cond_0
    return-void
.end method

.method private sendMessageInternal(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 527
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    .local p1, "message":Ljava/lang/Object;, "TReqT;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 528
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->cancelCalled:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 529
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->halfCloseCalled:Z

    xor-int/2addr v0, v1

    const-string v1, "call was half-closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 531
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    instance-of v1, v0, Lio/grpc/internal/RetriableStream;

    if-eqz v1, :cond_1

    .line 533
    check-cast v0, Lio/grpc/internal/RetriableStream;

    .line 534
    .local v0, "retriableStream":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    invoke-virtual {v0, p1}, Lio/grpc/internal/RetriableStream;->sendMessage(Ljava/lang/Object;)V

    .line 535
    .end local v0    # "retriableStream":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    goto :goto_1

    .line 536
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v1, p1}, Lio/grpc/MethodDescriptor;->streamRequest(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->writeMessage(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_1
    nop

    .line 548
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->unaryRequest:Z

    if-nez v0, :cond_2

    .line 549
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->flush()V

    .line 551
    :cond_2
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    sget-object v2, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v3, "Client sendMessage() failed with Error"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 543
    throw v0

    .line 538
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    sget-object v2, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    invoke-virtual {v2, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v2

    const-string v3, "Failed to stream message"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 540
    return-void
.end method

.method private startDeadlineTimer(Lio/grpc/Deadline;)Ljava/util/concurrent/ScheduledFuture;
    .locals 5
    .param p1, "deadline"    # Lio/grpc/Deadline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Deadline;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 414
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 415
    .local v0, "remainingNanos":J
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/grpc/internal/LogExceptionRunnable;

    new-instance v4, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;

    invoke-direct {v4, p0, v0, v1}, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;-><init>(Lio/grpc/internal/ClientCallImpl;J)V

    invoke-direct {v3, v4}, Lio/grpc/internal/LogExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    return-object v2
.end method

.method private startInternal(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 10
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 199
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    .local p1, "observer":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Already started"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 200
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->cancelCalled:Z

    xor-int/2addr v0, v1

    const-string v3, "call was cancelled"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 201
    const-string v0, "observer"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v0, "headers"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    sget-object v0, Lio/grpc/internal/NoopClientStream;->INSTANCE:Lio/grpc/internal/NoopClientStream;

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    .line 208
    move-object v0, p1

    .line 220
    .local v0, "finalObserver":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lio/grpc/internal/ClientCallImpl$1ClosedByContext;

    invoke-direct {v2, p0, v0}, Lio/grpc/internal/ClientCallImpl$1ClosedByContext;-><init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 221
    return-void

    .line 223
    .end local v0    # "finalObserver":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    :cond_1
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->applyMethodConfig()V

    .line 224
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v0}, Lio/grpc/CallOptions;->getCompressor()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "compressorName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 227
    iget-object v3, p0, Lio/grpc/internal/ClientCallImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    invoke-virtual {v3, v0}, Lio/grpc/CompressorRegistry;->lookupCompressor(Ljava/lang/String;)Lio/grpc/Compressor;

    move-result-object v3

    .line 228
    .local v3, "compressor":Lio/grpc/Compressor;
    if-nez v3, :cond_3

    .line 229
    sget-object v1, Lio/grpc/internal/NoopClientStream;->INSTANCE:Lio/grpc/internal/NoopClientStream;

    iput-object v1, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    .line 230
    move-object v1, p1

    .line 246
    .local v1, "finalObserver":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;

    invoke-direct {v4, p0, v1, v0}, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;-><init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 247
    return-void

    .line 250
    .end local v1    # "finalObserver":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    .end local v3    # "compressor":Lio/grpc/Compressor;
    :cond_2
    sget-object v3, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    .line 252
    .restart local v3    # "compressor":Lio/grpc/Compressor;
    :cond_3
    iget-object v4, p0, Lio/grpc/internal/ClientCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    iget-boolean v5, p0, Lio/grpc/internal/ClientCallImpl;->fullStreamDecompression:Z

    invoke-static {p2, v4, v3, v5}, Lio/grpc/internal/ClientCallImpl;->prepareHeaders(Lio/grpc/Metadata;Lio/grpc/DecompressorRegistry;Lio/grpc/Compressor;Z)V

    .line 254
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->effectiveDeadline()Lio/grpc/Deadline;

    move-result-object v4

    .line 255
    .local v4, "effectiveDeadline":Lio/grpc/Deadline;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lio/grpc/Deadline;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 256
    .local v1, "deadlineExceeded":Z
    :goto_1
    if-nez v1, :cond_5

    .line 257
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    .line 258
    invoke-virtual {v2}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v2

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v5}, Lio/grpc/CallOptions;->getDeadline()Lio/grpc/Deadline;

    move-result-object v5

    .line 257
    invoke-static {v4, v2, v5}, Lio/grpc/internal/ClientCallImpl;->logIfContextNarrowedTimeout(Lio/grpc/Deadline;Lio/grpc/Deadline;Lio/grpc/Deadline;)V

    .line 259
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->clientStreamProvider:Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->method:Lio/grpc/MethodDescriptor;

    iget-object v6, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    iget-object v7, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    invoke-interface {v2, v5, v6, p2, v7}, Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Metadata;Lio/grpc/Context;)Lio/grpc/internal/ClientStream;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    goto :goto_3

    .line 261
    :cond_5
    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 262
    invoke-static {v5, p2, v2, v2}, Lio/grpc/internal/GrpcUtil;->getClientStreamTracers(Lio/grpc/CallOptions;Lio/grpc/Metadata;IZ)[Lio/grpc/ClientStreamTracer;

    move-result-object v2

    .line 264
    .local v2, "tracers":[Lio/grpc/ClientStreamTracer;
    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v5}, Lio/grpc/CallOptions;->getDeadline()Lio/grpc/Deadline;

    move-result-object v5

    iget-object v6, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    invoke-virtual {v6}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v6

    invoke-static {v5, v6}, Lio/grpc/internal/ClientCallImpl;->isFirstMin(Lio/grpc/Deadline;Lio/grpc/Deadline;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "CallOptions"

    goto :goto_2

    :cond_6
    const-string v5, "Context"

    .line 265
    .local v5, "deadlineName":Ljava/lang/String;
    :goto_2
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 267
    invoke-virtual {v4, v6}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    long-to-double v6, v6

    sget-wide v8, Lio/grpc/internal/ClientCallImpl;->NANO_TO_SECS:D

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 265
    const-string v7, "ClientCall started after %s deadline was exceeded .9%f seconds ago"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, "description":Ljava/lang/String;
    new-instance v7, Lio/grpc/internal/FailingClientStream;

    sget-object v8, Lio/grpc/Status;->DEADLINE_EXCEEDED:Lio/grpc/Status;

    invoke-virtual {v8, v6}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;[Lio/grpc/ClientStreamTracer;)V

    iput-object v7, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    .line 271
    .end local v2    # "tracers":[Lio/grpc/ClientStreamTracer;
    .end local v5    # "deadlineName":Ljava/lang/String;
    .end local v6    # "description":Ljava/lang/String;
    :goto_3
    iget-boolean v2, p0, Lio/grpc/internal/ClientCallImpl;->callExecutorIsDirect:Z

    if-eqz v2, :cond_7

    .line 272
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v2}, Lio/grpc/internal/ClientStream;->optimizeForDirectExecutor()V

    .line 274
    :cond_7
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v2}, Lio/grpc/CallOptions;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 275
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v5}, Lio/grpc/CallOptions;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lio/grpc/internal/ClientStream;->setAuthority(Ljava/lang/String;)V

    .line 277
    :cond_8
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v2}, Lio/grpc/CallOptions;->getMaxInboundMessageSize()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 278
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v5}, Lio/grpc/CallOptions;->getMaxInboundMessageSize()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v5}, Lio/grpc/internal/ClientStream;->setMaxInboundMessageSize(I)V

    .line 280
    :cond_9
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v2}, Lio/grpc/CallOptions;->getMaxOutboundMessageSize()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 281
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v5}, Lio/grpc/CallOptions;->getMaxOutboundMessageSize()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v5}, Lio/grpc/internal/ClientStream;->setMaxOutboundMessageSize(I)V

    .line 283
    :cond_a
    if-eqz v4, :cond_b

    .line 284
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v2, v4}, Lio/grpc/internal/ClientStream;->setDeadline(Lio/grpc/Deadline;)V

    .line 286
    :cond_b
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v2, v3}, Lio/grpc/internal/ClientStream;->setCompressor(Lio/grpc/Compressor;)V

    .line 287
    iget-boolean v2, p0, Lio/grpc/internal/ClientCallImpl;->fullStreamDecompression:Z

    if-eqz v2, :cond_c

    .line 288
    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v5, v2}, Lio/grpc/internal/ClientStream;->setFullStreamDecompression(Z)V

    .line 290
    :cond_c
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    invoke-interface {v2, v5}, Lio/grpc/internal/ClientStream;->setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V

    .line 291
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->channelCallsTracer:Lio/grpc/internal/CallTracer;

    invoke-virtual {v2}, Lio/grpc/internal/CallTracer;->reportCallStarted()V

    .line 292
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    new-instance v5, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    invoke-direct {v5, p0, p1}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;-><init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;)V

    invoke-interface {v2, v5}, Lio/grpc/internal/ClientStream;->start(Lio/grpc/internal/ClientStreamListener;)V

    .line 298
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->cancellationListener:Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lio/grpc/Context;->addListener(Lio/grpc/Context$CancellationListener;Ljava/util/concurrent/Executor;)V

    .line 299
    if-eqz v4, :cond_d

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    .line 301
    invoke-virtual {v2}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v2

    invoke-virtual {v4, v2}, Lio/grpc/Deadline;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_d

    .line 304
    invoke-direct {p0, v4}, Lio/grpc/internal/ClientCallImpl;->startDeadlineTimer(Lio/grpc/Deadline;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/ClientCallImpl;->deadlineCancellationFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 306
    :cond_d
    iget-boolean v2, p0, Lio/grpc/internal/ClientCallImpl;->cancelListenersShouldBeRemoved:Z

    if-eqz v2, :cond_e

    .line 311
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->removeContextListenerAndCancelDeadlineFuture()V

    .line 313
    :cond_e
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 461
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    const-string v1, "ClientCall.cancel"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 463
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ClientCallImpl;->cancelInternal(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 466
    nop

    .line 467
    return-void

    .line 465
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 569
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_0

    .line 570
    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0

    .line 572
    :cond_0
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    return-object v0
.end method

.method public halfClose()V
    .locals 3

    .line 500
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    const-string v1, "ClientCall.halfClose"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 502
    :try_start_0
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->halfCloseInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 505
    nop

    .line 506
    return-void

    .line 504
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method

.method public isReady()Z
    .locals 1

    .line 561
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->halfCloseCalled:Z

    if-eqz v0, :cond_0

    .line 562
    const/4 v0, 0x0

    return v0

    .line 564
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->isReady()Z

    move-result v0

    return v0
.end method

.method public request(I)V
    .locals 5
    .param p1, "numMessages"    # I

    .line 449
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    const-string v1, "ClientCall.request"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 451
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v4, "Not started"

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 452
    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v0, "Number requested must be non-negative"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->request(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 456
    nop

    .line 457
    return-void

    .line 455
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 518
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    .local p1, "message":Ljava/lang/Object;, "TReqT;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    const-string v1, "ClientCall.sendMessage"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 520
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/internal/ClientCallImpl;->sendMessageInternal(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 523
    nop

    .line 524
    return-void

    .line 522
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method

.method setCompressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/ClientCallImpl;
    .locals 0
    .param p1, "compressorRegistry"    # Lio/grpc/CompressorRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/CompressorRegistry;",
            ")",
            "Lio/grpc/internal/ClientCallImpl<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 159
    return-object p0
.end method

.method setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/ClientCallImpl;
    .locals 0
    .param p1, "decompressorRegistry"    # Lio/grpc/DecompressorRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/DecompressorRegistry;",
            ")",
            "Lio/grpc/internal/ClientCallImpl<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 153
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 154
    return-object p0
.end method

.method setFullStreamDecompression(Z)Lio/grpc/internal/ClientCallImpl;
    .locals 0
    .param p1, "fullStreamDecompression"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/grpc/internal/ClientCallImpl<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iput-boolean p1, p0, Lio/grpc/internal/ClientCallImpl;->fullStreamDecompression:Z

    .line 149
    return-object p0
.end method

.method public setMessageCompression(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 555
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 556
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setMessageCompression(Z)V

    .line 557
    return-void
.end method

.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 3
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 190
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    .local p1, "observer":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    const-string v1, "ClientCall.start"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 192
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ClientCallImpl;->startInternal(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 195
    nop

    .line 196
    return-void

    .line 194
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 581
    .local p0, "this":Lio/grpc/internal/ClientCallImpl;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "method"

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
