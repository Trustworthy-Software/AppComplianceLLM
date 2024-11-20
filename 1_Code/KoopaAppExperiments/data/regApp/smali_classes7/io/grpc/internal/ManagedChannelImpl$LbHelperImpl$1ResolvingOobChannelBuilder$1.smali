.class Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder$1;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;-><init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/ChannelCredentials;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;

.field final synthetic val$this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

.field final synthetic val$transportFactory:Lio/grpc/internal/ClientTransportFactory;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/internal/ClientTransportFactory;)V
    .locals 0
    .param p1, "this$2"    # Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;

    .line 1630
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder$1;->this$2:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder$1;->val$this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iput-object p3, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder$1;->val$transportFactory:Lio/grpc/internal/ClientTransportFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildClientTransportFactory()Lio/grpc/internal/ClientTransportFactory;
    .locals 1

    .line 1633
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ResolvingOobChannelBuilder$1;->val$transportFactory:Lio/grpc/internal/ClientTransportFactory;

    return-object v0
.end method
