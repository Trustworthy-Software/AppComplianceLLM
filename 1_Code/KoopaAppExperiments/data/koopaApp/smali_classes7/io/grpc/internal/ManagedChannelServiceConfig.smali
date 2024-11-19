.class final Lio/grpc/internal/ManagedChannelServiceConfig;
.super Ljava/lang/Object;
.source "ManagedChannelServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ManagedChannelServiceConfig$ServiceConfigConvertedSelector;,
        Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    }
.end annotation


# instance fields
.field private final defaultMethodConfig:Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final healthCheckingConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final loadBalancingConfig:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final retryThrottling:Lio/grpc/internal/RetriableStream$Throttle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;Ljava/util/Map;Ljava/util/Map;Lio/grpc/internal/RetriableStream$Throttle;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .param p1, "defaultMethodConfig"    # Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "retryThrottling"    # Lio/grpc/internal/RetriableStream$Throttle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "loadBalancingConfig"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;",
            ">;",
            "Lio/grpc/internal/RetriableStream$Throttle;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 62
    .local p2, "serviceMethodMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;>;"
    .local p3, "serviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;>;"
    .local p6, "healthCheckingConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->defaultMethodConfig:Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMethodMap:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMap:Ljava/util/Map;

    .line 66
    iput-object p4, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->retryThrottling:Lio/grpc/internal/RetriableStream$Throttle;

    .line 67
    iput-object p5, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->loadBalancingConfig:Ljava/lang/Object;

    .line 68
    nop

    .line 69
    if-eqz p6, :cond_0

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->healthCheckingConfig:Ljava/util/Map;

    .line 72
    return-void
.end method

