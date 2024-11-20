.class public final Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;
.super Ljava/lang/Object;
.source "AutoConfiguredLoadBalancerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$FailingPicker;,
        Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$EmptyPicker;,
        Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;,
        Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;,
        Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$NoopLoadBalancer;
    }
.end annotation


# instance fields
.field private final defaultPolicy:Ljava/lang/String;

.field private final registry:Lio/grpc/LoadBalancerRegistry;


# direct methods
.method constructor <init>(Lio/grpc/LoadBalancerRegistry;Ljava/lang/String;)V
    .locals 1
    .param p1, "registry"    # Lio/grpc/LoadBalancerRegistry;
    .param p2, "defaultPolicy"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "registry"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancerRegistry;

    iput-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->registry:Lio/grpc/LoadBalancerRegistry;

    .line 57
    const-string v0, "defaultPolicy"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->defaultPolicy:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultPolicy"    # Ljava/lang/String;

    .line 51
    invoke-static {}, Lio/grpc/LoadBalancerRegistry;->getDefaultRegistry()Lio/grpc/LoadBalancerRegistry;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;-><init>(Lio/grpc/LoadBalancerRegistry;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    .line 45
    iget-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->defaultPolicy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;)Lio/grpc/LoadBalancerRegistry;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    .line 45
    iget-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->registry:Lio/grpc/LoadBalancerRegistry;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/LoadBalancerProvider;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->getProviderOrThrow(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/LoadBalancerProvider;

    move-result-object v0

    return-object v0
.end method

.method private getProviderOrThrow(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/LoadBalancerProvider;
    .locals 4
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "choiceReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->registry:Lio/grpc/LoadBalancerRegistry;

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancerRegistry;->getProvider(Ljava/lang/String;)Lio/grpc/LoadBalancerProvider;

    move-result-object v0

    .line 187
    .local v0, "provider":Lio/grpc/LoadBalancerProvider;
    if-eqz v0, :cond_0

    .line 191
    return-object v0

    .line 188
    :cond_0
    new-instance v1, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to load \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but it\'s unavailable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;-><init>(Ljava/lang/String;Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$1;)V

    throw v1
.end method


# virtual methods
.method public newLoadBalancer(Lio/grpc/LoadBalancer$Helper;)Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;
    .locals 1
    .param p1, "helper"    # Lio/grpc/LoadBalancer$Helper;

    .line 61
    new-instance v0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;-><init>(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;Lio/grpc/LoadBalancer$Helper;)V

    return-object v0
.end method

.method parseLoadBalancerPolicy(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/NameResolver$ConfigOrError;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 217
    .local p1, "serviceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    .line 218
    .local v0, "loadBalancerConfigs":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/ServiceConfigUtil$LbConfig;>;"
    if-eqz p1, :cond_0

    .line 219
    nop

    .line 220
    :try_start_0
    invoke-static {p1}, Lio/grpc/internal/ServiceConfigUtil;->getLoadBalancingConfigsFromServiceConfig(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 221
    .local v1, "rawLbConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-static {v1}, Lio/grpc/internal/ServiceConfigUtil;->unwrapLoadBalancingConfigList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 227
    .end local v0    # "loadBalancerConfigs":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/ServiceConfigUtil$LbConfig;>;"
    .end local v1    # "rawLbConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :catch_0
    move-exception v0

    goto :goto_1

    .line 223
    .restart local v0    # "loadBalancerConfigs":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/ServiceConfigUtil$LbConfig;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    iget-object v1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->registry:Lio/grpc/LoadBalancerRegistry;

    invoke-static {v0, v1}, Lio/grpc/internal/ServiceConfigUtil;->selectLbPolicyFromList(Ljava/util/List;Lio/grpc/LoadBalancerRegistry;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 228
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    sget-object v1, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    .line 229
    const-string v2, "can\'t parse load balancer configuration"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    .line 228
    invoke-static {v1}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1

    return-object v1

    .line 226
    .local v0, "loadBalancerConfigs":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/ServiceConfigUtil$LbConfig;>;"
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
