.class final Lio/grpc/internal/PickFirstLoadBalancer;
.super Lio/grpc/LoadBalancer;
.source "PickFirstLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;,
        Lio/grpc/internal/PickFirstLoadBalancer$Picker;
    }
.end annotation


# instance fields
.field private final helper:Lio/grpc/LoadBalancer$Helper;

.field private subchannel:Lio/grpc/LoadBalancer$Subchannel;


# direct methods
.method constructor <init>(Lio/grpc/LoadBalancer$Helper;)V
    .locals 1
    .param p1, "helper"    # Lio/grpc/LoadBalancer$Helper;

    .line 43
    invoke-direct {p0}, Lio/grpc/LoadBalancer;-><init>()V

    .line 44
    const-string v0, "helper"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$Helper;

    iput-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/PickFirstLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/PickFirstLoadBalancer;
    .param p1, "x1"    # Lio/grpc/LoadBalancer$Subchannel;
    .param p2, "x2"    # Lio/grpc/ConnectivityStateInfo;

    .line 39
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/PickFirstLoadBalancer;->processSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/internal/PickFirstLoadBalancer;)Lio/grpc/LoadBalancer$Helper;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/PickFirstLoadBalancer;

    .line 39
    iget-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    return-object v0
.end method

.method private processSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 4
    .param p1, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;
    .param p2, "stateInfo"    # Lio/grpc/ConnectivityStateInfo;

    .line 93
    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    .line 94
    .local v0, "currentState":Lio/grpc/ConnectivityState;
    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v1

    sget-object v2, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v1

    sget-object v2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v1, v2, :cond_2

    .line 98
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Helper;->refreshNameResolution()V

    .line 102
    :cond_2
    sget-object v1, Lio/grpc/internal/PickFirstLoadBalancer$2;->$SwitchMap$io$grpc$ConnectivityState:[I

    invoke-virtual {v0}, Lio/grpc/ConnectivityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 118
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :pswitch_0
    new-instance v1, Lio/grpc/internal/PickFirstLoadBalancer$Picker;

    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getStatus()Lio/grpc/Status;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/internal/PickFirstLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    .line 116
    .local v1, "picker":Lio/grpc/LoadBalancer$SubchannelPicker;
    goto :goto_0

    .line 112
    .end local v1    # "picker":Lio/grpc/LoadBalancer$SubchannelPicker;
    :pswitch_1
    new-instance v1, Lio/grpc/internal/PickFirstLoadBalancer$Picker;

    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withSubchannel(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/internal/PickFirstLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    .line 113
    .restart local v1    # "picker":Lio/grpc/LoadBalancer$SubchannelPicker;
    goto :goto_0

    .line 109
    .end local v1    # "picker":Lio/grpc/LoadBalancer$SubchannelPicker;
    :pswitch_2
    new-instance v1, Lio/grpc/internal/PickFirstLoadBalancer$Picker;

    invoke-static {}, Lio/grpc/LoadBalancer$PickResult;->withNoResult()Lio/grpc/LoadBalancer$PickResult;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/internal/PickFirstLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    .line 110
    .restart local v1    # "picker":Lio/grpc/LoadBalancer$SubchannelPicker;
    goto :goto_0

    .line 104
    .end local v1    # "picker":Lio/grpc/LoadBalancer$SubchannelPicker;
    :pswitch_3
    new-instance v1, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;-><init>(Lio/grpc/internal/PickFirstLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;)V

    .line 105
    .restart local v1    # "picker":Lio/grpc/LoadBalancer$SubchannelPicker;
    nop

    .line 120
    :goto_0
    iget-object v2, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v2, v0, v1}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 121
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public acceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Z
    .locals 6
    .param p1, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 49
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 50
    .local v0, "servers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameResolver returned no usable address. addrs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 52
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", attrs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAttributes()Lio/grpc/Attributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/grpc/internal/PickFirstLoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    .line 54
    const/4 v1, 0x0

    return v1

    .line 57
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    if-nez v1, :cond_1

    .line 58
    iget-object v1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 59
    invoke-static {}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->newBuilder()Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v2

    .line 60
    invoke-virtual {v2, v0}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->build()Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Lio/grpc/LoadBalancer$Helper;->createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v1

    .line 62
    .local v1, "subchannel":Lio/grpc/LoadBalancer$Subchannel;
    new-instance v2, Lio/grpc/internal/PickFirstLoadBalancer$1;

    invoke-direct {v2, p0, v1}, Lio/grpc/internal/PickFirstLoadBalancer$1;-><init>(Lio/grpc/internal/PickFirstLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;)V

    invoke-virtual {v1, v2}, Lio/grpc/LoadBalancer$Subchannel;->start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    .line 68
    iput-object v1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    .line 72
    iget-object v2, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    sget-object v3, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    new-instance v4, Lio/grpc/internal/PickFirstLoadBalancer$Picker;

    invoke-static {v1}, Lio/grpc/LoadBalancer$PickResult;->withSubchannel(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/grpc/internal/PickFirstLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    invoke-virtual {v2, v3, v4}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 73
    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    .line 74
    .end local v1    # "subchannel":Lio/grpc/LoadBalancer$Subchannel;
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v1, v0}, Lio/grpc/LoadBalancer$Subchannel;->updateAddresses(Ljava/util/List;)V

    .line 78
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public handleNameResolutionError(Lio/grpc/Status;)V
    .locals 4
    .param p1, "error"    # Lio/grpc/Status;

    .line 83
    iget-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Subchannel;->shutdown()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    .line 89
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v2, Lio/grpc/internal/PickFirstLoadBalancer$Picker;

    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/grpc/internal/PickFirstLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    invoke-virtual {v0, v1, v2}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 90
    return-void
.end method

.method public requestConnection()V
    .locals 1

    .line 132
    iget-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    .line 135
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 125
    iget-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Subchannel;->shutdown()V

    .line 128
    :cond_0
    return-void
.end method
