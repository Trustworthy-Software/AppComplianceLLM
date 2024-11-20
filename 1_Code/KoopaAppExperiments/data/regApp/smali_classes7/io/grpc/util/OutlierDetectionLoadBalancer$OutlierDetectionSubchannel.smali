.class Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;
.super Lio/grpc/util/ForwardingSubchannel;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OutlierDetectionSubchannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel$OutlierDetectionSubchannelStateListener;
    }
.end annotation


# instance fields
.field private addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

.field private final delegate:Lio/grpc/LoadBalancer$Subchannel;

.field private ejected:Z

.field private lastSubchannelState:Lio/grpc/ConnectivityStateInfo;

.field private subchannelStateListener:Lio/grpc/LoadBalancer$SubchannelStateListener;

.field final synthetic this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;


# direct methods
.method constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/util/OutlierDetectionLoadBalancer;
    .param p2, "delegate"    # Lio/grpc/LoadBalancer$Subchannel;

    .line 239
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    invoke-direct {p0}, Lio/grpc/util/ForwardingSubchannel;-><init>()V

    .line 240
    iput-object p2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->delegate:Lio/grpc/LoadBalancer$Subchannel;

    .line 241
    return-void
.end method

.method static synthetic access$502(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;Lio/grpc/ConnectivityStateInfo;)Lio/grpc/ConnectivityStateInfo;
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;
    .param p1, "x1"    # Lio/grpc/ConnectivityStateInfo;

    .line 231
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->lastSubchannelState:Lio/grpc/ConnectivityStateInfo;

    return-object p1
.end method

.method static synthetic access$600(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;

    .line 231
    iget-boolean v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->ejected:Z

    return v0
.end method


# virtual methods
.method clearAddressTracker()V
    .locals 1

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 313
    return-void
.end method

.method protected delegate()Lio/grpc/LoadBalancer$Subchannel;
    .locals 1

    .line 334
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->delegate:Lio/grpc/LoadBalancer$Subchannel;

    return-object v0
.end method

.method eject()V
    .locals 2

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->ejected:Z

    .line 317
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->subchannelStateListener:Lio/grpc/LoadBalancer$SubchannelStateListener;

    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 318
    invoke-static {v1}, Lio/grpc/ConnectivityStateInfo;->forTransientFailure(Lio/grpc/Status;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v1

    .line 317
    invoke-interface {v0, v1}, Lio/grpc/LoadBalancer$SubchannelStateListener;->onSubchannelState(Lio/grpc/ConnectivityStateInfo;)V

    .line 319
    return-void
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 3

    .line 251
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->delegate:Lio/grpc/LoadBalancer$Subchannel;

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Subchannel;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v0

    invoke-static {}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$400()Lio/grpc/Attributes$Key;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    invoke-virtual {v0, v1, v2}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v0

    .line 252
    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->delegate:Lio/grpc/LoadBalancer$Subchannel;

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Subchannel;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method isEjected()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->ejected:Z

    return v0
.end method

.method setAddressTracker(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;)V
    .locals 0
    .param p1, "addressTracker"    # Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 308
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 309
    return-void
.end method

.method public start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V
    .locals 1
    .param p1, "listener"    # Lio/grpc/LoadBalancer$SubchannelStateListener;

    .line 245
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->subchannelStateListener:Lio/grpc/LoadBalancer$SubchannelStateListener;

    .line 246
    new-instance v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel$OutlierDetectionSubchannelStateListener;

    invoke-direct {v0, p0, p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel$OutlierDetectionSubchannelStateListener;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    invoke-super {p0, v0}, Lio/grpc/util/ForwardingSubchannel;->start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    .line 247
    return-void
.end method

.method uneject()V
    .locals 2

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->ejected:Z

    .line 323
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->lastSubchannelState:Lio/grpc/ConnectivityStateInfo;

    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->subchannelStateListener:Lio/grpc/LoadBalancer$SubchannelStateListener;

    invoke-interface {v1, v0}, Lio/grpc/LoadBalancer$SubchannelStateListener;->onSubchannelState(Lio/grpc/ConnectivityStateInfo;)V

    .line 326
    :cond_0
    return-void
.end method

.method public updateAddresses(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)V"
        }
    .end annotation

    .line 266
    .local p1, "addressGroups":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->getAllAddresses()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$200(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$200(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    invoke-virtual {v0, v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->addressTracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    invoke-virtual {v0, p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->removeSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z

    .line 273
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v0}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 274
    .local v0, "address":Ljava/net/SocketAddress;
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v1, v1, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v1, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v1, v1, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v1, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    invoke-virtual {v1, p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->addSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z

    .line 277
    .end local v0    # "address":Ljava/net/SocketAddress;
    :cond_1
    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->getAllAddresses()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$200(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$200(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 282
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->getAddresses()Lio/grpc/EquivalentAddressGroup;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v0, v0, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->getAddresses()Lio/grpc/EquivalentAddressGroup;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 284
    .local v0, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual {v0, p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->removeSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z

    .line 285
    invoke-virtual {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->resetCallCounters()V

    .line 286
    .end local v0    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->getAllAddresses()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$200(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$200(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 290
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v0}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 291
    .local v0, "address":Ljava/net/SocketAddress;
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v1, v1, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v1, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 292
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v1, v1, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-virtual {v1, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 293
    .local v1, "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    invoke-virtual {v1, p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->addSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z

    .line 300
    .end local v0    # "address":Ljava/net/SocketAddress;
    .end local v1    # "tracker":Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    :cond_4
    :goto_0
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->delegate:Lio/grpc/LoadBalancer$Subchannel;

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$Subchannel;->updateAddresses(Ljava/util/List;)V

    .line 301
    return-void
.end method
