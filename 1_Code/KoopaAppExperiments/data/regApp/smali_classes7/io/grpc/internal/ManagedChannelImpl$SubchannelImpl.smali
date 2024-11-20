.class final Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;
.super Lio/grpc/internal/AbstractSubchannel;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubchannelImpl"
.end annotation


# instance fields
.field addressGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation
.end field

.field final args:Lio/grpc/LoadBalancer$CreateSubchannelArgs;

.field delayedShutdownTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

.field final helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

.field shutdown:Z

.field started:Z

.field subchannel:Lio/grpc/internal/InternalSubchannel;

.field final subchannelLogId:Lio/grpc/InternalLogId;

.field final subchannelLogger:Lio/grpc/internal/ChannelLoggerImpl;

.field final subchannelTracer:Lio/grpc/internal/ChannelTracer;

.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/LoadBalancer$CreateSubchannelArgs;Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;)V
    .locals 8
    .param p2, "args"    # Lio/grpc/LoadBalancer$CreateSubchannelArgs;
    .param p3, "helper"    # Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    .line 1944
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Lio/grpc/internal/AbstractSubchannel;-><init>()V

    .line 1945
    const-string v0, "args"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    invoke-virtual {p2}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->getAddresses()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->addressGroups:Ljava/util/List;

    .line 1947
    invoke-static {p1}, Lio/grpc/internal/ManagedChannelImpl;->access$8000(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1948
    nop

    .line 1949
    invoke-virtual {p2}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->stripOverrideAuthorityAttributes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1950
    .local v0, "eagsWithoutOverrideAttr":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-virtual {p2}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->toBuilder()Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->build()Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    move-result-object p2

    .line 1952
    .end local v0    # "eagsWithoutOverrideAttr":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    :cond_0
    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->args:Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    .line 1953
    const-string v0, "helper"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    .line 1954
    const-string v0, "Subchannel"

    invoke-virtual {p1}, Lio/grpc/internal/ManagedChannelImpl;->authority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannelLogId:Lio/grpc/InternalLogId;

    .line 1955
    new-instance v0, Lio/grpc/internal/ChannelTracer;

    .line 1956
    invoke-static {p1}, Lio/grpc/internal/ManagedChannelImpl;->access$5400(Lio/grpc/internal/ManagedChannelImpl;)I

    move-result v4

    invoke-static {p1}, Lio/grpc/internal/ManagedChannelImpl;->access$5300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/TimeProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    move-result-wide v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subchannel for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1957
    invoke-virtual {p2}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lio/grpc/internal/ChannelTracer;-><init>(Lio/grpc/InternalLogId;IJLjava/lang/String;)V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannelTracer:Lio/grpc/internal/ChannelTracer;

    .line 1958
    new-instance v1, Lio/grpc/internal/ChannelLoggerImpl;

    invoke-static {p1}, Lio/grpc/internal/ManagedChannelImpl;->access$5300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/TimeProvider;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lio/grpc/internal/ChannelLoggerImpl;-><init>(Lio/grpc/internal/ChannelTracer;Lio/grpc/internal/TimeProvider;)V

    iput-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannelLogger:Lio/grpc/internal/ChannelLoggerImpl;

    .line 1959
    return-void
.end method

.method private stripOverrideAuthorityAttributes(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation

    .line 2133
    .local p1, "eags":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2134
    .local v0, "eagsWithoutOverrideAttr":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/EquivalentAddressGroup;

    .line 2135
    .local v2, "eag":Lio/grpc/EquivalentAddressGroup;
    new-instance v3, Lio/grpc/EquivalentAddressGroup;

    .line 2136
    invoke-virtual {v2}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v4

    .line 2137
    invoke-virtual {v2}, Lio/grpc/EquivalentAddressGroup;->getAttributes()Lio/grpc/Attributes;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v5

    sget-object v6, Lio/grpc/EquivalentAddressGroup;->ATTR_AUTHORITY_OVERRIDE:Lio/grpc/Attributes$Key;

    invoke-virtual {v5, v6}, Lio/grpc/Attributes$Builder;->discard(Lio/grpc/Attributes$Key;)Lio/grpc/Attributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lio/grpc/EquivalentAddressGroup;-><init>(Ljava/util/List;Lio/grpc/Attributes;)V

    .line 2138
    .local v3, "eagWithoutOverrideAttr":Lio/grpc/EquivalentAddressGroup;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2139
    .end local v2    # "eag":Lio/grpc/EquivalentAddressGroup;
    .end local v3    # "eagWithoutOverrideAttr":Lio/grpc/EquivalentAddressGroup;
    goto :goto_0

    .line 2140
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public asChannel()Lio/grpc/Channel;
    .locals 8

    .line 2102
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->started:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2103
    new-instance v0, Lio/grpc/internal/SubchannelChannel;

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannel:Lio/grpc/internal/InternalSubchannel;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 2104
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$8100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 2105
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$2300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 2106
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$5700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/CallTracer$Factory;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/CallTracer$Factory;->create()Lio/grpc/internal/CallTracer;

    move-result-object v6

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lio/grpc/internal/SubchannelChannel;-><init>(Lio/grpc/internal/InternalSubchannel;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/CallTracer;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 2103
    return-object v0
.end method

.method public getAllAddresses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation

    .line 2085
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 2086
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->started:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2087
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->addressGroups:Ljava/util/List;

    return-object v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 2092
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->args:Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getChannelLogger()Lio/grpc/ChannelLogger;
    .locals 1

    .line 2118
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannelLogger:Lio/grpc/internal/ChannelLoggerImpl;

    return-object v0
.end method

.method getInstrumentedInternalSubchannel()Lio/grpc/InternalInstrumented;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;"
        }
    .end annotation

    .line 2024
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->started:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2025
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannel:Lio/grpc/internal/InternalSubchannel;

    return-object v0
.end method

.method public getInternalSubchannel()Ljava/lang/Object;
    .locals 2

    .line 2112
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->started:Z

    const-string v1, "Subchannel is not started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2113
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannel:Lio/grpc/internal/InternalSubchannel;

    return-object v0
.end method

.method public requestConnection()V
    .locals 2

    .line 2078
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 2079
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->started:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2080
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannel:Lio/grpc/internal/InternalSubchannel;

    invoke-virtual {v0}, Lio/grpc/internal/InternalSubchannel;->obtainActiveTransport()Lio/grpc/internal/ClientTransport;

    .line 2081
    return-void
.end method

.method public shutdown()V
    .locals 7

    .line 2030
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 2031
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannel:Lio/grpc/internal/InternalSubchannel;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2033
    iput-boolean v1, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->shutdown:Z

    .line 2034
    return-void

    .line 2036
    :cond_0
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->shutdown:Z

    if-eqz v0, :cond_2

    .line 2037
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$5100(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->delayedShutdownTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    if-eqz v0, :cond_1

    .line 2040
    invoke-virtual {v0}, Lio/grpc/SynchronizationContext$ScheduledHandle;->cancel()V

    .line 2041
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->delayedShutdownTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    goto :goto_0

    .line 2044
    :cond_1
    return-void

    .line 2047
    :cond_2
    iput-boolean v1, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->shutdown:Z

    .line 2057
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$5100(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2065
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v1, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v2, Lio/grpc/internal/LogExceptionRunnable;

    new-instance v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ShutdownSubchannel;

    invoke-direct {v0, p0}, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ShutdownSubchannel;-><init>(Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;)V

    invoke-direct {v2, v0}, Lio/grpc/internal/LogExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 2068
    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 2065
    invoke-virtual/range {v1 .. v6}, Lio/grpc/SynchronizationContext;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->delayedShutdownTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 2069
    return-void

    .line 2073
    :cond_3
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannel:Lio/grpc/internal/InternalSubchannel;

    sget-object v1, Lio/grpc/internal/ManagedChannelImpl;->SHUTDOWN_STATUS:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Lio/grpc/internal/InternalSubchannel;->shutdown(Lio/grpc/Status;)V

    .line 2074
    return-void
.end method

.method public start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V
    .locals 19
    .param p1, "listener"    # Lio/grpc/LoadBalancer$SubchannelStateListener;

    .line 1963
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v1}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 1964
    iget-boolean v1, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->started:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "already started"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1965
    iget-boolean v1, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->shutdown:Z

    xor-int/2addr v1, v2

    const-string v3, "already shutdown"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1966
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$5100(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v3, "Channel is being terminated"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1967
    iput-boolean v2, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->started:Z

    .line 1994
    new-instance v1, Lio/grpc/internal/InternalSubchannel;

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->args:Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    .line 1995
    invoke-virtual {v2}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->getAddresses()Ljava/util/List;

    move-result-object v5

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1996
    invoke-virtual {v2}, Lio/grpc/internal/ManagedChannelImpl;->authority()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1997
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$6100(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1998
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$6200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/BackoffPolicy$Provider;

    move-result-object v8

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1999
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$2300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object v9

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 2000
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$2300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 2001
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$6300(Lio/grpc/internal/ManagedChannelImpl;)Lcom/google/common/base/Supplier;

    move-result-object v11

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v12, v2, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v13, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;

    move-object/from16 v2, p1

    invoke-direct {v13, v0, v2}, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl$1ManagedInternalSubchannelCallback;-><init>(Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 2004
    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImpl;->access$5800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;

    move-result-object v14

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 2005
    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImpl;->access$5700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/CallTracer$Factory;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/internal/CallTracer$Factory;->create()Lio/grpc/internal/CallTracer;

    move-result-object v15

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannelTracer:Lio/grpc/internal/ChannelTracer;

    iget-object v4, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannelLogId:Lio/grpc/InternalLogId;

    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannelLogger:Lio/grpc/internal/ChannelLoggerImpl;

    move-object/from16 v17, v4

    move-object v4, v1

    move-object/from16 v16, v3

    move-object/from16 v18, v2

    invoke-direct/range {v4 .. v18}, Lio/grpc/internal/InternalSubchannel;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lio/grpc/internal/BackoffPolicy$Provider;Lio/grpc/internal/ClientTransportFactory;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;Lio/grpc/SynchronizationContext;Lio/grpc/internal/InternalSubchannel$Callback;Lio/grpc/InternalChannelz;Lio/grpc/internal/CallTracer;Lio/grpc/internal/ChannelTracer;Lio/grpc/InternalLogId;Lio/grpc/ChannelLogger;)V

    .line 2010
    .local v1, "internalSubchannel":Lio/grpc/internal/InternalSubchannel;
    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ChannelTracer;

    move-result-object v2

    new-instance v3, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    invoke-direct {v3}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;-><init>()V

    .line 2011
    const-string v4, "Child Subchannel started"

    invoke-virtual {v3, v4}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setDescription(Ljava/lang/String;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v3

    sget-object v4, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->CT_INFO:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    .line 2012
    invoke-virtual {v3, v4}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setSeverity(Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v3

    iget-object v4, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 2013
    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$5300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/TimeProvider;

    move-result-object v4

    invoke-interface {v4}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setTimestampNanos(J)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v3

    .line 2014
    invoke-virtual {v3, v1}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setSubchannelRef(Lio/grpc/InternalWithLogId;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v3

    .line 2015
    invoke-virtual {v3}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->build()Lio/grpc/InternalChannelz$ChannelTrace$Event;

    move-result-object v3

    .line 2010
    invoke-virtual {v2, v3}, Lio/grpc/internal/ChannelTracer;->reportEvent(Lio/grpc/InternalChannelz$ChannelTrace$Event;)V

    .line 2017
    iput-object v1, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannel:Lio/grpc/internal/InternalSubchannel;

    .line 2018
    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$5800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/grpc/InternalChannelz;->addSubchannel(Lio/grpc/InternalInstrumented;)V

    .line 2019
    iget-object v2, v0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$700(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2020
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2097
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannelLogId:Lio/grpc/InternalLogId;

    invoke-virtual {v0}, Lio/grpc/InternalLogId;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAddresses(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)V"
        }
    .end annotation

    .line 2123
    .local p1, "addrs":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 2124
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->addressGroups:Ljava/util/List;

    .line 2125
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$8000(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2126
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->stripOverrideAuthorityAttributes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2128
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;->subchannel:Lio/grpc/internal/InternalSubchannel;

    invoke-virtual {v0, p1}, Lio/grpc/internal/InternalSubchannel;->updateAddresses(Ljava/util/List;)V

    .line 2129
    return-void
.end method
