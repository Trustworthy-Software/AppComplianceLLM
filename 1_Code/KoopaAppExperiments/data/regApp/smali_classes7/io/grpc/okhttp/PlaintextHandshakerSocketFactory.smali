.class final Lio/grpc/okhttp/PlaintextHandshakerSocketFactory;
.super Ljava/lang/Object;
.source "PlaintextHandshakerSocketFactory.java"

# interfaces
.implements Lio/grpc/okhttp/HandshakerSocketFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handshake(Ljava/net/Socket;Lio/grpc/Attributes;)Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "attributes"    # Lio/grpc/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p2}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v0

    sget-object v1, Lio/grpc/Grpc;->TRANSPORT_ATTR_LOCAL_ADDR:Lio/grpc/Attributes$Key;

    .line 33
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v0

    sget-object v1, Lio/grpc/Grpc;->TRANSPORT_ATTR_REMOTE_ADDR:Lio/grpc/Attributes$Key;

    .line 34
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/GrpcAttributes;->ATTR_SECURITY_LEVEL:Lio/grpc/Attributes$Key;

    sget-object v2, Lio/grpc/SecurityLevel;->NONE:Lio/grpc/SecurityLevel;

    .line 35
    invoke-virtual {v0, v1, v2}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object p2

    .line 37
    new-instance v0, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;-><init>(Ljava/net/Socket;Lio/grpc/Attributes;Lio/grpc/InternalChannelz$Security;)V

    return-object v0
.end method
