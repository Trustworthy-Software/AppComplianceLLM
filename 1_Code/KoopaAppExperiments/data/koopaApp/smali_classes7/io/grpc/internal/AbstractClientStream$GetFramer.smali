.class Lio/grpc/internal/AbstractClientStream$GetFramer;
.super Ljava/lang/Object;
.source "AbstractClientStream.java"

# interfaces
.implements Lio/grpc/internal/Framer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AbstractClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetFramer"
.end annotation


# instance fields
.field private closed:Z

.field private headers:Lio/grpc/Metadata;

.field private payload:[B

.field private final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

.field final synthetic this$0:Lio/grpc/internal/AbstractClientStream;


# direct methods
.method public constructor <init>(Lio/grpc/internal/AbstractClientStream;Lio/grpc/Metadata;Lio/grpc/internal/StatsTraceContext;)V
    .locals 0
    .param p2, "headers"    # Lio/grpc/Metadata;
    .param p3, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;

    .line 472
    iput-object p1, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->this$0:Lio/grpc/internal/AbstractClientStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    const-string p1, "headers"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Metadata;

    iput-object p1, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->headers:Lio/grpc/Metadata;

    .line 474
    const-string p1, "statsTraceCtx"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/StatsTraceContext;

    iput-object p1, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    .line 475
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->closed:Z

    .line 513
    iget-object v1, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->payload:[B

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Lack of request message. GET request is only supported for unary requests"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 515
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->this$0:Lio/grpc/internal/AbstractClientStream;

    invoke-virtual {v0}, Lio/grpc/internal/AbstractClientStream;->abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->headers:Lio/grpc/Metadata;

    iget-object v2, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->payload:[B

    invoke-interface {v0, v1, v2}, Lio/grpc/internal/AbstractClientStream$Sink;->writeHeaders(Lio/grpc/Metadata;[B)V

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->payload:[B

    .line 517
    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->headers:Lio/grpc/Metadata;

    .line 518
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->closed:Z

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->payload:[B

    .line 525
    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->headers:Lio/grpc/Metadata;

    .line 526
    return-void
.end method

.method public flush()V
    .locals 0

    .line 502
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 506
    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->closed:Z

    return v0
.end method

.method public setCompressor(Lio/grpc/Compressor;)Lio/grpc/internal/Framer;
    .locals 0
    .param p1, "compressor"    # Lio/grpc/Compressor;

    .line 536
    return-object p0
.end method

.method public setMaxOutboundMessageSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .line 541
    return-void
.end method

.method public setMessageCompression(Z)Lio/grpc/internal/Framer;
    .locals 0
    .param p1, "enable"    # Z

    .line 531
    return-object p0
.end method

.method public writePayload(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "message"    # Ljava/io/InputStream;

    .line 480
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->payload:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "writePayload should not be called multiple times"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 482
    :try_start_0
    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->payload:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    nop

    .line 486
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v0, v1}, Lio/grpc/internal/StatsTraceContext;->outboundMessage(I)V

    .line 487
    iget-object v2, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    const/4 v3, 0x0

    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->payload:[B

    array-length v1, v0

    int-to-long v4, v1

    array-length v0, v0

    int-to-long v6, v0

    invoke-virtual/range {v2 .. v7}, Lio/grpc/internal/StatsTraceContext;->outboundMessageSent(IJJ)V

    .line 488
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget-object v1, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->payload:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lio/grpc/internal/StatsTraceContext;->outboundUncompressedSize(J)V

    .line 498
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget-object v1, p0, Lio/grpc/internal/AbstractClientStream$GetFramer;->payload:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lio/grpc/internal/StatsTraceContext;->outboundWireSize(J)V

    .line 499
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
