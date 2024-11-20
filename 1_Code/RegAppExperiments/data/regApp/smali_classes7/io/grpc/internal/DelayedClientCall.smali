.class public Lio/grpc/internal/DelayedClientCall;
.super Lio/grpc/ClientCall;
.source "DelayedClientCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/DelayedClientCall$DelayedListener;,
        Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NOOP_CALL:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final callExecutor:Ljava/util/concurrent/Executor;

.field private final context:Lio/grpc/Context;

.field private delayedListener:Lio/grpc/internal/DelayedClientCall$DelayedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/DelayedClientCall$DelayedListener<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field private error:Lio/grpc/Status;

.field private final initialDeadlineMonitor:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private listener:Lio/grpc/ClientCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field private volatile passThrough:Z

.field private pendingRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private realCall:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    nop

    .line 51
    const-class v0, Lio/grpc/internal/DelayedClientCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/DelayedClientCall;->logger:Ljava/util/logging/Logger;

    .line 535
    new-instance v0, Lio/grpc/internal/DelayedClientCall$8;

    invoke-direct {v0}, Lio/grpc/internal/DelayedClientCall$8;-><init>()V

    sput-object v0, Lio/grpc/internal/DelayedClientCall;->NOOP_CALL:Lio/grpc/ClientCall;

    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/Deadline;)V
    .locals 1
    .param p1, "callExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "scheduler"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "deadline"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    invoke-direct {p0}, Lio/grpc/ClientCall;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedClientCall;->pendingRunnables:Ljava/util/List;

    .line 78
    const-string v0, "callExecutor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/internal/DelayedClientCall;->callExecutor:Ljava/util/concurrent/Executor;

    .line 79
    const-string v0, "scheduler"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/DelayedClientCall;->context:Lio/grpc/Context;

    .line 81
    invoke-direct {p0, p2, p3}, Lio/grpc/internal/DelayedClientCall;->scheduleDeadlineIfNeeded(Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/Deadline;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/DelayedClientCall;->initialDeadlineMonitor:Ljava/util/concurrent/ScheduledFuture;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/DelayedClientCall;Lio/grpc/Status;Z)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientCall;
    .param p1, "x1"    # Lio/grpc/Status;
    .param p2, "x2"    # Z

    .line 50
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/DelayedClientCall;->cancel(Lio/grpc/Status;Z)V

    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/DelayedClientCall;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientCall;

    .line 50
    invoke-direct {p0}, Lio/grpc/internal/DelayedClientCall;->drainPendingCalls()V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/internal/DelayedClientCall;)Lio/grpc/ClientCall;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientCall;

    .line 50
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/DelayedClientCall;)Lio/grpc/Context;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedClientCall;

    .line 50
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->context:Lio/grpc/Context;

    return-object v0
.end method

