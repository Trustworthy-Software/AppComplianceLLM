.class final Lio/grpc/internal/ReadableBuffers$BufferInputStream;
.super Ljava/io/InputStream;
.source "ReadableBuffers.java"

# interfaces
.implements Lio/grpc/KnownLength;
.implements Lio/grpc/HasByteBuffer;
.implements Lio/grpc/Detachable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ReadableBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BufferInputStream"
.end annotation


# instance fields
.field private buffer:Lio/grpc/internal/ReadableBuffer;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ReadableBuffer;)V
    .locals 1
    .param p1, "buffer"    # Lio/grpc/internal/ReadableBuffer;

    .line 351
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 352
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    iput-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    .line 353
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    return v0
.end method

.method public byteBufferSupported()Z
    .locals 1

    .line 405
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->byteBufferSupported()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    .line 424
    return-void
.end method

.method public detach()Ljava/io/InputStream;
    .locals 3

    .line 416
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    .line 417
    .local v0, "detachedBuffer":Lio/grpc/internal/ReadableBuffer;
    iget-object v1, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/grpc/internal/ReadableBuffer;->readBytes(I)Lio/grpc/internal/ReadableBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    .line 418
    new-instance v1, Lio/grpc/internal/ReadableBuffers$BufferInputStream;

    invoke-direct {v1, v0}, Lio/grpc/internal/ReadableBuffers$BufferInputStream;-><init>(Lio/grpc/internal/ReadableBuffer;)V

    return-object v1
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 411
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .line 390
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->mark()V

    .line 391
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 400
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1

    .line 362
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    .line 364
    const/4 v0, -0x1

    return v0

    .line 366
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "dest"    # [B
    .param p2, "destOffset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    .line 373
    const/4 v0, -0x1

    return v0

    .line 376
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 377
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/internal/ReadableBuffer;->readBytes([BII)V

    .line 378
    return p3
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->reset()V

    .line 396
    return-void
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 384
    .local v0, "length":I
    iget-object v1, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v1, v0}, Lio/grpc/internal/ReadableBuffer;->skipBytes(I)V

    .line 385
    int-to-long v1, v0

    return-wide v1
.end method
