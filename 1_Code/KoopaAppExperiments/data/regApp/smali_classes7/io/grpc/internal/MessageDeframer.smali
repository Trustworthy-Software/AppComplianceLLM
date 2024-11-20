.class public Lio/grpc/internal/MessageDeframer;
.super Ljava/lang/Object;
.source "MessageDeframer.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lio/grpc/internal/Deframer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/MessageDeframer$SingleMessageProducer;,
        Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;,
        Lio/grpc/internal/MessageDeframer$State;,
        Lio/grpc/internal/MessageDeframer$Listener;
    }
.end annotation


# static fields
.field private static final COMPRESSED_FLAG_MASK:I = 0x1

.field private static final HEADER_LENGTH:I = 0x5

.field private static final MAX_BUFFER_SIZE:I = 0x200000

.field private static final RESERVED_MASK:I = 0xfe


# instance fields
.field private closeWhenComplete:Z

.field private compressedFlag:Z

.field private currentMessageSeqNo:I

.field private decompressor:Lio/grpc/Decompressor;

.field private fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

.field private inDelivery:Z

.field private inboundBodyWireSize:I

.field private inflatedBuffer:[B

.field private inflatedIndex:I

.field private listener:Lio/grpc/internal/MessageDeframer$Listener;

.field private maxInboundMessageSize:I

.field private nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

.field private pendingDeliveries:J

.field private requiredLength:I

.field private state:Lio/grpc/internal/MessageDeframer$State;

.field private final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

.field private volatile stopDelivery:Z

.field private final transportTracer:Lio/grpc/internal/TransportTracer;

.field private unprocessed:Lio/grpc/internal/CompositeReadableBuffer;


# direct methods
.method public constructor <init>(Lio/grpc/internal/MessageDeframer$Listener;Lio/grpc/Decompressor;ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V
    .locals 2
    .param p1, "listener"    # Lio/grpc/internal/MessageDeframer$Listener;
    .param p2, "decompressor"    # Lio/grpc/Decompressor;
    .param p3, "maxMessageSize"    # I
    .param p4, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;
    .param p5, "transportTracer"    # Lio/grpc/internal/TransportTracer;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget-object v0, Lio/grpc/internal/MessageDeframer$State;->HEADER:Lio/grpc/internal/MessageDeframer$State;

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->state:Lio/grpc/internal/MessageDeframer$State;

    .line 98
    const/4 v0, 0x5

    iput v0, p0, Lio/grpc/internal/MessageDeframer;->requiredLength:I

    .line 101
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer;

    invoke-direct {v0}, Lio/grpc/internal/CompositeReadableBuffer;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->inDelivery:Z

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lio/grpc/internal/MessageDeframer;->currentMessageSeqNo:I

    .line 107
    iput-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->closeWhenComplete:Z

    .line 108
    iput-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->stopDelivery:Z

    .line 124
    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/MessageDeframer$Listener;

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->listener:Lio/grpc/internal/MessageDeframer$Listener;

    .line 125
    const-string v0, "decompressor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Decompressor;

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->decompressor:Lio/grpc/Decompressor;

    .line 126
    iput p3, p0, Lio/grpc/internal/MessageDeframer;->maxInboundMessageSize:I

    .line 127
    const-string v0, "statsTraceCtx"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/StatsTraceContext;

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    .line 128
    const-string v0, "transportTracer"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/TransportTracer;

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->transportTracer:Lio/grpc/internal/TransportTracer;

    .line 129
    return-void
.end method

.method private deliver()V
    .locals 5

    .line 263
    iget-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->inDelivery:Z

    if-eqz v0, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->inDelivery:Z

    .line 269
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/MessageDeframer;->stopDelivery:Z

    if-nez v1, :cond_1

    iget-wide v1, p0, Lio/grpc/internal/MessageDeframer;->pendingDeliveries:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->readRequiredBytes()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    sget-object v1, Lio/grpc/internal/MessageDeframer$1;->$SwitchMap$io$grpc$internal$MessageDeframer$State:[I

    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->state:Lio/grpc/internal/MessageDeframer$State;

    invoke-virtual {v2}, Lio/grpc/internal/MessageDeframer$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 283
    new-instance v1, Ljava/lang/AssertionError;

    goto :goto_1

    .line 276
    :pswitch_0
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->processBody()V

    .line 280
    iget-wide v1, p0, Lio/grpc/internal/MessageDeframer;->pendingDeliveries:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lio/grpc/internal/MessageDeframer;->pendingDeliveries:J

    .line 281
    goto :goto_0

    .line 272
    :pswitch_1
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->processHeader()V

    .line 273
    goto :goto_0

    .line 283
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/MessageDeframer;->state:Lio/grpc/internal/MessageDeframer$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 287
    :cond_1
    iget-boolean v1, p0, Lio/grpc/internal/MessageDeframer;->stopDelivery:Z

    if-eqz v1, :cond_2

    .line 288
    invoke-virtual {p0}, Lio/grpc/internal/MessageDeframer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    iput-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->inDelivery:Z

    .line 289
    return-void

    .line 300
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lio/grpc/internal/MessageDeframer;->closeWhenComplete:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->isStalled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    invoke-virtual {p0}, Lio/grpc/internal/MessageDeframer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :cond_3
    iput-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->inDelivery:Z

    .line 305
    nop

    .line 306
    return-void

    .line 304
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->inDelivery:Z

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCompressedBody()Ljava/io/InputStream;
    .locals 4

    .line 426
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->decompressor:Lio/grpc/Decompressor;

    sget-object v1, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    if-eq v0, v1, :cond_0

    .line 434
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->decompressor:Lio/grpc/Decompressor;

    iget-object v1, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    .line 435
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/grpc/internal/ReadableBuffers;->openStream(Lio/grpc/internal/ReadableBuffer;Z)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/Decompressor;->decompress(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 436
    .local v0, "unlimitedStream":Ljava/io/InputStream;
    new-instance v1, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;

    iget v2, p0, Lio/grpc/internal/MessageDeframer;->maxInboundMessageSize:I

    iget-object v3, p0, Lio/grpc/internal/MessageDeframer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-direct {v1, v0, v2, v3}, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;-><init>(Ljava/io/InputStream;ILio/grpc/internal/StatsTraceContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 438
    .end local v0    # "unlimitedStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 427
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v1, "Can\'t decode compressed gRPC message as compression not configured"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0
.end method

.method private getUncompressedBody()Ljava/io/InputStream;
    .locals 3

    .line 421
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget-object v1, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v1}, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lio/grpc/internal/StatsTraceContext;->inboundUncompressedSize(J)V

    .line 422
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/internal/ReadableBuffers;->openStream(Lio/grpc/internal/ReadableBuffer;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private isClosedOrScheduledToClose()Z
    .locals 1

    .line 246
    invoke-virtual {p0}, Lio/grpc/internal/MessageDeframer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->closeWhenComplete:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isStalled()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Lio/grpc/internal/GzipInflatingBuffer;->isStalled()Z

    move-result v0

    return v0

    .line 253
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v0}, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processBody()V
    .locals 6

    .line 409
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v1, p0, Lio/grpc/internal/MessageDeframer;->currentMessageSeqNo:I

    iget v2, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    int-to-long v2, v2

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lio/grpc/internal/StatsTraceContext;->inboundMessageRead(IJJ)V

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    .line 411
    iget-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->compressedFlag:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->getCompressedBody()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->getUncompressedBody()Ljava/io/InputStream;

    move-result-object v0

    .line 412
    .local v0, "stream":Ljava/io/InputStream;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    .line 413
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->listener:Lio/grpc/internal/MessageDeframer$Listener;

    new-instance v3, Lio/grpc/internal/MessageDeframer$SingleMessageProducer;

    invoke-direct {v3, v0, v1}, Lio/grpc/internal/MessageDeframer$SingleMessageProducer;-><init>(Ljava/io/InputStream;Lio/grpc/internal/MessageDeframer$1;)V

    invoke-interface {v2, v3}, Lio/grpc/internal/MessageDeframer$Listener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    .line 416
    sget-object v1, Lio/grpc/internal/MessageDeframer$State;->HEADER:Lio/grpc/internal/MessageDeframer$State;

    iput-object v1, p0, Lio/grpc/internal/MessageDeframer;->state:Lio/grpc/internal/MessageDeframer$State;

    .line 417
    const/4 v1, 0x5

    iput v1, p0, Lio/grpc/internal/MessageDeframer;->requiredLength:I

    .line 418
    return-void
.end method

.method private processHeader()V
    .locals 5

    .line 378
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v0}, Lio/grpc/internal/CompositeReadableBuffer;->readUnsignedByte()I

    move-result v0

    .line 379
    .local v0, "type":I
    and-int/lit16 v1, v0, 0xfe

    if-nez v1, :cond_2

    .line 384
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lio/grpc/internal/MessageDeframer;->compressedFlag:Z

    .line 387
    iget-object v1, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v1}, Lio/grpc/internal/CompositeReadableBuffer;->readInt()I

    move-result v1

    iput v1, p0, Lio/grpc/internal/MessageDeframer;->requiredLength:I

    .line 388
    if-ltz v1, :cond_1

    iget v3, p0, Lio/grpc/internal/MessageDeframer;->maxInboundMessageSize:I

    if-gt v1, v3, :cond_1

    .line 395
    iget v1, p0, Lio/grpc/internal/MessageDeframer;->currentMessageSeqNo:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/grpc/internal/MessageDeframer;->currentMessageSeqNo:I

    .line 396
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v2, v1}, Lio/grpc/internal/StatsTraceContext;->inboundMessage(I)V

    .line 397
    iget-object v1, p0, Lio/grpc/internal/MessageDeframer;->transportTracer:Lio/grpc/internal/TransportTracer;

    invoke-virtual {v1}, Lio/grpc/internal/TransportTracer;->reportMessageReceived()V

    .line 399
    sget-object v1, Lio/grpc/internal/MessageDeframer$State;->BODY:Lio/grpc/internal/MessageDeframer$State;

    iput-object v1, p0, Lio/grpc/internal/MessageDeframer;->state:Lio/grpc/internal/MessageDeframer$State;

    .line 400
    return-void

    .line 389
    :cond_1
    sget-object v1, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v3, p0, Lio/grpc/internal/MessageDeframer;->maxInboundMessageSize:I

    .line 391
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lio/grpc/internal/MessageDeframer;->requiredLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 390
    const-string v4, "gRPC message exceeds maximum size %d: %d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v1

    throw v1

    .line 380
    :cond_2
    sget-object v1, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v2, "gRPC frame header malformed: reserved bits not zero"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v1

    throw v1
.end method

.method private readRequiredBytes()Z
    .locals 9

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "totalBytesRead":I
    const/4 v1, 0x0

    .line 317
    .local v1, "deflatedBytesRead":I
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    if-nez v2, :cond_0

    .line 318
    new-instance v2, Lio/grpc/internal/CompositeReadableBuffer;

    invoke-direct {v2}, Lio/grpc/internal/CompositeReadableBuffer;-><init>()V

    iput-object v2, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    .line 323
    :cond_0
    :goto_0
    iget v2, p0, Lio/grpc/internal/MessageDeframer;->requiredLength:I

    iget-object v3, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v3}, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes()I

    move-result v3

    sub-int/2addr v2, v3

    move v3, v2

    .local v3, "missingBytes":I
    if-lez v2, :cond_a

    .line 324
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 326
    :try_start_1
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->inflatedBuffer:[B

    if-eqz v2, :cond_1

    iget v5, p0, Lio/grpc/internal/MessageDeframer;->inflatedIndex:I

    array-length v2, v2

    if-ne v5, v2, :cond_2

    .line 327
    :cond_1
    const/high16 v2, 0x200000

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lio/grpc/internal/MessageDeframer;->inflatedBuffer:[B

    .line 328
    iput v4, p0, Lio/grpc/internal/MessageDeframer;->inflatedIndex:I

    .line 330
    :cond_2
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->inflatedBuffer:[B

    array-length v2, v2

    iget v5, p0, Lio/grpc/internal/MessageDeframer;->inflatedIndex:I

    sub-int/2addr v2, v5

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 331
    .local v2, "bytesToRead":I
    iget-object v5, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    iget-object v6, p0, Lio/grpc/internal/MessageDeframer;->inflatedBuffer:[B

    iget v7, p0, Lio/grpc/internal/MessageDeframer;->inflatedIndex:I

    invoke-virtual {v5, v6, v7, v2}, Lio/grpc/internal/GzipInflatingBuffer;->inflateBytes([BII)I

    move-result v5

    .line 332
    .local v5, "n":I
    iget-object v6, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-virtual {v6}, Lio/grpc/internal/GzipInflatingBuffer;->getAndResetBytesConsumed()I

    move-result v6

    add-int/2addr v0, v6

    .line 333
    iget-object v6, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-virtual {v6}, Lio/grpc/internal/GzipInflatingBuffer;->getAndResetDeflatedBytesConsumed()I

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v1, v6

    .line 334
    if-nez v5, :cond_5

    .line 336
    nop

    .line 357
    if-lez v0, :cond_4

    .line 358
    iget-object v6, p0, Lio/grpc/internal/MessageDeframer;->listener:Lio/grpc/internal/MessageDeframer$Listener;

    invoke-interface {v6, v0}, Lio/grpc/internal/MessageDeframer$Listener;->bytesRead(I)V

    .line 359
    iget-object v6, p0, Lio/grpc/internal/MessageDeframer;->state:Lio/grpc/internal/MessageDeframer$State;

    sget-object v7, Lio/grpc/internal/MessageDeframer$State;->BODY:Lio/grpc/internal/MessageDeframer$State;

    if-ne v6, v7, :cond_4

    .line 360
    iget-object v6, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    if-eqz v6, :cond_3

    .line 362
    iget-object v6, p0, Lio/grpc/internal/MessageDeframer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Lio/grpc/internal/StatsTraceContext;->inboundWireSize(J)V

    .line 363
    iget v6, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    add-int/2addr v6, v1

    iput v6, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    goto :goto_1

    .line 365
    :cond_3
    iget-object v6, p0, Lio/grpc/internal/MessageDeframer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Lio/grpc/internal/StatsTraceContext;->inboundWireSize(J)V

    .line 366
    iget v6, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    add-int/2addr v6, v0

    iput v6, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    .line 336
    :cond_4
    :goto_1
    return v4

    .line 338
    :cond_5
    :try_start_2
    iget-object v4, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    iget-object v6, p0, Lio/grpc/internal/MessageDeframer;->inflatedBuffer:[B

    iget v7, p0, Lio/grpc/internal/MessageDeframer;->inflatedIndex:I

    invoke-static {v6, v7, v5}, Lio/grpc/internal/ReadableBuffers;->wrap([BII)Lio/grpc/internal/ReadableBuffer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V

    .line 339
    iget v4, p0, Lio/grpc/internal/MessageDeframer;->inflatedIndex:I

    add-int/2addr v4, v5

    iput v4, p0, Lio/grpc/internal/MessageDeframer;->inflatedIndex:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    .end local v2    # "bytesToRead":I
    .end local v5    # "n":I
    goto/16 :goto_0

    .line 342
    :catch_0
    move-exception v2

    .line 343
    .local v2, "e":Ljava/util/zip/DataFormatException;
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "totalBytesRead":I
    .end local v1    # "deflatedBytesRead":I
    throw v4

    .line 340
    .end local v2    # "e":Ljava/util/zip/DataFormatException;
    .restart local v0    # "totalBytesRead":I
    .restart local v1    # "deflatedBytesRead":I
    :catch_1
    move-exception v2

    .line 341
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "totalBytesRead":I
    .end local v1    # "deflatedBytesRead":I
    throw v4

    .line 346
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "totalBytesRead":I
    .restart local v1    # "deflatedBytesRead":I
    :cond_6
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v2}, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_9

    .line 348
    nop

    .line 357
    if-lez v0, :cond_8

    .line 358
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->listener:Lio/grpc/internal/MessageDeframer$Listener;

    invoke-interface {v2, v0}, Lio/grpc/internal/MessageDeframer$Listener;->bytesRead(I)V

    .line 359
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->state:Lio/grpc/internal/MessageDeframer$State;

    sget-object v5, Lio/grpc/internal/MessageDeframer$State;->BODY:Lio/grpc/internal/MessageDeframer$State;

    if-ne v2, v5, :cond_8

    .line 360
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    if-eqz v2, :cond_7

    .line 362
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    int-to-long v5, v1

    invoke-virtual {v2, v5, v6}, Lio/grpc/internal/StatsTraceContext;->inboundWireSize(J)V

    .line 363
    iget v2, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    goto :goto_2

    .line 365
    :cond_7
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    int-to-long v5, v0

    invoke-virtual {v2, v5, v6}, Lio/grpc/internal/StatsTraceContext;->inboundWireSize(J)V

    .line 366
    iget v2, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    .line 348
    :cond_8
    :goto_2
    return v4

    .line 350
    :cond_9
    :try_start_4
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v2}, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 351
    .local v2, "toRead":I
    add-int/2addr v0, v2

    .line 352
    iget-object v4, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    iget-object v5, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v5, v2}, Lio/grpc/internal/CompositeReadableBuffer;->readBytes(I)Lio/grpc/internal/ReadableBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 353
    .end local v2    # "toRead":I
    goto/16 :goto_0

    .line 355
    :cond_a
    nop

    .line 357
    if-lez v0, :cond_c

    .line 358
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->listener:Lio/grpc/internal/MessageDeframer$Listener;

    invoke-interface {v2, v0}, Lio/grpc/internal/MessageDeframer$Listener;->bytesRead(I)V

    .line 359
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->state:Lio/grpc/internal/MessageDeframer$State;

    sget-object v4, Lio/grpc/internal/MessageDeframer$State;->BODY:Lio/grpc/internal/MessageDeframer$State;

    if-ne v2, v4, :cond_c

    .line 360
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    if-eqz v2, :cond_b

    .line 362
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lio/grpc/internal/StatsTraceContext;->inboundWireSize(J)V

    .line 363
    iget v2, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    goto :goto_3

    .line 365
    :cond_b
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lio/grpc/internal/StatsTraceContext;->inboundWireSize(J)V

    .line 366
    iget v2, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    .line 355
    :cond_c
    :goto_3
    const/4 v2, 0x1

    return v2

    .line 357
    .end local v3    # "missingBytes":I
    :catchall_0
    move-exception v2

    if-lez v0, :cond_e

    .line 358
    iget-object v3, p0, Lio/grpc/internal/MessageDeframer;->listener:Lio/grpc/internal/MessageDeframer$Listener;

    invoke-interface {v3, v0}, Lio/grpc/internal/MessageDeframer$Listener;->bytesRead(I)V

    .line 359
    iget-object v3, p0, Lio/grpc/internal/MessageDeframer;->state:Lio/grpc/internal/MessageDeframer$State;

    sget-object v4, Lio/grpc/internal/MessageDeframer$State;->BODY:Lio/grpc/internal/MessageDeframer$State;

    if-ne v3, v4, :cond_e

    .line 360
    iget-object v3, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    if-eqz v3, :cond_d

    .line 362
    iget-object v3, p0, Lio/grpc/internal/MessageDeframer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lio/grpc/internal/StatsTraceContext;->inboundWireSize(J)V

    .line 363
    iget v3, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    add-int/2addr v3, v1

    iput v3, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    goto :goto_4

    .line 365
    :cond_d
    iget-object v3, p0, Lio/grpc/internal/MessageDeframer;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lio/grpc/internal/StatsTraceContext;->inboundWireSize(J)V

    .line 366
    iget v3, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    add-int/2addr v3, v0

    iput v3, p0, Lio/grpc/internal/MessageDeframer;->inboundBodyWireSize:I

    :cond_e
    :goto_4
    throw v2
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 214
    invoke-virtual {p0}, Lio/grpc/internal/MessageDeframer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 219
    .local v0, "hasPartialMessage":Z
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    if-eqz v4, :cond_4

    .line 220
    if-nez v0, :cond_3

    invoke-virtual {v4}, Lio/grpc/internal/GzipInflatingBuffer;->hasPartialData()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    move v0, v1

    .line 221
    iget-object v1, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-virtual {v1}, Lio/grpc/internal/GzipInflatingBuffer;->close()V

    .line 223
    :cond_4
    iget-object v1, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    if-eqz v1, :cond_5

    .line 224
    invoke-virtual {v1}, Lio/grpc/internal/CompositeReadableBuffer;->close()V

    .line 226
    :cond_5
    iget-object v1, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    if-eqz v1, :cond_6

    .line 227
    invoke-virtual {v1}, Lio/grpc/internal/CompositeReadableBuffer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_6
    iput-object v3, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    .line 231
    iput-object v3, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    .line 232
    iput-object v3, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    .line 233
    nop

    .line 234
    iget-object v1, p0, Lio/grpc/internal/MessageDeframer;->listener:Lio/grpc/internal/MessageDeframer$Listener;

    invoke-interface {v1, v0}, Lio/grpc/internal/MessageDeframer$Listener;->deframerClosed(Z)V

    .line 235
    return-void

    .line 230
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    .line 231
    iput-object v3, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    .line 232
    iput-object v3, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    throw v1
.end method

.method public closeWhenComplete()V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lio/grpc/internal/MessageDeframer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    return-void

    .line 191
    :cond_0
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->isStalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {p0}, Lio/grpc/internal/MessageDeframer;->close()V

    goto :goto_0

    .line 194
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->closeWhenComplete:Z

    .line 196
    :goto_0
    return-void
.end method

.method public deframe(Lio/grpc/internal/ReadableBuffer;)V
    .locals 2
    .param p1, "data"    # Lio/grpc/internal/ReadableBuffer;

    .line 167
    const-string v0, "data"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/4 v0, 0x1

    .line 170
    .local v0, "needToCloseData":Z
    :try_start_0
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->isClosedOrScheduledToClose()Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    iget-object v1, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1, p1}, Lio/grpc/internal/GzipInflatingBuffer;->addGzippedBytes(Lio/grpc/internal/ReadableBuffer;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v1, p1}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V

    .line 176
    :goto_0
    const/4 v0, 0x0

    .line 178
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->deliver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_1
    if-eqz v0, :cond_2

    .line 182
    invoke-interface {p1}, Lio/grpc/internal/ReadableBuffer;->close()V

    .line 185
    :cond_2
    return-void

    .line 181
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 182
    invoke-interface {p1}, Lio/grpc/internal/ReadableBuffer;->close()V

    :cond_3
    throw v1
.end method

.method hasPendingDeliveries()Z
    .locals 4

    .line 209
    iget-wide v0, p0, Lio/grpc/internal/MessageDeframer;->pendingDeliveries:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public request(I)V
    .locals 4
    .param p1, "numMessages"    # I

    .line 157
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "numMessages must be > 0"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 158
    invoke-virtual {p0}, Lio/grpc/internal/MessageDeframer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    return-void

    .line 161
    :cond_1
    iget-wide v0, p0, Lio/grpc/internal/MessageDeframer;->pendingDeliveries:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/internal/MessageDeframer;->pendingDeliveries:J

    .line 162
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->deliver()V

    .line 163
    return-void
.end method

.method public setDecompressor(Lio/grpc/Decompressor;)V
    .locals 2
    .param p1, "decompressor"    # Lio/grpc/Decompressor;

    .line 142
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already set full stream decompressor"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 143
    const-string v0, "Can\'t pass an empty decompressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Decompressor;

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->decompressor:Lio/grpc/Decompressor;

    .line 144
    return-void
.end method

.method public setFullStreamDecompressor(Lio/grpc/internal/GzipInflatingBuffer;)V
    .locals 4
    .param p1, "fullStreamDecompressor"    # Lio/grpc/internal/GzipInflatingBuffer;

    .line 148
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->decompressor:Lio/grpc/Decompressor;

    sget-object v1, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v1, "per-message decompressor already set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v0, "full stream decompressor already set"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 150
    nop

    .line 151
    const-string v0, "Can\'t pass a null full stream decompressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/GzipInflatingBuffer;

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->fullStreamDecompressor:Lio/grpc/internal/GzipInflatingBuffer;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    .line 153
    return-void
.end method

.method setListener(Lio/grpc/internal/MessageDeframer$Listener;)V
    .locals 0
    .param p1, "listener"    # Lio/grpc/internal/MessageDeframer$Listener;

    .line 132
    iput-object p1, p0, Lio/grpc/internal/MessageDeframer;->listener:Lio/grpc/internal/MessageDeframer$Listener;

    .line 133
    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .locals 0
    .param p1, "messageSize"    # I

    .line 137
    iput p1, p0, Lio/grpc/internal/MessageDeframer;->maxInboundMessageSize:I

    .line 138
    return-void
.end method

.method stopDelivery()V
    .locals 1

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->stopDelivery:Z

    .line 206
    return-void
.end method
