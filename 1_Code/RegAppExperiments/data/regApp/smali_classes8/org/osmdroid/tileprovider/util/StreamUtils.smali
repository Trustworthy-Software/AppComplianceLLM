.class public Lorg/osmdroid/tileprovider/util/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# static fields
.field public static final IO_BUFFER_SIZE:I = 0x2000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/Closeable;

    .line 72
    if-eqz p0, :cond_0

    .line 74
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const-wide/16 v0, 0x0

    .line 57
    .local v0, "length":J
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 59
    .local v2, "b":[B
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "read":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 60
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 61
    int-to-long v5, v4

    add-long/2addr v0, v5

    goto :goto_0

    .line 63
    :cond_0
    return-wide v0
.end method
