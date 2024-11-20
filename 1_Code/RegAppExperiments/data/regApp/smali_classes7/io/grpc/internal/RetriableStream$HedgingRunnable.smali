.class final Lio/grpc/internal/RetriableStream$HedgingRunnable;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HedgingRunnable"
.end annotation


# instance fields
.field final scheduledHedgingRef:Lio/grpc/internal/RetriableStream$FutureCanceller;

.field final synthetic this$0:Lio/grpc/internal/RetriableStream;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)V
    .locals 0
    .param p2, "scheduledHedging"    # Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 445
    .local p0, "this":Lio/grpc/internal/RetriableStream$HedgingRunnable;, "Lio/grpc/internal/RetriableStream<TReqT;>.HedgingRunnable;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p2, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable;->scheduledHedgingRef:Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 447
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 455
    .local p0, "this":Lio/grpc/internal/RetriableStream$HedgingRunnable;, "Lio/grpc/internal/RetriableStream<TReqT;>.HedgingRunnable;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v1

    iget v1, v1, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/grpc/internal/RetriableStream;->access$400(Lio/grpc/internal/RetriableStream;IZ)Lio/grpc/internal/RetriableStream$Substream;

    move-result-object v0

    .line 456
    .local v0, "newSubstream":Lio/grpc/internal/RetriableStream$Substream;
    if-nez v0, :cond_0

    .line 457
    return-void

    .line 459
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$HedgingRunnable;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$1200(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;

    invoke-direct {v2, p0, v0}, Lio/grpc/internal/RetriableStream$HedgingRunnable$1;-><init>(Lio/grpc/internal/RetriableStream$HedgingRunnable;Lio/grpc/internal/RetriableStream$Substream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 499
    return-void
.end method
