.class public final Lio/grpc/util/OutlierDetectionLoadBalancer;
.super Lio/grpc/LoadBalancer;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$FailurePercentageOutlierEjectionAlgorithm;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierEjectionAlgorithm;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$DetectionTimer;
    }
.end annotation


# static fields
.field private static final ADDRESS_TRACKER_ATTR_KEY:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final childHelper:Lio/grpc/LoadBalancer$Helper;

.field private detectionTimerHandle:Lio/grpc/SynchronizationContext$ScheduledHandle;

.field private detectionTimerStartNanos:Ljava/lang/Long;

.field private final switchLb:Lio/grpc/util/GracefulSwitchLoadBalancer;

.field private final syncContext:Lio/grpc/SynchronizationContext;

.field private timeProvider:Lio/grpc/internal/TimeProvider;

.field private final timeService:Ljava/util/concurrent/ScheduledExecutorService;

.field final trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    nop

    .line 77
    const-string v0, "addressTrackerKey"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/util/OutlierDetectionLoadBalancer;->ADDRESS_TRACKER_ATTR_KEY:Lio/grpc/Attributes$Key;

    .line 76
    return-void
.end method

.method public constructor <init>(Lio/grpc/LoadBalancer$Helper;Lio/grpc/internal/TimeProvider;)V
    .locals 2
    .param p1, "helper"    # Lio/grpc/LoadBalancer$Helper;
    .param p2, "timeProvider"    # Lio/grpc/internal/TimeProvider;

    .line 82
    invoke-direct {p0}, Lio/grpc/LoadBalancer;-><init>()V

    .line 83
    new-instance v0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;

    const-string v1, "helper"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/LoadBalancer$Helper;

    invoke-direct {v0, p0, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer;Lio/grpc/LoadBalancer$Helper;)V

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->childHelper:Lio/grpc/LoadBalancer$Helper;

    .line 84
    new-instance v1, Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-direct {v1, v0}, Lio/grpc/util/GracefulSwitchLoadBalancer;-><init>(Lio/grpc/LoadBalancer$Helper;)V

    iput-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->switchLb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    .line 85
    new-instance v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-direct {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;-><init>()V

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    .line 86
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Helper;->getSynchronizationContext()Lio/grpc/SynchronizationContext;

    move-result-object v0

    const-string v1, "syncContext"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/SynchronizationContext;

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->syncContext:Lio/grpc/SynchronizationContext;

    .line 87
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Helper;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-string v1, "timeService"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->timeService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 88
    iput-object p2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->timeProvider:Lio/grpc/internal/TimeProvider;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lio/grpc/util/OutlierDetectionLoadBalancer;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/OutlierDetectionLoadBalancer;

    .line 63
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerStartNanos:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$002(Lio/grpc/util/OutlierDetectionLoadBalancer;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/OutlierDetectionLoadBalancer;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 63
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerStartNanos:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$100(Lio/grpc/util/OutlierDetectionLoadBalancer;)Lio/grpc/internal/TimeProvider;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/OutlierDetectionLoadBalancer;

    .line 63
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->timeProvider:Lio/grpc/internal/TimeProvider;

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .line 63
    invoke-static {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer;->hasSingleAddress(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Lio/grpc/Attributes$Key;
    .locals 1

    .line 63
    sget-object v0, Lio/grpc/util/OutlierDetectionLoadBalancer;->ADDRESS_TRACKER_ATTR_KEY:Lio/grpc/Attributes$Key;

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;
    .param p1, "x1"    # I

    .line 63
    invoke-static {p0, p1}, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackersWithVolume(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static hasSingleAddress(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)Z"
        }
    .end annotation

    .line 840
    .local p0, "addressGroups":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    const/4 v0, 0x0

    .line 841
    .local v0, "addressCount":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/EquivalentAddressGroup;

    .line 842
    .local v2, "addressGroup":Lio/grpc/EquivalentAddressGroup;
    invoke-virtual {v2}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 843
    if-le v0, v3, :cond_0

    .line 844
    const/4 v1, 0x0

    return v1

    .line 846
    .end local v2    # "addressGroup":Lio/grpc/EquivalentAddressGroup;
    :cond_0
    goto :goto_0

    .line 847
    :cond_1
    return v3
.end method

.method private static trackersWithVolume(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;I)Ljava/util/List;
    .locals 7
    .param p0, "trackerMap"    # Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;
    .param p1, "volume"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;",
            "I)",
            "Ljava/util/List<",
            "Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;",
            ">;"
        }
    .end annotation

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v0, "trackersWithVolume":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;>;"
    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 831
    .local v2, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual {v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveVolume()J

    move-result-wide v3

    int-to-long v5, p1

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 832
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    .end local v2    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    :cond_0
    goto :goto_0

    .line 835
    :cond_1
    return-object v0
.end method


# virtual methods
.method public acceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Z
    .locals 12
    .param p1, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 93
    nop

    .line 94
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getLoadBalancingPolicyConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    .line 97
    .local v0, "config":Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/SocketAddress;>;"
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/EquivalentAddressGroup;

    .line 99
    .local v3, "addressGroup":Lio/grpc/EquivalentAddressGroup;
    invoke-virtual {v3}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    .end local v3    # "addressGroup":Lio/grpc/EquivalentAddressGroup;
    goto :goto_0

    .line 101
    :cond_0
    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 103
    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v2, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->updateTrackerConfigs(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)V

    .line 106
    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v2, v0, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->putNewTrackers(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;Ljava/util/Collection;)V

    .line 108
    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->switchLb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    iget-object v3, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->childPolicy:Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

    invoke-virtual {v3}, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->getProvider()Lio/grpc/LoadBalancerProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/util/GracefulSwitchLoadBalancer;->switchTo(Lio/grpc/LoadBalancer$Factory;)V

    .line 112
    invoke-virtual {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->outlierDetectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerStartNanos:Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 117
    iget-object v2, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->intervalNanos:Ljava/lang/Long;

    .local v2, "initialDelayNanos":Ljava/lang/Long;
    goto :goto_1

    .line 121
    .end local v2    # "initialDelayNanos":Ljava/lang/Long;
    :cond_1
    iget-object v2, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->intervalNanos:Ljava/lang/Long;

    .line 122
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->timeProvider:Lio/grpc/internal/TimeProvider;

    invoke-interface {v4}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    move-result-wide v4

    iget-object v6, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerStartNanos:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 121
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 127
    .restart local v2    # "initialDelayNanos":Ljava/lang/Long;
    :goto_1
    iget-object v3, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerHandle:Lio/grpc/SynchronizationContext$ScheduledHandle;

    if-eqz v3, :cond_2

    .line 128
    invoke-virtual {v3}, Lio/grpc/SynchronizationContext$ScheduledHandle;->cancel()V

    .line 129
    iget-object v3, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v3}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->resetCallCounters()V

    .line 132
    :cond_2
    iget-object v4, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v5, Lio/grpc/util/OutlierDetectionLoadBalancer$DetectionTimer;

    invoke-direct {v5, p0, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$DetectionTimer;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer;Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)V

    .line 133
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v3, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->intervalNanos:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v11, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->timeService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 132
    invoke-virtual/range {v4 .. v11}, Lio/grpc/SynchronizationContext;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerHandle:Lio/grpc/SynchronizationContext$ScheduledHandle;

    .end local v2    # "initialDelayNanos":Ljava/lang/Long;
    goto :goto_2

    .line 134
    :cond_3
    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerHandle:Lio/grpc/SynchronizationContext$ScheduledHandle;

    if-eqz v2, :cond_4

    .line 137
    invoke-virtual {v2}, Lio/grpc/SynchronizationContext$ScheduledHandle;->cancel()V

    .line 138
    const/4 v2, 0x0

    iput-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->detectionTimerStartNanos:Ljava/lang/Long;

    .line 139
    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->cancelTracking()V

    goto :goto_3

    .line 134
    :cond_4
    :goto_2
    nop

    .line 142
    :goto_3
    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->switchLb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    .line 143
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->toBuilder()Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v3

    iget-object v4, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->childPolicy:Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

    invoke-virtual {v4}, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->getConfig()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setLoadBalancingPolicyConfig(Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v3

    .line 144
    invoke-virtual {v3}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->build()Lio/grpc/LoadBalancer$ResolvedAddresses;

    move-result-object v3

    .line 142
    invoke-virtual {v2, v3}, Lio/grpc/util/GracefulSwitchLoadBalancer;->handleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V

    .line 145
    const/4 v2, 0x1

    return v2
.end method

.method public handleNameResolutionError(Lio/grpc/Status;)V
    .locals 1
    .param p1, "error"    # Lio/grpc/Status;

    .line 150
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->switchLb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-virtual {v0, p1}, Lio/grpc/util/GracefulSwitchLoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    .line 151
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 155
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer;->switchLb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-virtual {v0}, Lio/grpc/util/GracefulSwitchLoadBalancer;->shutdown()V

    .line 156
    return-void
.end method
