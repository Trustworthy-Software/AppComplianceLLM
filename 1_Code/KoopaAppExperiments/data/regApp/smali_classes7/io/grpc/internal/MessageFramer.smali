.class public Lio/grpc/internal/MessageFramer;
.super Ljava/lang/Object;
.source "MessageFramer.java"

# interfaces
.implements Lio/grpc/internal/Framer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/MessageFramer$BufferChainOutputStream;,
        Lio/grpc/internal/MessageFramer$OutputStreamAdapter;,
        Lio/grpc/internal/MessageFramer$Sink;
    }
.end annotation


# static fields
.field private static final COMPRESSED:B = 0x1t

.field private static final HEADER_LENGTH:I = 0x5

.field private static final NO_MAX_OUTBOUND_MESSAGE_SIZE:I = -0x1

.field private static final UNCOMPRESSED:B


# instance fields
.field private buffer:Lio/grpc/internal/WritableBuffer;

.field private final bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

.field private closed:Z

.field private compressor:Lio/grpc/Compressor;

.field private currentMessageSeqNo:I

.field private currentMessageWireSize:J

.field private final headerScratch:Ljava/nio/ByteBuffer;

.field private maxOutboundMessageSize:I

.field private messageCompression:Z

.field private messagesBuffered:I

.field private final outputStreamAdapter:Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

.field private final sink:Lio/grpc/internal/MessageFramer$Sink;

.field private final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;


# direct methods
.method public constructor <init>(Lio/grpc/internal/MessageFramer$Sink;Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;)V
    .locals 3
    .param p1, "sink"    # Lio/grpc/internal/MessageFramer$Sink;
    .param p2, "bufferAllocator"    # Lio/grpc/internal/WritableBufferAllocator;
    .param p3, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    .line 77
    sget-object v1, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    iput-object v1, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/internal/MessageFramer;->messageCompression:Z

    .line 79
    new-instance v1, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;-><init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V

    iput-object v1, p0, Lio/grpc/internal/MessageFramer;->outputStreamAdapter:Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

    .line 80
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    .line 88
    iput v0, p0, Lio/grpc/internal/MessageFramer;->currentMessageSeqNo:I

    .line 99
    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/MessageFramer$Sink;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    .line 100
    const-string v0, "bufferAllocator"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/WritableBufferAllocator;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    .line 101
    const-string v0, "statsTraceCtx"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/StatsTraceContext;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    .line 102
    return-void
.end method