.method private cancel(Lio/grpc/Status;Z)V
    .locals 4
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "onlyCancelPendingCall"    # Z

    .line 231
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    const/4 v0, 0x1

    .line 232
    .local v0, "delegateToRealCall":Z
    const/4 v1, 0x0

    .line 233
    .local v1, "listenerToClose":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    if-nez v2, :cond_0

    .line 237
    sget-object v2, Lio/grpc/internal/DelayedClientCall;->NOOP_CALL:Lio/grpc/ClientCall;

    .line 238
    .local v2, "noopCall":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    invoke-direct {p0, v2}, Lio/grpc/internal/DelayedClientCall;->setRealCall(Lio/grpc/ClientCall;)V

    .line 239
    const/4 v0, 0x0

    .line 241
    iget-object v3, p0, Lio/grpc/internal/DelayedClientCall;->listener:Lio/grpc/ClientCall$Listener;

    move-object v1, v3

    .line 242
    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall;->error:Lio/grpc/Status;

    .end local v2    # "noopCall":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    goto :goto_0

    .line 243
    :cond_0
    if-eqz p2, :cond_1

    .line 244
    monitor-exit p0

    return-void

    .line 243
    :cond_1
    :goto_0
    nop

    .line 246
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    if-eqz v0, :cond_2

    .line 248
    new-instance v2, Lio/grpc/internal/DelayedClientCall$3;

    invoke-direct {v2, p0, p1}, Lio/grpc/internal/DelayedClientCall$3;-><init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/Status;)V

    invoke-direct {p0, v2}, Lio/grpc/internal/DelayedClientCall;->delayOrExecute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 255
    :cond_2
    if-eqz v1, :cond_3

    .line 256
    iget-object v2, p0, Lio/grpc/internal/DelayedClientCall;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;

    invoke-direct {v3, p0, v1, p1}, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;-><init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/ClientCall$Listener;Lio/grpc/Status;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 258
    :cond_3
    invoke-direct {p0}, Lio/grpc/internal/DelayedClientCall;->drainPendingCalls()V

    .line 260
    :goto_1
    invoke-virtual {p0}, Lio/grpc/internal/DelayedClientCall;->callCancelled()V

    .line 261
    return-void

    .line 246
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private delayOrExecute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 267
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    monitor-enter p0

    .line 268
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall;->passThrough:Z

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->pendingRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    monitor-exit p0

    return-void

    .line 272
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 274
    return-void

    .line 272
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private drainPendingCalls()V
    .locals 5

    .line 282
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    if-eqz v0, :cond_4

    .line 283
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall;->passThrough:Z

    if-nez v0, :cond_3

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v0, "toRun":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :goto_0
    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall;->pendingRunnables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/internal/DelayedClientCall;->pendingRunnables:Ljava/util/List;

    .line 290
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/internal/DelayedClientCall;->passThrough:Z

    .line 291
    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall;->delayedListener:Lio/grpc/internal/DelayedClientCall$DelayedListener;

    .line 292
    .local v1, "delayedListener":Lio/grpc/internal/DelayedClientCall$DelayedListener;, "Lio/grpc/internal/DelayedClientCall$DelayedListener<TRespT;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    if-eqz v1, :cond_0

    .line 309
    move-object v2, v1

    .line 321
    .local v2, "listener":Lio/grpc/internal/DelayedClientCall$DelayedListener;, "Lio/grpc/internal/DelayedClientCall$DelayedListener<TRespT;>;"
    iget-object v3, p0, Lio/grpc/internal/DelayedClientCall;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lio/grpc/internal/DelayedClientCall$1DrainListenerRunnable;

    invoke-direct {v4, p0, v2}, Lio/grpc/internal/DelayedClientCall$1DrainListenerRunnable;-><init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/internal/DelayedClientCall$DelayedListener;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 323
    .end local v2    # "listener":Lio/grpc/internal/DelayedClientCall$DelayedListener;, "Lio/grpc/internal/DelayedClientCall$DelayedListener<TRespT;>;"
    :cond_0
    return-void

    .line 297
    .end local v1    # "delayedListener":Lio/grpc/internal/DelayedClientCall$DelayedListener;, "Lio/grpc/internal/DelayedClientCall$DelayedListener<TRespT;>;"
    :cond_1
    move-object v1, v0

    .line 298
    .local v1, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :try_start_1
    iget-object v2, p0, Lio/grpc/internal/DelayedClientCall;->pendingRunnables:Ljava/util/List;

    move-object v0, v2

    .line 299
    iput-object v1, p0, Lio/grpc/internal/DelayedClientCall;->pendingRunnables:Ljava/util/List;

    .line 300
    .end local v1    # "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 304
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 305
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_1

    .line 306
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 283
    .end local v0    # "toRun":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 282
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private isAbeforeB(Lio/grpc/Deadline;Lio/grpc/Deadline;)Z
    .locals 1
    .param p1, "a"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "b"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 86
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    if-nez p2, :cond_0

    .line 87
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    if-nez p1, :cond_1

    .line 89
    const/4 v0, 0x0

    return v0

    .line 92
    :cond_1
    invoke-virtual {p1, p2}, Lio/grpc/Deadline;->isBefore(Lio/grpc/Deadline;)Z

    move-result v0

    return v0
.end method

