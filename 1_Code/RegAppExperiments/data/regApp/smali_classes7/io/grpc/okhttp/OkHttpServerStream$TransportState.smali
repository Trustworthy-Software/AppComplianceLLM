.class Lio/grpc/okhttp/OkHttpServerStream$TransportState;
.super Lio/grpc/internal/AbstractServerStream$TransportState;
.source "OkHttpServerStream.java"

# interfaces
.implements Lio/grpc/okhttp/OutboundFlowController$Stream;
.implements Lio/grpc/okhttp/OkHttpServerTransport$StreamState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpServerStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportState"
.end annotation


# instance fields
.field private cancelSent:Z

.field private final frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

.field private final initialWindowSize:I

.field private final lock:Ljava/lang/Object;

.field private final outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

.field private final outboundFlowState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

.field private processedWindow:I

.field private receivedEndOfStream:Z

.field private final streamId:I

.field private final tag:Lio/perfmark/Tag;

.field private final transport:Lio/grpc/okhttp/OkHttpServerTransport;

.field private window:I


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport;IILio/grpc/internal/StatsTraceContext;Ljava/lang/Object;Lio/grpc/okhttp/ExceptionHandlingFrameWriter;Lio/grpc/okhttp/OutboundFlowController;ILio/grpc/internal/TransportTracer;Ljava/lang/String;)V
    .locals 1
    .param p1, "transport"    # Lio/grpc/okhttp/OkHttpServerTransport;
    .param p2, "streamId"    # I
    .param p3, "maxMessageSize"    # I
    .param p4, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;
    .param p5, "lock"    # Ljava/lang/Object;
    .param p6, "frameWriter"    # Lio/grpc/okhttp/ExceptionHandlingFrameWriter;
    .param p7, "outboundFlow"    # Lio/grpc/okhttp/OutboundFlowController;
    .param p8, "initialWindowSize"    # I
    .param p9, "transportTracer"    # Lio/grpc/internal/TransportTracer;
    .param p10, "methodName"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0, p3, p4, p9}, Lio/grpc/internal/AbstractServerStream$TransportState;-><init>(ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->cancelSent:Z

    .line 176
    const-string v0, "transport"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpServerTransport;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->transport:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 177
    iput p2, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->streamId:I

    .line 178
    const-string v0, "lock"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->lock:Ljava/lang/Object;

    .line 179
    iput-object p6, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    .line 180
    iput-object p7, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    .line 181
    iput p8, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->window:I

    .line 182
    iput p8, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->processedWindow:I

    .line 183
    iput p8, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->initialWindowSize:I

    .line 184
    invoke-static {p10}, Lio/perfmark/PerfMark;->createTag(Ljava/lang/String;)Lio/perfmark/Tag;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->tag:Lio/perfmark/Tag;

    .line 185
    invoke-virtual {p7, p0, p2}, Lio/grpc/okhttp/OutboundFlowController;->createState(Lio/grpc/okhttp/OutboundFlowController$Stream;I)Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->outboundFlowState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    .line 186
    return-void
.end method

.method static synthetic access$000(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    .line 142
    iget v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->streamId:I

    return v0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    .line 142
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerStream$TransportState;
    .param p1, "x1"    # Ljava/util/List;

    .line 142
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->sendHeaders(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Lokio/Buffer;Z)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerStream$TransportState;
    .param p1, "x1"    # Lokio/Buffer;
    .param p2, "x2"    # Z

    .line 142
    invoke-direct {p0, p1, p2}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->sendBuffer(Lokio/Buffer;Z)V

    return-void
.end method

.method static synthetic access$700(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerStream$TransportState;
    .param p1, "x1"    # Ljava/util/List;

    .line 142
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->sendTrailers(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Lio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerStream$TransportState;
    .param p1, "x1"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p2, "x2"    # Lio/grpc/Status;

    .line 142
    invoke-direct {p0, p1, p2}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->cancel(Lio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    return-void
.end method

.method private cancel(Lio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    .locals 3
    .param p1, "http2Error"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p2, "reason"    # Lio/grpc/Status;

    .line 288
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->cancelSent:Z

    if-eqz v0, :cond_0

    .line 289
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->cancelSent:Z

    .line 292
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    iget v2, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->streamId:I

    invoke-virtual {v1, v2, p1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 293
    invoke-virtual {p0, p2}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->transportReportStatus(Lio/grpc/Status;)V

    .line 294
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->transport:Lio/grpc/okhttp/OkHttpServerTransport;

    iget v2, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->streamId:I

    invoke-virtual {v1, v2, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->streamClosed(IZ)V

    .line 295
    return-void
.end method

.method private sendBuffer(Lokio/Buffer;Z)V
    .locals 3
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "flush"    # Z

    .line 255
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->cancelSent:Z

    if-eqz v0, :cond_0

    .line 256
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->outboundFlowState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/grpc/okhttp/OutboundFlowController;->data(ZLio/grpc/okhttp/OutboundFlowController$StreamState;Lokio/Buffer;Z)V

    .line 261
    return-void
.end method

.method private sendHeaders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    const/4 v1, 0x0

    iget v2, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->streamId:I

    invoke-virtual {v0, v1, v2, p1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->synReply(ZILjava/util/List;)V

    .line 266
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v0}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 267
    return-void
.end method

.method private sendTrailers(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p1, "responseTrailers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->outboundFlowState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    new-instance v2, Lio/grpc/okhttp/OkHttpServerStream$TransportState$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState$$ExternalSyntheticLambda0;-><init>(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lio/grpc/okhttp/OutboundFlowController;->notifyWhenNoPendingData(Lio/grpc/okhttp/OutboundFlowController$StreamState;Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method private sendTrailersAfterFlowControlled(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 276
    .local p1, "responseTrailers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    iget v2, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->streamId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, p1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->synReply(ZILjava/util/List;)V

    .line 278
    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->receivedEndOfStream:Z

    if-nez v1, :cond_0

    .line 279
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    iget v2, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->streamId:I

    sget-object v4, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2, v4}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 281
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->transport:Lio/grpc/okhttp/OkHttpServerTransport;

    iget v2, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->streamId:I

    invoke-virtual {v1, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport;->streamClosed(IZ)V

    .line 282
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->complete()V

    .line 283
    monitor-exit v0

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public bytesRead(I)V
    .locals 5
    .param p1, "processedBytes"    # I

    .line 197
    iget v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->processedWindow:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->processedWindow:I

    .line 198
    int-to-float v1, v0

    iget v2, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->initialWindowSize:I

    int-to-float v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    .line 199
    sub-int/2addr v2, v0

    .line 200
    .local v2, "delta":I
    iget v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->window:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->window:I

    .line 201
    add-int/2addr v0, v2

    iput v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->processedWindow:I

    .line 202
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    iget v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->streamId:I

    int-to-long v3, v2

    invoke-virtual {v0, v1, v3, v4}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->windowUpdate(IJ)V

    .line 203
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v0}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 205
    .end local v2    # "delta":I
    :cond_0
    return-void
.end method

.method public deframeFailed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 191
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-static {p1}, Lio/grpc/Status;->fromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->cancel(Lio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    .line 192
    return-void
.end method

.method public getOutboundFlowState()Lio/grpc/okhttp/OutboundFlowController$StreamState;
    .locals 1

    .line 299
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->outboundFlowState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    return-object v0
.end method

.method public hasReceivedEndOfStream()Z
    .locals 2

    .line 240
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->receivedEndOfStream:Z

    monitor-exit v0

    return v1

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public inboundDataReceived(Lokio/Buffer;IZ)V
    .locals 3
    .param p1, "frame"    # Lokio/Buffer;
    .param p2, "windowConsumed"    # I
    .param p3, "endOfStream"    # Z

    .line 220
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    const-string v1, "OkHttpServerTransport$FrameHandler.data"

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->event(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 222
    if-eqz p3, :cond_0

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->receivedEndOfStream:Z

    .line 225
    :cond_0
    iget v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->window:I

    sub-int/2addr v1, p2

    iput v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->window:I

    .line 226
    new-instance v1, Lio/grpc/okhttp/OkHttpReadableBuffer;

    invoke-direct {v1, p1}, Lio/grpc/okhttp/OkHttpReadableBuffer;-><init>(Lokio/Buffer;)V

    invoke-super {p0, v1, p3}, Lio/grpc/internal/AbstractServerStream$TransportState;->inboundDataReceived(Lio/grpc/internal/ReadableBuffer;Z)V

    .line 227
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public inboundRstReceived(Lio/grpc/Status;)V
    .locals 2
    .param p1, "status"    # Lio/grpc/Status;

    .line 233
    const-string v0, "OkHttpServerTransport$FrameHandler.rstStream"

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->tag:Lio/perfmark/Tag;

    invoke-static {v0, v1}, Lio/perfmark/PerfMark;->event(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 234
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->transportReportStatus(Lio/grpc/Status;)V

    .line 235
    return-void
.end method

.method public inboundWindowAvailable()I
    .locals 2

    .line 248
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    iget v1, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->window:I

    monitor-exit v0

    return v1

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$sendTrailers$0$io-grpc-okhttp-OkHttpServerStream$TransportState(Ljava/util/List;)V
    .locals 0
    .param p1, "responseTrailers"    # Ljava/util/List;

    .line 272
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->sendTrailersAfterFlowControlled(Ljava/util/List;)V

    return-void
.end method

.method public runOnTransportThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 210
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 212
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
