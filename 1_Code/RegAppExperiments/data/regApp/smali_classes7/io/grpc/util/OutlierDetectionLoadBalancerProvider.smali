.class public final Lio/grpc/util/OutlierDetectionLoadBalancerProvider;
.super Lio/grpc/LoadBalancerProvider;
.source "OutlierDetectionLoadBalancerProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lio/grpc/LoadBalancerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "outlier_detection_experimental"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 52
    const/4 v0, 0x5

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public newLoadBalancer(Lio/grpc/LoadBalancer$Helper;)Lio/grpc/LoadBalancer;
    .locals 2
    .param p1, "helper"    # Lio/grpc/LoadBalancer$Helper;

    .line 42
    new-instance v0, Lio/grpc/util/OutlierDetectionLoadBalancer;

    sget-object v1, Lio/grpc/internal/TimeProvider;->SYSTEM_TIME_PROVIDER:Lio/grpc/internal/TimeProvider;

    invoke-direct {v0, p1, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer;-><init>(Lio/grpc/LoadBalancer$Helper;Lio/grpc/internal/TimeProvider;)V

    return-object v0
.end method

.method public parseLoadBalancingPolicyConfig(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/NameResolver$ConfigOrError;"
        }
    .end annotation

    .line 63
    .local p1, "rawConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    move-object/from16 v0, p1

    const-string v1, "interval"

    invoke-static {v0, v1}, Lio/grpc/internal/JsonUtil;->getStringAsDuration(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 64
    .local v1, "intervalNanos":Ljava/lang/Long;
    const-string v2, "baseEjectionTime"

    invoke-static {v0, v2}, Lio/grpc/internal/JsonUtil;->getStringAsDuration(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 65
    .local v2, "baseEjectionTimeNanos":Ljava/lang/Long;
    const-string v3, "maxEjectionTime"

    invoke-static {v0, v3}, Lio/grpc/internal/JsonUtil;->getStringAsDuration(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 66
    .local v3, "maxEjectionTimeNanos":Ljava/lang/Long;
    const-string v4, "maxEjectionPercentage"

    invoke-static {v0, v4}, Lio/grpc/internal/JsonUtil;->getNumberAsInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 69
    .local v4, "maxEjectionPercentage":Ljava/lang/Integer;
    new-instance v5, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;

    invoke-direct {v5}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;-><init>()V

    .line 71
    .local v5, "configBuilder":Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v5, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->setIntervalNanos(Ljava/lang/Long;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;

    .line 74
    :cond_0
    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v5, v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->setBaseEjectionTimeNanos(Ljava/lang/Long;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;

    .line 77
    :cond_1
    if-eqz v3, :cond_2

    .line 78
    invoke-virtual {v5, v3}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->setMaxEjectionTimeNanos(Ljava/lang/Long;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;

    .line 80
    :cond_2
    if-eqz v4, :cond_3

    .line 81
    invoke-virtual {v5, v4}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->setMaxEjectionPercent(Ljava/lang/Integer;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;

    .line 85
    :cond_3
    const-string v6, "successRateEjection"

    invoke-static {v0, v6}, Lio/grpc/internal/JsonUtil;->getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 86
    .local v6, "rawSuccessRateEjection":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v7, "requestVolume"

    const-string v8, "minimumHosts"

    const-string v9, "enforcementPercentage"

    if-eqz v6, :cond_8

    .line 87
    new-instance v10, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;

    invoke-direct {v10}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;-><init>()V

    .line 89
    .local v10, "successRateEjectionBuilder":Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;
    const-string v11, "stdevFactor"

    invoke-static {v6, v11}, Lio/grpc/internal/JsonUtil;->getNumberAsInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 90
    .local v11, "stdevFactor":Ljava/lang/Integer;
    invoke-static {v6, v9}, Lio/grpc/internal/JsonUtil;->getNumberAsInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 92
    .local v12, "enforcementPercentage":Ljava/lang/Integer;
    invoke-static {v6, v8}, Lio/grpc/internal/JsonUtil;->getNumberAsInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 93
    .local v13, "minimumHosts":Ljava/lang/Integer;
    invoke-static {v6, v7}, Lio/grpc/internal/JsonUtil;->getNumberAsInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 95
    .local v14, "requestVolume":Ljava/lang/Integer;
    if-eqz v11, :cond_4

    .line 96
    invoke-virtual {v10, v11}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->setStdevFactor(Ljava/lang/Integer;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;

    .line 98
    :cond_4
    if-eqz v12, :cond_5

    .line 99
    invoke-virtual {v10, v12}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->setEnforcementPercentage(Ljava/lang/Integer;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;

    .line 101
    :cond_5
    if-eqz v13, :cond_6

    .line 102
    invoke-virtual {v10, v13}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->setMinimumHosts(Ljava/lang/Integer;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;

    .line 104
    :cond_6
    if-eqz v14, :cond_7

    .line 105
    invoke-virtual {v10, v14}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->setRequestVolume(Ljava/lang/Integer;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;

    .line 108
    :cond_7
    invoke-virtual {v10}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;->build()Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;

    move-result-object v15

    invoke-virtual {v5, v15}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->setSuccessRateEjection(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;

    .line 112
    .end local v10    # "successRateEjectionBuilder":Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$SuccessRateEjection$Builder;
    .end local v11    # "stdevFactor":Ljava/lang/Integer;
    .end local v12    # "enforcementPercentage":Ljava/lang/Integer;
    .end local v13    # "minimumHosts":Ljava/lang/Integer;
    .end local v14    # "requestVolume":Ljava/lang/Integer;
    :cond_8
    const-string v10, "failurePercentageEjection"

    invoke-static {v0, v10}, Lio/grpc/internal/JsonUtil;->getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 114
    .local v10, "rawFailurePercentageEjection":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v10, :cond_d

    .line 115
    new-instance v11, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection$Builder;

    invoke-direct {v11}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection$Builder;-><init>()V

    .line 118
    .local v11, "failurePercentageEjectionBuilder":Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection$Builder;
    const-string v12, "threshold"

    invoke-static {v10, v12}, Lio/grpc/internal/JsonUtil;->getNumberAsInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 119
    .local v12, "threshold":Ljava/lang/Integer;
    invoke-static {v10, v9}, Lio/grpc/internal/JsonUtil;->getNumberAsInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 121
    .local v9, "enforcementPercentage":Ljava/lang/Integer;
    invoke-static {v10, v8}, Lio/grpc/internal/JsonUtil;->getNumberAsInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 123
    .local v8, "minimumHosts":Ljava/lang/Integer;
    invoke-static {v10, v7}, Lio/grpc/internal/JsonUtil;->getNumberAsInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 126
    .local v7, "requestVolume":Ljava/lang/Integer;
    if-eqz v12, :cond_9

    .line 127
    invoke-virtual {v11, v12}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection$Builder;->setThreshold(Ljava/lang/Integer;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection$Builder;

    .line 129
    :cond_9
    if-eqz v9, :cond_a

    .line 130
    invoke-virtual {v11, v9}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection$Builder;->setEnforcementPercentage(Ljava/lang/Integer;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection$Builder;

    .line 132
    :cond_a
    if-eqz v8, :cond_b

    .line 133
    invoke-virtual {v11, v8}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection$Builder;->setMinimumHosts(Ljava/lang/Integer;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection$Builder;

    .line 135
    :cond_b
    if-eqz v7, :cond_c

    .line 136
    invoke-virtual {v11, v7}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection$Builder;->setRequestVolume(Ljava/lang/Integer;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection$Builder;

    .line 139
    :cond_c
    invoke-virtual {v11}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection$Builder;->build()Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;

    move-result-object v13

    invoke-virtual {v5, v13}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->setFailurePercentageEjection(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;

    .line 143
    .end local v7    # "requestVolume":Ljava/lang/Integer;
    .end local v8    # "minimumHosts":Ljava/lang/Integer;
    .end local v9    # "enforcementPercentage":Ljava/lang/Integer;
    .end local v11    # "failurePercentageEjectionBuilder":Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$FailurePercentageEjection$Builder;
    .end local v12    # "threshold":Ljava/lang/Integer;
    :cond_d
    nop

    .line 144
    const-string v7, "childPolicy"

    invoke-static {v0, v7}, Lio/grpc/internal/JsonUtil;->getListOfObjects(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 143
    invoke-static {v7}, Lio/grpc/internal/ServiceConfigUtil;->unwrapLoadBalancingConfigList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 145
    .local v7, "childConfigCandidates":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/ServiceConfigUtil$LbConfig;>;"
    if-eqz v7, :cond_10

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_0

    .line 150
    :cond_e
    nop

    .line 152
    invoke-static {}, Lio/grpc/LoadBalancerRegistry;->getDefaultRegistry()Lio/grpc/LoadBalancerRegistry;

    move-result-object v8

    .line 151
    invoke-static {v7, v8}, Lio/grpc/internal/ServiceConfigUtil;->selectLbPolicyFromList(Ljava/util/List;Lio/grpc/LoadBalancerRegistry;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v8

    .line 153
    .local v8, "selectedConfig":Lio/grpc/NameResolver$ConfigOrError;
    invoke-virtual {v8}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 154
    return-object v8

    .line 156
    :cond_f
    invoke-virtual {v8}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

    invoke-virtual {v5, v9}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->setChildPolicy(Lio/grpc/internal/ServiceConfigUtil$PolicySelection;)Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;

    .line 158
    invoke-virtual {v5}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig$Builder;->build()Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionLoadBalancerConfig;

    move-result-object v9

    invoke-static {v9}, Lio/grpc/NameResolver$ConfigOrError;->fromConfig(Ljava/lang/Object;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v9

    return-object v9

    .line 146
    .end local v8    # "selectedConfig":Lio/grpc/NameResolver$ConfigOrError;
    :cond_10
    :goto_0
    sget-object v8, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No child policy in outlier_detection_experimental LB policy: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v8

    invoke-static {v8}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v8

    return-object v8
.end method
