.class final Lio/grpc/internal/DelayedClientCall$DelayedListener;
.super Lio/grpc/ClientCall$Listener;
.source "DelayedClientCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DelayedClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelayedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ClientCall$Listener<",
        "TRespT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile passThrough:Z

.field private pendingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final realListener:Lio/grpc/ClientCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 436
    const-class v0, Lio/grpc/internal/DelayedClientCall;

    return-void
.end method

.method public constructor <init>(Lio/grpc/ClientCall$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 442
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$DelayedListener;, "Lio/grpc/internal/DelayedClientCall$DelayedListener<TRespT;>;"
    .local p1, "listener":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    invoke-direct {p0}, Lio/grpc/ClientCall$Listener;-><init>()V

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->pendingCallbacks:Ljava/util/List;

    .line 443
    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->realListener:Lio/grpc/ClientCall$Listener;

    .line 444
    return-void
.end method

.method static synthetic access$400(Lio/grpc/internal/DelayedClientCall$DelayedListener;)Lio/grpc/ClientCall$Listener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientCall$DelayedListener;

    .line 436
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->realListener:Lio/grpc/ClientCall$Listener;

    return-object v0
.end method

.method private delayOrExecute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 447
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$DelayedListener;, "Lio/grpc/internal/DelayedClientCall$DelayedListener<TRespT;>;"
    monitor-enter p0

    .line 448
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->passThrough:Z

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->pendingCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    monitor-exit p0

    return-void

    .line 452
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 454
    return-void

    .line 452
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method drainPendingCallbacks()V
    .locals 3

    .line 509
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$DelayedListener;, "Lio/grpc/internal/DelayedClientCall$DelayedListener<TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->passThrough:Z

    if-nez v0, :cond_2

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v0, "toRun":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :goto_0
    monitor-enter p0

    .line 513
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->pendingCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->pendingCallbacks:Ljava/util/List;

    .line 515
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->passThrough:Z

    .line 516
    monitor-exit p0

    .line 532
    return-void

    .line 521
    :cond_0
    move-object v1, v0

    .line 522
    .local v1, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v2, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->pendingCallbacks:Ljava/util/List;

    move-object v0, v2

    .line 523
    iput-object v1, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->pendingCallbacks:Ljava/util/List;

    .line 524
    .end local v1    # "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 528
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 529
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_1

    .line 530
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 509
    .end local v0    # "toRun":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 1
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 486
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$DelayedListener;, "Lio/grpc/internal/DelayedClientCall$DelayedListener<TRespT;>;"
    new-instance v0, Lio/grpc/internal/DelayedClientCall$DelayedListener$3;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/internal/DelayedClientCall$DelayedListener$3;-><init>(Lio/grpc/internal/DelayedClientCall$DelayedListener;Lio/grpc/Status;Lio/grpc/Metadata;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall$DelayedListener;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 492
    return-void
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 1
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 458
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$DelayedListener;, "Lio/grpc/internal/DelayedClientCall$DelayedListener<TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->passThrough:Z

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->realListener:Lio/grpc/ClientCall$Listener;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall$Listener;->onHeaders(Lio/grpc/Metadata;)V

    goto :goto_0

    .line 461
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedClientCall$DelayedListener$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedClientCall$DelayedListener$1;-><init>(Lio/grpc/internal/DelayedClientCall$DelayedListener;Lio/grpc/Metadata;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall$DelayedListener;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 468
    :goto_0
    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 472
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$DelayedListener;, "Lio/grpc/internal/DelayedClientCall$DelayedListener<TRespT;>;"
    .local p1, "message":Ljava/lang/Object;, "TRespT;"
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->passThrough:Z

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->realListener:Lio/grpc/ClientCall$Listener;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall$Listener;->onMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 475
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedClientCall$DelayedListener$2;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedClientCall$DelayedListener$2;-><init>(Lio/grpc/internal/DelayedClientCall$DelayedListener;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall$DelayedListener;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 482
    :goto_0
    return-void
.end method

.method public onReady()V
    .locals 1

    .line 496
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$DelayedListener;, "Lio/grpc/internal/DelayedClientCall$DelayedListener<TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->passThrough:Z

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->realListener:Lio/grpc/ClientCall$Listener;

    invoke-virtual {v0}, Lio/grpc/ClientCall$Listener;->onReady()V

    goto :goto_0

    .line 499
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedClientCall$DelayedListener$4;

    invoke-direct {v0, p0}, Lio/grpc/internal/DelayedClientCall$DelayedListener$4;-><init>(Lio/grpc/internal/DelayedClientCall$DelayedListener;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall$DelayedListener;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 506
    :goto_0
    return-void
.end method
