.class final Lio/grpc/okhttp/OkHttpServer;
.super Ljava/lang/Object;
.source "OkHttpServer.java"

# interfaces
.implements Lio/grpc/internal/InternalServer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpServer$ListenSocket;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private actualListenAddress:Ljava/net/SocketAddress;

.field private final channelz:Lio/grpc/InternalChannelz;

.field private listenInstrumented:Lio/grpc/InternalInstrumented;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lio/grpc/internal/ServerListener;

.field private final originalListenAddress:Ljava/net/SocketAddress;

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private serverSocket:Ljava/net/ServerSocket;

.field private shutdown:Z

.field private final socketFactory:Ljavax/net/ServerSocketFactory;

.field private final transportConfig:Lio/grpc/okhttp/OkHttpServerTransport$Config;

.field private transportExecutor:Ljava/util/concurrent/Executor;

.field private final transportExecutorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$nWZgluu-gd0CBu46dJMXNIRQajA(Lio/grpc/okhttp/OkHttpServer;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpServer;->acceptConnections()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lio/grpc/okhttp/OkHttpServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServer;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/grpc/okhttp/OkHttpServerBuilder;Ljava/util/List;Lio/grpc/InternalChannelz;)V
    .locals 2
    .param p1, "builder"    # Lio/grpc/okhttp/OkHttpServerBuilder;
    .param p3, "channelz"    # Lio/grpc/InternalChannelz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/okhttp/OkHttpServerBuilder;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;",
            "Lio/grpc/InternalChannelz;",
            ")V"
        }
    .end annotation

    .line 62
    .local p2, "streamTracerFactories":Ljava/util/List;, "Ljava/util/List<+Lio/grpc/ServerStreamTracer$Factory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->listenAddress:Ljava/net/SocketAddress;

    const-string v1, "listenAddress"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->originalListenAddress:Ljava/net/SocketAddress;

    .line 64
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->socketFactory:Ljavax/net/ServerSocketFactory;

    const-string v1, "socketFactory"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ServerSocketFactory;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->socketFactory:Ljavax/net/ServerSocketFactory;

    .line 65
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 66
    const-string v1, "transportExecutorPool"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 67
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    .line 68
    const-string v1, "scheduledExecutorServicePool"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    .line 70
    new-instance v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;

    invoke-direct {v0, p1, p2}, Lio/grpc/okhttp/OkHttpServerTransport$Config;-><init>(Lio/grpc/okhttp/OkHttpServerBuilder;Ljava/util/List;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->transportConfig:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    .line 71
    const-string v0, "channelz"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalChannelz;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->channelz:Lio/grpc/InternalChannelz;

    .line 72
    return-void
.end method

.method private acceptConnections()V
    .locals 4

    .line 100
    nop

    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .local v0, "socket":Ljava/net/Socket;
    nop

    .line 107
    :try_start_1
    new-instance v1, Lio/grpc/okhttp/OkHttpServerTransport;

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServer;->transportConfig:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    invoke-direct {v1, v2, v0}, Lio/grpc/okhttp/OkHttpServerTransport;-><init>(Lio/grpc/okhttp/OkHttpServerTransport$Config;Ljava/net/Socket;)V

    .line 108
    .local v1, "transport":Lio/grpc/okhttp/OkHttpServerTransport;
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServer;->listener:Lio/grpc/internal/ServerListener;

    invoke-interface {v2, v1}, Lio/grpc/internal/ServerListener;->transportCreated(Lio/grpc/internal/ServerTransport;)Lio/grpc/internal/ServerTransportListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/okhttp/OkHttpServerTransport;->start(Lio/grpc/internal/ServerTransportListener;)V

    .line 109
    .end local v0    # "socket":Ljava/net/Socket;
    .end local v1    # "transport":Lio/grpc/okhttp/OkHttpServerTransport;
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/io/IOException;
    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpServer;->shutdown:Z

    if-eqz v1, :cond_0

    .line 103
    nop

    .line 112
    .end local v0    # "ex":Ljava/io/IOException;
    goto :goto_2

    .line 105
    .restart local v0    # "ex":Ljava/io/IOException;
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .local v0, "t":Ljava/lang/Throwable;
    :goto_1
    sget-object v1, Lio/grpc/okhttp/OkHttpServer;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Accept loop failed"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->listener:Lio/grpc/internal/ServerListener;

    invoke-interface {v0}, Lio/grpc/internal/ServerListener;->serverShutdown()V

    .line 114
    return-void
.end method


# virtual methods
.method public getListenSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 138
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->actualListenAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getListenSocketAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpServer;->getListenSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getListenSocketStats()Lio/grpc/InternalInstrumented;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->listenInstrumented:Lio/grpc/InternalInstrumented;

    return-object v0
.end method

.method public getListenSocketStatsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;>;"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpServer;->getListenSocketStats()Lio/grpc/InternalInstrumented;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 5

    .line 118
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpServer;->shutdown:Z

    if-eqz v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpServer;->shutdown:Z

    .line 123
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->serverSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_1

    .line 124
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->channelz:Lio/grpc/InternalChannelz;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServer;->listenInstrumented:Lio/grpc/InternalInstrumented;

    invoke-virtual {v0, v1}, Lio/grpc/InternalChannelz;->removeListenSocket(Lio/grpc/InternalInstrumented;)V

    .line 128
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lio/grpc/okhttp/OkHttpServer;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Failed closing server socket"

    iget-object v4, p0, Lio/grpc/okhttp/OkHttpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServer;->transportExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->transportExecutor:Ljava/util/concurrent/Executor;

    .line 133
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 134
    return-void
.end method

.method public start(Lio/grpc/internal/ServerListener;)V
    .locals 3
    .param p1, "listener"    # Lio/grpc/internal/ServerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ServerListener;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->listener:Lio/grpc/internal/ServerListener;

    .line 77
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->socketFactory:Ljavax/net/ServerSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    .line 79
    .local v0, "serverSocket":Ljava/net/ServerSocket;
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServer;->originalListenAddress:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    nop

    .line 85
    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 86
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpServer;->actualListenAddress:Ljava/net/SocketAddress;

    .line 87
    new-instance v1, Lio/grpc/okhttp/OkHttpServer$ListenSocket;

    invoke-direct {v1, v0}, Lio/grpc/okhttp/OkHttpServer$ListenSocket;-><init>(Ljava/net/ServerSocket;)V

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpServer;->listenInstrumented:Lio/grpc/InternalInstrumented;

    .line 88
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServer;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    invoke-interface {v1}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpServer;->transportExecutor:Ljava/util/concurrent/Executor;

    .line 90
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServer;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    invoke-interface {v1}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpServer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 91
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServer;->channelz:Lio/grpc/InternalChannelz;

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServer;->listenInstrumented:Lio/grpc/InternalInstrumented;

    invoke-virtual {v1, v2}, Lio/grpc/InternalChannelz;->addListenSocket(Lio/grpc/InternalInstrumented;)V

    .line 92
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServer;->transportExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lio/grpc/okhttp/OkHttpServer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/grpc/okhttp/OkHttpServer$$ExternalSyntheticLambda0;-><init>(Lio/grpc/okhttp/OkHttpServer;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    return-void

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "t":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 82
    throw v1
.end method
