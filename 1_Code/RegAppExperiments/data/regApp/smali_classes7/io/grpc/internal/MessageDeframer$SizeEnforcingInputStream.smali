.class final Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;
.super Ljava/io/FilterInputStream;
.source "MessageDeframer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/MessageDeframer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeEnforcingInputStream"
.end annotation


# instance fields
.field private count:J

.field private mark:J

.field private maxCount:J

.field private final maxMessageSize:I

.field private final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;


# direct methods
.method constructor <init>(Ljava/io/InputStream;ILio/grpc/internal/StatsTraceContext;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "maxMessageSize"    # I
    .param p3, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;

    .line 455
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 452
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->mark:J

    .line 456
    iput p2, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->maxMessageSize:I

    .line 457
    iput-object p3, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    .line 458
    return-void
.end method

.method private reportCount()V
    .locals 5

    .line 512
    iget-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    iget-wide v2, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->maxCount:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 513
    iget-object v4, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    sub-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Lio/grpc/internal/StatsTraceContext;->inboundUncompressedSize(J)V

    .line 514
    iget-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    iput-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->maxCount:J

    .line 516
    :cond_0
    return-void
.end method

.method private verifySize()V
    .locals 4

    .line 519
    iget-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    iget v2, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->maxMessageSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 524
    return-void

    .line 520
    :cond_0
    sget-object v0, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decompressed gRPC message exceeds maximum size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->maxMessageSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 493
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 494
    iget-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    iput-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->mark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    monitor-exit p0

    return-void

    .line 492
    .end local p0    # "this":Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 463
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 464
    iget-wide v1, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    .line 466
    :cond_0
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->verifySize()V

    .line 467
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->reportCount()V

    .line 468
    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 474
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 475
    iget-wide v1, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    .line 477
    :cond_0
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->verifySize()V

    .line 478
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->reportCount()V

    .line 479
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 500
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iget-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->mark:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 508
    iget-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->mark:J

    iput-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit p0

    return-void

    .line 504
    .end local p0    # "this":Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 4
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 485
    .local v0, "result":J
    iget-wide v2, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    .line 486
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->verifySize()V

    .line 487
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->reportCount()V

    .line 488
    return-wide v0
.end method
