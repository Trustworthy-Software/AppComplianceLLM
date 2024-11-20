.class public final Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;
.super Ljava/lang/Object;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutlierDetectionLoadBalancerConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;
    }
.end annotation


# instance fields
.field public final baseEjectionTimeNanos:Ljava/lang/Long;

.field public final childPolicy:Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

.field public final failurePercentageEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

.field public final intervalNanos:Ljava/lang/Long;

.field public final maxEjectionPercent:Ljava/lang/Integer;

.field public final maxEjectionTimeNanos:Ljava/lang/Long;

.field public final successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;


# direct methods
.method private constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;Lio/grpc/internal/ServiceConfigUtil$PolicySelection;)V
    .locals 0
    .param p1, "intervalNanos"    # Ljava/lang/Long;
    .param p2, "baseEjectionTimeNanos"    # Ljava/lang/Long;
    .param p3, "maxEjectionTimeNanos"    # Ljava/lang/Long;
    .param p4, "maxEjectionPercent"    # Ljava/lang/Integer;
    .param p5, "successRateEjection"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;
    .param p6, "failurePercentageEjection"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;
    .param p7, "childPolicy"    # Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->intervalNanos:Ljava/lang/Long;

    .line 871
    iput-object p2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->baseEjectionTimeNanos:Ljava/lang/Long;

    .line 872
    iput-object p3, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->maxEjectionTimeNanos:Ljava/lang/Long;

    .line 873
    iput-object p4, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->maxEjectionPercent:Ljava/lang/Integer;

    .line 874
    iput-object p5, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    .line 875
    iput-object p6, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->failurePercentageEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

    .line 876
    iput-object p7, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->childPolicy:Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

    .line 877
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;Lio/grpc/internal/ServiceConfigUtil$PolicySelection;Lio/grpc/util/OutlierDetectionLoadBalancer$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Long;
    .param p2, "x1"    # Ljava/lang/Long;
    .param p3, "x2"    # Ljava/lang/Long;
    .param p4, "x3"    # Ljava/lang/Integer;
    .param p5, "x4"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;
    .param p6, "x5"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;
    .param p7, "x6"    # Lio/grpc/internal/ServiceConfigUtil$PolicySelection;
    .param p8, "x7"    # Lio/grpc/util/OutlierDetectionLoadBalancer$1;

    .line 853
    invoke-direct/range {p0 .. p7}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;Lio/grpc/internal/ServiceConfigUtil$PolicySelection;)V

    return-void
.end method


# virtual methods
.method outlierDetectionEnabled()Z
    .locals 1

    .line 1079
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->successRateEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;->failurePercentageEjection:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
