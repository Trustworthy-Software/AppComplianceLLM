.class public final Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/proxy/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field host:Ljava/lang/String;

.field port:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->port:I

    .line 128
    return-void
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 198
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lio/grpc/okhttp/internal/proxy/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "percentDecoded":Ljava/lang/String;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    .line 203
    .local v1, "inetAddress":Ljava/net/InetAddress;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 204
    :cond_0
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 205
    .local v2, "address":[B
    array-length v3, v2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    invoke-static {v2}, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 206
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 209
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    .end local v2    # "address":[B
    :cond_2
    invoke-static {v0}, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .locals 5
    .param p0, "hostnameAscii"    # Ljava/lang/String;

    .line 341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 342
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 346
    .local v1, "c":C
    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-le v1, v2, :cond_2

    const/16 v2, 0x7f

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 352
    :cond_0
    const-string v2, " #%/:?@[\\]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 353
    return v3

    .line 341
    .end local v1    # "c":C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    .restart local v1    # "c":C
    :cond_2
    :goto_1
    return v3

    .line 356
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .locals 8
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "address"    # [B
    .param p4, "addressOffset"    # I

    .line 286
    move v0, p4

    .line 288
    .local v0, "b":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_8

    .line 289
    array-length v3, p3

    if-ne v0, v3, :cond_0

    return v2

    .line 292
    :cond_0
    if-eq v0, p4, :cond_2

    .line 293
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    return v2

    .line 294
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 298
    :cond_2
    const/4 v3, 0x0

    .line 299
    .local v3, "value":I
    move v4, v1

    .line 300
    .local v4, "groupOffset":I
    :goto_1
    if-ge v1, p2, :cond_6

    .line 301
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 302
    .local v5, "c":C
    const/16 v6, 0x30

    if-lt v5, v6, :cond_6

    const/16 v7, 0x39

    if-le v5, v7, :cond_3

    goto :goto_2

    .line 303
    :cond_3
    if-nez v3, :cond_4

    if-eq v4, v1, :cond_4

    return v2

    .line 304
    :cond_4
    mul-int/lit8 v7, v3, 0xa

    add-int/2addr v7, v5

    add-int/lit8 v3, v7, -0x30

    .line 305
    const/16 v6, 0xff

    if-le v3, v6, :cond_5

    return v2

    .line 300
    .end local v5    # "c":C
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 307
    :cond_6
    :goto_2
    sub-int v5, v1, v4

    .line 308
    .local v5, "groupLength":I
    if-nez v5, :cond_7

    return v2

    .line 311
    :cond_7
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "b":I
    .local v2, "b":I
    int-to-byte v6, v3

    aput-byte v6, p3, v0

    .line 312
    .end local v3    # "value":I
    .end local v4    # "groupOffset":I
    .end local v5    # "groupLength":I
    move v0, v2

    goto :goto_0

    .line 314
    .end local v1    # "i":I
    .end local v2    # "b":I
    .restart local v0    # "b":I
    :cond_8
    add-int/lit8 v1, p4, 0x4

    if-eq v0, v1, :cond_9

    return v2

    .line 315
    :cond_9
    const/4 v1, 0x1

    return v1
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 11
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 214
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 215
    .local v0, "address":[B
    const/4 v1, 0x0

    .line 216
    .local v1, "b":I
    const/4 v2, -0x1

    .line 217
    .local v2, "compress":I
    const/4 v3, -0x1

    .line 219
    .local v3, "groupOffset":I
    move v4, p1

    .local v4, "i":I
    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ge v4, p2, :cond_b

    .line 220
    array-length v8, v0

    if-ne v1, v8, :cond_0

    return-object v7

    .line 223
    :cond_0
    add-int/lit8 v8, v4, 0x2

    if-gt v8, p2, :cond_2

    const-string v8, "::"

    const/4 v9, 0x2

    invoke-virtual {p0, v4, v8, v6, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 225
    if-eq v2, v5, :cond_1

    return-object v7

    .line 226
    :cond_1
    add-int/lit8 v4, v4, 0x2

    .line 227
    add-int/lit8 v1, v1, 0x2

    .line 228
    move v2, v1

    .line 229
    if-ne v4, p2, :cond_6

    goto :goto_5

    .line 230
    :cond_2
    if-eqz v1, :cond_6

    .line 232
    const-string v8, ":"

    const/4 v9, 0x1

    invoke-virtual {p0, v4, v8, v6, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 233
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 234
    :cond_3
    const-string v8, "."

    invoke-virtual {p0, v4, v8, v6, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 236
    add-int/lit8 v8, v1, -0x2

    invoke-static {p0, v3, p2, v0, v8}, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v8

    if-nez v8, :cond_4

    return-object v7

    .line 237
    :cond_4
    add-int/lit8 v1, v1, 0x2

    .line 238
    goto :goto_5

    .line 240
    :cond_5
    return-object v7

    .line 245
    :cond_6
    :goto_1
    const/4 v6, 0x0

    .line 246
    .local v6, "value":I
    move v3, v4

    .line 247
    :goto_2
    if-ge v4, p2, :cond_8

    .line 248
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 249
    .local v8, "c":C
    invoke-static {v8}, Lio/grpc/okhttp/internal/proxy/HttpUrl;->decodeHexDigit(C)I

    move-result v9

    .line 250
    .local v9, "hexDigit":I
    if-ne v9, v5, :cond_7

    goto :goto_3

    .line 251
    :cond_7
    shl-int/lit8 v10, v6, 0x4

    add-int v6, v10, v9

    .line 247
    .end local v8    # "c":C
    .end local v9    # "hexDigit":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 253
    :cond_8
    :goto_3
    sub-int v5, v4, v3

    .line 254
    .local v5, "groupLength":I
    if-eqz v5, :cond_a

    const/4 v8, 0x4

    if-le v5, v8, :cond_9

    goto :goto_4

    .line 257
    :cond_9
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "b":I
    .local v7, "b":I
    ushr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 258
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "b":I
    .restart local v1    # "b":I
    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 259
    .end local v5    # "groupLength":I
    .end local v6    # "value":I
    goto :goto_0

    .line 254
    .restart local v5    # "groupLength":I
    .restart local v6    # "value":I
    :cond_a
    :goto_4
    return-object v7

    .line 270
    .end local v4    # "i":I
    .end local v5    # "groupLength":I
    .end local v6    # "value":I
    :cond_b
    :goto_5
    array-length v4, v0

    if-eq v1, v4, :cond_d

    .line 271
    if-ne v2, v5, :cond_c

    return-object v7

    .line 272
    :cond_c
    array-length v4, v0

    sub-int v5, v1, v2

    sub-int/2addr v4, v5

    sub-int v5, v1, v2

    invoke-static {v0, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    array-length v4, v0

    sub-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-static {v0, v2, v4, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 277
    :cond_d
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 278
    :catch_0
    move-exception v4

    .line 279
    .local v4, "e":Ljava/net/UnknownHostException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method private static domainToAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .line 326
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 330
    :cond_0
    invoke-static {v1}, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 331
    return-object v0

    .line 334
    :cond_1
    return-object v1

    .line 335
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .locals 8
    .param p0, "address"    # [B

    .line 361
    const/4 v0, -0x1

    .line 362
    .local v0, "longestRunOffset":I
    const/4 v1, 0x0

    .line 363
    .local v1, "longestRunLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    const/16 v4, 0x10

    if-ge v2, v3, :cond_2

    .line 364
    move v3, v2

    .line 365
    .local v3, "currentRunOffset":I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-byte v5, p0, v2

    if-nez v5, :cond_0

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_0

    .line 366
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 368
    :cond_0
    sub-int v4, v2, v3

    .line 369
    .local v4, "currentRunLength":I
    if-le v4, v1, :cond_1

    .line 370
    move v0, v3

    .line 371
    move v1, v4

    .line 363
    .end local v3    # "currentRunOffset":I
    .end local v4    # "currentRunLength":I
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 376
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 377
    .local v2, "result":Lokio/Buffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :cond_3
    :goto_2
    array-length v5, p0

    if-ge v3, v5, :cond_6

    .line 378
    const/16 v5, 0x3a

    if-ne v3, v0, :cond_4

    .line 379
    invoke-virtual {v2, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 380
    add-int/2addr v3, v1

    .line 381
    if-ne v3, v4, :cond_3

    invoke-virtual {v2, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2

    .line 383
    :cond_4
    if-lez v3, :cond_5

    invoke-virtual {v2, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 384
    :cond_5
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 385
    .local v5, "group":I
    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    .line 386
    nop

    .end local v5    # "group":I
    add-int/lit8 v3, v3, 0x2

    .line 387
    goto :goto_2

    .line 389
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public build()Lio/grpc/okhttp/internal/proxy/HttpUrl;
    .locals 2

    .line 166
    iget-object v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Lio/grpc/okhttp/internal/proxy/HttpUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/okhttp/internal/proxy/HttpUrl;-><init>(Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;Lio/grpc/okhttp/internal/proxy/HttpUrl$1;)V

    return-object v0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method effectivePort()I
    .locals 2

    .line 162
    iget v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lio/grpc/okhttp/internal/proxy/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public host(Ljava/lang/String;)Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .line 148
    if-eqz p1, :cond_1

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "encoded":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 151
    iput-object v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 152
    return-object p0

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public port(I)Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;
    .locals 3
    .param p1, "port"    # I

    .line 156
    if-lez p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 157
    iput p1, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->port:I

    .line 158
    return-object p0

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scheme(Ljava/lang/String;)Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;

    .line 131
    if-eqz p1, :cond_2

    .line 133
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iput-object v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_0
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    iput-object v0, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 140
    :goto_0
    return-object p0

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->host:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 178
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 182
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :goto_0
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->effectivePort()I

    move-result v1

    .line 186
    .local v1, "effectivePort":I
    iget-object v3, p0, Lio/grpc/okhttp/internal/proxy/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v3}, Lio/grpc/okhttp/internal/proxy/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
