.class final Lio/grpc/internal/ManagedChannelImpl$1RequestConnection;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl;->getState(Z)Lio/grpc/ConnectivityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RequestConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 1302
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$1RequestConnection;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1305
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1RequestConnection;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImpl;->exitIdleMode()V

    .line 1306
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1RequestConnection;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1RequestConnection;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$SubchannelPicker;->requestConnection()V

    .line 1309
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1RequestConnection;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1310
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1RequestConnection;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->lb:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

    invoke-virtual {v0}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->requestConnection()V

    .line 1312
    :cond_1
    return-void
.end method
