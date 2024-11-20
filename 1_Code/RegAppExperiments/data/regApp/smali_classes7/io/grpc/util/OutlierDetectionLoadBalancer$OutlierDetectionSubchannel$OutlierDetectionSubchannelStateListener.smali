.class Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel$OutlierDetectionSubchannelStateListener;
.super Ljava/lang/Object;
.source "OutlierDetectionLoadBalancer.java"

# interfaces
.implements Lio/grpc/LoadBalancer$SubchannelStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OutlierDetectionSubchannelStateListener"
.end annotation


# instance fields
.field private final delegate:Lio/grpc/LoadBalancer$SubchannelStateListener;

.field final synthetic this$1:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;


# direct methods
.method constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;Lio/grpc/LoadBalancer$SubchannelStateListener;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;
    .param p2, "delegate"    # Lio/grpc/LoadBalancer$SubchannelStateListener;

    .line 344
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel$OutlierDetectionSubchannelStateListener;->this$1:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel$OutlierDetectionSubchannelStateListener;->delegate:Lio/grpc/LoadBalancer$SubchannelStateListener;

    .line 346
    return-void
.end method


# virtual methods
.method public onSubchannelState(Lio/grpc/ConnectivityStateInfo;)V
    .locals 1
    .param p1, "newState"    # Lio/grpc/ConnectivityStateInfo;

    .line 350
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel$OutlierDetectionSubchannelStateListener;->this$1:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;

    invoke-static {v0, p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->access$502(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;Lio/grpc/ConnectivityStateInfo;)Lio/grpc/ConnectivityStateInfo;

    .line 351
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel$OutlierDetectionSubchannelStateListener;->this$1:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;

    invoke-static {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->access$600(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel$OutlierDetectionSubchannelStateListener;->delegate:Lio/grpc/LoadBalancer$SubchannelStateListener;

    invoke-interface {v0, p1}, Lio/grpc/LoadBalancer$SubchannelStateListener;->onSubchannelState(Lio/grpc/ConnectivityStateInfo;)V

    .line 354
    :cond_0
    return-void
.end method
