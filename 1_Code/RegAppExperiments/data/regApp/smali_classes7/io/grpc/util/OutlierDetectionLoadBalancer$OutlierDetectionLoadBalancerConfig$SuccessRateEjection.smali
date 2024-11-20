.class public Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;
.super Ljava/lang/Object;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuccessRateEjection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;
    }
.end annotation


# instance fields
.field public final enforcementPercentage:Ljava/lang/Integer;

.field public final minimumHosts:Ljava/lang/Integer;

.field public final requestVolume:Ljava/lang/Integer;

.field public final stdevFactor:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "stdevFactor"    # Ljava/lang/Integer;
    .param p2, "enforcementPercentage"    # Ljava/lang/Integer;
    .param p3, "minimumHosts"    # Ljava/lang/Integer;
    .param p4, "requestVolume"    # Ljava/lang/Integer;

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;->stdevFactor:Ljava/lang/Integer;

    .line 958
    iput-object p2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;->enforcementPercentage:Ljava/lang/Integer;

    .line 959
    iput-object p3, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;->minimumHosts:Ljava/lang/Integer;

    .line 960
    iput-object p4, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;->requestVolume:Ljava/lang/Integer;

    .line 961
    return-void
.end method
