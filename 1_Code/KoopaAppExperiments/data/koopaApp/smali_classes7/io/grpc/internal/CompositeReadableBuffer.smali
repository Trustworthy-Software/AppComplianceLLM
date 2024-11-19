.class public Lio/grpc/internal/CompositeReadableBuffer;
.super Lio/grpc/internal/AbstractReadableBuffer;
.source "CompositeReadableBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;,
        Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;
    }
.end annotation


# static fields
.field private static final BYTE_ARRAY_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final BYTE_BUF_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SKIP_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final STREAM_OP:Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/CompositeReadableBuffer$ReadOperation<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private static final UBYTE_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private marked:Z

.field private final readableBuffers:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/grpc/internal/ReadableBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private readableBytes:I

.field private rewindableBuffers:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/grpc/internal/ReadableBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$1;

    invoke-direct {v0}, Lio/grpc/internal/CompositeReadableBuffer$1;-><init>()V

    sput-object v0, Lio/grpc/internal/CompositeReadableBuffer;->UBYTE_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    .line 100
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$2;

    invoke-direct {v0}, Lio/grpc/internal/CompositeReadableBuffer$2;-><init>()V

    sput-object v0, Lio/grpc/internal/CompositeReadableBuffer;->SKIP_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    .line 114
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$3;

    invoke-direct {v0}, Lio/grpc/internal/CompositeReadableBuffer$3;-><init>()V

    sput-object v0, Lio/grpc/internal/CompositeReadableBuffer;->BYTE_ARRAY_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    .line 128
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$4;

    invoke-direct {v0}, Lio/grpc/internal/CompositeReadableBuffer$4;-><init>()V

    sput-object v0, Lio/grpc/internal/CompositeReadableBuffer;->BYTE_BUF_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    .line 147
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$5;

    invoke-direct {v0}, Lio/grpc/internal/CompositeReadableBuffer$5;-><init>()V

    sput-object v0, Lio/grpc/internal/CompositeReadableBuffer;->STREAM_OP:Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lio/grpc/internal/AbstractReadableBuffer;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 43
    invoke-direct {p0}, Lio/grpc/internal/AbstractReadableBuffer;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    .line 45
    return-void
.end method

.method private advanceBuffer()V
    .locals 2

    .line 329
    iget-boolean v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->marked:Z

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    iget-object v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    .line 332
    .local v0, "next":Lio/grpc/internal/ReadableBuffer;
    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->mark()V

    .line 335
    .end local v0    # "next":Lio/grpc/internal/ReadableBuffer;
    :cond_0
    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    .line 338
    :goto_0
    return-void
.end method

.method private advanceBufferIfNecessary()V
    .locals 2

    .line 319
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    .line 320
    .local v0, "buffer":Lio/grpc/internal/ReadableBuffer;
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v1

    if-nez v1, :cond_0

    .line 321
    invoke-direct {p0}, Lio/grpc/internal/CompositeReadableBuffer;->advanceBuffer()V

    .line 323
    :cond_0
    return-void
.end method

.method private enqueueBuffer(Lio/grpc/internal/ReadableBuffer;)V
    .locals 3
    .param p1, "buffer"    # Lio/grpc/internal/ReadableBuffer;

    .line 66
    instance-of v0, p1, Lio/grpc/internal/CompositeReadableBuffer;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 68
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    invoke-interface {p1}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 69
    return-void

    .line 72
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/internal/CompositeReadableBuffer;

    .line 73
    .local v0, "compositeBuffer":Lio/grpc/internal/CompositeReadableBuffer;
    :goto_0
    iget-object v1, v0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    iget-object v1, v0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ReadableBuffer;

    .line 75
    .local v1, "subBuffer":Lio/grpc/internal/ReadableBuffer;
    iget-object v2, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v1    # "subBuffer":Lio/grpc/internal/ReadableBuffer;
    goto :goto_0

    .line 77
    :cond_1
    iget v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    iget v2, v0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 78
    const/4 v1, 0x0

    iput v1, v0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 79
    invoke-virtual {v0}, Lio/grpc/internal/CompositeReadableBuffer;->close()V

    .line 80
    return-void
.end method

