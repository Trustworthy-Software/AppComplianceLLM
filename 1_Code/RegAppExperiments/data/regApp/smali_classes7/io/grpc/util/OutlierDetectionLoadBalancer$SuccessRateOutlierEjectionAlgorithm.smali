.class Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;
.super Ljava/lang/Object;
.source "OutlierDetectionLoadBalancer.java"

# interfaces
.implements Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierEjectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SuccessRateOutlierEjectionAlgorithm"
.end annotation


# instance fields
.field private final config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;


# direct methods
.method constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)V
    .locals 2
    .param p1, "config"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    iget-object v0, p1, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "success rate ejection config is null"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 710
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    .line 711
    return-void
.end method

.method static mean(Ljava/util/Collection;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .line 758
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    const-wide/16 v0, 0x0

    .line 759
    .local v0, "totalValue":D
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 760
    .local v3, "value":D
    add-double/2addr v0, v3

    .line 761
    .end local v3    # "value":D
    goto :goto_0

    .line 763
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v0, v2

    return-wide v2
.end method

.method static standardDeviation(Ljava/util/Collection;D)D
    .locals 9
    .param p1, "mean"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;D)D"
        }
    .end annotation

    .line 769
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    const-wide/16 v0, 0x0

    .line 770
    .local v0, "squaredDifferenceSum":D
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 771
    .local v3, "value":D
    sub-double v5, v3, p1

    .line 772
    .local v5, "difference":D
    mul-double v7, v5, v5

    add-double/2addr v0, v7

    .line 773
    .end local v3    # "value":D
    .end local v5    # "difference":D
    goto :goto_0

    .line 774
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v0, v2

    .line 776
    .local v2, "variance":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public ejectOutliers(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;J)V
    .locals 16
    .param p1, "trackerMap"    # Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;
    .param p2, "ejectionTimeNanos"    # J

    .line 717
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v1, v1, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    iget-object v1, v1, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;->requestVolume:Ljava/lang/Integer;

    .line 718
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 717
    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$800(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;I)Ljava/util/List;

    move-result-object v1

    .line 720
    .local v1, "trackersWithVolume":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v4, v4, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    iget-object v4, v4, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;->minimumHosts:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 721
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    move-wide/from16 v12, p2

    goto/16 :goto_3

    .line 726
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v3, "successRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 728
    .local v5, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual {v5}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->successRate()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    .end local v5    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    goto :goto_0

    .line 730
    :cond_1
    invoke-static {v3}, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->mean(Ljava/util/Collection;)D

    move-result-wide v4

    .line 731
    .local v4, "mean":D
    invoke-static {v3, v4, v5}, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->standardDeviation(Ljava/util/Collection;D)D

    move-result-wide v6

    .line 733
    .local v6, "stdev":D
    iget-object v8, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v8, v8, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    iget-object v8, v8, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;->stdevFactor:Ljava/lang/Integer;

    .line 734
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    mul-double/2addr v8, v6

    sub-double v8, v4, v8

    .line 736
    .local v8, "requiredSuccessRate":D
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 741
    .local v11, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual/range {p1 .. p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->ejectionPercentage()D

    move-result-wide v12

    iget-object v14, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v14, v14, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->maxEjectionPercent:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-double v14, v14

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_2

    .line 742
    return-void

    .line 746
    :cond_2
    invoke-virtual {v11}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->successRate()D

    move-result-wide v12

    cmpg-double v12, v12, v8

    if-gez v12, :cond_4

    .line 748
    new-instance v12, Ljava/util/Random;

    invoke-direct {v12}, Ljava/util/Random;-><init>()V

    const/16 v13, 0x64

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    iget-object v13, v0, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;->config:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    iget-object v13, v13, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    iget-object v13, v13, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;->enforcementPercentage:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 749
    move-wide/from16 v12, p2

    invoke-virtual {v11, v12, v13}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->ejectSubchannels(J)V

    goto :goto_2

    .line 748
    :cond_3
    move-wide/from16 v12, p2

    goto :goto_2

    .line 746
    :cond_4
    move-wide/from16 v12, p2

    .line 752
    .end local v11    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    :goto_2
    goto :goto_1

    .line 753
    :cond_5
    move-wide/from16 v12, p2

    return-void

    .line 720
    .end local v3    # "successRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v4    # "mean":D
    .end local v6    # "stdev":D
    .end local v8    # "requiredSuccessRate":D
    :cond_6
    move-wide/from16 v12, p2

    .line 722
    :goto_3
    return-void
.end method
