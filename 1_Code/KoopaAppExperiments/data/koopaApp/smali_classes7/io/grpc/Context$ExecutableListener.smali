.class final Lio/grpc/Context$ExecutableListener;
.super Ljava/lang/Object;
.source "Context.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExecutableListener"
.end annotation


# instance fields
.field private final context:Lio/grpc/Context;

.field private final executor:Ljava/util/concurrent/Executor;

.field final listener:Lio/grpc/Context$CancellationListener;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lio/grpc/Context$CancellationListener;Lio/grpc/Context;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Lio/grpc/Context$CancellationListener;
    .param p3, "context"    # Lio/grpc/Context;

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    iput-object p1, p0, Lio/grpc/Context$ExecutableListener;->executor:Ljava/util/concurrent/Executor;

    .line 1065
    iput-object p2, p0, Lio/grpc/Context$ExecutableListener;->listener:Lio/grpc/Context$CancellationListener;

    .line 1066
    iput-object p3, p0, Lio/grpc/Context$ExecutableListener;->context:Lio/grpc/Context;

    .line 1067
    return-void
.end method

.method static synthetic access$600(Lio/grpc/Context$ExecutableListener;)Lio/grpc/Context;
    .locals 1
    .param p0, "x0"    # Lio/grpc/Context$ExecutableListener;

    .line 1058
    iget-object v0, p0, Lio/grpc/Context$ExecutableListener;->context:Lio/grpc/Context;

    return-object v0
.end method


# virtual methods
.method deliver()V
    .locals 4

    .line 1071
    :try_start_0
    iget-object v0, p0, Lio/grpc/Context$ExecutableListener;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    goto :goto_0

    .line 1072
    :catchall_0
    move-exception v0

    .line 1073
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/grpc/Context;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Exception notifying context listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1075
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1079
    iget-object v0, p0, Lio/grpc/Context$ExecutableListener;->listener:Lio/grpc/Context$CancellationListener;

    iget-object v1, p0, Lio/grpc/Context$ExecutableListener;->context:Lio/grpc/Context;

    invoke-interface {v0, v1}, Lio/grpc/Context$CancellationListener;->cancelled(Lio/grpc/Context;)V

    .line 1080
    return-void
.end method
