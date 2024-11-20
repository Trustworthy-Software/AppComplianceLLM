.class final Lio/grpc/internal/OobChannel;
.super Lio/grpc/ManagedChannel;
.source "OobChannel.java"

# interfaces
.implements Lio/grpc/InternalInstrumented;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ManagedChannel;",
        "Lio/grpc/InternalInstrumented<",
        "Lio/grpc/InternalChannelz$ChannelStats;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final authority:Ljava/lang/String;

.field private final channelCallsTracer:Lio/grpc/internal/CallTracer;

.field private final channelTracer:Lio/grpc/internal/ChannelTracer;

.field private final channelz:Lio/grpc/InternalChannelz;

.field private final deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final delayedTransport:Lio/grpc/internal/DelayedClientTransport;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final executorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final logId:Lio/grpc/InternalLogId;

.field private volatile shutdown:Z

.field private subchannel:Lio/grpc/internal/InternalSubchannel;

.field private subchannelImpl:Lio/grpc/internal/AbstractSubchannel;

.field private subchannelPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

.field private final terminatedLatch:Ljava/util/concurrent/CountDownLatch;

.field private final timeProvider:Lio/grpc/internal/TimeProvider;

.field private final transportProvider:Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lio/grpc/internal/OobChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/OobChannel;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lio/grpc/internal/ObjectPool;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/SynchronizationContext;Lio/grpc/internal/CallTracer;Lio/grpc/internal/ChannelTracer;Lio/grpc/InternalChannelz;Lio/grpc/internal/TimeProvider;)V
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .param p3, "deadlineCancellationExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p4, "syncContext"    # Lio/grpc/SynchronizationContext;
    .param p5, "callsTracer"    # Lio/grpc/internal/CallTracer;
    .param p6, "channelTracer"    # Lio/grpc/internal/ChannelTracer;
    .param p7, "channelz"    # Lio/grpc/InternalChannelz;
    .param p8, "timeProvider"    # Lio/grpc/internal/TimeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/SynchronizationContext;",
            "Lio/grpc/internal/CallTracer;",
            "Lio/grpc/internal/ChannelTracer;",
            "Lio/grpc/InternalChannelz;",
            "Lio/grpc/internal/TimeProvider;",
            ")V"
        }
    .end annotation

    .line 108
    .local p2, "executorPool":Lio/grpc/internal/ObjectPool;, "Lio/grpc/internal/ObjectPool<+Ljava/util/concurrent/Executor;>;"
    invoke-direct {p0}, Lio/grpc/ManagedChannel;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/grpc/internal/OobChannel;->terminatedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 86
    new-instance v0, Lio/grpc/internal/OobChannel$1;

    invoke-direct {v0, p0}, Lio/grpc/internal/OobChannel$1;-><init>(Lio/grpc/internal/OobChannel;)V

    iput-object v0, p0, Lio/grpc/internal/OobChannel;->transportProvider:Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;

    .line 109
    const-string v0, "authority"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/OobChannel;->authority:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/OobChannel;->logId:Lio/grpc/InternalLogId;

    .line 111
    const-string v0, "executorPool"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/OobChannel;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 112
    invoke-interface {p2}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    const-string v1, "executor"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/internal/OobChannel;->executor:Ljava/util/concurrent/Executor;

    .line 113
    const-string v1, "deadlineCancellationExecutor"

    invoke-static {p3, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v1, p0, Lio/grpc/internal/OobChannel;->deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 115
    new-instance v1, Lio/grpc/internal/DelayedClientTransport;

    invoke-direct {v1, v0, p4}, Lio/grpc/internal/DelayedClientTransport;-><init>(Ljava/util/concurrent/Executor;Lio/grpc/SynchronizationContext;)V

    iput-object v1, p0, Lio/grpc/internal/OobChannel;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    .line 116
    invoke-static {p7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalChannelz;

    iput-object v0, p0, Lio/grpc/internal/OobChannel;->channelz:Lio/grpc/InternalChannelz;

    .line 117
    new-instance v0, Lio/grpc/internal/OobChannel$2;

    invoke-direct {v0, p0}, Lio/grpc/internal/OobChannel$2;-><init>(Lio/grpc/internal/OobChannel;)V

    invoke-virtual {v1, v0}, Lio/grpc/internal/DelayedClientTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;

    .line 138
    iput-object p5, p0, Lio/grpc/internal/OobChannel;->channelCallsTracer:Lio/grpc/internal/CallTracer;

    .line 139
    const-string v0, "channelTracer"

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ChannelTracer;

    iput-object v0, p0, Lio/grpc/internal/OobChannel;->channelTracer:Lio/grpc/internal/ChannelTracer;

    .line 140
    const-string v0, "timeProvider"

    invoke-static {p8, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/TimeProvider;

    iput-object v0, p0, Lio/grpc/internal/OobChannel;->timeProvider:Lio/grpc/internal/TimeProvider;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/OobChannel;)Lio/grpc/internal/DelayedClientTransport;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/OobChannel;

    .line 66
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/OobChannel;)Lio/grpc/internal/AbstractSubchannel;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/OobChannel;

    .line 66
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->subchannelImpl:Lio/grpc/internal/AbstractSubchannel;

    return-object v0
.end method


# virtual methods
.method public authority()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->terminatedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method getInternalSubchannel()Lio/grpc/internal/InternalSubchannel;
    .locals 1

    .line 305
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->subchannel:Lio/grpc/internal/InternalSubchannel;

    return-object v0
.end method

.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    .line 324
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->logId:Lio/grpc/InternalLogId;

    return-object v0
.end method

.method public getState(Z)Lio/grpc/ConnectivityState;
    .locals 1
    .param p1, "requestConnectionIgnored"    # Z

    .line 228
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->subchannel:Lio/grpc/internal/InternalSubchannel;

    if-nez v0, :cond_0

    .line 229
    sget-object v0, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    return-object v0

    .line 231
    :cond_0
    invoke-virtual {v0}, Lio/grpc/internal/InternalSubchannel;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    return-object v0
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;"
        }
    .end annotation

    .line 310
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 311
    .local v0, "ret":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lio/grpc/InternalChannelz$ChannelStats;>;"
    new-instance v1, Lio/grpc/InternalChannelz$ChannelStats$Builder;

    invoke-direct {v1}, Lio/grpc/InternalChannelz$ChannelStats$Builder;-><init>()V

    .line 312
    .local v1, "builder":Lio/grpc/InternalChannelz$ChannelStats$Builder;
    iget-object v2, p0, Lio/grpc/internal/OobChannel;->channelCallsTracer:Lio/grpc/internal/CallTracer;

    invoke-virtual {v2, v1}, Lio/grpc/internal/CallTracer;->updateBuilder(Lio/grpc/InternalChannelz$ChannelStats$Builder;)V

    .line 313
    iget-object v2, p0, Lio/grpc/internal/OobChannel;->channelTracer:Lio/grpc/internal/ChannelTracer;

    invoke-virtual {v2, v1}, Lio/grpc/internal/ChannelTracer;->updateBuilder(Lio/grpc/InternalChannelz$ChannelStats$Builder;)V

    .line 314
    iget-object v2, p0, Lio/grpc/internal/OobChannel;->authority:Ljava/lang/String;

    .line 315
    invoke-virtual {v1, v2}, Lio/grpc/InternalChannelz$ChannelStats$Builder;->setTarget(Ljava/lang/String;)Lio/grpc/InternalChannelz$ChannelStats$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/OobChannel;->subchannel:Lio/grpc/internal/InternalSubchannel;

    .line 316
    invoke-virtual {v3}, Lio/grpc/internal/InternalSubchannel;->getState()Lio/grpc/ConnectivityState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/InternalChannelz$ChannelStats$Builder;->setState(Lio/grpc/ConnectivityState;)Lio/grpc/InternalChannelz$ChannelStats$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/OobChannel;->subchannel:Lio/grpc/internal/InternalSubchannel;

    .line 317
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/InternalChannelz$ChannelStats$Builder;->setSubchannels(Ljava/util/List;)Lio/grpc/InternalChannelz$ChannelStats$Builder;

    .line 318
    invoke-virtual {v1}, Lio/grpc/InternalChannelz$ChannelStats$Builder;->build()Lio/grpc/InternalChannelz$ChannelStats;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 319
    return-object v0
