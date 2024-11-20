.class public abstract Lio/grpc/internal/AbstractServerStream$TransportState;
.super Lio/grpc/internal/AbstractStream$TransportState;
.source "AbstractServerStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AbstractServerStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "TransportState"
.end annotation


# instance fields
.field private closedStatus:Lio/grpc/Status;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private deframerClosed:Z

.field private deframerClosedTask:Ljava/lang/Runnable;

.field private endOfStream:Z

.field private immediateCloseRequested:Z

.field private listener:Lio/grpc/internal/ServerStreamListener;

.field private listenerClosed:Z

.field private final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;


# direct methods
.method protected constructor <init>(ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V
    .locals 1
    .param p1, "maxMessageSize"    # I
    .param p2, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;
    .param p3, "transportTracer"    # Lio/grpc/internal/TransportTracer;

    .line 202
    nop

    .line 205
    const-string v0, "transportTracer"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/TransportTracer;

    .line 202
    invoke-direct {p0, p1, p2, v0}, Lio/grpc/internal/AbstractStream$TransportState;-><init>(ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->endOfStream:Z

    .line 191
    iput-boolean v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->deframerClosed:Z

    .line 192
    iput-boolean v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->immediateCloseRequested:Z

    .line 206
    const-string v0, "statsTraceCtx"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/StatsTraceContext;

    iput-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/AbstractServerStream$TransportState;Lio/grpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/AbstractServerStream$TransportState;
    .param p1, "x1"    # Lio/grpc/Status;

    .line 184
    invoke-direct {p0, p1}, Lio/grpc/internal/AbstractServerStream$TransportState;->setClosedStatus(Lio/grpc/Status;)V

    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/AbstractServerStream$TransportState;Lio/grpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/AbstractServerStream$TransportState;
    .param p1, "x1"    # Lio/grpc/Status;

    .line 184
    invoke-direct {p0, p1}, Lio/grpc/internal/AbstractServerStream$TransportState;->closeListener(Lio/grpc/Status;)V

    return-void
.end method

.method private closeListener(Lio/grpc/Status;)V
    .locals 3
    .param p1, "newStatus"    # Lio/grpc/Status;

    .line 328
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->closedStatus:Lio/grpc/Status;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 329
    iget-boolean v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->listenerClosed:Z

    if-nez v0, :cond_3

    .line 330
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-nez v0, :cond_2

    .line 331
    iget-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v0, p1}, Lio/grpc/internal/StatsTraceContext;->streamClosed(Lio/grpc/Status;)V

    .line 332
    invoke-virtual {p0}, Lio/grpc/internal/AbstractServerStream$TransportState;->getTransportTracer()Lio/grpc/internal/TransportTracer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/grpc/internal/TransportTracer;->reportStreamClosed(Z)V

    goto :goto_2

    .line 334
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget-object v1, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->closedStatus:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Lio/grpc/internal/StatsTraceContext;->streamClosed(Lio/grpc/Status;)V

    .line 335
    invoke-virtual {p0}, Lio/grpc/internal/AbstractServerStream$TransportState;->getTransportTracer()Lio/grpc/internal/TransportTracer;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->closedStatus:Lio/grpc/Status;

    invoke-virtual {v1}, Lio/grpc/Status;->isOk()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/TransportTracer;->reportStreamClosed(Z)V

    .line 337
    :goto_2
    iput-boolean v2, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->listenerClosed:Z

    .line 338
    invoke-virtual {p0}, Lio/grpc/internal/AbstractServerStream$TransportState;->onStreamDeallocated()V

    .line 339
    invoke-virtual {p0}, Lio/grpc/internal/AbstractServerStream$TransportState;->listener()Lio/grpc/internal/ServerStreamListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ServerStreamListener;->closed(Lio/grpc/Status;)V

    .line 341
    :cond_3
    return-void
.end method

.method private setClosedStatus(Lio/grpc/Status;)V
    .locals 2
    .param p1, "closeStatus"    # Lio/grpc/Status;

    .line 347
    iget-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->closedStatus:Lio/grpc/Status;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "closedStatus can only be set once"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 348
    iput-object p1, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->closedStatus:Lio/grpc/Status;

    .line 349
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 303
    iget-boolean v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->deframerClosed:Z

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->deframerClosedTask:Ljava/lang/Runnable;

    .line 305
    sget-object v0, Lio/grpc/Status;->OK:Lio/grpc/Status;

    invoke-direct {p0, v0}, Lio/grpc/internal/AbstractServerStream$TransportState;->closeListener(Lio/grpc/Status;)V

    goto :goto_0

    .line 307
    :cond_0
    new-instance v0, Lio/grpc/internal/AbstractServerStream$TransportState$2;

    invoke-direct {v0, p0}, Lio/grpc/internal/AbstractServerStream$TransportState$2;-><init>(Lio/grpc/internal/AbstractServerStream$TransportState;)V

    iput-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->deframerClosedTask:Ljava/lang/Runnable;

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->immediateCloseRequested:Z

    .line 315
    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractServerStream$TransportState;->closeDeframer(Z)V

    .line 317
    :goto_0
    return-void
.end method

.method public deframerClosed(Z)V
    .locals 3
    .param p1, "hasPartialMessage"    # Z

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->deframerClosed:Z

    .line 227
    iget-boolean v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->endOfStream:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->immediateCloseRequested:Z

    if-nez v0, :cond_1

    .line 228
    if-eqz p1, :cond_0

    .line 231
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 233
    const-string v2, "Encountered end-of-stream mid-frame"

    invoke-virtual {v0, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    .line 231
    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractServerStream$TransportState;->deframeFailed(Ljava/lang/Throwable;)V

    .line 235
    iput-object v1, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->deframerClosedTask:Ljava/lang/Runnable;

    .line 236
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->listener:Lio/grpc/internal/ServerStreamListener;

    invoke-interface {v0}, Lio/grpc/internal/ServerStreamListener;->halfClosed()V

    .line 240
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->deframerClosedTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 241
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 242
    iput-object v1, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->deframerClosedTask:Ljava/lang/Runnable;

    .line 244
    :cond_2
    return-void
.end method

.method public inboundDataReceived(Lio/grpc/internal/ReadableBuffer;Z)V
    .locals 3
    .param p1, "frame"    # Lio/grpc/internal/ReadableBuffer;
    .param p2, "endOfStream"    # Z

    .line 260
    iget-boolean v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->endOfStream:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Past end of stream"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 262
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractServerStream$TransportState;->deframe(Lio/grpc/internal/ReadableBuffer;)V

    .line 263
    if-eqz p2, :cond_0

    .line 264
    iput-boolean v1, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->endOfStream:Z

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractServerStream$TransportState;->closeDeframer(Z)V

    .line 267
    :cond_0
    return-void
.end method

.method protected listener()Lio/grpc/internal/ServerStreamListener;
    .locals 1

    .line 248
    iget-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->listener:Lio/grpc/internal/ServerStreamListener;

    return-object v0
.end method

.method protected bridge synthetic listener()Lio/grpc/internal/StreamListener;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lio/grpc/internal/AbstractServerStream$TransportState;->listener()Lio/grpc/internal/ServerStreamListener;

    move-result-object v0

    return-object v0
.end method

.method public final onStreamAllocated()V
    .locals 1

    .line 220
    invoke-super {p0}, Lio/grpc/internal/AbstractStream$TransportState;->onStreamAllocated()V

    .line 221
    invoke-virtual {p0}, Lio/grpc/internal/AbstractServerStream$TransportState;->getTransportTracer()Lio/grpc/internal/TransportTracer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/TransportTracer;->reportRemoteStreamStarted()V

    .line 222
    return-void
.end method

.method public final setListener(Lio/grpc/internal/ServerStreamListener;)V
    .locals 2
    .param p1, "listener"    # Lio/grpc/internal/ServerStreamListener;

    .line 214
    iget-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->listener:Lio/grpc/internal/ServerStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "setListener should be called only once"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 215
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ServerStreamListener;

    iput-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->listener:Lio/grpc/internal/ServerStreamListener;

    .line 216
    return-void
.end method

.method public final transportReportStatus(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 280
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "status must not be OK"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 281
    iget-boolean v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->deframerClosed:Z

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->deframerClosedTask:Ljava/lang/Runnable;

    .line 283
    invoke-direct {p0, p1}, Lio/grpc/internal/AbstractServerStream$TransportState;->closeListener(Lio/grpc/Status;)V

    goto :goto_0

    .line 285
    :cond_0
    new-instance v0, Lio/grpc/internal/AbstractServerStream$TransportState$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/AbstractServerStream$TransportState$1;-><init>(Lio/grpc/internal/AbstractServerStream$TransportState;Lio/grpc/Status;)V

    iput-object v0, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->deframerClosedTask:Ljava/lang/Runnable;

    .line 292
    iput-boolean v1, p0, Lio/grpc/internal/AbstractServerStream$TransportState;->immediateCloseRequested:Z

    .line 293
    invoke-virtual {p0, v1}, Lio/grpc/internal/AbstractServerStream$TransportState;->closeDeframer(Z)V

    .line 295
    :goto_0
    return-void
.end method
