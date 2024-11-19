.class final Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;
.super Lio/grpc/ServerCredentials;
.source "SslSocketFactoryServerCredentials.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/SslSocketFactoryServerCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServerCredentials"
.end annotation


# instance fields
.field private final connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

.field private final factory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1
    .param p1, "factory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 44
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->INTERNAL_DEFAULT_CONNECTION_SPEC:Lio/grpc/okhttp/internal/ConnectionSpec;

    invoke-direct {p0, p1, v0}, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lio/grpc/okhttp/internal/ConnectionSpec;)V

    .line 45
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lio/grpc/okhttp/internal/ConnectionSpec;)V
    .locals 1
    .param p1, "factory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "connectionSpec"    # Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 47
    invoke-direct {p0}, Lio/grpc/ServerCredentials;-><init>()V

    .line 48
    const-string v0, "factory"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;->factory:Ljavax/net/ssl/SSLSocketFactory;

    .line 49
    const-string v0, "connectionSpec"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/ConnectionSpec;

    iput-object v0, p0, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 50
    return-void
.end method


# virtual methods
.method public getConnectionSpec()Lio/grpc/okhttp/internal/ConnectionSpec;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    return-object v0
.end method

.method public getFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/grpc/okhttp/SslSocketFactoryServerCredentials$ServerCredentials;->factory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method
