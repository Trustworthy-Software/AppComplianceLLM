.class Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;
.super Lio/grpc/ClientStreamTracer$Factory;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultCountingClientStreamTracerFactory"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;

.field private final tracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;


# direct methods
.method constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;
    .param p2, "tracker"    # Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 392
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;->this$1:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;

    invoke-direct {p0}, Lio/grpc/ClientStreamTracer$Factory;-><init>()V

    .line 393
    iput-object p2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;->tracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 394
    return-void
.end method


# virtual methods
.method public newClientStreamTracer(Lio/grpc/ClientStreamTracer$StreamInfo;Lio/grpc/Metadata;)Lio/grpc/ClientStreamTracer;
    .locals 3
    .param p1, "info"    # Lio/grpc/ClientStreamTracer$StreamInfo;
    .param p2, "headers"    # Lio/grpc/Metadata;

    .line 398
    new-instance v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracer;

    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;->this$1:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;->tracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    invoke-direct {v0, v1, v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracer;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;)V

    return-object v0
.end method
