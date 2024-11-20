.class Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddressTrackerMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMap<",
        "Ljava/net/SocketAddress;",
        "Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;",
        ">;"
    }
.end annotation


# instance fields
.field private final trackerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/SocketAddress;",
            "Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 587
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 588
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->trackerMap:Ljava/util/Map;

    .line 589
    return-void
.end method


# virtual methods
.method cancelTracking()V
    .locals 3

    .line 624
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->trackerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 625
    .local v1, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual {v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannelsEjected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    invoke-virtual {v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->unejectSubchannels()V

    .line 628
    :cond_0
    invoke-virtual {v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->resetEjectionTimeMultiplier()V

    .line 629
    .end local v1    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    goto :goto_0

    .line 630
    :cond_1
    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 584
    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/net/SocketAddress;",
            "Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;",
            ">;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->trackerMap:Ljava/util/Map;

    return-object v0
.end method

.method ejectionPercentage()D
    .locals 6

    .line 661
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->trackerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    const-wide/16 v0, 0x0

    return-wide v0

    .line 664
    :cond_0
    const/4 v0, 0x0

    .line 665
    .local v0, "totalAddresses":I
    const/4 v1, 0x0

    .line 666
    .local v1, "ejectedAddresses":I
    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->trackerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 667
    .local v3, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    add-int/lit8 v0, v0, 0x1

    .line 668
    invoke-virtual {v3}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannelsEjected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 669
    add-int/lit8 v1, v1, 0x1

    .line 671
    .end local v3    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    :cond_1
    goto :goto_0

    .line 672
    :cond_2
    int-to-double v2, v1

    int-to-double v4, v0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method maybeUnejectOutliers(Ljava/lang/Long;)V
    .locals 4
    .param p1, "detectionTimerStartNanos"    # Ljava/lang/Long;

    .line 645
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->trackerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 646
    .local v1, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual {v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannelsEjected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 647
    invoke-virtual {v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->decrementEjectionTimeMultiplier()V

    .line 650
    :cond_0
    invoke-virtual {v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->subchannelsEjected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 651
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 650
    invoke-virtual {v1, v2, v3}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->maxEjectionTimeElapsed(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 652
    invoke-virtual {v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->unejectSubchannels()V

    .line 654
    .end local v1    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    :cond_1
    goto :goto_0

    .line 655
    :cond_2
    return-void
.end method

.method putNewTrackers(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;Ljava/util/Collection;)V
    .locals 4
    .param p1, "config"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;",
            "Ljava/util/Collection<",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 605
    .local p2, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/SocketAddress;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    .line 606
    .local v1, "address":Ljava/net/SocketAddress;
    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->trackerMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 607
    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->trackerMap:Ljava/util/Map;

    new-instance v3, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    invoke-direct {v3, p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .end local v1    # "address":Ljava/net/SocketAddress;
    :cond_0
    goto :goto_0

    .line 610
    :cond_1
    return-void
.end method

.method resetCallCounters()V
    .locals 2

    .line 614
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->trackerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 615
    .local v1, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual {v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->resetCallCounters()V

    .line 616
    .end local v1    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    goto :goto_0

    .line 617
    :cond_0
    return-void
.end method

.method swapCounters()V
    .locals 2

    .line 634
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->trackerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 635
    .local v1, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual {v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->swapCounters()V

    .line 636
    .end local v1    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    goto :goto_0

    .line 637
    :cond_0
    return-void
.end method

.method updateTrackerConfigs(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)V
    .locals 2
    .param p1, "config"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    .line 597
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->trackerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 598
    .local v1, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual {v1, p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->setConfig(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)V

    .line 599
    .end local v1    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    goto :goto_0

    .line 600
    :cond_0
    return-void
.end method