.method static synthetic access$400(Lio/grpc/internal/MessageFramer;[BII)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/MessageFramer;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/MessageFramer;->writeRaw([BII)V

    return-void
.end method

.method static synthetic access$500(Lio/grpc/internal/MessageFramer;)Lio/grpc/internal/WritableBufferAllocator;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/MessageFramer;

    .line 44
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    return-object v0
.end method

.method private commitToSink(ZZ)V
    .locals 3
    .param p1, "endOfStream"    # Z
    .param p2, "flush"    # Z

    .line 352
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 353
    .local v0, "buf":Lio/grpc/internal/WritableBuffer;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 354
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    iget v2, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    invoke-interface {v1, v0, p1, p2, v2}, Lio/grpc/internal/MessageFramer$Sink;->deliverFrame(Lio/grpc/internal/WritableBuffer;ZZI)V

    .line 355
    const/4 v1, 0x0

    iput v1, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    .line 356
    return-void
.end method

.method private getKnownLength(Ljava/io/InputStream;)I
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    instance-of v0, p1, Lio/grpc/KnownLength;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 208
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method private releaseBuffer()V
    .locals 1

    .line 345
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->release()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 349
    :cond_0
    return-void
.end method

.method private verifyNotClosed()V
    .locals 2

    .line 359
    invoke-virtual {p0}, Lio/grpc/internal/MessageFramer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    return-void

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Framer already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeBufferChain(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;Z)V
    .locals 8
    .param p1, "bufferChain"    # Lio/grpc/internal/MessageFramer$BufferChainOutputStream;
    .param p2, "compressed"    # Z

    .line 240
    invoke-static {p1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->access$200(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;)I

    move-result v0

    .line 241
    .local v0, "messageLength":I
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 242
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 243
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lio/grpc/internal/WritableBufferAllocator;->allocate(I)Lio/grpc/internal/WritableBuffer;

    move-result-object v1

    .line 244
    .local v1, "writeableHeader":Lio/grpc/internal/WritableBuffer;
    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lio/grpc/internal/WritableBuffer;->write([BII)V

    .line 245
    if-nez v0, :cond_0

    .line 247
    iput-object v1, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 248
    return-void

    .line 255
    :cond_0
    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    iget v3, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v2, v1, v4, v4, v3}, Lio/grpc/internal/MessageFramer$Sink;->deliverFrame(Lio/grpc/internal/WritableBuffer;ZZI)V

    .line 256
    iput v5, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    .line 258
    invoke-static {p1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->access$300(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;)Ljava/util/List;

    move-result-object v2

    .line 259
    .local v2, "bufferList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/WritableBuffer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    if-ge v3, v6, :cond_1

    .line 260
    iget-object v6, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/grpc/internal/WritableBuffer;

    invoke-interface {v6, v7, v4, v4, v4}, Lio/grpc/internal/MessageFramer$Sink;->deliverFrame(Lio/grpc/internal/WritableBuffer;ZZI)V

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    .end local v3    # "i":I
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/internal/WritableBuffer;

    iput-object v3, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 265
    int-to-long v3, v0

    iput-wide v3, p0, Lio/grpc/internal/MessageFramer;->currentMessageWireSize:J

    .line 266
    return-void
.end method

.method private writeCompressed(Ljava/io/InputStream;I)I
    .locals 7
    .param p1, "message"    # Ljava/io/InputStream;
    .param p2, "unusedMessageLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    new-instance v0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;-><init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V

    .line 187
    .local v0, "bufferChain":Lio/grpc/internal/MessageFramer$BufferChainOutputStream;
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    invoke-interface {v1, v0}, Lio/grpc/Compressor;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 190
    .local v1, "compressingStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p1, v1}, Lio/grpc/internal/MessageFramer;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    .local v2, "written":I
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 193
    nop

    .line 194
    iget v3, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    if-ltz v3, :cond_1

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    sget-object v3, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 198
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 197
    const-string v6, "message too large %d > %d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-virtual {v3, v4}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    .line 199
    invoke-virtual {v3}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v3

    throw v3

    .line 202
    :cond_1
    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lio/grpc/internal/MessageFramer;->writeBufferChain(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;Z)V

    .line 203
    return v2

    .line 192
    .end local v2    # "written":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v2
.end method

.method private writeKnownLengthUncompressed(Ljava/io/InputStream;I)I
    .locals 4
    .param p1, "message"    # Ljava/io/InputStream;
    .param p2, "messageLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget v0, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    if-ltz v0, :cond_1

    if-gt p2, v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    sget-object v0, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 222
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 221
    const-string v3, "message too large %d > %d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 225
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 226
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 229
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v0, v2}, Lio/grpc/internal/WritableBufferAllocator;->allocate(I)Lio/grpc/internal/WritableBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 232
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->headerScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lio/grpc/internal/MessageFramer;->writeRaw([BII)V

    .line 233
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->outputStreamAdapter:Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

    invoke-static {p1, v0}, Lio/grpc/internal/MessageFramer;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method private writeRaw([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 283
    nop

    :goto_0
    if-lez p3, :cond_2

    .line 284
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->writableBytes()I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lio/grpc/internal/MessageFramer;->commitToSink(ZZ)V

    .line 287
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    invoke-interface {v0, p3}, Lio/grpc/internal/WritableBufferAllocator;->allocate(I)Lio/grpc/internal/WritableBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 291
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->writableBytes()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 292
    .local v0, "toWrite":I
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v1, p1, p2, v0}, Lio/grpc/internal/WritableBuffer;->write([BII)V

    .line 293
    add-int/2addr p2, v0

    .line 294
    sub-int/2addr p3, v0

    .line 295
    .end local v0    # "toWrite":I
    goto :goto_0

    .line 296
    :cond_2
    return-void
.end method

.method private static writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .param p0, "message"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    instance-of v0, p0, Lio/grpc/Drainable;

    if-eqz v0, :cond_0

    .line 271
    move-object v0, p0

    check-cast v0, Lio/grpc/Drainable;

    invoke-interface {v0, p1}, Lio/grpc/Drainable;->drainTo(Ljava/io/OutputStream;)I

    move-result v0

    return v0

    .line 276
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 277
    .local v0, "written":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Message size overflow: %s"

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 278
    long-to-int v2, v0

    return v2
.end method

.method private writeUncompressed(Ljava/io/InputStream;I)I
    .locals 6
    .param p1, "message"    # Ljava/io/InputStream;
    .param p2, "messageLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 168
    int-to-long v0, p2

    iput-wide v0, p0, Lio/grpc/internal/MessageFramer;->currentMessageWireSize:J

    .line 169
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/MessageFramer;->writeKnownLengthUncompressed(Ljava/io/InputStream;I)I

    move-result v0

    return v0

    .line 171
    :cond_0
    new-instance v0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;-><init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V

    .line 172
    .local v0, "bufferChain":Lio/grpc/internal/MessageFramer$BufferChainOutputStream;
    invoke-static {p1, v0}, Lio/grpc/internal/MessageFramer;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v1

    .line 173
    .local v1, "written":I
    iget v2, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    if-ltz v2, :cond_2

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    sget-object v2, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 176
    const-string v5, "message too large %d > %d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v2

    throw v2

    .line 180
    :cond_2
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lio/grpc/internal/MessageFramer;->writeBufferChain(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;Z)V

    .line 181
    return v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 323
    invoke-virtual {p0}, Lio/grpc/internal/MessageFramer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/MessageFramer;->closed:Z

    .line 327
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/grpc/internal/WritableBuffer;->readableBytes()I

    move-result v1

    if-nez v1, :cond_0

    .line 328
    invoke-direct {p0}, Lio/grpc/internal/MessageFramer;->releaseBuffer()V

    .line 330
    :cond_0
    invoke-direct {p0, v0, v0}, Lio/grpc/internal/MessageFramer;->commitToSink(ZZ)V

    .line 332
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/MessageFramer;->closed:Z

    .line 341
    invoke-direct {p0}, Lio/grpc/internal/MessageFramer;->releaseBuffer()V

    .line 342
    return-void
.end method

.method public flush()V
    .locals 2

    .line 303
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->readableBytes()I

    move-result v0

    if-lez v0, :cond_0

    .line 304
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/grpc/internal/MessageFramer;->commitToSink(ZZ)V

    .line 306
    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lio/grpc/internal/MessageFramer;->closed:Z

    return v0
.end method

.method public bridge synthetic setCompressor(Lio/grpc/Compressor;)Lio/grpc/internal/Framer;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lio/grpc/internal/MessageFramer;->setCompressor(Lio/grpc/Compressor;)Lio/grpc/internal/MessageFramer;

    move-result-object p1

    return-object p1
.end method

.method public setCompressor(Lio/grpc/Compressor;)Lio/grpc/internal/MessageFramer;
    .locals 1
    .param p1, "compressor"    # Lio/grpc/Compressor;

    .line 106
    const-string v0, "Can\'t pass an empty compressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Compressor;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    .line 107
    return-object p0
.end method

.method public setMaxOutboundMessageSize(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .line 118
    iget v0, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "max size already set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 119
    iput p1, p0, Lio/grpc/internal/MessageFramer;->maxOutboundMessageSize:I

    .line 120
    return-void
.end method

.method public bridge synthetic setMessageCompression(Z)Lio/grpc/internal/Framer;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lio/grpc/internal/MessageFramer;->setMessageCompression(Z)Lio/grpc/internal/MessageFramer;

    move-result-object p1

    return-object p1
.end method

.method public setMessageCompression(Z)Lio/grpc/internal/MessageFramer;
    .locals 0
    .param p1, "enable"    # Z

    .line 112
    iput-boolean p1, p0, Lio/grpc/internal/MessageFramer;->messageCompression:Z

    .line 113
    return-object p0
.end method

.method public writePayload(Ljava/io/InputStream;)V
    .locals 12
    .param p1, "message"    # Ljava/io/InputStream;

    .line 129
    const-string v0, "Failed to frame message"

    invoke-direct {p0}, Lio/grpc/internal/MessageFramer;->verifyNotClosed()V

    .line 130
    iget v1, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/grpc/internal/MessageFramer;->messagesBuffered:I

    .line 131
    iget v1, p0, Lio/grpc/internal/MessageFramer;->currentMessageSeqNo:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/grpc/internal/MessageFramer;->currentMessageSeqNo:I

    .line 132
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lio/grpc/internal/MessageFramer;->currentMessageWireSize:J

    .line 133
    iget-object v3, p0, Lio/grpc/internal/MessageFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v3, v1}, Lio/grpc/internal/StatsTraceContext;->outboundMessage(I)V

    .line 134
    iget-boolean v1, p0, Lio/grpc/internal/MessageFramer;->messageCompression:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    sget-object v3, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 135
    .local v1, "compressed":Z
    const/4 v2, -0x1

    .line 136
    .local v2, "written":I
    const/4 v3, -0x2

    .line 138
    .local v3, "messageLength":I
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/internal/MessageFramer;->getKnownLength(Ljava/io/InputStream;)I

    move-result v4

    move v3, v4

    .line 139
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 140
    invoke-direct {p0, p1, v3}, Lio/grpc/internal/MessageFramer;->writeCompressed(Ljava/io/InputStream;I)I

    move-result v0

    .end local v2    # "written":I
    .local v0, "written":I
    goto :goto_1

    .line 142
    .end local v0    # "written":I
    .restart local v2    # "written":I
    :cond_1
    invoke-direct {p0, p1, v3}, Lio/grpc/internal/MessageFramer;->writeUncompressed(Ljava/io/InputStream;I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v2    # "written":I
    .restart local v0    # "written":I
    :goto_1
    nop

    .line 157
    const/4 v2, -0x1

    if-eq v3, v2, :cond_3

    if-ne v0, v3, :cond_2

    goto :goto_2

    .line 158
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Message length inaccurate %s != %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "err":Ljava/lang/String;
    sget-object v4, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    invoke-virtual {v4, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v4

    throw v4

    .line 161
    .end local v2    # "err":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lio/grpc/internal/StatsTraceContext;->outboundUncompressedSize(J)V

    .line 162
    iget-object v2, p0, Lio/grpc/internal/MessageFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget-wide v4, p0, Lio/grpc/internal/MessageFramer;->currentMessageWireSize:J

    invoke-virtual {v2, v4, v5}, Lio/grpc/internal/StatsTraceContext;->outboundWireSize(J)V

    .line 163
    iget-object v6, p0, Lio/grpc/internal/MessageFramer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v7, p0, Lio/grpc/internal/MessageFramer;->currentMessageSeqNo:I

    iget-wide v8, p0, Lio/grpc/internal/MessageFramer;->currentMessageWireSize:J

    int-to-long v10, v0

    invoke-virtual/range {v6 .. v11}, Lio/grpc/internal/StatsTraceContext;->outboundMessageSent(IJJ)V

    .line 164
    return-void

    .line 150
    .end local v0    # "written":I
    .local v2, "written":I
    :catch_0
    move-exception v4

    .line 151
    .local v4, "e":Ljava/lang/RuntimeException;
    sget-object v5, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 152
    invoke-virtual {v5, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v4}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 144
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v4

    .line 146
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 147
    invoke-virtual {v5, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v4}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0
.end method
