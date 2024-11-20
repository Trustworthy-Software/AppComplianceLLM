.class public final Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;
.super Ljava/lang/Object;
.source "AutoConfiguredLoadBalancerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AutoConfiguredLoadBalancer"
.end annotation


# instance fields
.field private delegate:Lio/grpc/LoadBalancer;

.field private delegateProvider:Lio/grpc/LoadBalancerProvider;

.field private final helper:Lio/grpc/LoadBalancer$Helper;

.field final synthetic this$0:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;


# direct methods
.method constructor <init>(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;Lio/grpc/LoadBalancer$Helper;)V
    .locals 3
    .param p1, "this$0"    # Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;
    .param p2, "helper"    # Lio/grpc/LoadBalancer$Helper;

    .line 90
    iput-object p1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->this$0:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 92
    invoke-static {p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->access$100(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;)Lio/grpc/LoadBalancerRegistry;

    move-result-object v0

    invoke-static {p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->access$000(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/LoadBalancerRegistry;->getProvider(Ljava/lang/String;)Lio/grpc/LoadBalancerProvider;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegateProvider:Lio/grpc/LoadBalancerProvider;

    .line 93
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p2}, Lio/grpc/LoadBalancerProvider;->newLoadBalancer(Lio/grpc/LoadBalancer$Helper;)Lio/grpc/LoadBalancer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    .line 99
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find policy \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->access$000(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDelegate()Lio/grpc/LoadBalancer;
    .locals 1

    .line 170
    iget-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    return-object v0
.end method

.method getDelegateProvider()Lio/grpc/LoadBalancerProvider;
    .locals 1

    .line 180
    iget-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegateProvider:Lio/grpc/LoadBalancerProvider;

    return-object v0
.end method

.method handleNameResolutionError(Lio/grpc/Status;)V
    .locals 1
    .param p1, "error"    # Lio/grpc/Status;

    .line 151
    invoke-virtual {p0}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->getDelegate()Lio/grpc/LoadBalancer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    .line 152
    return-void
.end method

.method handleSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 1
    .param p1, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;
    .param p2, "stateInfo"    # Lio/grpc/ConnectivityStateInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    invoke-virtual {p0}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->getDelegate()Lio/grpc/LoadBalancer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer;->handleSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V

    .line 157
    return-void
.end method

.method requestConnection()V
    .locals 1

    .line 160
    invoke-virtual {p0}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->getDelegate()Lio/grpc/LoadBalancer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer;->requestConnection()V

    .line 161
    return-void
.end method

.method setDelegate(Lio/grpc/LoadBalancer;)V
    .locals 0
    .param p1, "lb"    # Lio/grpc/LoadBalancer;

    .line 175
    iput-object p1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    .line 176
    return-void
.end method

.method shutdown()V
    .locals 1

    .line 164
    iget-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    invoke-virtual {v0}, Lio/grpc/LoadBalancer;->shutdown()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    .line 166
    return-void
.end method

.method tryAcceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Z
    .locals 7
    .param p1, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 106
    nop

    .line 107
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getLoadBalancingPolicyConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

    .line 109
    .local v0, "policySelection":Lio/grpc/internal/ServiceConfigUtil$PolicySelection;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 112
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->this$0:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    invoke-static {v2}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->access$000(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "using default policy"

    invoke-static {v2, v3, v4}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->access$200(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/LoadBalancerProvider;

    move-result-object v2
    :try_end_0
    .catch Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .local v2, "defaultProvider":Lio/grpc/LoadBalancerProvider;
    nop

    .line 121
    new-instance v3, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;

    invoke-direct {v3, v2, v1}, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;-><init>(Lio/grpc/LoadBalancerProvider;Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0

    .line 113
    .end local v2    # "defaultProvider":Lio/grpc/LoadBalancerProvider;
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;
    sget-object v3, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    invoke-virtual {v2}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    .line 115
    .local v3, "s":Lio/grpc/Status;
    iget-object v4, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    sget-object v5, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v6, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$FailingPicker;

    invoke-direct {v6, v3}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$FailingPicker;-><init>(Lio/grpc/Status;)V

    invoke-virtual {v4, v5, v6}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 116
    iget-object v4, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    invoke-virtual {v4}, Lio/grpc/LoadBalancer;->shutdown()V

    .line 117
    iput-object v1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegateProvider:Lio/grpc/LoadBalancerProvider;

    .line 118
    new-instance v4, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$NoopLoadBalancer;

    invoke-direct {v4, v1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$NoopLoadBalancer;-><init>(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$1;)V

    iput-object v4, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    .line 119
    const/4 v1, 0x1

    return v1

    .line 125
    .end local v2    # "e":Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException;
    .end local v3    # "s":Lio/grpc/Status;
    :cond_0
    :goto_0
    iget-object v2, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegateProvider:Lio/grpc/LoadBalancerProvider;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->provider:Lio/grpc/LoadBalancerProvider;

    .line 126
    invoke-virtual {v2}, Lio/grpc/LoadBalancerProvider;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegateProvider:Lio/grpc/LoadBalancerProvider;

    invoke-virtual {v3}, Lio/grpc/LoadBalancerProvider;->getPolicyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    :cond_1
    iget-object v2, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    sget-object v3, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    new-instance v4, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$EmptyPicker;

    invoke-direct {v4, v1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$EmptyPicker;-><init>(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$1;)V

    invoke-virtual {v2, v3, v4}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 128
    iget-object v1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    invoke-virtual {v1}, Lio/grpc/LoadBalancer;->shutdown()V

    .line 129
    iget-object v1, v0, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->provider:Lio/grpc/LoadBalancerProvider;

    iput-object v1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegateProvider:Lio/grpc/LoadBalancerProvider;

    .line 130
    iget-object v2, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    .line 131
    .local v2, "old":Lio/grpc/LoadBalancer;
    iget-object v3, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v1, v3}, Lio/grpc/LoadBalancerProvider;->newLoadBalancer(Lio/grpc/LoadBalancer$Helper;)Lio/grpc/LoadBalancer;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    .line 132
    iget-object v1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Helper;->getChannelLogger()Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    .line 134
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 132
    const-string v5, "Load balancer changed from {0} to {1}"

    invoke-virtual {v1, v3, v5, v4}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    .end local v2    # "old":Lio/grpc/LoadBalancer;
    :cond_2
    iget-object v1, v0, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->config:Ljava/lang/Object;

    .line 137
    .local v1, "lbConfig":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 138
    iget-object v2, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v2}, Lio/grpc/LoadBalancer$Helper;->getChannelLogger()Lio/grpc/ChannelLogger;

    move-result-object v2

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    iget-object v4, v0, Lio/grpc/internal/ServiceConfigUtil$PolicySelection;->config:Ljava/lang/Object;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Load-balancing config: {0}"

    invoke-virtual {v2, v3, v5, v4}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_3
    invoke-virtual {p0}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->getDelegate()Lio/grpc/LoadBalancer;

    move-result-object v2

    .line 143
    invoke-static {}, Lio/grpc/LoadBalancer$ResolvedAddresses;->newBuilder()Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v3

    .line 144
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v3

    .line 145
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAttributes()Lio/grpc/Attributes;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v3

    .line 146
    invoke-virtual {v3, v1}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setLoadBalancingPolicyConfig(Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v3

    .line 147
    invoke-virtual {v3}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->build()Lio/grpc/LoadBalancer$ResolvedAddresses;

    move-result-object v3

    .line 142
    invoke-virtual {v2, v3}, Lio/grpc/LoadBalancer;->acceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Z

    move-result v2

    return v2
.end method
