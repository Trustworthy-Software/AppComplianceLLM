.class Lio/grpc/internal/ClientCallImpl$DeadlineTimer;
.super Ljava/lang/Object;
.source "ClientCallImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ClientCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeadlineTimer"
.end annotation


# instance fields
.field private final remainingNanos:J

.field final synthetic this$0:Lio/grpc/internal/ClientCallImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientCallImpl;J)V
    .locals 0
    .param p2, "remainingNanos"    # J

    .line 387
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$DeadlineTimer;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>.DeadlineTimer;"
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-wide p2, p0, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;->remainingNanos:J

    .line 389
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 393
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$DeadlineTimer;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>.DeadlineTimer;"
    new-instance v0, Lio/grpc/internal/InsightBuilder;

    invoke-direct {v0}, Lio/grpc/internal/InsightBuilder;-><init>()V

    .line 394
    .local v0, "insight":Lio/grpc/internal/InsightBuilder;
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v1}, Lio/grpc/internal/ClientCallImpl;->access$100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/grpc/internal/ClientStream;->appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V

    .line 397
    iget-wide v1, p0, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;->remainingNanos:J

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    div-long/2addr v1, v6

    .line 398
    .local v1, "seconds":J
    iget-wide v6, p0, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;->remainingNanos:J

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    rem-long/2addr v6, v3

    .line 400
    .local v6, "nanos":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v3, "buf":Ljava/lang/StringBuilder;
    const-string v4, "deadline exceeded after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget-wide v4, p0, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;->remainingNanos:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    .line 403
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    :cond_0
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 406
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, ".%09d"

    invoke-static {v4, v8, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v4, "s. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v4, p0, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v4}, Lio/grpc/internal/ClientCallImpl;->access$100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;

    move-result-object v4

    sget-object v5, Lio/grpc/Status;->DEADLINE_EXCEEDED:Lio/grpc/Status;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 410
    return-void
.end method
