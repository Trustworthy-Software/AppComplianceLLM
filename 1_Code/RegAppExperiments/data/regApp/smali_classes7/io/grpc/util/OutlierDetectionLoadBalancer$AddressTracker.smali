.class Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
.super Ljava/lang/Object;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddressTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;
    }
.end annotation


# instance fields
.field private volatile activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

.field private config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

.field private ejectionTimeMultiplier:I

.field private ejectionTimeNanos:Ljava/lang/Long;

.field private inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

.field private final subchannels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)V
    .locals 2
    .param p1, "config"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    new-instance v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer$1;)V

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    .line 432
    new-instance v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    invoke-direct {v0, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer$1;)V

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    .line 435
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannels:Ljava/util/Set;

    .line 438
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    .line 439
    return-void
.end method

.method static synthetic access$300(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 426
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeNanos:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method activeVolume()J
    .locals 4

    .line 490
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->successCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object v2, v2, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->failureCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method addSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z
    .locals 1
    .param p1, "subchannel"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;

    .line 452
    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannelsEjected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->isEjected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->eject()V

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannelsEjected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->isEjected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->uneject()V

    .line 457
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->setAddressTracker(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;)V

    .line 458
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method containsSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z
    .locals 1
    .param p1, "subchannel"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;

    .line 467
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method decrementEjectionTimeMultiplier()V
    .locals 1

    .line 512
    iget v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeMultiplier:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeMultiplier:I

    .line 513
    return-void
.end method

.method ejectSubchannels(J)V
    .locals 2
    .param p1, "ejectionTimeNanos"    # J

    .line 534
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeNanos:Ljava/lang/Long;

    .line 535
    iget v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeMultiplier:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeMultiplier:I

    .line 536
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannels:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;

    .line 537
    .local v1, "subchannel":Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;
    invoke-virtual {v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->eject()V

    .line 538
    .end local v1    # "subchannel":Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;
    goto :goto_0

    .line 539
    :cond_0
    return-void
.end method

.method failureRate()D
    .locals 4

    .line 502
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->failureCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveVolume()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method getSubchannels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;",
            ">;"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannels:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method inactiveVolume()J
    .locals 4

    .line 494
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->successCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object v2, v2, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->failureCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method incrementCallCount(Z)V
    .locals 1
    .param p1, "success"    # Z

    .line 477
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->failurePercentageEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

    if-nez v0, :cond_0

    .line 478
    return-void

    .line 481
    :cond_0
    if-eqz p1, :cond_1

    .line 482
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->successCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->failureCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 486
    :goto_0
    return-void
.end method

.method public maxEjectionTimeElapsed(J)Z
    .locals 8
    .param p1, "currentTimeNanos"    # J

    .line 559
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->baseEjectionTimeNanos:Ljava/lang/Long;

    .line 560
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v2, v2, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->maxEjectionTimeNanos:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 561
    .local v0, "maxEjectionDurationSecs":J
    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeNanos:Ljava/lang/Long;

    .line 562
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v4, v4, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->baseEjectionTimeNanos:Ljava/lang/Long;

    .line 563
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeMultiplier:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    .line 562
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 566
    .local v2, "maxEjectionTimeNanos":J
    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method removeSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z
    .locals 1
    .param p1, "subchannel"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;

    .line 462
    invoke-virtual {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->clearAddressTracker()V

    .line 463
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method resetCallCounters()V
    .locals 1

    .line 506
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    invoke-virtual {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->reset()V

    .line 507
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    invoke-virtual {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->reset()V

    .line 508
    return-void
.end method

.method resetEjectionTimeMultiplier()V
    .locals 1

    .line 516
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeMultiplier:I

    .line 517
    return-void
.end method

.method setConfig(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)V
    .locals 0
    .param p1, "config"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    .line 442
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    .line 443
    return-void
.end method

.method subchannelsEjected()Z
    .locals 1

    .line 553
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeNanos:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method successRate()D
    .locals 4

    .line 498
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->successCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveVolume()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method swapCounters()V
    .locals 2

    .line 527
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    invoke-virtual {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;->reset()V

    .line 528
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    .line 529
    .local v0, "tempCounter":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    iput-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->activeCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    .line 530
    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->inactiveCallCounter:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker$CallCounter;

    .line 531
    return-void
.end method

.method unejectSubchannels()V
    .locals 2

    .line 545
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeNanos:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "not currently ejected"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectionTimeNanos:Ljava/lang/Long;

    .line 547
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannels:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;

    .line 548
    .local v1, "subchannel":Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;
    invoke-virtual {v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->uneject()V

    .line 549
    .end local v1    # "subchannel":Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;
    goto :goto_1

    .line 550
    :cond_1
    return-void
.end method