.method private execute(Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;ILjava/lang/Object;I)I
    .locals 3
    .param p2, "length"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/CompositeReadableBuffer$ReadOperation<",
            "TT;>;ITT;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    .local p1, "op":Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;, "Lio/grpc/internal/CompositeReadableBuffer$ReadOperation<TT;>;"
    .local p3, "dest":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lio/grpc/internal/CompositeReadableBuffer;->checkReadable(I)V

    .line 284
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-direct {p0}, Lio/grpc/internal/CompositeReadableBuffer;->advanceBufferIfNecessary()V

    .line 288
    :cond_0
    :goto_0
    if-lez p2, :cond_1

    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    .line 290
    .local v0, "buffer":Lio/grpc/internal/ReadableBuffer;
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 293
    .local v1, "lengthToCopy":I
    invoke-interface {p1, v0, v1, p3, p4}, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;->read(Lio/grpc/internal/ReadableBuffer;ILjava/lang/Object;I)I

    move-result p4

    .line 295
    sub-int/2addr p2, v1

    .line 296
    iget v2, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    sub-int/2addr v2, v1

    iput v2, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 288
    .end local v0    # "buffer":Lio/grpc/internal/ReadableBuffer;
    .end local v1    # "lengthToCopy":I
    invoke-direct {p0}, Lio/grpc/internal/CompositeReadableBuffer;->advanceBufferIfNecessary()V

    goto :goto_0

    .line 299
    :cond_1
    if-gtz p2, :cond_2

    .line 304
    return p4

    .line 301
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Failed executing read operation"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private executeNoThrow(Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;ILjava/lang/Object;I)I
    .locals 2
    .param p2, "length"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation<",
            "TT;>;ITT;I)I"
        }
    .end annotation

    .line 309
    .local p1, "op":Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;, "Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation<TT;>;"
    .local p3, "dest":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/internal/CompositeReadableBuffer;->execute(Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;ILjava/lang/Object;I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public addBuffer(Lio/grpc/internal/ReadableBuffer;)V
    .locals 2
    .param p1, "buffer"    # Lio/grpc/internal/ReadableBuffer;

    .line 58
    iget-boolean v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->marked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    .local v0, "markHead":Z
    :goto_0
    invoke-direct {p0, p1}, Lio/grpc/internal/CompositeReadableBuffer;->enqueueBuffer(Lio/grpc/internal/ReadableBuffer;)V

    .line 60
    if-eqz v0, :cond_1

    .line 61
    iget-object v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v1}, Lio/grpc/internal/ReadableBuffer;->mark()V

    .line 63
    :cond_1
    return-void
.end method

.method public byteBufferSupported()Z
    .locals 3

    .line 248
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ReadableBuffer;

    .line 249
    .local v1, "buffer":Lio/grpc/internal/ReadableBuffer;
    invoke-interface {v1}, Lio/grpc/internal/ReadableBuffer;->byteBufferSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    const/4 v0, 0x0

    return v0

    .line 252
    .end local v1    # "buffer":Lio/grpc/internal/ReadableBuffer;
    :cond_0
    goto :goto_0

    .line 253
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1

    .line 267
    nop

    :goto_0
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    if-eqz v0, :cond_1

    .line 271
    :goto_1
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    goto :goto_1

    .line 275
    :cond_1
    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 259
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x0

    return-object v0

    .line 262
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public mark()V
    .locals 3

    .line 215
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    .line 218
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->marked:Z

    .line 222
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    .line 223
    .local v0, "buffer":Lio/grpc/internal/ReadableBuffer;
    if-eqz v0, :cond_2

    .line 224
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->mark()V

    .line 226
    :cond_2
    return-void
.end method

