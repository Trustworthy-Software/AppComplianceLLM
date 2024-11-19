.class final Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;
.super Ljava/lang/Object;
.source "TlsServerHandshakerSocketFactory.java"

# interfaces
.implements Lio/grpc/okhttp/HandshakerSocketFactory;


# instance fields
.field private final connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

.field private final delegate:Lio/grpc/okhttp/PlaintextHandshakerSocketFactory;

.field private final socketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;)V
    .locals 1
    .param p1, "credentials"    # Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lio/grpc/okhttp/PlaintextHandshakerSocketFactory;

    invoke-direct {v0}, Lio/grpc/okhttp/PlaintextHandshakerSocketFactory;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->delegate:Lio/grpc/okhttp/PlaintextHandshakerSocketFactory;

    .line 42
    invoke-virtual {p1}, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;->getFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 43
    invoke-virtual {p1}, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;->getConnectionSpec()Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 44
    return-void
.end method


# virtual methods
.method public handshake(Ljava/net/Socket;Lio/grpc/Attributes;)Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;
    .locals 8
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "attributes"    # Lio/grpc/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->delegate:Lio/grpc/okhttp/PlaintextHandshakerSocketFactory;

    invoke-virtual {v0, p1, p2}, Lio/grpc/okhttp/PlaintextHandshakerSocketFactory;->handshake(Ljava/net/Socket;Lio/grpc/Attributes;)Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;

    move-result-object v0

    .line 49
    .local v0, "result":Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;
    iget-object v1, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, v0, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;->socket:Ljava/net/Socket;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    .line 50
    instance-of v1, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_2

    .line 54
    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 55
    .local v1, "sslSocket":Ljavax/net/ssl/SSLSocket;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 56
    iget-object v4, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    invoke-virtual {v4, v1, v2}, Lio/grpc/okhttp/internal/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    .line 57
    sget-object v4, Lio/grpc/okhttp/internal/Protocol;->HTTP_2:Lio/grpc/okhttp/internal/Protocol;

    .line 58
    .local v4, "expectedProtocol":Lio/grpc/okhttp/internal/Protocol;
    invoke-static {}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->get()Lio/grpc/okhttp/OkHttpProtocolNegotiator;

    move-result-object v6

    .line 61
    iget-object v7, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    invoke-virtual {v7}, Lio/grpc/okhttp/internal/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v7

    if-eqz v7, :cond_0

    new-array v5, v5, [Lio/grpc/okhttp/internal/Protocol;

    aput-object v4, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 58
    :goto_0
    invoke-virtual {v6, v1, v3, v2}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->negotiate(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "negotiatedProtocol":Ljava/lang/String;
    invoke-virtual {v4}, Lio/grpc/okhttp/internal/Protocol;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    iget-object v3, v0, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;->attributes:Lio/grpc/Attributes;

    invoke-virtual {v3}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v3

    sget-object v5, Lio/grpc/internal/GrpcAttributes;->ATTR_SECURITY_LEVEL:Lio/grpc/Attributes$Key;

    sget-object v6, Lio/grpc/SecurityLevel;->PRIVACY_AND_INTEGRITY:Lio/grpc/SecurityLevel;

    .line 66
    invoke-virtual {v3, v5, v6}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v3

    sget-object v5, Lio/grpc/Grpc;->TRANSPORT_ATTR_SSL_SESSION:Lio/grpc/Attributes$Key;

    .line 67
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object p2

    .line 69
    new-instance v3, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;

    new-instance v5, Lio/grpc/InternalChannelz$Security;

    new-instance v6, Lio/grpc/InternalChannelz$Tls;

    .line 70
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-direct {v6, v7}, Lio/grpc/InternalChannelz$Tls;-><init>(Ljavax/net/ssl/SSLSession;)V

    invoke-direct {v5, v6}, Lio/grpc/InternalChannelz$Security;-><init>(Lio/grpc/InternalChannelz$Tls;)V

    invoke-direct {v3, p1, p2, v5}, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;-><init>(Ljava/net/Socket;Lio/grpc/Attributes;Lio/grpc/InternalChannelz$Security;)V

    .line 69
    return-object v3

    .line 63
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected NPN/ALPN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    .end local v1    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v2    # "negotiatedProtocol":Ljava/lang/String;
    .end local v4    # "expectedProtocol":Lio/grpc/okhttp/internal/Protocol;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocketFactory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/okhttp/TlsServerHandshakerSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not produce an SSLSocket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
