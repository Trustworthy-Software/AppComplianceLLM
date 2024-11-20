.class final Lio/grpc/internal/CallCredentialsApplyingTransportFactory;
.super Ljava/lang/Object;
.source "CallCredentialsApplyingTransportFactory.java"

# interfaces
.implements Lio/grpc/internal/ClientTransportFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;
    }
.end annotation


# instance fields
.field private final appExecutor:Ljava/util/concurrent/Executor;

.field private final channelCallCredentials:Lio/grpc/CallCredentials;

.field private final delegate:Lio/grpc/internal/ClientTransportFactory;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientTransportFactory;Lio/grpc/CallCredentials;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "delegate"    # Lio/grpc/internal/ClientTransportFactory;
    .param p2, "channelCallCredentials"    # Lio/grpc/CallCredentials;
    .param p3, "appExecutor"    # Ljava/util/concurrent/Executor;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ClientTransportFactory;

    iput-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->delegate:Lio/grpc/internal/ClientTransportFactory;

    .line 51
    iput-object p2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->channelCallCredentials:Lio/grpc/CallCredentials;

    .line 52
    const-string v0, "appExecutor"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->appExecutor:Ljava/util/concurrent/Executor;

    .line 53
    return-void
.end method

.method static synthetic access$200(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;)Lio/grpc/CallCredentials;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    .line 42
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->channelCallCredentials:Lio/grpc/CallCredentials;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    .line 42
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->appExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 74
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->delegate:Lio/grpc/internal/ClientTransportFactory;

    invoke-interface {v0}, Lio/grpc/internal/ClientTransportFactory;->close()V

    .line 75
    return-void
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->delegate:Lio/grpc/internal/ClientTransportFactory;

    invoke-interface {v0}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public newClientTransport(Ljava/net/SocketAddress;Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;Lio/grpc/ChannelLogger;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 3
    .param p1, "serverAddress"    # Ljava/net/SocketAddress;
    .param p2, "options"    # Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;
    .param p3, "channelLogger"    # Lio/grpc/ChannelLogger;

    .line 58
    new-instance v0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;

    iget-object v1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->delegate:Lio/grpc/internal/ClientTransportFactory;

    .line 59
    invoke-interface {v1, p1, p2, p3}, Lio/grpc/internal/ClientTransportFactory;->newClientTransport(Ljava/net/SocketAddress;Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;Lio/grpc/ChannelLogger;)Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v1

    invoke-virtual {p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;-><init>(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;Lio/grpc/internal/ConnectionClientTransport;Ljava/lang/String;)V

    .line 58
    return-object v0
.end method

.method public swapChannelCredentials(Lio/grpc/ChannelCredentials;)Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;
    .locals 1
    .param p1, "channelCreds"    # Lio/grpc/ChannelCredentials;

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
