.class final Lio/grpc/internal/RetriableStream$Throttle;
.super Ljava/lang/Object;
.source "RetriableStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Throttle"
.end annotation


# static fields
.field private static final THREE_DECIMAL_PLACES_SCALE_UP:I = 0x3e8


# instance fields
.field final maxTokens:I

.field final threshold:I

.field final tokenCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final tokenRatio:I


# direct methods
.method constructor <init>(FF)V
    .locals 3
    .param p1, "maxTokens"    # F
    .param p2, "tokenRatio"    # F

    .line 1431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1429
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1433
    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v2, p2, v1

    float-to-int v2, v2

    iput v2, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenRatio:I

    .line 1434
    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lio/grpc/internal/RetriableStream$Throttle;->maxTokens:I

    .line 1435
    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lio/grpc/internal/RetriableStream$Throttle;->threshold:I

    .line 1436
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1437
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1481
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1482
    return v0

    .line 1484
    :cond_0
    instance-of v1, p1, Lio/grpc/internal/RetriableStream$Throttle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1485
    return v2

    .line 1487
    :cond_1
    move-object v1, p1

    check-cast v1, Lio/grpc/internal/RetriableStream$Throttle;

    .line 1488
    .local v1, "that":Lio/grpc/internal/RetriableStream$Throttle;
    iget v3, p0, Lio/grpc/internal/RetriableStream$Throttle;->maxTokens:I

    iget v4, v1, Lio/grpc/internal/RetriableStream$Throttle;->maxTokens:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenRatio:I

    iget v4, v1, Lio/grpc/internal/RetriableStream$Throttle;->tokenRatio:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1493
    iget v0, p0, Lio/grpc/internal/RetriableStream$Throttle;->maxTokens:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenRatio:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method isAboveThreshold()Z
    .locals 2

    .line 1441
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lio/grpc/internal/RetriableStream$Throttle;->threshold:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onQualifiedFailureThenCheckIsAboveThreshold()Z
    .locals 5

    .line 1452
    nop

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1453
    .local v0, "currentCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1454
    return v1

    .line 1456
    :cond_0
    add-int/lit16 v2, v0, -0x3e8

    .line 1457
    .local v2, "decremented":I
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    .line 1458
    .local v3, "updated":Z
    if-eqz v3, :cond_2

    .line 1459
    iget v4, p0, Lio/grpc/internal/RetriableStream$Throttle;->threshold:I

    if-le v2, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1461
    .end local v0    # "currentCount":I
    .end local v2    # "decremented":I
    .end local v3    # "updated":Z
    :cond_2
    goto :goto_0
.end method

.method onSuccess()V
    .locals 4

    .line 1467
    nop

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1468
    .local v0, "currentCount":I
    iget v1, p0, Lio/grpc/internal/RetriableStream$Throttle;->maxTokens:I

    if-ne v0, v1, :cond_0

    .line 1469
    goto :goto_1

    .line 1471
    :cond_0
    iget v2, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenRatio:I

    add-int/2addr v2, v0

    .line 1472
    .local v2, "incremented":I
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    .line 1473
    .local v1, "updated":Z
    if-eqz v1, :cond_1

    .line 1474
    nop

    .line 1477
    .end local v0    # "currentCount":I
    .end local v1    # "updated":Z
    .end local v2    # "incremented":I
    :goto_1
    return-void

    .line 1476
    :cond_1
    goto :goto_0
.end method
