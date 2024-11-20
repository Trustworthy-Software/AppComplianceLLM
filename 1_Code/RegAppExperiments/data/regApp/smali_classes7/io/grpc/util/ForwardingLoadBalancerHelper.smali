.class public abstract Lio/grpc/util/ForwardingLoadBalancerHelper;
.super Lio/grpc/LoadBalancer$Helper;
.source "ForwardingLoadBalancerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lio/grpc/LoadBalancer$Helper;-><init>()V

    return-void
.end method


# virtual methods
.method public createOobChannel(Lio/grpc/EquivalentAddressGroup;Ljava/lang/String;)Lio/grpc/ManagedChannel;
    .locals 1
    .param p1, "eag"    # Lio/grpc/EquivalentAddressGroup;
    .param p2, "authority"    # Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->createOobChannel(Lio/grpc/EquivalentAddressGroup;Ljava/lang/String;)Lio/grpc/ManagedChannel;

    move-result-object v0

    return-object v0
.end method

.method public createOobChannel(Ljava/util/List;Ljava/lang/String;)Lio/grpc/ManagedChannel;
    .locals 1
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/ManagedChannel;"
        }
    .end annotation

    .line 56
    .local p1, "eag":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->createOobChannel(Ljava/util/List;Ljava/lang/String;)Lio/grpc/ManagedChannel;

    move-result-object v0

    return-object v0
.end method

.method public createResolvingOobChannel(Ljava/lang/String;)Lio/grpc/ManagedChannel;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$Helper;->createResolvingOobChannel(Ljava/lang/String;)Lio/grpc/ManagedChannel;

    move-result-object v0

    return-object v0
.end method

.method public createResolvingOobChannelBuilder(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$Helper;->createResolvingOobChannelBuilder(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public createResolvingOobChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "creds"    # Lio/grpc/ChannelCredentials;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/grpc/ChannelCredentials;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->createResolvingOobChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;
    .locals 1
    .param p1, "args"    # Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    .line 46
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$Helper;->createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lio/grpc/LoadBalancer$Helper;
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelCredentials()Lio/grpc/ChannelCredentials;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getChannelCredentials()Lio/grpc/ChannelCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getChannelLogger()Lio/grpc/ChannelLogger;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getChannelLogger()Lio/grpc/ChannelLogger;

    move-result-object v0

    return-object v0
.end method

.method public getNameResolverArgs()Lio/grpc/NameResolver$Args;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getNameResolverArgs()Lio/grpc/NameResolver$Args;

    move-result-object v0

    return-object v0
.end method

.method public getNameResolverRegistry()Lio/grpc/NameResolverRegistry;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getNameResolverRegistry()Lio/grpc/NameResolverRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getSynchronizationContext()Lio/grpc/SynchronizationContext;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getSynchronizationContext()Lio/grpc/SynchronizationContext;

    move-result-object v0

    return-object v0
.end method

.method public getUnsafeChannelCredentials()Lio/grpc/ChannelCredentials;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getUnsafeChannelCredentials()Lio/grpc/ChannelCredentials;

    move-result-object v0

    return-object v0
.end method

.method public ignoreRefreshNameResolutionCheck()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->ignoreRefreshNameResolutionCheck()V

    .line 101
    return-void
.end method

.method public refreshNameResolution()V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->refreshNameResolution()V

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 145
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 1
    .param p1, "newState"    # Lio/grpc/ConnectivityState;
    .param p2, "newPicker"    # Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 89
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 90
    return-void
.end method

.method public updateOobChannelAddresses(Lio/grpc/ManagedChannel;Lio/grpc/EquivalentAddressGroup;)V
    .locals 1
    .param p1, "channel"    # Lio/grpc/ManagedChannel;
    .param p2, "eag"    # Lio/grpc/EquivalentAddressGroup;

    .line 61
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->updateOobChannelAddresses(Lio/grpc/ManagedChannel;Lio/grpc/EquivalentAddressGroup;)V

    .line 62
    return-void
.end method

.method public updateOobChannelAddresses(Lio/grpc/ManagedChannel;Ljava/util/List;)V
    .locals 1
    .param p1, "channel"    # Lio/grpc/ManagedChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ManagedChannel;",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p2, "eag":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-virtual {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;->delegate()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->updateOobChannelAddresses(Lio/grpc/ManagedChannel;Ljava/util/List;)V

    .line 67
    return-void
.end method
