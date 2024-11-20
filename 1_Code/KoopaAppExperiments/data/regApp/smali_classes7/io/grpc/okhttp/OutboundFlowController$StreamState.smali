.class public final Lio/grpc/okhttp/OutboundFlowController$StreamState;
.super Ljava/lang/Object;
.source "OutboundFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OutboundFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StreamState"
.end annotation


# instance fields
.field private allocatedBytes:I

.field private noPendingDataRunnable:Ljava/lang/Runnable;

.field private pendingBufferHasEndOfStream:Z

.field private final pendingWriteBuffer:Lokio/Buffer;

.field private final stream:Lio/grpc/okhttp/OutboundFlowController$Stream;

.field private final streamId:I

.field final synthetic this$0:Lio/grpc/okhttp/OutboundFlowController;

.field private window:I


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OutboundFlowController;IILio/grpc/okhttp/OutboundFlowController$Stream;)V
    .locals 1
    .param p1, "this$0"    # Lio/grpc/okhttp/OutboundFlowController;
    .param p2, "streamId"    # I
    .param p3, "initialWindowSize"    # I
    .param p4, "stream"    # Lio/grpc/okhttp/OutboundFlowController$Stream;

    .line 227
    iput-object p1, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->this$0:Lio/grpc/okhttp/OutboundFlowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->pendingWriteBuffer:Lokio/Buffer;

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->pendingBufferHasEndOfStream:Z

    .line 228
    iput p2, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->streamId:I

    .line 229
    iput p3, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->window:I

    .line 230
    iput-object p4, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->stream:Lio/grpc/okhttp/OutboundFlowController$Stream;

    .line 231
    return-void
.end method


# virtual methods
.method allocateBytes(I)V
    .locals 1
    .param p1, "bytes"    # I

    .line 238
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->allocatedBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->allocatedBytes:I

    .line 239
    return-void
.end method

.method allocatedBytes()I
    .locals 1

    .line 242
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->allocatedBytes:I

    return v0
.end method

.method clearAllocatedBytes()V
    .locals 1

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->allocatedBytes:I

    .line 251
    return-void
.end method

.method enqueueData(Lokio/Buffer;IZ)V
    .locals 3
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "size"    # I
    .param p3, "endOfStream"    # Z

    .line 336
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->pendingWriteBuffer:Lokio/Buffer;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 337
    iget-boolean v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->pendingBufferHasEndOfStream:Z

    or-int/2addr v0, p3

    iput-boolean v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->pendingBufferHasEndOfStream:Z

    .line 338
    return-void
.end method

.method hasPendingData()Z
    .locals 4

    .line 281
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->pendingWriteBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method incrementStreamWindow(I)I
    .locals 3
    .param p1, "delta"    # I

    .line 258
    if-lez p1, :cond_1

    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    iget v1, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->window:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window size overflow for stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->streamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    :goto_0
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->window:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->window:I

    .line 263
    return v0
.end method

.method notifyWhenNoPendingData(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "noPendingDataRunnable"    # Ljava/lang/Runnable;

    .line 341
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->noPendingDataRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "pending data notification already requested"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 343
    iput-object p1, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->noPendingDataRunnable:Ljava/lang/Runnable;

    .line 344
    return-void
.end method

.method streamableBytes()I
    .locals 3

    .line 274
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->window:I

    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->pendingWriteBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method unallocatedBytes()I
    .locals 2

    .line 246
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->streamableBytes()I

    move-result v0

    iget v1, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->allocatedBytes:I

    sub-int/2addr v0, v1

    return v0
.end method

.method window()I
    .locals 1

    .line 234
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->window:I

    return v0
.end method

.method writableWindow()I
    .locals 2

    .line 270
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->window:I

    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->this$0:Lio/grpc/okhttp/OutboundFlowController;

    invoke-static {v1}, Lio/grpc/okhttp/OutboundFlowController;->access$100(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->window()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method write(Lokio/Buffer;IZ)V
    .locals 6
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "bytesToSend"    # I
    .param p3, "endOfStream"    # Z

    .line 316
    move v0, p2

    .line 320
    .local v0, "bytesToWrite":I
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->this$0:Lio/grpc/okhttp/OutboundFlowController;

    invoke-static {v1}, Lio/grpc/okhttp/OutboundFlowController;->access$200(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/okhttp/internal/framed/FrameWriter;->maxDataLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 321
    .local v1, "frameBytes":I
    iget-object v2, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->this$0:Lio/grpc/okhttp/OutboundFlowController;

    invoke-static {v2}, Lio/grpc/okhttp/OutboundFlowController;->access$100(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object v2

    neg-int v3, v1

    invoke-virtual {v2, v3}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->incrementStreamWindow(I)I

    .line 322
    neg-int v2, v1

    invoke-virtual {p0, v2}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->incrementStreamWindow(I)I

    .line 325
    :try_start_0
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 326
    .local v2, "isEndOfStream":Z
    :goto_0
    iget-object v3, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->this$0:Lio/grpc/okhttp/OutboundFlowController;

    invoke-static {v3}, Lio/grpc/okhttp/OutboundFlowController;->access$200(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v3

    iget v4, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->streamId:I

    invoke-interface {v3, v2, v4, p1, v1}, Lio/grpc/okhttp/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v2    # "isEndOfStream":Z
    nop

    .line 330
    iget-object v2, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->stream:Lio/grpc/okhttp/OutboundFlowController$Stream;

    invoke-interface {v2, v1}, Lio/grpc/okhttp/OutboundFlowController$Stream;->onSentBytes(I)V

    .line 331
    sub-int/2addr v0, v1

    .line 332
    .end local v1    # "frameBytes":I
    if-gtz v0, :cond_0

    .line 333
    return-void

    .line 327
    .restart local v1    # "frameBytes":I
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method writeBytes(ILio/grpc/okhttp/OutboundFlowController$WriteStatus;)I
    .locals 6
    .param p1, "bytes"    # I
    .param p2, "writeStatus"    # Lio/grpc/okhttp/OutboundFlowController$WriteStatus;

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "bytesAttempted":I
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->writableWindow()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 290
    .local v1, "maxBytes":I
    :goto_0
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->hasPendingData()Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    .line 291
    int-to-long v2, v1

    iget-object v4, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->pendingWriteBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 293
    iget-object v2, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->pendingWriteBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 294
    iget-object v2, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->pendingWriteBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    long-to-int v3, v3

    iget-boolean v4, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->pendingBufferHasEndOfStream:Z

    invoke-virtual {p0, v2, v3, v4}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->write(Lokio/Buffer;IZ)V

    goto :goto_1

    .line 296
    :cond_0
    add-int/2addr v0, v1

    .line 297
    iget-object v2, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->pendingWriteBuffer:Lokio/Buffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->write(Lokio/Buffer;IZ)V

    .line 299
    :goto_1
    invoke-virtual {p2}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->incrementNumWrites()V

    .line 301
    sub-int v2, p1, v0

    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->writableWindow()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController$StreamState;->hasPendingData()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->noPendingDataRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 304
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 305
    const/4 v2, 0x0

    iput-object v2, p0, Lio/grpc/okhttp/OutboundFlowController$StreamState;->noPendingDataRunnable:Ljava/lang/Runnable;

    .line 307
    :cond_2
    return v0
.end method
