.class public final Lio/grpc/Grpc;
.super Ljava/lang/Object;
.source "Grpc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Grpc$TransportAttr;
    }
.end annotation


# static fields
.field public static final TRANSPORT_ATTR_LOCAL_ADDR:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSPORT_ATTR_REMOTE_ADDR:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSPORT_ATTR_SSL_SESSION:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    nop

    .line 41
    const-string v0, "io.grpc.Grpc.TRANSPORT_ATTR_REMOTE_ADDR"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/Grpc;->TRANSPORT_ATTR_REMOTE_ADDR:Lio/grpc/Attributes$Key;

    .line 48
    nop

    .line 49
    const-string v0, "io.grpc.Grpc.TRANSPORT_ATTR_LOCAL_ADDR"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/Grpc;->TRANSPORT_ATTR_LOCAL_ADDR:Lio/grpc/Attributes$Key;

    .line 56
    nop

    .line 57
    const-string v0, "io.grpc.Grpc.TRANSPORT_ATTR_SSL_SESSION"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/Grpc;->TRANSPORT_ATTR_SSL_SESSION:Lio/grpc/Attributes$Key;

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static authorityFromHostAndPort(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 120
    :try_start_0
    new-instance v8, Ljava/net/URI;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid host or port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "creds"    # Lio/grpc/ChannelCredentials;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/grpc/ChannelCredentials;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 101
    invoke-static {}, Lio/grpc/ManagedChannelRegistry;->getDefaultRegistry()Lio/grpc/ManagedChannelRegistry;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/grpc/ManagedChannelRegistry;->newChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static newChannelBuilderForAddress(Ljava/lang/String;ILio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "creds"    # Lio/grpc/ChannelCredentials;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/grpc/ChannelCredentials;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 111
    invoke-static {p0, p1}, Lio/grpc/Grpc;->authorityFromHostAndPort(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lio/grpc/Grpc;->newChannelBuilder(Ljava/lang/String;Lio/grpc/ChannelCredentials;)Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static newServerBuilderForPort(ILio/grpc/ServerCredentials;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p0, "port"    # I
    .param p1, "creds"    # Lio/grpc/ServerCredentials;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/grpc/ServerCredentials;",
            ")",
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation

    .line 133
    invoke-static {}, Lio/grpc/ServerRegistry;->getDefaultRegistry()Lio/grpc/ServerRegistry;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/grpc/ServerRegistry;->newServerBuilderForPort(ILio/grpc/ServerCredentials;)Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method
