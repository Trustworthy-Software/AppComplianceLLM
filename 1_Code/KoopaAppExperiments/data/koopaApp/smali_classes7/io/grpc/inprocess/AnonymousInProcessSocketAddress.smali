.class public final Lio/grpc/inprocess/AnonymousInProcessSocketAddress;
.super Ljava/net/SocketAddress;
.source "AnonymousInProcessSocketAddress.java"


# static fields
.field private static final serialVersionUID:J = -0x76e6340abe25d3a7L


# instance fields
.field private server:Lio/grpc/inprocess/InProcessServer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized clearServer(Lio/grpc/inprocess/InProcessServer;)V
    .locals 1
    .param p1, "server"    # Lio/grpc/inprocess/InProcessServer;

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lio/grpc/inprocess/AnonymousInProcessSocketAddress;->server:Lio/grpc/inprocess/InProcessServer;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/inprocess/AnonymousInProcessSocketAddress;->server:Lio/grpc/inprocess/InProcessServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 54
    .end local p0    # "this":Lio/grpc/inprocess/AnonymousInProcessSocketAddress;
    .end local p1    # "server":Lio/grpc/inprocess/InProcessServer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getServer()Lio/grpc/inprocess/InProcessServer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lio/grpc/inprocess/AnonymousInProcessSocketAddress;->server:Lio/grpc/inprocess/InProcessServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 44
    .end local p0    # "this":Lio/grpc/inprocess/AnonymousInProcessSocketAddress;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setServer(Lio/grpc/inprocess/InProcessServer;)V
    .locals 2
    .param p1, "server"    # Lio/grpc/inprocess/InProcessServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lio/grpc/inprocess/AnonymousInProcessSocketAddress;->server:Lio/grpc/inprocess/InProcessServer;

    if-nez v0, :cond_0

    .line 51
    iput-object p1, p0, Lio/grpc/inprocess/AnonymousInProcessSocketAddress;->server:Lio/grpc/inprocess/InProcessServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 49
    .end local p0    # "this":Lio/grpc/inprocess/AnonymousInProcessSocketAddress;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Server instance already registered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .end local p1    # "server":Lio/grpc/inprocess/InProcessServer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
