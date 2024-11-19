.class public Lcom/google/firebase/firestore/index/OrderedCodeWriter;
.super Ljava/lang/Object;
.source "OrderedCodeWriter.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400

.field public static final DOUBLE_ALL_BITS:J = -0x1L

.field public static final DOUBLE_SIGN_MASK:J = -0x8000000000000000L

.field public static final ESCAPE1:B = 0x0t

.field public static final ESCAPE2:B = -0x1t

.field public static final FF_BYTE:B = 0x0t

.field public static final INFINITY:B = -0x1t

.field private static final LENGTH_TO_HEADER_BITS:[[B

.field public static final NULL_BYTE:B = -0x1t

.field public static final SEPARATOR:B = 0x1t


# instance fields
.field private buffer:[B

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    const/16 v0, 0xb

    new-array v0, v0, [[B

    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_a

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->LENGTH_TO_HEADER_BITS:[[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x80t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x40t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x20t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x10t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        -0x8t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x4t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x2t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 1
        -0x1t
        0x0t
    .end array-data

    nop

    :array_9
    .array-data 1
        -0x1t
        -0x80t
    .end array-data

    nop

    :array_a
    .array-data 1
        -0x1t
        -0x40t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    .line 73
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    .line 74
    return-void
.end method

.method private ensureAvailable(I)V
    .locals 3
    .param p1, "bytes"    # I

    .line 323
    iget v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    add-int/2addr v0, p1

    .line 324
    .local v0, "minCapacity":I
    iget-object v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    array-length v2, v1

    if-gt v0, v2, :cond_0

    .line 325
    return-void

    .line 328
    :cond_0
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    .line 330
    .local v2, "newLength":I
    if-ge v2, v0, :cond_1

    .line 331
    move v2, v0

    .line 334
    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    .line 335
    return-void
.end method

.method private signedNumLength(J)I
    .locals 3
    .param p1, "n"    # J

    .line 339
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 340
    not-long p1, p1

    .line 343
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    .line 345
    .local v0, "numBits":I
    add-int/lit8 v0, v0, 0x1

    .line 347
    const/4 v1, 0x7

    .line 348
    .local v1, "bitsPerEncodedByte":I
    sget-object v2, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/index/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v2

    return v2
.end method

.method private unsignedNumLength(J)I
    .locals 3
    .param p1, "value"    # J

    .line 353
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    .line 354
    .local v0, "numBits":I
    const/16 v1, 0x8

    sget-object v2, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/index/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v1

    return v1
.end method

.method private writeByteAscending(B)V
    .locals 2
    .param p1, "b"    # B

    .line 275
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 276
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    .line 277
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    goto :goto_0

    .line 278
    :cond_0
    if-ne p1, v1, :cond_1

    .line 279
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    .line 280
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    goto :goto_0

    .line 282
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    .line 284
    :goto_0
    return-void
.end method

.method private writeByteDescending(B)V
    .locals 2
    .param p1, "b"    # B

    .line 291
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 292
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    .line 293
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    goto :goto_0

    .line 294
    :cond_0
    if-ne p1, v1, :cond_1

    .line 295
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    .line 296
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    goto :goto_0

    .line 298
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    .line 300
    :goto_0
    return-void
.end method

.method private writeEscapedByteAscending(B)V
    .locals 3
    .param p1, "b"    # B

    .line 313
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->ensureAvailable(I)V

    .line 314
    iget-object v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    aput-byte p1, v0, v1

    .line 315
    return-void
.end method

.method private writeEscapedByteDescending(B)V
    .locals 3
    .param p1, "b"    # B

    .line 318
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->ensureAvailable(I)V

    .line 319
    iget-object v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    not-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 320
    return-void
.end method

.method private writeSeparatorAscending()V
    .locals 1

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    .line 304
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    .line 305
    return-void
.end method

.method private writeSeparatorDescending()V
    .locals 1

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    .line 309
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    .line 310
    return-void
.end method


# virtual methods
.method public encodedBytes()[B
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    .line 263
    return-void
.end method

.method public seed([B)V
    .locals 6
    .param p1, "encodedBytes"    # [B

    .line 358
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->ensureAvailable(I)V

    .line 359
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .local v2, "b":B
    iget-object v3, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v4, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    aput-byte v2, v3, v4

    .end local v2    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method

.method public writeBytesAscending(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 78
    invoke-virtual {p1, v0}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeSeparatorAscending()V

    .line 81
    return-void
.end method

.method public writeBytesDescending(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 85
    invoke-virtual {p1, v0}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeSeparatorDescending()V

    .line 88
    return-void
.end method

.method public writeDoubleAscending(D)V
    .locals 4
    .param p1, "val"    # D

    .line 230
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 231
    .local v0, "v":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    xor-long/2addr v0, v2

    .line 232
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeUnsignedLongAscending(J)V

    .line 233
    return-void
.end method

.method public writeDoubleDescending(D)V
    .locals 4
    .param p1, "val"    # D

    .line 237
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 238
    .local v0, "v":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    xor-long/2addr v0, v2

    .line 239
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeUnsignedLongDescending(J)V

    .line 240
    return-void
.end method

.method public writeInfinityAscending()V
    .locals 1

    .line 247
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    .line 248
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    .line 249
    return-void
.end method

.method public writeInfinityDescending()V
    .locals 1

    .line 256
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    .line 257
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    .line 258
    return-void
.end method

.method public writeSignedLongAscending(J)V
    .locals 13
    .param p1, "value"    # J

    .line 182
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    not-long v2, p1

    goto :goto_0

    :cond_0
    move-wide v2, p1

    .line 183
    .local v2, "val":J
    :goto_0
    const-wide/16 v4, 0x40

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v4, :cond_1

    .line 184
    invoke-direct {p0, v6}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->ensureAvailable(I)V

    .line 185
    iget-object v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    sget-object v4, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->LENGTH_TO_HEADER_BITS:[[B

    aget-object v4, v4, v6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    xor-long/2addr v4, p1

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 186
    return-void

    .line 188
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->signedNumLength(J)I

    move-result v4

    .line 189
    .local v4, "len":I
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->ensureAvailable(I)V

    .line 191
    const/4 v7, 0x2

    if-lt v4, v7, :cond_6

    .line 195
    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v5

    .line 196
    .local v0, "signByte":B
    :goto_1
    iget v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    .line 198
    .local v1, "startIndex":I
    const/16 v7, 0xa

    if-ne v4, v7, :cond_3

    .line 199
    add-int/lit8 v1, v1, 0x2

    .line 200
    iget-object v7, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v8, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    aput-byte v0, v7, v8

    .line 201
    add-int/2addr v8, v6

    aput-byte v0, v7, v8

    goto :goto_2

    .line 202
    :cond_3
    const/16 v7, 0x9

    if-ne v4, v7, :cond_4

    .line 203
    add-int/lit8 v1, v1, 0x1

    .line 204
    iget-object v7, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v8, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    aput-byte v0, v7, v8

    .line 207
    :cond_4
    :goto_2
    move-wide v7, p1

    .line 208
    .local v7, "x":J
    add-int/lit8 v9, v4, -0x1

    iget v10, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    add-int/2addr v9, v10

    .local v9, "i":I
    :goto_3
    if-lt v9, v1, :cond_5

    .line 209
    iget-object v10, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    const-wide/16 v11, 0xff

    and-long/2addr v11, v7

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v10, v9

    .line 210
    const/16 v10, 0x8

    shr-long/2addr v7, v10

    .line 208
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 213
    .end local v9    # "i":I
    :cond_5
    iget-object v9, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v10, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    aget-byte v11, v9, v10

    sget-object v12, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->LENGTH_TO_HEADER_BITS:[[B

    aget-object v12, v12, v4

    aget-byte v5, v12, v5

    xor-int/2addr v5, v11

    int-to-byte v5, v5

    aput-byte v5, v9, v10

    .line 214
    add-int/lit8 v5, v10, 0x1

    aget-byte v11, v9, v5

    aget-byte v6, v12, v6

    xor-int/2addr v6, v11

    int-to-byte v6, v6

    aput-byte v6, v9, v5

    .line 215
    add-int/2addr v10, v4

    iput v10, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    .line 216
    return-void

    .line 192
    .end local v0    # "signByte":B
    .end local v1    # "startIndex":I
    .end local v7    # "x":J
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    .line 193
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "Invalid length (%d) returned by signedNumLength"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public writeSignedLongDescending(J)V
    .locals 2
    .param p1, "value"    # J

    .line 220
    not-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeSignedLongAscending(J)V

    .line 221
    return-void
.end method

.method public writeUnsignedLongAscending(J)V
    .locals 6
    .param p1, "value"    # J

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->unsignedNumLength(J)I

    move-result v0

    .line 156
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->ensureAvailable(I)V

    .line 157
    iget-object v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v2, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    int-to-byte v4, v0

    aput-byte v4, v1, v2

    .line 158
    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    iget v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    if-lt v3, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    const-wide/16 v4, 0xff

    and-long/2addr v4, p1

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 160
    const/16 v1, 0x8

    ushr-long/2addr p1, v1

    .line 158
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 162
    .end local v3    # "i":I
    :cond_0
    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    .line 163
    return-void
.end method

.method public writeUnsignedLongDescending(J)V
    .locals 6
    .param p1, "value"    # J

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->unsignedNumLength(J)I

    move-result v0

    .line 171
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->ensureAvailable(I)V

    .line 172
    iget-object v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v2, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    not-int v4, v0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 173
    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    iget v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    if-lt v3, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    const-wide/16 v4, 0xff

    and-long/2addr v4, p1

    not-long v4, v4

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 175
    const/16 v1, 0x8

    ushr-long/2addr p1, v1

    .line 173
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 177
    .end local v3    # "i":I
    :cond_0
    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    .line 178
    return-void
.end method

.method public writeUtf8Ascending(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 96
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 97
    .local v0, "utf16Length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 98
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 99
    .local v2, "c":C
    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 100
    int-to-byte v3, v2

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    goto :goto_2

    .line 101
    :cond_0
    const/16 v4, 0x800

    if-ge v2, v4, :cond_1

    .line 102
    ushr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    .line 103
    and-int/lit8 v4, v2, 0x3f

    or-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    goto :goto_2

    .line 104
    :cond_1
    const v4, 0xd800

    if-lt v2, v4, :cond_3

    const v4, 0xdfff

    if-ge v4, v2, :cond_2

    goto :goto_1

    .line 109
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 110
    .local v4, "codePoint":I
    add-int/lit8 v1, v1, 0x1

    .line 111
    ushr-int/lit8 v5, v4, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-direct {p0, v5}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    .line 112
    ushr-int/lit8 v5, v4, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    invoke-direct {p0, v5}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    .line 113
    ushr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    invoke-direct {p0, v5}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    .line 114
    and-int/lit8 v5, v4, 0x3f

    or-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    goto :goto_2

    .line 105
    .end local v4    # "codePoint":I
    :cond_3
    :goto_1
    ushr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    .line 106
    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    .line 107
    and-int/lit8 v4, v2, 0x3f

    or-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    .line 97
    .end local v2    # "c":C
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeSeparatorAscending()V

    .line 118
    return-void
.end method

.method public writeUtf8Descending(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 126
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 127
    .local v0, "utf16Length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 128
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 129
    .local v2, "c":C
    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 130
    int-to-byte v3, v2

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    goto :goto_2

    .line 131
    :cond_0
    const/16 v4, 0x800

    if-ge v2, v4, :cond_1

    .line 132
    ushr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    .line 133
    and-int/lit8 v4, v2, 0x3f

    or-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    goto :goto_2

    .line 134
    :cond_1
    const v4, 0xd800

    if-lt v2, v4, :cond_3

    const v4, 0xdfff

    if-ge v4, v2, :cond_2

    goto :goto_1

    .line 139
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 140
    .local v4, "codePoint":I
    add-int/lit8 v1, v1, 0x1

    .line 141
    ushr-int/lit8 v5, v4, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-direct {p0, v5}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    .line 142
    ushr-int/lit8 v5, v4, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    invoke-direct {p0, v5}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    .line 143
    ushr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    invoke-direct {p0, v5}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    .line 144
    and-int/lit8 v5, v4, 0x3f

    or-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    goto :goto_2

    .line 135
    .end local v4    # "codePoint":I
    :cond_3
    :goto_1
    ushr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    .line 136
    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    .line 137
    and-int/lit8 v4, v2, 0x3f

    or-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    .line 127
    .end local v2    # "c":C
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeSeparatorDescending()V

    .line 148
    return-void
.end method
