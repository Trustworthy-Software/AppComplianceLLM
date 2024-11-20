.class Lio/grpc/internal/RetriableStream$BufferSizeTracer;
.super Lio/grpc/ClientStreamTracer;
.source "RetriableStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BufferSizeTracer"
.end annotation


# instance fields
.field bufferNeeded:J

.field private final substream:Lio/grpc/internal/RetriableStream$Substream;

.field final synthetic this$0:Lio/grpc/internal/RetriableStream;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/RetriableStream;
    .param p2, "substream"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 1341
    .local p0, "this":Lio/grpc/internal/RetriableStream$BufferSizeTracer;, "Lio/grpc/internal/RetriableStream<TReqT;>.BufferSizeTracer;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-direct {p0}, Lio/grpc/ClientStreamTracer;-><init>()V

    .line 1342
    iput-object p2, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->substream:Lio/grpc/internal/RetriableStream$Substream;

    .line 1343
    return-void
.end method


# virtual methods
.method public outboundWireSize(J)V
    .locals 8
    .param p1, "bytes"    # J

    .line 1352
    .local p0, "this":Lio/grpc/internal/RetriableStream$BufferSizeTracer;, "Lio/grpc/internal/RetriableStream<TReqT;>.BufferSizeTracer;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eqz v0, :cond_0

    .line 1353
    return-void

    .line 1356
    :cond_0
    const/4 v0, 0x0

    .line 1359
    .local v0, "postCommitTask":Ljava/lang/Runnable;
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$500(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1360
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v2

    iget-object v2, v2, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-nez v2, :cond_7

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v2, v2, Lio/grpc/internal/RetriableStream$Substream;->closed:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1363
    :cond_1
    iget-wide v2, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->bufferNeeded:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->bufferNeeded:J

    .line 1364
    iget-object v4, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v4}, Lio/grpc/internal/RetriableStream;->access$2900(Lio/grpc/internal/RetriableStream;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 1365
    monitor-exit v1

    return-void

    .line 1368
    :cond_2
    iget-wide v2, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->bufferNeeded:J

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v4}, Lio/grpc/internal/RetriableStream;->access$3000(Lio/grpc/internal/RetriableStream;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-lez v2, :cond_3

    .line 1369
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iput-boolean v3, v2, Lio/grpc/internal/RetriableStream$Substream;->bufferLimitExceeded:Z

    goto :goto_0

    .line 1372
    :cond_3
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    .line 1373
    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$3100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    move-result-object v2

    iget-wide v4, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->bufferNeeded:J

    iget-object v6, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v6}, Lio/grpc/internal/RetriableStream;->access$2900(Lio/grpc/internal/RetriableStream;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lio/grpc/internal/RetriableStream$ChannelBufferMeter;->addAndGet(J)J

    move-result-wide v4

    .line 1374
    .local v4, "savedChannelBufferUsed":J
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    iget-wide v6, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->bufferNeeded:J

    invoke-static {v2, v6, v7}, Lio/grpc/internal/RetriableStream;->access$2902(Lio/grpc/internal/RetriableStream;J)J

    .line 1376
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$3200(Lio/grpc/internal/RetriableStream;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_4

    .line 1377
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iput-boolean v3, v2, Lio/grpc/internal/RetriableStream$Substream;->bufferLimitExceeded:Z

    .line 1381
    .end local v4    # "savedChannelBufferUsed":J
    :cond_4
    :goto_0
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v2, v2, Lio/grpc/internal/RetriableStream$Substream;->bufferLimitExceeded:Z

    if-eqz v2, :cond_5

    .line 1382
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-static {v2, v3}, Lio/grpc/internal/RetriableStream;->access$3300(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)Ljava/lang/Runnable;

    move-result-object v2

    move-object v0, v2

    .line 1384
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    if-eqz v0, :cond_6

    .line 1387
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1389
    :cond_6
    return-void

    .line 1361
    :cond_7
    :goto_1
    :try_start_1
    monitor-exit v1

    return-void

    .line 1384
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
