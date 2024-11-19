.class public final Lio/grpc/okhttp/internal/proxy/HttpUrl;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C


# instance fields
.field private final host:Ljava/lang/String;

.field private final port:I

.field private final scheme:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>(Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;)V
    .locals 1
    .param p1, "builder"    # Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->scheme:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->host:Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->host:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->effectivePort()I

    move-result v0

    iput v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->port:I

    .line 52
    invoke-virtual {p1}, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->url:Ljava/lang/String;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;Lio/grpc/okhttp/internal/proxy/HttpUrl$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;
    .param p2, "x1"    # Lio/grpc/okhttp/internal/proxy/HttpUrl$1;

    .line 32
    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/proxy/HttpUrl;-><init>(Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;)V

    return-void
.end method

.method static canonicalize(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZ)V
    .locals 7
    .param p0, "out"    # Lokio/Buffer;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "encodeSet"    # Ljava/lang/String;
    .param p5, "alreadyEncoded"    # Z
    .param p6, "plusIsSpace"    # Z
    .param p7, "asciiOnly"    # Z

    .line 438
    const/4 v0, 0x0

    .line 440
    .local v0, "utf8Buffer":Lokio/Buffer;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_9

    .line 441
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 442
    .local v2, "codePoint":I
    if-eqz p5, :cond_1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    :cond_0
    goto/16 :goto_4

    .line 445
    :cond_1
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_3

    if-eqz p6, :cond_3

    .line 447
    if-eqz p5, :cond_2

    const-string v3, "+"

    goto :goto_1

    :cond_2
    const-string v3, "%2B"

    :goto_1
    invoke-virtual {p0, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto :goto_4

    .line 448
    :cond_3
    const/16 v3, 0x20

    const/16 v4, 0x25

    if-lt v2, v3, :cond_6

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_6

    const/16 v3, 0x80

    if-lt v2, v3, :cond_4

    if-nez p7, :cond_6

    .line 451
    :cond_4
    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_6

    if-ne v2, v4, :cond_5

    if-nez p5, :cond_5

    goto :goto_2

    .line 471
    :cond_5
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_4

    .line 454
    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 455
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    move-object v0, v3

    .line 457
    :cond_7
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 458
    :goto_3
    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v3

    if-nez v3, :cond_8

    .line 460
    :try_start_0
    invoke-static {}, Lio/grpc/okhttp/internal/proxy/HttpUrl;->fakeEofExceptionMethod()V

    .line 461
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 462
    .local v3, "b":I
    invoke-virtual {p0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 463
    sget-object v5, Lio/grpc/okhttp/internal/proxy/HttpUrl;->HEX_DIGITS:[C

    shr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    invoke-virtual {p0, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 464
    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    invoke-virtual {p0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    nop

    .end local v3    # "b":I
    goto :goto_3

    .line 465
    :catch_0
    move-exception v3

    .line 466
    .local v3, "e":Ljava/io/EOFException;
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v3}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 440
    .end local v3    # "e":Ljava/io/EOFException;
    :cond_8
    :goto_4
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto/16 :goto_0

    .line 474
    .end local v1    # "i":I
    .end local v2    # "codePoint":I
    :cond_9
    return-void
.end method

.method static decodeHexDigit(C)I
    .locals 1
    .param p0, "c"    # C

    .line 430
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 431
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 432
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 433
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static defaultPort(Ljava/lang/String;)I
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;

    .line 92
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/16 v0, 0x50

    return v0

    .line 94
    :cond_0
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const/16 v0, 0x1bb

    return v0

    .line 97
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static fakeEofExceptionMethod()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 476
    return-void
.end method

.method static percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 4
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "plusIsSpace"    # Z

    .line 394
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 395
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 396
    .local v1, "c":C
    const/16 v2, 0x25

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_1

    .line 394
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .restart local v1    # "c":C
    :cond_1
    :goto_1
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 399
    .local v2, "out":Lokio/Buffer;
    invoke-virtual {v2, p0, p1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 400
    invoke-static {v2, p0, v0, p2, p3}, Lio/grpc/okhttp/internal/proxy/HttpUrl;->percentDecode(Lokio/Buffer;Ljava/lang/String;IIZ)V

    .line 401
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 406
    .end local v0    # "i":I
    .end local v1    # "c":C
    .end local v2    # "out":Lokio/Buffer;
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static percentDecode(Lokio/Buffer;Ljava/lang/String;IIZ)V
    .locals 5
    .param p0, "out"    # Lokio/Buffer;
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "plusIsSpace"    # Z

    .line 411
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 412
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 413
    .local v1, "codePoint":I
    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x2

    if-ge v2, p3, :cond_0

    .line 414
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lio/grpc/okhttp/internal/proxy/HttpUrl;->decodeHexDigit(C)I

    move-result v2

    .line 415
    .local v2, "d1":I
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/grpc/okhttp/internal/proxy/HttpUrl;->decodeHexDigit(C)I

    move-result v3

    .line 416
    .local v3, "d2":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-eq v3, v4, :cond_1

    .line 417
    shl-int/lit8 v4, v2, 0x4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 418
    add-int/lit8 v0, v0, 0x2

    .line 419
    goto :goto_1

    .line 421
    .end local v2    # "d1":I
    .end local v3    # "d2":I
    :cond_0
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    if-eqz p4, :cond_1

    .line 422
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 423
    goto :goto_1

    .line 421
    :cond_1
    nop

    .line 425
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 411
    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 427
    .end local v0    # "i":I
    .end local v1    # "codePoint":I
    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 111
    instance-of v0, p1, Lio/grpc/okhttp/internal/proxy/HttpUrl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/grpc/okhttp/internal/proxy/HttpUrl;

    iget-object v0, v0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 115
    iget-object v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public host()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public isHttps()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->scheme:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newBuilder()Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;
    .locals 3

    .line 102
    new-instance v0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;

    invoke-direct {v0}, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;-><init>()V

    .line 103
    .local v0, "result":Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;
    iget-object v1, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v1, v0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->host:Ljava/lang/String;

    iput-object v1, v0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 106
    iget v1, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->port:I

    iget-object v2, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lio/grpc/okhttp/internal/proxy/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->port:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->port:I

    .line 107
    return-object v0
.end method

.method public port()I
    .locals 1

    .line 84
    iget v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->port:I

    return v0
.end method

.method public scheme()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl;->url:Ljava/lang/String;

    return-object v0
.end method
