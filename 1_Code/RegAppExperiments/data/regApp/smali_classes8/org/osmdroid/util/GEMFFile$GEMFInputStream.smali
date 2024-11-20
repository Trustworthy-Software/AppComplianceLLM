.class Lorg/osmdroid/util/GEMFFile$GEMFInputStream;
.super Ljava/io/InputStream;
.source "GEMFFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/util/GEMFFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GEMFInputStream"
.end annotation


# instance fields
.field raf:Ljava/io/RandomAccessFile;

.field remainingBytes:I

.field final synthetic this$0:Lorg/osmdroid/util/GEMFFile;


# direct methods
.method constructor <init>(Lorg/osmdroid/util/GEMFFile;Ljava/lang/String;JI)V
    .locals 2
    .param p1, "this$0"    # Lorg/osmdroid/util/GEMFFile;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "offset"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    iput-object p1, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->this$0:Lorg/osmdroid/util/GEMFFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 690
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 691
    invoke-virtual {v0, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 693
    iput p5, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    .line 694
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 698
    iget v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 704
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 721
    iget v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    if-lez v0, :cond_0

    .line 722
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    .line 723
    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0

    .line 725
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "End of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->raf:Ljava/io/RandomAccessFile;

    iget v1, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    if-le p3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    invoke-virtual {v0, p1, p2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 715
    .local v0, "read":I
    iget v1, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    .line 716
    return v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "byteCount"    # J

    .line 731
    const-wide/16 v0, 0x0

    return-wide v0
.end method
