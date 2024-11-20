.class public final Lio/grpc/internal/ServiceConfigUtil;
.super Ljava/lang/Object;
.source "ServiceConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ServiceConfigUtil$PolicySelection;,
        Lio/grpc/internal/ServiceConfigUtil$LbConfig;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBackoffMultiplierFromRetryPolicy(Ljava/util/Map;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 140
    .local p0, "retryPolicy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "backoffMultiplier"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getNumberAsDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static getHealthCheckedService(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 57
    .local p0, "serviceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    const-string v0, "healthCheckConfig"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getHealthCheckedServiceName(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 79
    .local p0, "healthCheckedServiceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-nez p0, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    const-string v0, "serviceName"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getHedgingDelayNanosFromHedgingPolicy(Ljava/util/Map;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 197
    .local p0, "hedgingPolicy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "hedgingDelay"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getStringAsDuration(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static getHedgingPolicyFromMethodConfig(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 227
    .local p0, "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "hedgingPolicy"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static getInitialBackoffNanosFromRetryPolicy(Ljava/util/Map;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 130
    .local p0, "retryPolicy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "initialBackoff"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getStringAsDuration(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static getListOfStatusCodesAsSet(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lio/grpc/Status$Code;",
            ">;"
        }
    .end annotation

    .line 149
    .local p0, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lio/grpc/internal/JsonUtil;->getList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, "statuses":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v0, :cond_0

    .line 151
    const/4 v1, 0x0

    return-object v1

    .line 153
    :cond_0
    invoke-static {v0}, Lio/grpc/internal/ServiceConfigUtil;->getStatusCodesFromList(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public static getLoadBalancingConfigsFromServiceConfig(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .line 287
    .local p0, "serviceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v0, "lbConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const-string v1, "loadBalancingConfig"

    .line 289
    .local v1, "loadBalancingConfigKey":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-static {p0, v1}, Lio/grpc/internal/JsonUtil;->getListOfObjects(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 293
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    const-string v2, "loadBalancingPolicy"

    invoke-static {p0, v2}, Lio/grpc/internal/JsonUtil;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "policy":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 298
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 300
    .local v3, "fakeConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v2    # "policy":Ljava/lang/String;
    .end local v3    # "fakeConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method static getMaxAttemptsFromHedgingPolicy(Ljava/util/Map;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 192
    .local p0, "hedgingPolicy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "maxAttempts"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getNumberAsInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static getMaxAttemptsFromRetryPolicy(Ljava/util/Map;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 125
    .local p0, "retryPolicy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "maxAttempts"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getNumberAsInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static getMaxBackoffNanosFromRetryPolicy(Ljava/util/Map;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 135
    .local p0, "retryPolicy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "maxBackoff"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getStringAsDuration(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static getMaxRequestMessageBytesFromMethodConfig(Ljava/util/Map;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 253
    .local p0, "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "maxRequestMessageBytes"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getNumberAsInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static getMaxResponseMessageBytesFromMethodConfig(Ljava/util/Map;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 258
    .local p0, "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "maxResponseMessageBytes"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getNumberAsInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static getMethodConfigFromServiceConfig(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 264
    .local p0, "serviceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "methodConfig"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getListOfObjects(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getMethodFromName(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 217
    .local p0, "name":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "method"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getNameListFromMethodConfig(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 233
    .local p0, "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "name"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getListOfObjects(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getNonFatalStatusCodesFromHedgingPolicy(Ljava/util/Map;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Set<",
            "Lio/grpc/Status$Code;",
            ">;"
        }
    .end annotation

    .line 201
    .local p0, "hedgingPolicy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "nonFatalStatusCodes"

    .line 202
    .local v0, "nonFatalStatusCodesKey":Ljava/lang/String;
    invoke-static {p0, v0}, Lio/grpc/internal/ServiceConfigUtil;->getListOfStatusCodesAsSet(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 203
    .local v1, "codes":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/Status$Code;>;"
    if-nez v1, :cond_0

    .line 204
    const-class v2, Lio/grpc/Status$Code;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 206
    :cond_0
    sget-object v2, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "%s must not contain OK"

    invoke-static {v2, v3, v0}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 207
    return-object v1
.end method

.method static getPerAttemptRecvTimeoutNanosFromRetryPolicy(Ljava/util/Map;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 145
    .local p0, "retryPolicy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "perAttemptRecvTimeout"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getStringAsDuration(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static getRetryPolicyFromMethodConfig(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 222
    .local p0, "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "retryPolicy"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static getRetryableStatusCodesFromRetryPolicy(Ljava/util/Map;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Set<",
            "Lio/grpc/Status$Code;",
            ">;"
        }
    .end annotation

    .line 183
    .local p0, "retryPolicy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "retryableStatusCodes"

    .line 184
    .local v0, "retryableStatusCodesKey":Ljava/lang/String;
    invoke-static {p0, v0}, Lio/grpc/internal/ServiceConfigUtil;->getListOfStatusCodesAsSet(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 185
    .local v1, "codes":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/Status$Code;>;"
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "%s is required in retry policy"

    invoke-static {v3, v4, v0}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 186
    sget-object v3, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    const-string v3, "%s must not contain OK"

    invoke-static {v2, v3, v0}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 187
    return-object v1
.end method

.method static getServiceFromName(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 212
    .local p0, "name":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "service"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStatusCodesFromList(Ljava/util/List;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/Set<",
            "Lio/grpc/Status$Code;",
            ">;"
        }
    .end annotation

    .line 157
    .local p0, "statuses":Ljava/util/List;, "Ljava/util/List<*>;"
    const-class v0, Lio/grpc/Status$Code;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 158
    .local v0, "codes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lio/grpc/Status$Code;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 160
    .local v2, "status":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_2

    .line 161
    move-object v3, v2

    check-cast v3, Ljava/lang/Double;

    .line 162
    .local v3, "statusD":Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v4

    .line 163
    .local v4, "codeValue":I
    int-to-double v5, v4

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v7

    :goto_1
    const-string v8, "Status code %s is not integral"

    invoke-static {v5, v8, v2}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 164
    invoke-static {v4}, Lio/grpc/Status;->fromCodeValue(I)Lio/grpc/Status;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v5

    .line 165
    .local v5, "code":Lio/grpc/Status$Code;
    invoke-virtual {v5}, Lio/grpc/Status$Code;->value()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_1

    goto :goto_2

    :cond_1
    move v6, v7

    :goto_2
    const-string v7, "Status code %s is not valid"

    invoke-static {v6, v7, v2}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 166
    .end local v3    # "statusD":Ljava/lang/Double;
    .end local v4    # "codeValue":I
    goto :goto_3

    .end local v5    # "code":Lio/grpc/Status$Code;
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 168
    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/grpc/Status$Code;->valueOf(Ljava/lang/String;)Lio/grpc/Status$Code;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    .line 171
    .restart local v5    # "code":Lio/grpc/Status$Code;
    nop

    .line 177
    :goto_3
    invoke-virtual {v0, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v2    # "status":Ljava/lang/Object;
    .end local v5    # "code":Lio/grpc/Status$Code;
    goto :goto_0

    .line 169
    .restart local v2    # "status":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 170
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/google/common/base/VerifyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 173
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_3
    new-instance v1, Lcom/google/common/base/VerifyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not convert status code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Status.Code, because its type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 175
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    .end local v2    # "status":Ljava/lang/Object;
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method static getThrottlePolicy(Ljava/util/Map;)Lio/grpc/internal/RetriableStream$Throttle;
    .locals 8
    .param p0    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/internal/RetriableStream$Throttle;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 87
    .local p0, "serviceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 88
    return-object v0

    .line 110
    :cond_0
    const-string v1, "retryThrottling"

    invoke-static {p0, v1}, Lio/grpc/internal/JsonUtil;->getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 111
    .local v1, "throttling":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-nez v1, :cond_1

    .line 112
    return-object v0

    .line 116
    :cond_1
    const-string v0, "maxTokens"

    invoke-static {v1, v0}, Lio/grpc/internal/JsonUtil;->getNumberAsDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 117
    .local v0, "maxTokens":F
    const-string v2, "tokenRatio"

    invoke-static {v1, v2}, Lio/grpc/internal/JsonUtil;->getNumberAsDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    .line 118
    .local v2, "tokenRatio":F
    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v6

    :goto_0
    const-string v7, "maxToken should be greater than zero"

    invoke-static {v4, v7}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 119
    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    const-string v3, "tokenRatio should be greater than zero"

    invoke-static {v5, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 120
    new-instance v3, Lio/grpc/internal/RetriableStream$Throttle;

    invoke-direct {v3, v0, v2}, Lio/grpc/internal/RetriableStream$Throttle;-><init>(FF)V

    return-object v3
.end method

.method static getTimeoutFromMethodConfig(Ljava/util/Map;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 243
    .local p0, "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "timeout"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getStringAsDuration(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static getWaitForReadyFromMethodConfig(Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 248
    .local p0, "methodConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "waitForReady"

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static selectLbPolicyFromList(Ljava/util/List;Lio/grpc/LoadBalancerRegistry;)Lio/grpc/NameResolver$ConfigOrError;
    .locals 7
    .param p1, "lbRegistry"    # Lio/grpc/LoadBalancerRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/internal/ServiceConfigUtil$LbConfig;",
            ">;",
            "Lio/grpc/LoadBalancerRegistry;",
            ")",
            "Lio/grpc/NameResolver$ConfigOrError;"
        }
    .end annotation

    .line 342
    .local p0, "lbConfigs":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/ServiceConfigUtil$LbConfig;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v0, "policiesTried":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/ServiceConfigUtil$LbConfig;

    .line 344
    .local v2, "lbConfig":Lio/grpc/internal/ServiceConfigUtil$LbConfig;
    invoke-virtual {v2}, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->getPolicyName()Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, "policy":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lio/grpc/LoadBalancerRegistry;->getProvider(Ljava/lang/String;)Lio/grpc/LoadBalancerProvider;

    move-result-object v4

    .line 346
    .local v4, "provider":Lio/grpc/LoadBalancerProvider;
    if-nez v4, :cond_0

    .line 347
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    .end local v2    # "lbConfig":Lio/grpc/internal/ServiceConfigUtil$LbConfig;
    .end local v3    # "policy":Ljava/lang/String;
    .end local v4    # "provider":Lio/grpc/LoadBalancerProvider;
    goto :goto_0

    .line 349
    .restart local v2    # "lbConfig":Lio/grpc/internal/ServiceConfigUtil$LbConfig;
    .restart local v3    # "policy":Ljava/lang/String;
    .restart local v4    # "provider":Lio/grpc/LoadBalancerProvider;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 350
    const-class v1, Lio/grpc/internal/ServiceConfigUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v6, "{0} specified by Service Config are not available"

    invoke-virtual {v1, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    :cond_1
    nop

    .line 355
    invoke-virtual {v2}, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->getRawConfigValue()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v4, v1}, Lio/grpc/LoadBalancerProvider;->parseLoadBalancingPolicyConfig(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1

    .line 356
    .local v1, "parsedLbPolicyConfig":Lio/grpc/NameResolver$ConfigOrError;
    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 357
    return-object v1

    .line 359
    :cond_2
    new-instance v5, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

    .line 360
    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;-><init>(Lio/grpc/LoadBalancerProvider;Ljava/lang/Object;)V

    .line 359
    invoke-static {v5}, Lio/grpc/NameResolver$ConfigOrError;->fromConfig(Ljava/lang/Object;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v5

    return-object v5

    .line 363
    .end local v1    # "parsedLbPolicyConfig":Lio/grpc/NameResolver$ConfigOrError;
    .end local v2    # "lbConfig":Lio/grpc/internal/ServiceConfigUtil$LbConfig;
    .end local v3    # "policy":Ljava/lang/String;
    .end local v4    # "provider":Lio/grpc/LoadBalancerProvider;
    :cond_3
    sget-object v1, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "None of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " specified by Service Config are available."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 363
    invoke-static {v1}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1

    return-object v1
.end method

.method public static unwrapLoadBalancingConfig(Ljava/util/Map;)Lio/grpc/internal/ServiceConfigUtil$LbConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/internal/ServiceConfigUtil$LbConfig;"
        }
    .end annotation

    .line 312
    .local p0, "lbConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 317
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lio/grpc/internal/ServiceConfigUtil$LbConfig;

    invoke-static {p0, v0}, Lio/grpc/internal/JsonUtil;->getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/grpc/internal/ServiceConfigUtil$LbConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    .line 313
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fields in a LoadBalancingConfig object. Exactly one is expected. Config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unwrapLoadBalancingConfigList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;)",
            "Ljava/util/List<",
            "Lio/grpc/internal/ServiceConfigUtil$LbConfig;",
            ">;"
        }
    .end annotation

    .line 325
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    if-nez p0, :cond_0

    .line 326
    const/4 v0, 0x0

    return-object v0

    .line 328
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/internal/ServiceConfigUtil$LbConfig;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 330
    .local v2, "rawChildPolicy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {v2}, Lio/grpc/internal/ServiceConfigUtil;->unwrapLoadBalancingConfig(Ljava/util/Map;)Lio/grpc/internal/ServiceConfigUtil$LbConfig;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v2    # "rawChildPolicy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    goto :goto_0

    .line 332
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
