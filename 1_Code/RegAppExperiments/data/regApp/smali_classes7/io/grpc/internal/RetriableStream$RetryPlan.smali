.class final Lio/grpc/internal/RetriableStream$RetryPlan;
.super Ljava/lang/Object;
.source "RetriableStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RetryPlan"
.end annotation


# instance fields
.field final backoffNanos:J

.field final shouldRetry:Z


# direct methods
.method constructor <init>(ZJ)V
    .locals 0
    .param p1, "shouldRetry"    # Z
    .param p2, "backoffNanos"    # J

    .line 1501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1502
    iput-boolean p1, p0, Lio/grpc/internal/RetriableStream$RetryPlan;->shouldRetry:Z

    .line 1503
    iput-wide p2, p0, Lio/grpc/internal/RetriableStream$RetryPlan;->backoffNanos:J

    .line 1504
    return-void
.end method
