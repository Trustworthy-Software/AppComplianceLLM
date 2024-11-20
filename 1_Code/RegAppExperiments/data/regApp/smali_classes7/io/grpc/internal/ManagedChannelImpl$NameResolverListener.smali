.class final Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;
.super Lio/grpc/NameResolver$Listener2;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NameResolverListener"
.end annotation


# instance fields
.field final helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

.field final resolver:Lio/grpc/NameResolver;

.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/NameResolver;)V
    .locals 0
    .param p2, "helperImpl"    # Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;
    .param p3, "resolver"    # Lio/grpc/NameResolver;

    .line 1733
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Lio/grpc/NameResolver$Listener2;-><init>()V

    .line 1734
    const-string p1, "helperImpl"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    .line 1735
    const-string p1, "resolver"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/NameResolver;

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->resolver:Lio/grpc/NameResolver;

    .line 1736
    return-void
.end method

.method static synthetic access$7800(Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    .line 1729
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->scheduleExponentialBackOffInSyncContext()V

    return-void
.end method

.method static synthetic access$7900(Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;Lio/grpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;
    .param p1, "x1"    # Lio/grpc/Status;

    .line 1729
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->handleErrorInSyncContext(Lio/grpc/Status;)V

    return-void
.end method

.method private handleErrorInSyncContext(Lio/grpc/Status;)V
    .locals 4
    .param p1, "error"    # Lio/grpc/Status;

    .line 1893
    sget-object v0, Lio/grpc/internal/ManagedChannelImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1894
    invoke-virtual {v2}, Lio/grpc/internal/ManagedChannelImpl;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 1893
    const-string v3, "[{0}] Failed to resolve name. status={1}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1895
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$7600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->onConfigError()V

    .line 1896
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$7100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->ERROR:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    if-eq v0, v1, :cond_0

    .line 1897
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$3100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->WARNING:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "Failed to resolve name: {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1898
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    sget-object v1, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->ERROR:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$7102(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$ResolutionState;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    .line 1901
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1902
    return-void

    .line 1905
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->lb:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    .line 1907
    invoke-direct {p0}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->scheduleExponentialBackOffInSyncContext()V

    .line 1908
    return-void
.end method

.method private scheduleExponentialBackOffInSyncContext()V
    .locals 9

    .line 1911
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext$ScheduledHandle;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1916
    return-void

    .line 1918
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$7200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/BackoffPolicy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1919
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$6200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/BackoffPolicy$Provider;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/BackoffPolicy$Provider;->get()Lio/grpc/internal/BackoffPolicy;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$7202(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/BackoffPolicy;)Lio/grpc/internal/BackoffPolicy;

    .line 1921
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$7200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/BackoffPolicy;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/BackoffPolicy;->nextBackoffNanos()J

    move-result-wide v7

    .line 1922
    .local v7, "delayNanos":J
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$3100(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v0

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    .line 1924
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1922
    const-string v3, "Scheduling DNS resolution backoff for {0} ns"

    invoke-virtual {v0, v1, v3, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1925
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v1, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v2, Lio/grpc/internal/ManagedChannelImpl$DelayedNameResolverRefresh;

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {v2, v3}, Lio/grpc/internal/ManagedChannelImpl$DelayedNameResolverRefresh;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1928
    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImpl;->access$2300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 1926
    move-wide v3, v7

    invoke-virtual/range {v1 .. v6}, Lio/grpc/SynchronizationContext;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object v1

    .line 1925
    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$1202(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/SynchronizationContext$ScheduledHandle;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 1929
    return-void
.end method


# virtual methods
.method public onError(Lio/grpc/Status;)V
    .locals 2
    .param p1, "error"    # Lio/grpc/Status;

    .line 1881
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "the error status must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1889
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NameResolverErrorHandler;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NameResolverErrorHandler;-><init>(Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;Lio/grpc/Status;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1890
    return-void
.end method

.method public onResult(Lio/grpc/NameResolver$ResolutionResult;)V
    .locals 2
    .param p1, "resolutionResult"    # Lio/grpc/NameResolver$ResolutionResult;

    .line 1876
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;-><init>(Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;Lio/grpc/NameResolver$ResolutionResult;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 1877
    return-void
.end method
