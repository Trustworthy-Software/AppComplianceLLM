.class public abstract Lio/grpc/internal/AbstractReadableBuffer;
.super Ljava/lang/Object;
.source "AbstractReadableBuffer.java"

# interfaces
.implements Lio/grpc/internal/ReadableBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public byteBufferSupported()Z
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method protected final checkReadable(I)V
    .locals 1
    .param p1, "length"    # I

    .line 77
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readableBytes()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 80
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 0

    .line 74
    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasArray()Z
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public mark()V
    .locals 0

    .line 56
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public final readInt()I
    .locals 6

    .line 27
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractReadableBuffer;->checkReadable(I)V

    .line 28
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v0

    .line 29
    .local v0, "b1":I
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v1

    .line 30
    .local v1, "b2":I
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v2

    .line 31
    .local v2, "b3":I
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v3

    .line 32
    .local v3, "b4":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method

.method public reset()V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
