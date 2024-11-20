.class public abstract Lio/grpc/LoadBalancer;
.super Ljava/lang/Object;
.source "LoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/LoadBalancer$Factory;,
        Lio/grpc/LoadBalancer$SubchannelStateListener;,
        Lio/grpc/LoadBalancer$Subchannel;,
        Lio/grpc/LoadBalancer$Helper;,
        Lio/grpc/LoadBalancer$CreateSubchannelArgs;,
        Lio/grpc/LoadBalancer$PickResult;,
        Lio/grpc/LoadBalancer$PickSubchannelArgs;,
        Lio/grpc/LoadBalancer$SubchannelPicker;,
        Lio/grpc/LoadBalancer$ResolvedAddresses;
    }
.end annotation


# static fields
.field public static final ATTR_HEALTH_CHECKING_CONFIG:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private recursionCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    nop

    .line 117
    const-string v0, "internal:health-checking-config"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/LoadBalancer;->ATTR_HEALTH_CHECKING_CONFIG:Lio/grpc/Attributes$Key;

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Z
    .locals 4
    .param p1, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 153
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lio/grpc/LoadBalancer;->canHandleEmptyAddressListFromNameResolution()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameResolver returned no usable address. addrs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 156
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", attrs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 157
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAttributes()Lio/grpc/Attributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v0, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/LoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    .line 158
    return v1

    .line 160
    :cond_0
    iget v0, p0, Lio/grpc/LoadBalancer;->recursionCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lio/grpc/LoadBalancer;->recursionCount:I

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0, p1}, Lio/grpc/LoadBalancer;->handleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V

    .line 163
    :cond_1
    iput v1, p0, Lio/grpc/LoadBalancer;->recursionCount:I

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public canHandleEmptyAddressListFromNameResolution()Z
    .locals 1

    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public abstract handleNameResolutionError(Lio/grpc/Status;)V
.end method

.method public handleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V
    .locals 2
    .param p1, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 131
    iget v0, p0, Lio/grpc/LoadBalancer;->recursionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/grpc/LoadBalancer;->recursionCount:I

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lio/grpc/LoadBalancer;->acceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Z

    .line 136
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/LoadBalancer;->recursionCount:I

    .line 137
    return-void
.end method

.method public handleSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 0
    .param p1, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;
    .param p2, "stateInfo"    # Lio/grpc/ConnectivityStateInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    return-void
.end method

.method public requestConnection()V
    .locals 0

    .line 398
    return-void
.end method

.method public abstract shutdown()V
.end method