.method public markSupported()Z
    .locals 3

    .line 205
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ReadableBuffer;

    .line 206
    .local v1, "buffer":Lio/grpc/internal/ReadableBuffer;
    invoke-interface {v1}, Lio/grpc/internal/ReadableBuffer;->markSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    const/4 v0, 0x0

    return v0

    .line 209
    .end local v1    # "buffer":Lio/grpc/internal/ReadableBuffer;
    :cond_0
    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public readBytes(I)Lio/grpc/internal/ReadableBuffer;
    .locals 8
    .param p1, "length"    # I

    .line 164
    if-gtz p1, :cond_0

    .line 165
    invoke-static {}, Lio/grpc/internal/ReadableBuffers;->empty()Lio/grpc/internal/ReadableBuffer;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Lio/grpc/internal/CompositeReadableBuffer;->checkReadable(I)V

    .line 168
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "newBuffer":Lio/grpc/internal/ReadableBuffer;
    const/4 v1, 0x0

    .line 173
    .local v1, "newComposite":Lio/grpc/internal/CompositeReadableBuffer;
    :cond_1
    iget-object v2, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/ReadableBuffer;

    .line 174
    .local v2, "buffer":Lio/grpc/internal/ReadableBuffer;
    invoke-interface {v2}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v3

    .line 176
    .local v3, "readable":I
    if-le v3, p1, :cond_2

    .line 177
    invoke-interface {v2, p1}, Lio/grpc/internal/ReadableBuffer;->readBytes(I)Lio/grpc/internal/ReadableBuffer;

    move-result-object v4

    .line 178
    .local v4, "readBuffer":Lio/grpc/internal/ReadableBuffer;
    const/4 p1, 0x0

    goto :goto_1

    .line 180
    .end local v4    # "readBuffer":Lio/grpc/internal/ReadableBuffer;
    :cond_2
    iget-boolean v4, p0, Lio/grpc/internal/CompositeReadableBuffer;->marked:Z

    if-eqz v4, :cond_3

    .line 181
    invoke-interface {v2, v3}, Lio/grpc/internal/ReadableBuffer;->readBytes(I)Lio/grpc/internal/ReadableBuffer;

    move-result-object v4

    .line 182
    .restart local v4    # "readBuffer":Lio/grpc/internal/ReadableBuffer;
    invoke-direct {p0}, Lio/grpc/internal/CompositeReadableBuffer;->advanceBuffer()V

    goto :goto_0

    .line 184
    .end local v4    # "readBuffer":Lio/grpc/internal/ReadableBuffer;
    :cond_3
    iget-object v4, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/internal/ReadableBuffer;

    .line 186
    .restart local v4    # "readBuffer":Lio/grpc/internal/ReadableBuffer;
    :goto_0
    sub-int/2addr p1, v3

    .line 188
    :goto_1
    if-nez v0, :cond_4

    .line 189
    move-object v0, v4

    goto :goto_3

    .line 191
    :cond_4
    if-nez v1, :cond_6

    .line 192
    new-instance v5, Lio/grpc/internal/CompositeReadableBuffer;

    .line 193
    const/4 v6, 0x2

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->size()I

    move-result v7

    add-int/2addr v7, v6

    const/16 v6, 0x10

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_2
    invoke-direct {v5, v6}, Lio/grpc/internal/CompositeReadableBuffer;-><init>(I)V

    move-object v1, v5

    .line 194
    invoke-virtual {v1, v0}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V

    .line 195
    move-object v0, v1

    .line 197
    :cond_6
    invoke-virtual {v1, v4}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V

    .line 199
    .end local v2    # "buffer":Lio/grpc/internal/ReadableBuffer;
    .end local v3    # "readable":I
    .end local v4    # "readBuffer":Lio/grpc/internal/ReadableBuffer;
    :goto_3
    if-gtz p1, :cond_1

    .line 200
    return-object v0
.end method

.method public readBytes(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "dest"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    sget-object v0, Lio/grpc/internal/CompositeReadableBuffer;->STREAM_OP:Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p1, v1}, Lio/grpc/internal/CompositeReadableBuffer;->execute(Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;ILjava/lang/Object;I)I

    .line 160
    return-void
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "dest"    # Ljava/nio/ByteBuffer;

    .line 144
    sget-object v0, Lio/grpc/internal/CompositeReadableBuffer;->BYTE_BUF_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/grpc/internal/CompositeReadableBuffer;->executeNoThrow(Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;ILjava/lang/Object;I)I

    .line 145
    return-void
.end method

.method public readBytes([BII)V
    .locals 1
    .param p1, "dest"    # [B
    .param p2, "destOffset"    # I
    .param p3, "length"    # I

    .line 125
    sget-object v0, Lio/grpc/internal/CompositeReadableBuffer;->BYTE_ARRAY_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    invoke-direct {p0, v0, p3, p1, p2}, Lio/grpc/internal/CompositeReadableBuffer;->executeNoThrow(Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;ILjava/lang/Object;I)I

    .line 126
    return-void
.end method

.method public readUnsignedByte()I
    .locals 4

    .line 97
    sget-object v0, Lio/grpc/internal/CompositeReadableBuffer;->UBYTE_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Lio/grpc/internal/CompositeReadableBuffer;->executeNoThrow(Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;ILjava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public readableBytes()I
    .locals 1

    .line 84
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    return v0
.end method

.method public reset()V
    .locals 4

    .line 230
    iget-boolean v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->marked:Z

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    move-object v1, v0

    .local v1, "buffer":Lio/grpc/internal/ReadableBuffer;
    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v1}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    .line 236
    .local v0, "currentRemain":I
    invoke-interface {v1}, Lio/grpc/internal/ReadableBuffer;->reset()V

    .line 237
    iget v2, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    invoke-interface {v1}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 239
    .end local v0    # "currentRemain":I
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    move-object v1, v0

    if-eqz v0, :cond_1

    .line 240
    invoke-interface {v1}, Lio/grpc/internal/ReadableBuffer;->reset()V

    .line 241
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 242
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    invoke-interface {v1}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    goto :goto_0

    .line 244
    :cond_1
    return-void

    .line 231
    .end local v1    # "buffer":Lio/grpc/internal/ReadableBuffer;
    :cond_2
    new-instance v0, Ljava/nio/InvalidMarkException;

    invoke-direct {v0}, Ljava/nio/InvalidMarkException;-><init>()V

    throw v0
.end method

.method public skipBytes(I)V
    .locals 3
    .param p1, "length"    # I

    .line 111
    sget-object v0, Lio/grpc/internal/CompositeReadableBuffer;->SKIP_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lio/grpc/internal/CompositeReadableBuffer;->executeNoThrow(Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;ILjava/lang/Object;I)I

    .line 112
    return-void
.end method
