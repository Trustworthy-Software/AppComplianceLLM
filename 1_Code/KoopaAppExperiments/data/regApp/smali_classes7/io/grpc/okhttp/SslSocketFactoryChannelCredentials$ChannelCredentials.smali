.class final Lio/grpc/okhttp/SslSocketFactoryChannelCredentials$ChannelCredentials;
.super Lio/grpc/ChannelCredentials;
.source "SslSocketFactoryChannelCredentials.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/SslSocketFactoryChannelCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChannelCredentials"
.end annotation


# instance fields
.field private final factory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method private constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1
    .param p1, "factory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 36
    invoke-direct {p0}, Lio/grpc/ChannelCredentials;-><init>()V

    .line 37
    const-string v0, "factory"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lio/grpc/okhttp/SslSocketFactoryChannelCredentials$ChannelCredentials;->factory:Ljavax/net/ssl/SSLSocketFactory;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lio/grpc/okhttp/SslSocketFactoryChannelCredentials$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "x1"    # Lio/grpc/okhttp/SslSocketFactoryChannelCredentials$1;

    .line 33
    invoke-direct {p0, p1}, Lio/grpc/okhttp/SslSocketFactoryChannelCredentials$ChannelCredentials;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method


# virtual methods
.method public getFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/grpc/okhttp/SslSocketFactoryChannelCredentials$ChannelCredentials;->factory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public withoutBearerTokens()Lio/grpc/ChannelCredentials;
    .locals 0

    .line 46
    return-object p0
.end method
