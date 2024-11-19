.class final Lio/grpc/stub/ClientCalls$BlockingResponseStream;
.super Ljava/lang/Object;
.source "ClientCalls.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingResponseStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final buffer:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final call:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "*TT;>;"
        }
    .end annotation
.end field

.field private last:Ljava/lang/Object;

.field private final listener:Lio/grpc/stub/ClientCalls$StartableListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/ClientCalls$StartableListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final threadless:Lio/grpc/stub/ClientCalls$ThreadlessExecutor;


# direct methods
.method constructor <init>(Lio/grpc/ClientCall;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "*TT;>;)V"
        }
    .end annotation

    .line 603
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>;"
    .local p1, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<*TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;-><init>(Lio/grpc/ClientCall;Lio/grpc/stub/ClientCalls$ThreadlessExecutor;)V

    .line 604
    return-void
.end method

.method constructor <init>(Lio/grpc/ClientCall;Lio/grpc/stub/ClientCalls$ThreadlessExecutor;)V
    .locals 2
    .param p2, "threadless"    # Lio/grpc/stub/ClientCalls$ThreadlessExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "*TT;>;",
            "Lio/grpc/stub/ClientCalls$ThreadlessExecutor;",
            ")V"
        }
    .end annotation

    .line 607
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>;"
    .local p1, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<*TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->buffer:Ljava/util/concurrent/BlockingQueue;

    .line 594
    new-instance v0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;

    invoke-direct {v0, p0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;-><init>(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)V

    iput-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->listener:Lio/grpc/stub/ClientCalls$StartableListener;

    .line 608
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    .line 609
    iput-object p2, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->threadless:Lio/grpc/stub/ClientCalls$ThreadlessExecutor;

    .line 610
    return-void
.end method

.method static synthetic access$700(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    .line 590
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->buffer:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Lio/grpc/ClientCall;
    .locals 1
    .param p0, "x0"    # Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    .line 590
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    return-object v0
.end method

.method private waitForNext()Ljava/lang/Object;
    .locals 5

    .line 617
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>;"
    const/4 v0, 0x0

    .line 619
    .local v0, "interrupt":Z
    :try_start_0
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->threadless:Lio/grpc/stub/ClientCalls$ThreadlessExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Thread interrupted"

    if-nez v1, :cond_1

    .line 622
    :goto_0
    :try_start_1
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->buffer:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    if-eqz v0, :cond_0

    .line 647
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 622
    :cond_0
    return-object v1

    .line 623
    :catch_0
    move-exception v1

    .line 624
    .local v1, "ie":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 625
    :try_start_2
    iget-object v3, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    invoke-virtual {v3, v2, v1}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 631
    :cond_1
    :goto_1
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->buffer:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v1

    .local v3, "next":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 633
    :try_start_3
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->threadless:Lio/grpc/stub/ClientCalls$ThreadlessExecutor;

    invoke-virtual {v1}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->waitAndDrain()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 638
    :goto_2
    goto :goto_1

    .line 634
    :catch_1
    move-exception v1

    .line 635
    .restart local v1    # "ie":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 636
    :try_start_4
    iget-object v4, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    invoke-virtual {v4, v2, v1}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "ie":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 640
    :cond_2
    if-eq v3, p0, :cond_3

    instance-of v1, v3, Lio/grpc/StatusRuntimeException;

    if-eqz v1, :cond_4

    .line 641
    :cond_3
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->threadless:Lio/grpc/stub/ClientCalls$ThreadlessExecutor;

    invoke-virtual {v1}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->shutdown()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 643
    :cond_4
    nop

    .line 646
    if-eqz v0, :cond_5

    .line 647
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 643
    :cond_5
    return-object v3

    .line 646
    .end local v3    # "next":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    .line 647
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 654
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>;"
    nop

    :goto_0
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 657
    invoke-direct {p0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->waitForNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    goto :goto_0

    .line 659
    :cond_0
    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-nez v1, :cond_2

    .line 664
    if-eq v0, p0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 661
    :cond_2
    check-cast v0, Lio/grpc/StatusRuntimeException;

    .line 662
    .local v0, "e":Lio/grpc/StatusRuntimeException;
    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->getStatus()Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->getTrailers()Lio/grpc/Metadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/Status;->asRuntimeException(Lio/grpc/Metadata;)Lio/grpc/StatusRuntimeException;

    move-result-object v1

    throw v1
.end method

.method listener()Lio/grpc/stub/ClientCalls$StartableListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/stub/ClientCalls$StartableListener<",
            "TT;>;"
        }
    .end annotation

    .line 613
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->listener:Lio/grpc/stub/ClientCalls$StartableListener;

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 673
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-nez v1, :cond_0

    if-eq v0, p0, :cond_0

    .line 674
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->request(I)V

    .line 676
    :cond_0
    invoke-virtual {p0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    .line 681
    .local v0, "tmp":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    .line 682
    return-object v0

    .line 677
    .end local v0    # "tmp":Ljava/lang/Object;, "TT;"
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 687
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
