.class interface abstract Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierEjectionAlgorithm;
.super Ljava/lang/Object;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OutlierEjectionAlgorithm"
.end annotation


# direct methods
.method public static forConfig(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)Ljava/util/List;
    .locals 2
    .param p0, "config"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;",
            ")",
            "Ljava/util/List<",
            "Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierEjectionAlgorithm;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 688
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 689
    .local v0, "algoListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierEjectionAlgorithm;>;"
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    if-eqz v1, :cond_0

    .line 690
    new-instance v1, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;

    invoke-direct {v1, p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$SuccessRateOutlierEjectionAlgorithm;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 692
    :cond_0
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->failurePercentageEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

    if-eqz v1, :cond_1

    .line 693
    new-instance v1, Lio/grpc/util/OutlierDetectionLoadBalancer$FailurePercentageOutlierEjectionAlgorithm;

    invoke-direct {v1, p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$FailurePercentageOutlierEjectionAlgorithm;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 695
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract ejectOutliers(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;J)V
.end method
