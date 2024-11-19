.class public final Lio/grpc/okhttp/OkHttpChannelProvider;
.super Lio/grpc/ManagedChannelProvider;
.source "OkHttpChannelProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lio/grpc/ManagedChannelProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic builderForAddress(Ljava/lang/String;I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lio/grpc/okhttp/OkHttpChannelProvider;->builderForAddress(Ljava/lang/String;I)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public builderForAddress(Ljava/lang/String;I)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 46
    invoke-static {p1, p2}, Lio/grpc/okhttp/OkHttpChannelBuilder;->forAddress(Ljava/lang/String;I)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic builderForTarget(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpChannelProvider;->builderForTarget(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public builderForTarget(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lio/grpc/okhttp/OkHttpChannelBuilder;->forTarget(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected getSupportedSocketAddressTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 67
    const-class v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public newChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "creds"    # Lio/grpc/ChannelCredentials;

    .line 56
    nop

    .line 57
    invoke-static {p2}, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactoryFrom(Lio/grpc/ChannelCredentials;)Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;

    move-result-object v0

    .line 58
    .local v0, "result":Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;
    iget-object v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->error:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->error:Ljava/lang/String;

    invoke-static {v1}, Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;->error(Ljava/lang/String;)Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;

    move-result-object v1

    return-object v1

    .line 61
    :cond_0
    new-instance v1, Lio/grpc/okhttp/OkHttpChannelBuilder;

    iget-object v2, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->callCredentials:Lio/grpc/CallCredentials;

    iget-object v3, v0, Lio/grpc/okhttp/OkHttpChannelBuilder$SslSocketFactoryResult;->factory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v1, p1, p2, v2, v3}, Lio/grpc/okhttp/OkHttpChannelBuilder;-><init>(Ljava/lang/String;Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-static {v1}, Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;->channelBuilder(Lio/grpc/ManagedChannelBuilder;)Lio/grpc/ManagedChannelProvider$NewChannelBuilderResult;

    move-result-object v1

    return-object v1
.end method

.method public priority()I
    .locals 1

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/InternalServiceProviders;->isAndroid(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method
