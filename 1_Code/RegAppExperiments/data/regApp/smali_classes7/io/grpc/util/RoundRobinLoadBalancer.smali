.class final Lio/grpc/util/RoundRobinLoadBalancer;
.super Lio/grpc/LoadBalancer;
.source "RoundRobinLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/RoundRobinLoadBalancer$Ref;,
        Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;,
        Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;,
        Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;
    }
.end annotation


# static fields
.field private static final EMPTY_OK:Lio/grpc/Status;

.field static final STATE_INFO:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Lio/grpc/util/RoundRobinLoadBalancer$Ref<",
            "Lio/grpc/ConnectivityStateInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private currentPicker:Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

.field private currentState:Lio/grpc/ConnectivityState;

.field private final helper:Lio/grpc/LoadBalancer$Helper;

.field private final random:Ljava/util/Random;

.field private final subchannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/EquivalentAddressGroup;",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    nop

    .line 56
    const-string v0, "state-info"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/util/RoundRobinLoadBalancer;->STATE_INFO:Lio/grpc/Attributes$Key;

    .line 181
    sget-object v0, Lio/grpc/Status;->OK:Lio/grpc/Status;

    const-string v1, "no subchannels ready"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/util/RoundRobinLoadBalancer;->EMPTY_OK:Lio/grpc/Status;

    return-void
.end method

.method constructor <init>(Lio/grpc/LoadBalancer$Helper;)V
    .locals 2
    .param p1, "helper"    # Lio/grpc/LoadBalancer$Helper;

    .line 66
    invoke-direct {p0}, Lio/grpc/LoadBalancer;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    .line 64
    new-instance v0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    sget-object v1, Lio/grpc/util/RoundRobinLoadBalancer;->EMPTY_OK:Lio/grpc/Status;

    invoke-direct {v0, v1}, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;-><init>(Lio/grpc/Status;)V

    iput-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentPicker:Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

    .line 67
    const-string v0, "helper"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$Helper;

    iput-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 68
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->random:Ljava/util/Random;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lio/grpc/util/RoundRobinLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/RoundRobinLoadBalancer;
    .param p1, "x1"    # Lio/grpc/LoadBalancer$Subchannel;
    .param p2, "x2"    # Lio/grpc/ConnectivityStateInfo;

    .line 53
    invoke-direct {p0, p1, p2}, Lio/grpc/util/RoundRobinLoadBalancer;->processSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V

    return-void
.end method

