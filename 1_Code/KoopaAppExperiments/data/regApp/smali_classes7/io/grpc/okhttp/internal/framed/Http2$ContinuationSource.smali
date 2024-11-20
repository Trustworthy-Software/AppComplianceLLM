.class final Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field flags:B

.field left:I

.field length:I

.field padding:S

.field private final source:Lokio/BufferedSource;

.field streamId:I


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 0
    .param p1, "source"    # Lokio/BufferedSource;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p1, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    .line 619
    return-void
.end method

.method private readContinuationHeader()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 646
    .local v0, "previousStreamId":I
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-static {v1}, Lio/grpc/okhttp/internal/framed/Http2;->access$300(Lokio/BufferedSource;)I

    move-result v1

    iput v1, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    iput v1, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->length:I

    .line 647
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 648
    .local v1, "type":B
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    .line 649
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lio/grpc/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    iget v3, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    iget v4, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->length:I

    iget-byte v5, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    const/4 v6, 0x1

    invoke-static {v6, v3, v4, v1, v5}, Lio/grpc/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 650
    :cond_0
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 651
    const/16 v3, 0x9

    if-ne v1, v3, :cond_2

    .line 652
    if-ne v2, v0, :cond_1

    .line 653
    return-void

    .line 652
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "TYPE_CONTINUATION streamId changed"

    invoke-static {v3, v2}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 651
    :cond_2
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s != TYPE_CONTINUATION"

    invoke-static {v3, v2}, Lio/grpc/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 6
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    nop

    :goto_0
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    .line 623
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    iget-short v3, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->padding:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 624
    const/4 v0, 0x0

    iput-short v0, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->padding:S

    .line 625
    iget-byte v0, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    .line 626
    :cond_0
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->readContinuationHeader()V

    goto :goto_0

    .line 630
    :cond_1
    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v3, p1, v4, v5}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v3

    .line 631
    .local v3, "read":J
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    .line 632
    :cond_2
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    long-to-int v1, v3

    sub-int/2addr v0, v1

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    .line 633
    return-wide v3
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 637
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
