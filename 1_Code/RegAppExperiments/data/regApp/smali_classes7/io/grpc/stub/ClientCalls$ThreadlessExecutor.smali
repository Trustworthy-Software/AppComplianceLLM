.class final Lio/grpc/stub/ClientCalls$ThreadlessExecutor;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;
.source "ClientCalls.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadlessExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentLinkedQueue<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field private static final SHUTDOWN:Ljava/lang/Object;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile waiter:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 727
    const-class v0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->log:Ljava/util/logging/Logger;

    .line 729
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->SHUTDOWN:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 735
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-void
.end method

.method private static runQuietly(Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 773
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    goto :goto_0

    .line 774
    :catchall_0
    move-exception v0

    .line 775
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Runnable threw exception"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 777
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static throwIfInterrupted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 780
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    return-void

    .line 781
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 787
    invoke-virtual {p0, p1}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->add(Ljava/lang/Object;)Z

    .line 788
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->waiter:Ljava/lang/Object;

    .line 789
    .local v0, "waiter":Ljava/lang/Object;
    sget-object v1, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->SHUTDOWN:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 790
    move-object v1, v0

    check-cast v1, Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    .line 791
    :cond_0
    invoke-virtual {p0, p1}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lio/grpc/stub/ClientCalls;->rejectRunnableOnExecutor:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 792
    :cond_1
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v1

    .line 794
    :cond_2
    :goto_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 764
    sget-object v0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->SHUTDOWN:Ljava/lang/Object;

    iput-object v0, p0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->waiter:Ljava/lang/Object;

    .line 766
    :goto_0
    invoke-virtual {p0}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    .local v1, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 767
    invoke-static {v1}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->runQuietly(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 769
    :cond_0
    return-void
.end method

.method public waitAndDrain()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 742
    invoke-static {}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->throwIfInterrupted()V

    .line 743
    invoke-virtual {p0}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 744
    .local v0, "runnable":Ljava/lang/Runnable;
    if-nez v0, :cond_1

    .line 745
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->waiter:Ljava/lang/Object;

    .line 747
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object v0, v2

    if-nez v2, :cond_0

    .line 748
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 749
    invoke-static {}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->throwIfInterrupted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 752
    :cond_0
    iput-object v1, p0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->waiter:Ljava/lang/Object;

    .line 753
    goto :goto_1

    .line 752
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->waiter:Ljava/lang/Object;

    throw v2

    .line 756
    :cond_1
    :goto_1
    invoke-static {v0}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->runQuietly(Ljava/lang/Runnable;)V

    .line 757
    invoke-virtual {p0}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    move-object v0, v1

    if-nez v1, :cond_1

    .line 758
    return-void
.end method
