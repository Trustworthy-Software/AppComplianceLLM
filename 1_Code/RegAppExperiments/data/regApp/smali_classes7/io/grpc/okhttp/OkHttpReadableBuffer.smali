.class Lio/grpc/okhttp/OkHttpReadableBuffer;
.super Lio/grpc/internal/AbstractReadableBuffer;
.source "OkHttpReadableBuffer.java"


# instance fields
.field private final buffer:Lokio/Buffer;


# direct methods
.method constructor <init>(Lokio/Buffer;)V
    .locals 0
    .param p1, "buffer"    # Lokio/Buffer;

    .line 32
    invoke-direct {p0}, Lio/grpc/internal/AbstractReadableBuffer;-><init>()V

    .line 33
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    .line 34
    return-void
.end method

.method private fakeEofExceptionMethod()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 51
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 94
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 95
    return-void
.end method

.method public readBytes(I)Lio/grpc/internal/ReadableBuffer;
    .locals 4
    .param p1, "length"    # I

    .line 87
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 88
    .local v0, "buf":Lokio/Buffer;
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 89
    new-instance v1, Lio/grpc/okhttp/OkHttpReadableBuffer;

    invoke-direct {v1, v0}, Lio/grpc/okhttp/OkHttpReadableBuffer;-><init>(Lokio/Buffer;)V

    return-object v1
.end method

.method public readBytes(Ljava/io/OutputStream;I)V
    .locals 3
    .param p1, "dest"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    .line 83
    return-void
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "dest"    # Ljava/nio/ByteBuffer;

    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public readBytes([BII)V
    .locals 4
    .param p1, "dest"    # [B
    .param p2, "destOffset"    # I
    .param p3, "length"    # I

    .line 64
    nop

    :goto_0
    if-lez p3, :cond_1

    .line 65
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read([BII)I

    move-result v0

    .line 66
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 69
    sub-int/2addr p3, v0

    .line 70
    add-int/2addr p2, v0

    .line 71
    .end local v0    # "bytesRead":I
    goto :goto_0

    .line 67
    .restart local v0    # "bytesRead":I
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EOF trying to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    .end local v0    # "bytesRead":I
    :cond_1
    return-void
.end method

.method public readUnsignedByte()I
    .locals 3

    .line 44
    :try_start_0
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpReadableBuffer;->fakeEofExceptionMethod()V

    .line 45
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readableBytes()I
    .locals 2

    .line 38
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public skipBytes(I)V
    .locals 3
    .param p1, "length"    # I

    .line 56
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    nop

    .line 60
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
