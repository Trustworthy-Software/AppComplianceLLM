.class final Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelTransportFactoryBuilder;
.super Ljava/lang/Object;
.source "OkHttpChannelBuilder.java"

# interfaces
.implements Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OkHttpChannelTransportFactoryBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/OkHttpChannelBuilder;


# direct methods
.method private constructor <init>(Lio/grpc/okhttp/OkHttpChannelBuilder;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelTransportFactoryBuilder;->this$0:Lio/grpc/okhttp/OkHttpChannelBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/okhttp/OkHttpChannelBuilder;Lio/grpc/okhttp/OkHttpChannelBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/okhttp/OkHttpChannelBuilder;
    .param p2, "x1"    # Lio/grpc/okhttp/OkHttpChannelBuilder$1;

    .line 222
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelTransportFactoryBuilder;-><init>(Lio/grpc/okhttp/OkHttpChannelBuilder;)V

    return-void
.end method


# virtual methods
.method public buildClientTransportFactory()Lio/grpc/internal/ClientTransportFactory;
    .locals 1

    .line 226
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelTransportFactoryBuilder;->this$0:Lio/grpc/okhttp/OkHttpChannelBuilder;

    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpChannelBuilder;->buildTransportFactory()Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;

    move-result-object v0

    return-object v0
.end method
