.class public final Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;
.super Ljava/lang/Object;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field enforcementPercentage:Ljava/lang/Integer;

.field minimumHosts:Ljava/lang/Integer;

.field requestVolume:Ljava/lang/Integer;

.field stdevFactor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    const/16 v0, 0x76c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->stdevFactor:Ljava/lang/Integer;

    .line 967
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->enforcementPercentage:Ljava/lang/Integer;

    .line 968
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->minimumHosts:Ljava/lang/Integer;

    .line 969
    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->requestVolume:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public build()Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;
    .locals 5

    .line 1006
    new-instance v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->stdevFactor:Ljava/lang/Integer;

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->enforcementPercentage:Ljava/lang/Integer;

    iget-object v3, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->minimumHosts:Ljava/lang/Integer;

    iget-object v4, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->requestVolume:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public setEnforcementPercentage(Ljava/lang/Integer;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;
    .locals 4
    .param p1, "enforcementPercentage"    # Ljava/lang/Integer;

    .line 982
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 983
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 984
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->enforcementPercentage:Ljava/lang/Integer;

    .line 985
    return-object p0
.end method

.method public setMinimumHosts(Ljava/lang/Integer;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;
    .locals 3
    .param p1, "minimumHosts"    # Ljava/lang/Integer;

    .line 990
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 991
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 992
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->minimumHosts:Ljava/lang/Integer;

    .line 993
    return-object p0
.end method

.method public setRequestVolume(Ljava/lang/Integer;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;
    .locals 3
    .param p1, "requestVolume"    # Ljava/lang/Integer;

    .line 998
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 999
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1000
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->requestVolume:Ljava/lang/Integer;

    .line 1001
    return-object p0
.end method

.method public setStdevFactor(Ljava/lang/Integer;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;
    .locals 1
    .param p1, "stdevFactor"    # Ljava/lang/Integer;

    .line 975
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 976
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->stdevFactor:Ljava/lang/Integer;

    .line 977
    return-object p0
.end method
