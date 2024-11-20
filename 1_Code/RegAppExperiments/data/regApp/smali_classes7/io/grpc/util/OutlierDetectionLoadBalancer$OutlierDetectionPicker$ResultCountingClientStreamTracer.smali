.class Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracer;
.super Lio/grpc/ClientStreamTracer;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultCountingClientStreamTracer"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;

.field tracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;


# direct methods
.method public constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;
    .param p2, "tracker"    # Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 411
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracer;->this$1:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;

    invoke-direct {p0}, Lio/grpc/ClientStreamTracer;-><init>()V

    .line 412
    iput-object p2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracer;->tracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 413
    return-void
.end method


# virtual methods
.method public streamClosed(Lio/grpc/Status;)V
    .locals 2
    .param p1, "status"    # Lio/grpc/Status;

    .line 417
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracer;->tracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->incrementCallCount(Z)V

    .line 418
    return-void
.end method
