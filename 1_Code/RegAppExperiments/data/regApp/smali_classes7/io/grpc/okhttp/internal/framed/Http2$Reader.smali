.class final Lio/grpc/okhttp/internal/framed/Http2$Reader;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lio/grpc/okhttp/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final continuation:Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;

.field final hpackReader:Lio/grpc/okhttp/internal/framed/Hpack$Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;IZ)V
    .locals 2
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "headerTableSize"    # I
    .param p3, "client"    # Z

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    .line 104
    iput-boolean p3, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->client:Z

    .line 105
    new-instance v0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;

    invoke-direct {v0, p1}, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->continuation:Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;

    .line 106
    new-instance v1, Lio/grpc/okhttp/internal/framed/Hpack$Reader;

    invoke-direct {v1, p2, v0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;-><init>(ILokio/Source;)V

    iput-object v1, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->hpackReader:Lio/grpc/okhttp/internal/framed/Hpack$Reader;

    .line 107
    return-void
.end method

.method private readData(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 6
    .param p1, "handler"    # Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 227
    .local v0, "inFinished":Z
    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 228
    .local v2, "gzipped":Z
    :goto_1
    if-nez v2, :cond_3

    .line 232
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_2

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 233
    .local v1, "padding":S
    :cond_2
    invoke-static {p2, p3, v1}, Lio/grpc/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 236
    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v0, p4, v3, p2}, Lio/grpc/okhttp/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    .line 237
    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v1

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->skip(J)V

    .line 238
    return-void

    .line 229
    .end local v1    # "padding":S
    :cond_3
    const-string v3, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private readGoAway(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 8
    .param p1, "handler"    # Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    const/16 v0, 0x8

    if-lt p2, v0, :cond_3

    .line 347
    if-nez p4, :cond_2

    .line 348
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 349
    .local v0, "lastStreamId":I
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 350
    .local v1, "errorCodeInt":I
    add-int/lit8 v2, p2, -0x8

    .line 351
    .local v2, "opaqueDataLength":I
    invoke-static {v1}, Lio/grpc/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lio/grpc/okhttp/internal/framed/ErrorCode;

    move-result-object v3

    .line 352
    .local v3, "errorCode":Lio/grpc/okhttp/internal/framed/ErrorCode;
    if-eqz v3, :cond_1

    .line 355
    sget-object v4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 356
    .local v4, "debugData":Lokio/ByteString;
    if-lez v2, :cond_0

    .line 357
    iget-object v5, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v2

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v4

    .line 359
    :cond_0
    invoke-interface {p1, v0, v3, v4}, Lio/grpc/okhttp/internal/framed/FrameReader$Handler;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 360
    return-void

    .line 353
    .end local v4    # "debugData":Lokio/ByteString;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v5, v4}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 347
    .end local v0    # "lastStreamId":I
    .end local v1    # "errorCodeInt":I
    .end local v2    # "opaqueDataLength":I
    .end local v3    # "errorCode":Lio/grpc/okhttp/internal/framed/ErrorCode;
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_GOAWAY streamId != 0"

    invoke-static {v1, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 346
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TYPE_GOAWAY length < 8: %s"

    invoke-static {v1, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .locals 1
    .param p1, "length"    # I
    .param p2, "padding"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->continuation:Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;

    iput p1, v0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    iput p1, v0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->length:I

    .line 213
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->continuation:Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;

    iput-short p2, v0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->padding:S

    .line 214
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->continuation:Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;

    iput-byte p3, v0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    .line 215
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->continuation:Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;

    iput p4, v0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 219
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->hpackReader:Lio/grpc/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readHeaders()V

    .line 220
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->hpackReader:Lio/grpc/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHeaders(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 9
    .param p1, "handler"    # Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x0

    if-eqz p4, :cond_3

    .line 194
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    .line 196
    .local v4, "endStream":Z
    :goto_0
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1

    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 198
    .local v0, "padding":S
    :cond_1
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_2

    .line 199
    invoke-direct {p0, p1, p4}, Lio/grpc/okhttp/internal/framed/Http2$Reader;->readPriority(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;I)V

    .line 200
    add-int/lit8 p2, p2, -0x5

    .line 203
    :cond_2
    invoke-static {p2, p3, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 205
    invoke-direct {p0, p2, v0, p3, p4}, Lio/grpc/okhttp/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v1

    .line 207
    .local v1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    const/4 v3, 0x0

    const/4 v6, -0x1

    sget-object v8, Lio/grpc/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lio/grpc/okhttp/internal/framed/HeadersMode;

    move-object v2, p1

    move v5, p4

    move-object v7, v1

    invoke-interface/range {v2 .. v8}, Lio/grpc/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lio/grpc/okhttp/internal/framed/HeadersMode;)V

    .line 208
    return-void

    .line 192
    .end local v0    # "padding":S
    .end local v1    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    .end local v4    # "endStream":Z
    :cond_3
    const-string v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPing(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 4
    .param p1, "handler"    # Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    .line 336
    const/4 v0, 0x0

    if-nez p4, :cond_1

    .line 337
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 338
    .local v1, "payload1":I
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 339
    .local v2, "payload2":I
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 340
    .local v0, "ack":Z
    :cond_0
    invoke-interface {p1, v0, v1, v2}, Lio/grpc/okhttp/internal/framed/FrameReader$Handler;->ping(ZII)V

    .line 341
    return-void

    .line 336
    .end local v0    # "ack":Z
    .end local v1    # "payload1":I
    .end local v2    # "payload2":I
    :cond_1
    const-string v1, "TYPE_PING streamId != 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 335
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TYPE_PING length != 8: %s"

    invoke-static {v1, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPriority(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;I)V
    .locals 5
    .param p1, "handler"    # Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 250
    .local v0, "w1":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 251
    .local v1, "exclusive":Z
    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    .line 252
    .local v3, "streamDependency":I
    iget-object v4, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    .line 253
    .local v4, "weight":I
    invoke-interface {p1, p2, v3, v4, v1}, Lio/grpc/okhttp/internal/framed/FrameReader$Handler;->priority(IIIZ)V

    .line 254
    return-void
.end method

.method private readPriority(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 2
    .param p1, "handler"    # Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 244
    if-eqz p4, :cond_0

    .line 245
    invoke-direct {p0, p1, p4}, Lio/grpc/okhttp/internal/framed/Http2$Reader;->readPriority(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;I)V

    .line 246
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_PRIORITY streamId == 0"

    invoke-static {v1, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 243
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v1, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPushPromise(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 3
    .param p1, "handler"    # Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 325
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 326
    .local v0, "padding":S
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 327
    .local v1, "promisedStreamId":I
    add-int/lit8 p2, p2, -0x4

    .line 328
    invoke-static {p2, p3, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 329
    invoke-direct {p0, p2, v0, p3, p4}, Lio/grpc/okhttp/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v2

    .line 330
    .local v2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    invoke-interface {p1, p4, v1, v2}, Lio/grpc/okhttp/internal/framed/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    .line 331
    return-void

    .line 323
    .end local v0    # "padding":S
    .end local v1    # "promisedStreamId":I
    .end local v2    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    :cond_1
    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readRstStream(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 4
    .param p1, "handler"    # Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 260
    if-eqz p4, :cond_1

    .line 261
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 262
    .local v0, "errorCodeInt":I
    invoke-static {v0}, Lio/grpc/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lio/grpc/okhttp/internal/framed/ErrorCode;

    move-result-object v1

    .line 263
    .local v1, "errorCode":Lio/grpc/okhttp/internal/framed/ErrorCode;
    if-eqz v1, :cond_0

    .line 266
    invoke-interface {p1, p4, v1}, Lio/grpc/okhttp/internal/framed/FrameReader$Handler;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 267
    return-void

    .line 264
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v3, v2}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 260
    .end local v0    # "errorCodeInt":I
    .end local v1    # "errorCode":Lio/grpc/okhttp/internal/framed/ErrorCode;
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_RST_STREAM streamId == 0"

    invoke-static {v1, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 259
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {v1, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readSettings(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 6
    .param p1, "handler"    # Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    const/4 v0, 0x0

    if-nez p4, :cond_9

    .line 272
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    .line 273
    if-nez p2, :cond_0

    .line 274
    invoke-interface {p1}, Lio/grpc/okhttp/internal/framed/FrameReader$Handler;->ackSettings()V

    .line 275
    return-void

    .line 273
    :cond_0
    const-string v1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 278
    :cond_1
    rem-int/lit8 v1, p2, 0x6

    if-nez v1, :cond_8

    .line 279
    new-instance v1, Lio/grpc/okhttp/internal/framed/Settings;

    invoke-direct {v1}, Lio/grpc/okhttp/internal/framed/Settings;-><init>()V

    .line 280
    .local v1, "settings":Lio/grpc/okhttp/internal/framed/Settings;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_6

    .line 281
    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readShort()S

    move-result v3

    .line 282
    .local v3, "id":S
    iget-object v4, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    .line 284
    .local v4, "value":I
    packed-switch v3, :pswitch_data_0

    .line 310
    goto :goto_2

    .line 307
    :pswitch_0
    goto :goto_1

    .line 302
    :pswitch_1
    const/16 v5, 0x4000

    if-lt v4, v5, :cond_2

    const v5, 0xffffff

    if-gt v4, v5, :cond_2

    goto :goto_1

    .line 303
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {v5, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 296
    :pswitch_2
    const/4 v3, 0x7

    .line 297
    if-ltz v4, :cond_3

    goto :goto_1

    .line 298
    :cond_3
    const-string v5, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 293
    :pswitch_3
    const/4 v3, 0x4

    .line 294
    goto :goto_1

    .line 288
    :pswitch_4
    if-eqz v4, :cond_5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    goto :goto_1

    .line 289
    :cond_4
    const-string v5, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 286
    :pswitch_5
    nop

    .line 312
    :cond_5
    :goto_1
    invoke-virtual {v1, v3, v0, v4}, Lio/grpc/okhttp/internal/framed/Settings;->set(III)Lio/grpc/okhttp/internal/framed/Settings;

    .line 280
    .end local v3    # "id":S
    .end local v4    # "value":I
    :goto_2
    add-int/lit8 v2, v2, 0x6

    goto :goto_0

    .line 314
    .end local v2    # "i":I
    :cond_6
    invoke-interface {p1, v0, v1}, Lio/grpc/okhttp/internal/framed/FrameReader$Handler;->settings(ZLio/grpc/okhttp/internal/framed/Settings;)V

    .line 315
    invoke-virtual {v1}, Lio/grpc/okhttp/internal/framed/Settings;->getHeaderTableSize()I

    move-result v0

    if-ltz v0, :cond_7

    .line 316
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->hpackReader:Lio/grpc/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {v1}, Lio/grpc/okhttp/internal/framed/Settings;->getHeaderTableSize()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting(I)V

    .line 318
    :cond_7
    return-void

    .line 278
    .end local v1    # "settings":Lio/grpc/okhttp/internal/framed/Settings;
    :cond_8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {v1, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 271
    :cond_9
    const-string v1, "TYPE_SETTINGS streamId != 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readWindowUpdate(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 4
    .param p1, "handler"    # Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 366
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    .line 367
    .local v0, "increment":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 368
    invoke-interface {p1, p4, v0, v1}, Lio/grpc/okhttp/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    .line 369
    return-void

    .line 367
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "windowSizeIncrement was 0"

    invoke-static {v3, v2}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 365
    .end local v0    # "increment":J
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {v1, v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 373
    return-void
.end method

.method public nextFrame(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;)Z
    .locals 8
    .param p1, "handler"    # Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    const-wide/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    nop

    .line 137
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-static {v0}, Lio/grpc/okhttp/internal/framed/Http2;->access$300(Lokio/BufferedSource;)I

    move-result v0

    .line 138
    .local v0, "length":I
    if-ltz v0, :cond_1

    const/16 v1, 0x4000

    if-gt v0, v1, :cond_1

    .line 141
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 142
    .local v1, "type":B
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 143
    .local v2, "flags":B
    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    .line 144
    .local v3, "streamId":I
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-static {}, Lio/grpc/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v4

    invoke-static {v5, v3, v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 146
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 185
    iget-object v4, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v0

    invoke-interface {v4, v6, v7}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 180
    :pswitch_0
    invoke-direct {p0, p1, v0, v2, v3}, Lio/grpc/okhttp/internal/framed/Http2$Reader;->readWindowUpdate(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 181
    goto :goto_0

    .line 176
    :pswitch_1
    invoke-direct {p0, p1, v0, v2, v3}, Lio/grpc/okhttp/internal/framed/Http2$Reader;->readGoAway(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 177
    goto :goto_0

    .line 172
    :pswitch_2
    invoke-direct {p0, p1, v0, v2, v3}, Lio/grpc/okhttp/internal/framed/Http2$Reader;->readPing(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 173
    goto :goto_0

    .line 168
    :pswitch_3
    invoke-direct {p0, p1, v0, v2, v3}, Lio/grpc/okhttp/internal/framed/Http2$Reader;->readPushPromise(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 169
    goto :goto_0

    .line 164
    :pswitch_4
    invoke-direct {p0, p1, v0, v2, v3}, Lio/grpc/okhttp/internal/framed/Http2$Reader;->readSettings(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 165
    goto :goto_0

    .line 160
    :pswitch_5
    invoke-direct {p0, p1, v0, v2, v3}, Lio/grpc/okhttp/internal/framed/Http2$Reader;->readRstStream(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 161
    goto :goto_0

    .line 156
    :pswitch_6
    invoke-direct {p0, p1, v0, v2, v3}, Lio/grpc/okhttp/internal/framed/Http2$Reader;->readPriority(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 157
    goto :goto_0

    .line 152
    :pswitch_7
    invoke-direct {p0, p1, v0, v2, v3}, Lio/grpc/okhttp/internal/framed/Http2$Reader;->readHeaders(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 153
    goto :goto_0

    .line 148
    :pswitch_8
    invoke-direct {p0, p1, v0, v2, v3}, Lio/grpc/okhttp/internal/framed/Http2$Reader;->readData(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 149
    nop

    .line 187
    :goto_0
    return v5

    .line 139
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "FRAME_SIZE_ERROR: %s"

    invoke-static {v2, v1}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 121
    .end local v0    # "length":I
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->client:Z

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-static {}, Lio/grpc/okhttp/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 112
    .local v0, "connectionPreface":Lokio/ByteString;
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lio/grpc/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "<< CONNECTION %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 113
    :cond_1
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    return-void

    .line 114
    :cond_2
    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Expected a connection header but was %s"

    invoke-static {v2, v1}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method
