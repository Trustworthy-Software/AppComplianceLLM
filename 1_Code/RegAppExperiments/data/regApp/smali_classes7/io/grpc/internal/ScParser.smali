.class public final Lio/grpc/internal/ScParser;
.super Lio/grpc/NameResolver$ServiceConfigParser;
.source "ScParser.java"


# instance fields
.field private final autoLoadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

.field private final maxHedgedAttemptsLimit:I

.field private final maxRetryAttemptsLimit:I

.field private final retryEnabled:Z


# direct methods
.method public constructor <init>(ZIILio/grpc/internal/AutoConfiguredLoadBalancerFactory;)V
    .locals 1
    .param p1, "retryEnabled"    # Z
    .param p2, "maxRetryAttemptsLimit"    # I
    .param p3, "maxHedgedAttemptsLimit"    # I
    .param p4, "autoLoadBalancerFactory"    # Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    .line 41
    invoke-direct {p0}, Lio/grpc/NameResolver$ServiceConfigParser;-><init>()V

    .line 42
    iput-boolean p1, p0, Lio/grpc/internal/ScParser;->retryEnabled:Z

    .line 43
    iput p2, p0, Lio/grpc/internal/ScParser;->maxRetryAttemptsLimit:I

    .line 44
    iput p3, p0, Lio/grpc/internal/ScParser;->maxHedgedAttemptsLimit:I

    .line 45
    const-string v0, "autoLoadBalancerFactory"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    iput-object v0, p0, Lio/grpc/internal/ScParser;->autoLoadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    .line 46
    return-void
.end method


# virtual methods
.method public parseServiceConfig(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/NameResolver$ConfigOrError;"
        }
    .end annotation

    .line 52
    .local p1, "rawServiceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ScParser;->autoLoadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    .line 53
    invoke-virtual {v0, p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->parseLoadBalancerPolicy(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v0

    .line 54
    .local v0, "choiceFromLoadBalancer":Lio/grpc/NameResolver$ConfigOrError;
    if-nez v0, :cond_0

    .line 55
    const/4 v1, 0x0

    .local v1, "loadBalancingPolicySelection":Ljava/lang/Object;
    goto :goto_0

    .line 56
    .end local v1    # "loadBalancingPolicySelection":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v0}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1

    return-object v1

    .line 59
    :cond_1
    invoke-virtual {v0}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v1

    .line 61
    .restart local v1    # "loadBalancingPolicySelection":Ljava/lang/Object;
    :goto_0
    iget-boolean v2, p0, Lio/grpc/internal/ScParser;->retryEnabled:Z

    iget v3, p0, Lio/grpc/internal/ScParser;->maxRetryAttemptsLimit:I

    iget v4, p0, Lio/grpc/internal/ScParser;->maxHedgedAttemptsLimit:I

    .line 62
    invoke-static {p1, v2, v3, v4, v1}, Lio/grpc/internal/ManagedChannelServiceConfig;->fromServiceConfig(Ljava/util/Map;ZIILjava/lang/Object;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object v2

    .line 61
    invoke-static {v2}, Lio/grpc/NameResolver$ConfigOrError;->fromConfig(Ljava/lang/Object;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 68
    .end local v0    # "choiceFromLoadBalancer":Lio/grpc/NameResolver$ConfigOrError;
    .end local v1    # "loadBalancingPolicySelection":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    .line 70
    const-string v2, "failed to parse service config"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    .line 69
    invoke-static {v1}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v1

    return-object v1
.end method
