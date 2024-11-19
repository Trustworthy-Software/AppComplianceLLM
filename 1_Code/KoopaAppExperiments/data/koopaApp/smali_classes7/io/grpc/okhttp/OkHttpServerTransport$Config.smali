.class final Lio/grpc/okhttp/OkHttpServerTransport$Config;
.super Ljava/lang/Object;
.source "OkHttpServerTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpServerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Config"
.end annotation


# instance fields
.field final flowControlWindow:I

.field final handshakerSocketFactory:Lio/grpc/okhttp/HandshakerSocketFactory;

.field final keepAliveTimeNanos:J

.field final keepAliveTimeoutNanos:J

.field final maxConnectionAgeGraceInNanos:J

.field final maxConnectionAgeInNanos:J

.field final maxConnectionIdleNanos:J

.field final maxInboundMessageSize:I

.field final maxInboundMetadataSize:I

.field final permitKeepAliveTimeInNanos:J

.field final permitKeepAliveWithoutCalls:Z

.field final scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field final streamTracerFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation
.end field

.field final transportExecutorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field final transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/OkHttpServerBuilder;Ljava/util/List;)V
    .locals 2
    .param p1, "builder"    # Lio/grpc/okhttp/OkHttpServerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/okhttp/OkHttpServerBuilder;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;)V"
        }
    .end annotation

    .line 507
    .local p2, "streamTracerFactories":Ljava/util/List;, "Ljava/util/List<+Lio/grpc/ServerStreamTracer$Factory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const-string v0, "streamTracerFactories"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->streamTracerFactories:Ljava/util/List;

    .line 510
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    const-string v1, "transportExecutorPool"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 512
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    const-string v1, "scheduledExecutorServicePool"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    .line 514
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    const-string v1, "transportTracerFactory"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/TransportTracer$Factory;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    .line 516
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->handshakerSocketFactory:Lio/grpc/okhttp/HandshakerSocketFactory;

    const-string v1, "handshakerSocketFactory"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/HandshakerSocketFactory;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->handshakerSocketFactory:Lio/grpc/okhttp/HandshakerSocketFactory;

    .line 518
    iget-wide v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->keepAliveTimeNanos:J

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->keepAliveTimeNanos:J

    .line 519
    iget-wide v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->keepAliveTimeoutNanos:J

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->keepAliveTimeoutNanos:J

    .line 520
    iget v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->flowControlWindow:I

    iput v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    .line 521
    iget v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->maxInboundMessageSize:I

    iput v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxInboundMessageSize:I

    .line 522
    iget v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->maxInboundMetadataSize:I

    iput v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxInboundMetadataSize:I

    .line 523
    iget-wide v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionIdleInNanos:J

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxConnectionIdleNanos:J

    .line 524
    iget-boolean v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->permitKeepAliveWithoutCalls:Z

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->permitKeepAliveWithoutCalls:Z

    .line 525
    iget-wide v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->permitKeepAliveTimeInNanos:J

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->permitKeepAliveTimeInNanos:J

    .line 526
    iget-wide v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionAgeInNanos:J

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxConnectionAgeInNanos:J

    .line 527
    iget-wide v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->maxConnectionAgeGraceInNanos:J

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxConnectionAgeGraceInNanos:J

    .line 528
    return-void
.end method
