.class Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OutlierDetectionPicker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracer;,
        Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;
    }
.end annotation


# instance fields
.field private final delegate:Lio/grpc/LoadBalancer$SubchannelPicker;

.field final synthetic this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;


# direct methods
.method constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer;Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/util/OutlierDetectionLoadBalancer;
    .param p2, "delegate"    # Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 367
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    .line 368
    iput-object p2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;->delegate:Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 369
    return-void
.end method


# virtual methods
.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 5
    .param p1, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 373
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;->delegate:Lio/grpc/LoadBalancer$SubchannelPicker;

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$SubchannelPicker;->pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v0

    .line 375
    .local v0, "pickResult":Lio/grpc/LoadBalancer$PickResult;
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$PickResult;->getSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v1

    .line 376
    .local v1, "subchannel":Lio/grpc/LoadBalancer$Subchannel;
    if-eqz v1, :cond_0

    .line 377
    new-instance v2, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;

    .line 379
    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Subchannel;->getAttributes()Lio/grpc/Attributes;

    move-result-object v3

    invoke-static {}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$400()Lio/grpc/Attributes$Key;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    invoke-direct {v2, p0, v3}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;)V

    .line 377
    invoke-static {v1, v2}, Lio/grpc/LoadBalancer$PickResult;->withSubchannel(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ClientStreamTracer$Factory;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v2

    return-object v2

    .line 382
    :cond_0
    return-object v0
.end method
