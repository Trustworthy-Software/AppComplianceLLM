.class public final Lio/grpc/internal/MaxConnectionIdleManager;
.super Ljava/lang/Object;
.source "MaxConnectionIdleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/MaxConnectionIdleManager$Ticker;
    }
.end annotation


# static fields
.field private static final systemTicker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;


# instance fields
.field private isActive:Z

.field private final maxConnectionIdleInNanos:J

.field private nextIdleMonitorTime:J

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private shutdownDelayed:Z

.field private shutdownFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private shutdownTask:Ljava/lang/Runnable;

.field private final ticker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lio/grpc/internal/MaxConnectionIdleManager$1;

    invoke-direct {v0}, Lio/grpc/internal/MaxConnectionIdleManager$1;-><init>()V

    sput-object v0, Lio/grpc/internal/MaxConnectionIdleManager;->systemTicker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "maxConnectionIdleInNanos"    # J

    .line 48
    sget-object v0, Lio/grpc/internal/MaxConnectionIdleManager;->systemTicker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;

    invoke-direct {p0, p1, p2, v0}, Lio/grpc/internal/MaxConnectionIdleManager;-><init>(JLio/grpc/internal/MaxConnectionIdleManager$Ticker;)V

    .line 49
    return-void
.end method

.method public constructor <init>(JLio/grpc/internal/MaxConnectionIdleManager$Ticker;)V
    .locals 0
    .param p1, "maxConnectionIdleInNanos"    # J
    .param p3, "ticker"    # Lio/grpc/internal/MaxConnectionIdleManager$Ticker;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lio/grpc/internal/MaxConnectionIdleManager;->maxConnectionIdleInNanos:J

    .line 54
    iput-object p3, p0, Lio/grpc/internal/MaxConnectionIdleManager;->ticker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/MaxConnectionIdleManager;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/MaxConnectionIdleManager;

    .line 28
    iget-boolean v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownDelayed:Z

    return v0
.end method

.method static synthetic access$002(Lio/grpc/internal/MaxConnectionIdleManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/MaxConnectionIdleManager;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownDelayed:Z

    return p1
.end method

.method static synthetic access$100(Lio/grpc/internal/MaxConnectionIdleManager;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/MaxConnectionIdleManager;

    .line 28
    iget-boolean v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->isActive:Z

    return v0
.end method

.method static synthetic access$202(Lio/grpc/internal/MaxConnectionIdleManager;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/MaxConnectionIdleManager;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledFuture;

    .line 28
    iput-object p1, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$300(Lio/grpc/internal/MaxConnectionIdleManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/MaxConnectionIdleManager;

    .line 28
    iget-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/internal/MaxConnectionIdleManager;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/MaxConnectionIdleManager;

    .line 28
    iget-wide v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->nextIdleMonitorTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lio/grpc/internal/MaxConnectionIdleManager;)Lio/grpc/internal/MaxConnectionIdleManager$Ticker;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/MaxConnectionIdleManager;

    .line 28
    iget-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->ticker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;

    return-object v0
.end method


# virtual methods
.method public onTransportActive()V
    .locals 1

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->isActive:Z

    .line 93
    iput-boolean v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownDelayed:Z

    .line 94
    return-void
.end method

.method public onTransportIdle()V
    .locals 5

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->isActive:Z

    .line 99
    iget-object v1, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iput-boolean v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownDelayed:Z

    .line 104
    iget-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownTask:Ljava/lang/Runnable;

    iget-wide v2, p0, Lio/grpc/internal/MaxConnectionIdleManager;->maxConnectionIdleInNanos:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 105
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->ticker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;

    invoke-interface {v0}, Lio/grpc/internal/MaxConnectionIdleManager$Ticker;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lio/grpc/internal/MaxConnectionIdleManager;->maxConnectionIdleInNanos:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->nextIdleMonitorTime:J

    .line 109
    :goto_0
    return-void
.end method

.method public onTransportTermination()V
    .locals 2

    .line 113
    iget-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 117
    :cond_0
    return-void
.end method

.method public start(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 4
    .param p1, "closeJob"    # Ljava/lang/Runnable;
    .param p2, "scheduler"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 64
    iput-object p2, p0, Lio/grpc/internal/MaxConnectionIdleManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    iget-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->ticker:Lio/grpc/internal/MaxConnectionIdleManager$Ticker;

    invoke-interface {v0}, Lio/grpc/internal/MaxConnectionIdleManager$Ticker;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lio/grpc/internal/MaxConnectionIdleManager;->maxConnectionIdleInNanos:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->nextIdleMonitorTime:J

    .line 67
    new-instance v0, Lio/grpc/internal/LogExceptionRunnable;

    new-instance v1, Lio/grpc/internal/MaxConnectionIdleManager$2;

    invoke-direct {v1, p0, p2, p1}, Lio/grpc/internal/MaxConnectionIdleManager$2;-><init>(Lio/grpc/internal/MaxConnectionIdleManager;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Lio/grpc/internal/LogExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownTask:Ljava/lang/Runnable;

    .line 85
    iget-wide v1, p0, Lio/grpc/internal/MaxConnectionIdleManager;->maxConnectionIdleInNanos:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 86
    invoke-interface {p2, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/MaxConnectionIdleManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 87
    return-void
.end method