.end method

.method getSubchannel()Lio/grpc/LoadBalancer$Subchannel;
    .locals 1

    .line 301
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->subchannelImpl:Lio/grpc/internal/AbstractSubchannel;

    return-object v0
.end method

.method handleSubchannelStateChange(Lio/grpc/ConnectivityStateInfo;)V
    .locals 4
    .param p1, "newState"    # Lio/grpc/ConnectivityStateInfo;

    .line 255
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->channelTracer:Lio/grpc/internal/ChannelTracer;

    new-instance v1, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    invoke-direct {v1}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 257
    invoke-virtual {p1}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setDescription(Ljava/lang/String;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v1

    sget-object v2, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->CT_INFO:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    .line 258
    invoke-virtual {v1, v2}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setSeverity(Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/OobChannel;->timeProvider:Lio/grpc/internal/TimeProvider;

    .line 259
    invoke-interface {v2}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setTimestampNanos(J)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->build()Lio/grpc/InternalChannelz$ChannelTrace$Event;

    move-result-object v1

    .line 255
    invoke-virtual {v0, v1}, Lio/grpc/internal/ChannelTracer;->reportEvent(Lio/grpc/InternalChannelz$ChannelTrace$Event;)V

    .line 261
    sget-object v0, Lio/grpc/internal/OobChannel$4;->$SwitchMap$io$grpc$ConnectivityState:[I

    invoke-virtual {p1}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/ConnectivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 283
    :pswitch_0
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    new-instance v1, Lio/grpc/internal/OobChannel$1OobErrorPicker;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/OobChannel$1OobErrorPicker;-><init>(Lio/grpc/internal/OobChannel;Lio/grpc/ConnectivityStateInfo;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/DelayedClientTransport;->reprocess(Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 284
    goto :goto_0

    .line 264
    :pswitch_1
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    iget-object v1, p0, Lio/grpc/internal/OobChannel;->subchannelPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    invoke-virtual {v0, v1}, Lio/grpc/internal/DelayedClientTransport;->reprocess(Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 265
    nop

    .line 288
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method handleSubchannelTerminated()V
    .locals 2

    .line 292
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->channelz:Lio/grpc/InternalChannelz;

    invoke-virtual {v0, p0}, Lio/grpc/InternalChannelz;->removeSubchannel(Lio/grpc/InternalInstrumented;)V

    .line 295
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->executorPool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/internal/OobChannel;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->terminatedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 297
    return-void
.end method

.method public isShutdown()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lio/grpc/internal/OobChannel;->shutdown:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 4

    .line 218
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->terminatedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;
    .locals 9
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/ClientCall<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 206
    .local p1, "methodDescriptor":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TRequestT;TResponseT;>;"
    new-instance v8, Lio/grpc/internal/ClientCallImpl;

    .line 207
    invoke-virtual {p2}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/OobChannel;->executor:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    :goto_0
    move-object v2, v0

    iget-object v4, p0, Lio/grpc/internal/OobChannel;->transportProvider:Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;

    iget-object v5, p0, Lio/grpc/internal/OobChannel;->deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lio/grpc/internal/OobChannel;->channelCallsTracer:Lio/grpc/internal/CallTracer;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lio/grpc/internal/ClientCallImpl;-><init>(Lio/grpc/MethodDescriptor;Ljava/util/concurrent/Executor;Lio/grpc/CallOptions;Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/CallTracer;Lio/grpc/InternalConfigSelector;)V

    .line 206
    return-object v8
.end method

.method public resetConnectBackoff()V
    .locals 1

    .line 337
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->subchannel:Lio/grpc/internal/InternalSubchannel;

    invoke-virtual {v0}, Lio/grpc/internal/InternalSubchannel;->resetConnectBackoff()V

    .line 338
    return-void
.end method

.method setSubchannel(Lio/grpc/internal/InternalSubchannel;)V
    .locals 4
    .param p1, "subchannel"    # Lio/grpc/internal/InternalSubchannel;

    .line 145
    sget-object v0, Lio/grpc/internal/OobChannel;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "[{0}] Created with [{1}]"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iput-object p1, p0, Lio/grpc/internal/OobChannel;->subchannel:Lio/grpc/internal/InternalSubchannel;

    .line 147
    new-instance v0, Lio/grpc/internal/OobChannel$3;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/OobChannel$3;-><init>(Lio/grpc/internal/OobChannel;Lio/grpc/internal/InternalSubchannel;)V

    iput-object v0, p0, Lio/grpc/internal/OobChannel;->subchannelImpl:Lio/grpc/internal/AbstractSubchannel;

    .line 195
    new-instance v0, Lio/grpc/internal/OobChannel$1OobSubchannelPicker;

    invoke-direct {v0, p0}, Lio/grpc/internal/OobChannel$1OobSubchannelPicker;-><init>(Lio/grpc/internal/OobChannel;)V

    iput-object v0, p0, Lio/grpc/internal/OobChannel;->subchannelPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 196
    iget-object v1, p0, Lio/grpc/internal/OobChannel;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    invoke-virtual {v1, v0}, Lio/grpc/internal/DelayedClientTransport;->reprocess(Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 197
    return-void
.end method

.method public shutdown()Lio/grpc/ManagedChannel;
    .locals 3

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/OobChannel;->shutdown:Z

    .line 237
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v2, "OobChannel.shutdown() called"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/DelayedClientTransport;->shutdown(Lio/grpc/Status;)V

    .line 238
    return-object p0
.end method

.method public shutdownNow()Lio/grpc/ManagedChannel;
    .locals 3

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/OobChannel;->shutdown:Z

    .line 249
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 250
    const-string v2, "OobChannel.shutdownNow() called"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Lio/grpc/internal/DelayedClientTransport;->shutdownNow(Lio/grpc/Status;)V

    .line 251
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 329
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/OobChannel;->logId:Lio/grpc/InternalLogId;

    .line 330
    invoke-virtual {v1}, Lio/grpc/InternalLogId;->getId()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/OobChannel;->authority:Ljava/lang/String;

    .line 331
    const-string v2, "authority"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    return-object v0
.end method

.method updateAddresses(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)V"
        }
    .end annotation

    .line 200
    .local p1, "eag":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    iget-object v0, p0, Lio/grpc/internal/OobChannel;->subchannel:Lio/grpc/internal/InternalSubchannel;

    invoke-virtual {v0, p1}, Lio/grpc/internal/InternalSubchannel;->updateAddresses(Ljava/util/List;)V

    .line 201
    return-void
.end method