.method private static filterNonFailingSubchannels(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;)",
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;"
        }
    .end annotation

    .line 230
    .local p0, "subchannels":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/LoadBalancer$Subchannel;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .local v0, "readySubchannels":Ljava/util/List;, "Ljava/util/List<Lio/grpc/LoadBalancer$Subchannel;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/LoadBalancer$Subchannel;

    .line 232
    .local v2, "subchannel":Lio/grpc/LoadBalancer$Subchannel;
    invoke-static {v2}, Lio/grpc/util/RoundRobinLoadBalancer;->isReady(Lio/grpc/LoadBalancer$Subchannel;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v2    # "subchannel":Lio/grpc/LoadBalancer$Subchannel;
    :cond_0
    goto :goto_0

    .line 236
    :cond_1
    return-object v0
.end method

.method private static getSubchannelStateInfoRef(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/util/RoundRobinLoadBalancer$Ref;
    .locals 2
    .param p0, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ")",
            "Lio/grpc/util/RoundRobinLoadBalancer$Ref<",
            "Lio/grpc/ConnectivityStateInfo;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lio/grpc/LoadBalancer$Subchannel;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    sget-object v1, Lio/grpc/util/RoundRobinLoadBalancer;->STATE_INFO:Lio/grpc/Attributes$Key;

    invoke-virtual {v0, v1}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    const-string v1, "STATE_INFO"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    return-object v0
.end method

.method static isReady(Lio/grpc/LoadBalancer$Subchannel;)Z
    .locals 2
    .param p0, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;

    .line 268
    invoke-static {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannelStateInfoRef(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    check-cast v0, Lio/grpc/ConnectivityStateInfo;

    invoke-virtual {v0}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 3
    .param p1, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;
    .param p2, "stateInfo"    # Lio/grpc/ConnectivityStateInfo;

    .line 148
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Subchannel;->getAddresses()Lio/grpc/EquivalentAddressGroup;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/util/RoundRobinLoadBalancer;->stripAttrs(Lio/grpc/EquivalentAddressGroup;)Lio/grpc/EquivalentAddressGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_2

    .line 152
    :cond_1
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->refreshNameResolution()V

    .line 154
    :cond_2
    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_3

    .line 155
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    .line 157
    :cond_3
    invoke-static {p1}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannelStateInfoRef(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    move-result-object v0

    .line 158
    .local v0, "subchannelStateRef":Lio/grpc/util/RoundRobinLoadBalancer$Ref;, "Lio/grpc/util/RoundRobinLoadBalancer$Ref<Lio/grpc/ConnectivityStateInfo;>;"
    iget-object v1, v0, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    check-cast v1, Lio/grpc/ConnectivityStateInfo;

    invoke-virtual {v1}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v1

    sget-object v2, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    invoke-virtual {v1, v2}, Lio/grpc/ConnectivityState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v1

    sget-object v2, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    invoke-virtual {v1, v2}, Lio/grpc/ConnectivityState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v1

    sget-object v2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    invoke-virtual {v1, v2}, Lio/grpc/ConnectivityState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 160
    :cond_4
    return-void

    .line 163
    :cond_5
    iput-object p2, v0, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    .line 164
    invoke-direct {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState()V

    .line 165
    return-void
.end method

.method private static setsDifference(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 272
    .local p0, "a":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "b":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 273
    .local v0, "aCopy":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 274
    return-object v0
.end method

.method private shutdownSubchannel(Lio/grpc/LoadBalancer$Subchannel;)V
    .locals 2
    .param p1, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;

    .line 168
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Subchannel;->shutdown()V

    .line 169
    invoke-static {p1}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannelStateInfoRef(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    .line 170
    invoke-static {v1}, Lio/grpc/ConnectivityStateInfo;->forNonError(Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    .line 171
    return-void
.end method

.method private static stripAttrs(Lio/grpc/EquivalentAddressGroup;)Lio/grpc/EquivalentAddressGroup;
    .locals 2
    .param p0, "eag"    # Lio/grpc/EquivalentAddressGroup;

    .line 253
    new-instance v0, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {p0}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/EquivalentAddressGroup;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static stripAttrs(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)",
            "Ljava/util/Map<",
            "Lio/grpc/EquivalentAddressGroup;",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation

    .line 245
    .local p0, "groupList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 246
    .local v0, "addrs":Ljava/util/Map;, "Ljava/util/Map<Lio/grpc/EquivalentAddressGroup;Lio/grpc/EquivalentAddressGroup;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/EquivalentAddressGroup;

    .line 247
    .local v2, "group":Lio/grpc/EquivalentAddressGroup;
    invoke-static {v2}, Lio/grpc/util/RoundRobinLoadBalancer;->stripAttrs(Lio/grpc/EquivalentAddressGroup;)Lio/grpc/EquivalentAddressGroup;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .end local v2    # "group":Lio/grpc/EquivalentAddressGroup;
    goto :goto_0

    .line 249
    :cond_0
    return-object v0
.end method

.method private updateBalancingState()V
    .locals 8

    .line 188
    invoke-virtual {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannels()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/util/RoundRobinLoadBalancer;->filterNonFailingSubchannels(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 189
    .local v0, "activeList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/LoadBalancer$Subchannel;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "isConnecting":Z
    sget-object v2, Lio/grpc/util/RoundRobinLoadBalancer;->EMPTY_OK:Lio/grpc/Status;

    .line 193
    .local v2, "aggStatus":Lio/grpc/Status;
    invoke-virtual {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannels()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/LoadBalancer$Subchannel;

    .line 194
    .local v4, "subchannel":Lio/grpc/LoadBalancer$Subchannel;
    invoke-static {v4}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannelStateInfoRef(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    move-result-object v5

    iget-object v5, v5, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    check-cast v5, Lio/grpc/ConnectivityStateInfo;

    .line 198
    .local v5, "stateInfo":Lio/grpc/ConnectivityStateInfo;
    invoke-virtual {v5}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v6

    sget-object v7, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-eq v6, v7, :cond_0

    invoke-virtual {v5}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v6

    sget-object v7, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v6, v7, :cond_1

    .line 199
    :cond_0
    const/4 v1, 0x1

    .line 201
    :cond_1
    sget-object v6, Lio/grpc/util/RoundRobinLoadBalancer;->EMPTY_OK:Lio/grpc/Status;

    if-eq v2, v6, :cond_2

    invoke-virtual {v2}, Lio/grpc/Status;->isOk()Z

    move-result v6

    if-nez v6, :cond_3

    .line 202
    :cond_2
    invoke-virtual {v5}, Lio/grpc/ConnectivityStateInfo;->getStatus()Lio/grpc/Status;

    move-result-object v2

    .line 204
    .end local v4    # "subchannel":Lio/grpc/LoadBalancer$Subchannel;
    .end local v5    # "stateInfo":Lio/grpc/ConnectivityStateInfo;
    :cond_3
    goto :goto_0

    .line 205
    :cond_4
    if-eqz v1, :cond_5

    sget-object v3, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    goto :goto_1

    :cond_5
    sget-object v3, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    :goto_1
    new-instance v4, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    invoke-direct {v4, v2}, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;-><init>(Lio/grpc/Status;)V

    invoke-direct {p0, v3, v4}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)V

    .line 209
    .end local v1    # "isConnecting":Z
    .end local v2    # "aggStatus":Lio/grpc/Status;
    goto :goto_2

    .line 212
    :cond_6
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->random:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 213
    .local v1, "startIndex":I
    sget-object v2, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    new-instance v3, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    invoke-direct {v3, v0, v1}, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;-><init>(Ljava/util/List;I)V

    invoke-direct {p0, v2, v3}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)V

    .line 215
    .end local v1    # "startIndex":I
    :goto_2
    return-void
.end method

.method private updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)V
    .locals 1
    .param p1, "state"    # Lio/grpc/ConnectivityState;
    .param p2, "picker"    # Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

    .line 218
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentState:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentPicker:Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

    invoke-virtual {p2, v0}, Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;->isEquivalentTo(Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 220
    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentState:Lio/grpc/ConnectivityState;

    .line 221
    iput-object p2, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentPicker:Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

    .line 223
    :cond_1
    return-void
.end method


# virtual methods
.method public acceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Z
    .locals 13
    .param p1, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 73
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameResolver returned no usable address. addrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAttributes()Lio/grpc/Attributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/util/RoundRobinLoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    .line 77
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, "servers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 82
    .local v1, "currentAddrs":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-static {v0}, Lio/grpc/util/RoundRobinLoadBalancer;->stripAttrs(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 83
    .local v2, "latestAddrs":Ljava/util/Map;, "Ljava/util/Map<Lio/grpc/EquivalentAddressGroup;Lio/grpc/EquivalentAddressGroup;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v3}, Lio/grpc/util/RoundRobinLoadBalancer;->setsDifference(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 86
    .local v3, "removedAddrs":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 87
    .local v5, "latestEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/grpc/EquivalentAddressGroup;Lio/grpc/EquivalentAddressGroup;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/EquivalentAddressGroup;

    .line 88
    .local v6, "strippedAddressGroup":Lio/grpc/EquivalentAddressGroup;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/grpc/EquivalentAddressGroup;

    .line 89
    .local v7, "originalAddressGroup":Lio/grpc/EquivalentAddressGroup;
    iget-object v8, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/grpc/LoadBalancer$Subchannel;

    .line 90
    .local v8, "existingSubchannel":Lio/grpc/LoadBalancer$Subchannel;
    if-eqz v8, :cond_1

    .line 92
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/grpc/LoadBalancer$Subchannel;->updateAddresses(Ljava/util/List;)V

    .line 93
    goto :goto_0

    .line 100
    :cond_1
    invoke-static {}, Lio/grpc/Attributes;->newBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v9

    sget-object v10, Lio/grpc/util/RoundRobinLoadBalancer;->STATE_INFO:Lio/grpc/Attributes$Key;

    new-instance v11, Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    sget-object v12, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    .line 105
    invoke-static {v12}, Lio/grpc/ConnectivityStateInfo;->forNonError(Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v12

    invoke-direct {v11, v12}, Lio/grpc/util/RoundRobinLoadBalancer$Ref;-><init>(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v9, v10, v11}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v9

    .line 107
    .local v9, "subchannelAttrs":Lio/grpc/Attributes$Builder;
    iget-object v10, p0, Lio/grpc/util/RoundRobinLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 108
    invoke-static {}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->newBuilder()Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v11

    .line 109
    invoke-virtual {v11, v7}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->setAddresses(Lio/grpc/EquivalentAddressGroup;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v11

    .line 110
    invoke-virtual {v9}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v12

    invoke-virtual {v11, v12}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v11

    .line 111
    invoke-virtual {v11}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->build()Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    move-result-object v11

    .line 108
    invoke-virtual {v10, v11}, Lio/grpc/LoadBalancer$Helper;->createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v10

    .line 107
    const-string v11, "subchannel"

    invoke-static {v10, v11}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/grpc/LoadBalancer$Subchannel;

    .line 113
    .local v10, "subchannel":Lio/grpc/LoadBalancer$Subchannel;
    new-instance v11, Lio/grpc/util/RoundRobinLoadBalancer$1;

    invoke-direct {v11, p0, v10}, Lio/grpc/util/RoundRobinLoadBalancer$1;-><init>(Lio/grpc/util/RoundRobinLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;)V

    invoke-virtual {v10, v11}, Lio/grpc/LoadBalancer$Subchannel;->start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    .line 119
    iget-object v11, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v11, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {v10}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    .line 121
    .end local v5    # "latestEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/grpc/EquivalentAddressGroup;Lio/grpc/EquivalentAddressGroup;>;"
    .end local v6    # "strippedAddressGroup":Lio/grpc/EquivalentAddressGroup;
    .end local v7    # "originalAddressGroup":Lio/grpc/EquivalentAddressGroup;
    .end local v8    # "existingSubchannel":Lio/grpc/LoadBalancer$Subchannel;
    .end local v9    # "subchannelAttrs":Lio/grpc/Attributes$Builder;
    .end local v10    # "subchannel":Lio/grpc/LoadBalancer$Subchannel;
    goto :goto_0

    .line 123
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v4, "removedSubchannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/LoadBalancer$Subchannel;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/EquivalentAddressGroup;

    .line 125
    .local v6, "addressGroup":Lio/grpc/EquivalentAddressGroup;
    iget-object v7, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/grpc/LoadBalancer$Subchannel;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v6    # "addressGroup":Lio/grpc/EquivalentAddressGroup;
    goto :goto_1

    .line 130
    :cond_3
    invoke-direct {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState()V

    .line 133
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/LoadBalancer$Subchannel;

    .line 134
    .local v6, "removedSubchannel":Lio/grpc/LoadBalancer$Subchannel;
    invoke-direct {p0, v6}, Lio/grpc/util/RoundRobinLoadBalancer;->shutdownSubchannel(Lio/grpc/LoadBalancer$Subchannel;)V

    .line 135
    .end local v6    # "removedSubchannel":Lio/grpc/LoadBalancer$Subchannel;
    goto :goto_2

    .line 137
    :cond_4
    const/4 v5, 0x1

    return v5
.end method

.method getSubchannels()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public handleNameResolutionError(Lio/grpc/Status;)V
    .locals 2
    .param p1, "error"    # Lio/grpc/Status;

    .line 142
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentState:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_0

    .line 143
    sget-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v1, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    invoke-direct {v1, p1}, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;-><init>(Lio/grpc/Status;)V

    invoke-direct {p0, v0, v1}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)V

    .line 145
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 175
    invoke-virtual {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannels()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/LoadBalancer$Subchannel;

    .line 176
    .local v1, "subchannel":Lio/grpc/LoadBalancer$Subchannel;
    invoke-direct {p0, v1}, Lio/grpc/util/RoundRobinLoadBalancer;->shutdownSubchannel(Lio/grpc/LoadBalancer$Subchannel;)V

    .line 177
    .end local v1    # "subchannel":Lio/grpc/LoadBalancer$Subchannel;
    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 179
    return-void
.end method