.method static empty()Lio/grpc/internal/ManagedChannelServiceConfig;
    .locals 8

    .line 76
    new-instance v7, Lio/grpc/internal/ManagedChannelServiceConfig;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/grpc/internal/ManagedChannelServiceConfig;-><init>(Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;Ljava/util/Map;Ljava/util/Map;Lio/grpc/internal/RetriableStream$Throttle;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v7
.end method

.method static fromServiceConfig(Ljava/util/Map;ZIILjava/lang/Object;)Lio/grpc/internal/ManagedChannelServiceConfig;
    .locals 20
    .param p1, "retryEnabled"    # Z
    .param p2, "maxRetryAttemptsLimit"    # I
    .param p3, "maxHedgedAttemptsLimit"    # I
    .param p4, "loadBalancingConfig"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;ZII",
            "Ljava/lang/Object;",
            ")",
            "Lio/grpc/internal/ManagedChannelServiceConfig;"
        }
    .end annotation

    .line 95
    .local p0, "serviceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    move/from16 v0, p1

    const/4 v1, 0x0

    .line 96
    .local v1, "retryThrottling":Lio/grpc/internal/RetriableStream$Throttle;
    if-eqz v0, :cond_0

    .line 97
    invoke-static/range {p0 .. p0}, Lio/grpc/internal/ServiceConfigUtil;->getThrottlePolicy(Ljava/util/Map;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v1

    .line 99
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v9, v2

    .line 100
    .local v9, "serviceMethodMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v10, v2

    .line 101
    .local v10, "serviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;>;"
    nop

    .line 102
    invoke-static/range {p0 .. p0}, Lio/grpc/internal/ServiceConfigUtil;->getHealthCheckedService(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    .line 106
    .local v11, "healthCheckingConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    nop

    .line 107
    invoke-static/range {p0 .. p0}, Lio/grpc/internal/ServiceConfigUtil;->getMethodConfigFromServiceConfig(Ljava/util/Map;)Ljava/util/List;

    move-result-object v12

    .line 109
    .local v12, "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    if-nez v12, :cond_1

    .line 111
    new-instance v13, Lio/grpc/internal/ManagedChannelServiceConfig;

    const/4 v3, 0x0

    move-object v2, v13

    move-object v4, v9

    move-object v5, v10

    move-object v6, v1

    move-object/from16 v7, p4

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lio/grpc/internal/ManagedChannelServiceConfig;-><init>(Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;Ljava/util/Map;Ljava/util/Map;Lio/grpc/internal/RetriableStream$Throttle;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v13

    .line 121
    :cond_1
    const/4 v2, 0x0

    .line 122
    .local v2, "defaultMethodConfig":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v13, v2

    .end local v2    # "defaultMethodConfig":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    .local v13, "defaultMethodConfig":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 123
    .local v2, "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v4, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    move/from16 v14, p2

    move/from16 v15, p3

    invoke-direct {v4, v2, v0, v14, v15}, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;-><init>(Ljava/util/Map;ZII)V

    .line 126
    .local v4, "info":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    nop

    .line 127
    invoke-static {v2}, Lio/grpc/internal/ServiceConfigUtil;->getNameListFromMethodConfig(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    .line 129
    .local v5, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    move-object/from16 v18, v3

    move-object/from16 v19, v12

    move-object/from16 v12, p0

    goto/16 :goto_4

    .line 132
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 133
    .local v7, "name":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {v7}, Lio/grpc/internal/ServiceConfigUtil;->getServiceFromName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "serviceName":Ljava/lang/String;
    invoke-static {v7}, Lio/grpc/internal/ServiceConfigUtil;->getMethodFromName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "methodName":Ljava/lang/String;
    invoke-static {v8}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v16

    const/16 v17, 0x1

    if-eqz v16, :cond_4

    .line 136
    nop

    .line 137
    move-object/from16 v16, v2

    .end local v2    # "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .local v16, "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    .line 136
    move-object/from16 v18, v3

    const-string v3, "missing service name for method %s"

    invoke-static {v2, v3, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 138
    if-nez v13, :cond_3

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    :goto_2
    move/from16 v2, v17

    const-string v3, "Duplicate default method config in service config %s"

    move-object/from16 v19, v12

    move-object/from16 v12, p0

    .end local v12    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local v19, "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-static {v2, v3, v12}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 142
    move-object v13, v4

    goto :goto_3

    .line 143
    .end local v16    # "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v19    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .restart local v2    # "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v12    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v12

    move-object/from16 v12, p0

    .end local v2    # "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v12    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .restart local v16    # "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v19    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 145
    nop

    .line 146
    invoke-interface {v10, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 145
    const-string v3, "Duplicate service %s"

    invoke-static {v2, v3, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 147
    invoke-interface {v10, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 150
    :cond_5
    invoke-static {v8, v0}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "fullMethodName":Ljava/lang/String;
    nop

    .line 152
    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 151
    move-object/from16 v17, v0

    .end local v0    # "methodName":Ljava/lang/String;
    .local v17, "methodName":Ljava/lang/String;
    const-string v0, "Duplicate method name %s"

    invoke-static {v3, v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 155
    invoke-interface {v9, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .end local v2    # "fullMethodName":Ljava/lang/String;
    .end local v7    # "name":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v8    # "serviceName":Ljava/lang/String;
    .end local v17    # "methodName":Ljava/lang/String;
    :goto_3
    move/from16 v0, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    move-object/from16 v12, v19

    goto :goto_1

    .line 132
    .end local v16    # "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v19    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local v2, "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v12    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :cond_6
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v12

    move-object/from16 v12, p0

    .line 158
    .end local v2    # "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v4    # "info":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    .end local v5    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .end local v12    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .restart local v19    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    move/from16 v0, p1

    move-object/from16 v12, v19

    goto/16 :goto_0

    .line 129
    .end local v19    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .restart local v2    # "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v4    # "info":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    .restart local v5    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .restart local v12    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :cond_7
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v12

    move-object/from16 v12, p0

    .line 122
    .end local v2    # "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v4    # "info":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    .end local v5    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .end local v12    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .restart local v19    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :goto_4
    move/from16 v0, p1

    move-object/from16 v3, v18

    move-object/from16 v12, v19

    goto/16 :goto_0

    .line 160
    .end local v19    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .restart local v12    # "methodConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :cond_8
    new-instance v0, Lio/grpc/internal/ManagedChannelServiceConfig;

    move-object v2, v0

    move-object v3, v13

    move-object v4, v9

    move-object v5, v10

    move-object v6, v1

    move-object/from16 v7, p4

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lio/grpc/internal/ManagedChannelServiceConfig;-><init>(Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;Ljava/util/Map;Ljava/util/Map;Lio/grpc/internal/RetriableStream$Throttle;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 214
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 215
    return v0

    .line 217
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 221
    .local v2, "that":Lio/grpc/internal/ManagedChannelServiceConfig;
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->defaultMethodConfig:Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    iget-object v4, v2, Lio/grpc/internal/ManagedChannelServiceConfig;->defaultMethodConfig:Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMethodMap:Ljava/util/Map;

    iget-object v4, v2, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMethodMap:Ljava/util/Map;

    .line 222
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMap:Ljava/util/Map;

    iget-object v4, v2, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMap:Ljava/util/Map;

    .line 223
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->retryThrottling:Lio/grpc/internal/RetriableStream$Throttle;

    iget-object v4, v2, Lio/grpc/internal/ManagedChannelServiceConfig;->retryThrottling:Lio/grpc/internal/RetriableStream$Throttle;

    .line 224
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->loadBalancingConfig:Ljava/lang/Object;

    iget-object v4, v2, Lio/grpc/internal/ManagedChannelServiceConfig;->loadBalancingConfig:Ljava/lang/Object;

    .line 225
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 221
    :goto_0
    return v0

    .line 218
    .end local v2    # "that":Lio/grpc/internal/ManagedChannelServiceConfig;
    :cond_3
    :goto_1
    return v1
.end method

.method getDefaultConfigSelector()Lio/grpc/InternalConfigSelector;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 182
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMethodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->defaultMethodConfig:Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    if-nez v0, :cond_0

    .line 183
    return-object v1

    .line 185
    :cond_0
    new-instance v0, Lio/grpc/internal/ManagedChannelServiceConfig$ServiceConfigConvertedSelector;

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/ManagedChannelServiceConfig$ServiceConfigConvertedSelector;-><init>(Lio/grpc/internal/ManagedChannelServiceConfig;Lio/grpc/internal/ManagedChannelServiceConfig$1;)V

    return-object v0
.end method

.method getHealthCheckingConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 172
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->healthCheckingConfig:Ljava/util/Map;

    return-object v0
.end method

.method getLoadBalancingConfig()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 191
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->loadBalancingConfig:Ljava/lang/Object;

    return-object v0
.end method

.method getMethodConfig(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;)",
            "Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 201
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMethodMap:Ljava/util/Map;

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    .line 202
    .local v0, "methodInfo":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getServiceName()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "serviceName":Ljava/lang/String;
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    .line 206
    .end local v1    # "serviceName":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->defaultMethodConfig:Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    .line 209
    :cond_1
    return-object v0
.end method

.method getRetryThrottling()Lio/grpc/internal/RetriableStream$Throttle;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 196
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->retryThrottling:Lio/grpc/internal/RetriableStream$Throttle;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 230
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->defaultMethodConfig:Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMethodMap:Ljava/util/Map;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMap:Ljava/util/Map;

    iget-object v3, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->retryThrottling:Lio/grpc/internal/RetriableStream$Throttle;

    iget-object v4, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->loadBalancingConfig:Ljava/lang/Object;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 236
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->defaultMethodConfig:Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    .line 237
    const-string v2, "defaultMethodConfig"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMethodMap:Ljava/util/Map;

    .line 238
    const-string v2, "serviceMethodMap"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->serviceMap:Ljava/util/Map;

    .line 239
    const-string v2, "serviceMap"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->retryThrottling:Lio/grpc/internal/RetriableStream$Throttle;

    .line 240
    const-string v2, "retryThrottling"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelServiceConfig;->loadBalancingConfig:Ljava/lang/Object;

    .line 241
    const-string v2, "loadBalancingConfig"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    return-object v0
.end method