.method private scheduleDeadlineIfNeeded(Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/Deadline;)Ljava/util/concurrent/ScheduledFuture;
    .locals 12
    .param p1, "scheduler"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "deadline"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/Deadline;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 98
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->context:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v0

    .line 99
    .local v0, "contextDeadline":Lio/grpc/Deadline;
    if-nez p2, :cond_0

    if-nez v0, :cond_0

    .line 100
    const/4 v1, 0x0

    return-object v1

    .line 102
    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    .line 103
    .local v1, "remainingNanos":J
    if-eqz p2, :cond_1

    .line 104
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 107
    :cond_1
    if-eqz v0, :cond_3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_3

    .line 108
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 109
    sget-object v3, Lio/grpc/internal/DelayedClientCall;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 114
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 112
    const-string v7, "Call timeout set to \'%d\' ns, due to context deadline."

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .local v4, "builder":Ljava/lang/StringBuilder;
    if-nez p2, :cond_2

    .line 116
    const-string v5, " Explicit call timeout was not set."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 118
    :cond_2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v5}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    .line 119
    .local v5, "callTimeout":J
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 120
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 119
    const-string v9, " Explicit call timeout was \'%d\' ns."

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .end local v5    # "callTimeout":J
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 126
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    div-long/2addr v3, v8

    .line 127
    .local v3, "seconds":J
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    rem-long/2addr v8, v5

    .line 128
    .local v8, "nanos":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v5, "buf":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p2}, Lio/grpc/internal/DelayedClientCall;->isAbeforeB(Lio/grpc/Deadline;Lio/grpc/Deadline;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "Context"

    goto :goto_1

    :cond_4
    const-string v6, "CallOptions"

    .line 130
    .local v6, "deadlineName":Ljava/lang/String;
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v7, v1, v10

    if-gez v7, :cond_5

    .line 131
    const-string v7, "ClientCall started after "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v7, " deadline was exceeded. Deadline has been exceeded for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 135
    :cond_5
    const-string v7, "Deadline "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v7, " will be exceeded in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :goto_2
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, ".%09d"

    invoke-static {v7, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v7, "s. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v7, Lio/grpc/internal/DelayedClientCall$1DeadlineExceededRunnable;

    invoke-direct {v7, p0, v5}, Lio/grpc/internal/DelayedClientCall$1DeadlineExceededRunnable;-><init>(Lio/grpc/internal/DelayedClientCall;Ljava/lang/StringBuilder;)V

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v7, v1, v2, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    return-object v7
.end method

.method private setRealCall(Lio/grpc/ClientCall;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 327
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    .local p1, "realCall":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "realCall already set to %s"

    invoke-static {v2, v3, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->initialDeadlineMonitor:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 329
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 331
    :cond_1
    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    .line 332
    return-void
.end method


# virtual methods
.method protected callCancelled()V
    .locals 0

    .line 264
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    return-void
.end method

.method public final cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 215
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    sget-object v0, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    .line 216
    .local v0, "status":Lio/grpc/Status;
    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_0
    const-string v1, "Call cancelled without message"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 221
    :goto_0
    if-eqz p2, :cond_1

    .line 222
    invoke-virtual {v0, p2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 224
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/grpc/internal/DelayedClientCall;->cancel(Lio/grpc/Status;Z)V

    .line 225
    return-void
.end method

.method public final getAttributes()Lio/grpc/Attributes;
    .locals 2

    .line 403
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    monitor-enter p0

    .line 404
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    .line 405
    .local v0, "savedRealCall":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Lio/grpc/ClientCall;->getAttributes()Lio/grpc/Attributes;

    move-result-object v1

    return-object v1

    .line 409
    :cond_0
    sget-object v1, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    return-object v1

    .line 405
    .end local v0    # "savedRealCall":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final getRealCall()Lio/grpc/ClientCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 336
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    return-object v0
.end method

.method public final halfClose()V
    .locals 1

    .line 383
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    new-instance v0, Lio/grpc/internal/DelayedClientCall$7;

    invoke-direct {v0, p0}, Lio/grpc/internal/DelayedClientCall$7;-><init>(Lio/grpc/internal/DelayedClientCall;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method

.method public final isReady()Z
    .locals 1

    .line 393
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall;->passThrough:Z

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    invoke-virtual {v0}, Lio/grpc/ClientCall;->isReady()Z

    move-result v0

    return v0

    .line 396
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final request(I)V
    .locals 1
    .param p1, "numMessages"    # I

    .line 369
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall;->passThrough:Z

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->request(I)V

    goto :goto_0

    .line 372
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedClientCall$6;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedClientCall$6;-><init>(Lio/grpc/internal/DelayedClientCall;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 379
    :goto_0
    return-void
.end method

.method public final sendMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 341
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    .local p1, "message":Ljava/lang/Object;, "TReqT;"
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall;->passThrough:Z

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->sendMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedClientCall$4;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedClientCall$4;-><init>(Lio/grpc/internal/DelayedClientCall;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 351
    :goto_0
    return-void
.end method

.method public final setCall(Lio/grpc/ClientCall;)Ljava/lang/Runnable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    .local p1, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    if-eqz v0, :cond_0

    .line 169
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_0
    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ClientCall;

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall;->setRealCall(Lio/grpc/ClientCall;)V

    .line 172
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    new-instance v0, Lio/grpc/internal/DelayedClientCall$1;

    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall;->context:Lio/grpc/Context;

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/DelayedClientCall$1;-><init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/Context;)V

    return-object v0

    .line 172
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setMessageCompression(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 355
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall;->passThrough:Z

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->setMessageCompression(Z)V

    goto :goto_0

    .line 358
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedClientCall$5;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedClientCall$5;-><init>(Lio/grpc/internal/DelayedClientCall;Z)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 365
    :goto_0
    return-void
.end method

.method public final start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 4
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    .local p1, "listener":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->listener:Lio/grpc/ClientCall$Listener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ClientCall$Listener;

    iput-object v0, p0, Lio/grpc/internal/DelayedClientCall;->listener:Lio/grpc/ClientCall$Listener;

    .line 189
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->error:Lio/grpc/Status;

    .line 190
    .local v0, "savedError":Lio/grpc/Status;
    iget-boolean v1, p0, Lio/grpc/internal/DelayedClientCall;->passThrough:Z

    .line 191
    .local v1, "savedPassThrough":Z
    if-nez v1, :cond_1

    .line 192
    new-instance v2, Lio/grpc/internal/DelayedClientCall$DelayedListener;

    invoke-direct {v2, p1}, Lio/grpc/internal/DelayedClientCall$DelayedListener;-><init>(Lio/grpc/ClientCall$Listener;)V

    iput-object v2, p0, Lio/grpc/internal/DelayedClientCall;->delayedListener:Lio/grpc/internal/DelayedClientCall$DelayedListener;

    move-object p1, v2

    .line 194
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    if-eqz v0, :cond_2

    .line 196
    iget-object v2, p0, Lio/grpc/internal/DelayedClientCall;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;

    invoke-direct {v3, p0, p1, v0}, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;-><init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/ClientCall$Listener;Lio/grpc/Status;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 197
    return-void

    .line 199
    :cond_2
    if-eqz v1, :cond_3

    .line 200
    iget-object v2, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    invoke-virtual {v2, p1, p2}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    goto :goto_1

    .line 202
    :cond_3
    move-object v2, p1

    .line 203
    .local v2, "finalListener":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    new-instance v3, Lio/grpc/internal/DelayedClientCall$2;

    invoke-direct {v3, p0, v2, p2}, Lio/grpc/internal/DelayedClientCall$2;-><init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    invoke-direct {p0, v3}, Lio/grpc/internal/DelayedClientCall;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 210
    .end local v2    # "finalListener":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    :goto_1
    return-void

    .line 194
    .end local v0    # "savedError":Lio/grpc/Status;
    .end local v1    # "savedPassThrough":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 415
    .local p0, "this":Lio/grpc/internal/DelayedClientCall;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    .line 416
    const-string v2, "realCall"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    return-object v0
.end method
