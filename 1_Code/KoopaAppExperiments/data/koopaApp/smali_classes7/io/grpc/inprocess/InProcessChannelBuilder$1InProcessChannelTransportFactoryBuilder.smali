.class final Lio/grpc/inprocess/InProcessChannelBuilder$1InProcessChannelTransportFactoryBuilder;
.super Ljava/lang/Object;
.source "InProcessChannelBuilder.java"

# interfaces
.implements Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/inprocess/InProcessChannelBuilder;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InProcessChannelTransportFactoryBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/inprocess/InProcessChannelBuilder;


# direct methods
.method constructor <init>(Lio/grpc/inprocess/InProcessChannelBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/inprocess/InProcessChannelBuilder;

    .line 97
    iput-object p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder$1InProcessChannelTransportFactoryBuilder;->this$0:Lio/grpc/inprocess/InProcessChannelBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildClientTransportFactory()Lio/grpc/internal/ClientTransportFactory;
    .locals 1

    .line 100
    iget-object v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$1InProcessChannelTransportFactoryBuilder;->this$0:Lio/grpc/inprocess/InProcessChannelBuilder;

    invoke-virtual {v0}, Lio/grpc/inprocess/InProcessChannelBuilder;->buildTransportFactory()Lio/grpc/internal/ClientTransportFactory;

    move-result-object v0

    return-object v0
.end method
