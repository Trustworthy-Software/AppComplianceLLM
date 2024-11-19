.class public Lorg/mapsforge/map/reader/ReadBuffer;
.super Ljava/lang/Object;
.source "ReadBuffer.java"


# static fields
.field private static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private bufferData:[B

.field private bufferPosition:I

.field private bufferWrapper:Ljava/nio/ByteBuffer;

.field private final inputChannel:Ljava/nio/channels/FileChannel;

.field private final tagIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/reader/ReadBuffer;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 1
    .param p1, "inputChannel"    # Ljava/nio/channels/FileChannel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->tagIds:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->inputChannel:Ljava/nio/channels/FileChannel;

    .line 50
    return-void
.end method


# virtual methods
.method getBufferPosition()I
    .locals 1

    .line 289
    iget v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    return v0
.end method

.method getBufferSize()I
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    array-length v0, v0

    return v0
.end method

.method public readByte()B
    .locals 3

    .line 58
    iget-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readFloat()F
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFromFile(I)Z
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_2

    .line 84
    :cond_0
    sget v0, Lorg/mapsforge/core/util/Parameters;->MAXIMUM_BUFFER_SIZE:I

    if-le p1, v0, :cond_1

    .line 85
    sget-object v0, Lorg/mapsforge/map/reader/ReadBuffer;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid read length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 86
    return v1

    .line 88
    :cond_1
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    .line 89
    invoke-static {v0, v1, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferWrapper:Ljava/nio/ByteBuffer;

    .line 93
    :cond_2
    iput v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    .line 94
    iget-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferWrapper:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 96
    iget-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->inputChannel:Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferWrapper:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-ne v0, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public readFromFile(JI)Z
    .locals 4
    .param p1, "offset"    # J
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p3, :cond_2

    .line 112
    :cond_0
    sget v0, Lorg/mapsforge/core/util/Parameters;->MAXIMUM_BUFFER_SIZE:I

    if-le p3, v0, :cond_1

    .line 113
    sget-object v0, Lorg/mapsforge/map/reader/ReadBuffer;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid read length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 114
    return v1

    .line 116
    :cond_1
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    .line 117
    invoke-static {v0, v1, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferWrapper:Ljava/nio/ByteBuffer;

    .line 121
    :cond_2
    iput v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    .line 122
    iget-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferWrapper:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 124
    iget-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->inputChannel:Ljava/nio/channels/FileChannel;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->inputChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 126
    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->inputChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferWrapper:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-ne v2, p3, :cond_3

    const/4 v1, 0x1

    :cond_3
    monitor-exit v0

    return v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readInt()I
    .locals 2

    .line 138
    iget v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    .line 139
    iget-object v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    add-int/lit8 v0, v0, -0x4

    invoke-static {v1, v0}, Lorg/mapsforge/map/reader/Deserializer;->getInt([BI)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    .line 150
    iget v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    .line 151
    iget-object v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    add-int/lit8 v0, v0, -0x8

    invoke-static {v1, v0}, Lorg/mapsforge/map/reader/Deserializer;->getLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()I
    .locals 2

    .line 162
    iget v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    .line 163
    iget-object v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    add-int/lit8 v0, v0, -0x2

    invoke-static {v1, v0}, Lorg/mapsforge/map/reader/Deserializer;->getShort([BI)I

    move-result v0

    return v0
.end method

.method public readSignedInt()I
    .locals 5

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "variableByteDecode":I
    const/4 v1, 0x0

    .line 179
    .local v1, "variableByteShift":B
    :goto_0
    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    aget-byte v2, v2, v3

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_0

    .line 180
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    and-int/lit8 v2, v2, 0x7f

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 181
    add-int/lit8 v2, v1, 0x7

    int-to-byte v1, v2

    goto :goto_0

    .line 185
    :cond_0
    and-int/lit8 v4, v2, 0x40

    if-eqz v4, :cond_1

    .line 187
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    and-int/lit8 v2, v2, 0x3f

    shl-int/2addr v2, v1

    or-int/2addr v2, v0

    neg-int v2, v2

    return v2

    .line 190
    :cond_1
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    and-int/lit8 v2, v2, 0x3f

    shl-int/2addr v2, v1

    or-int/2addr v2, v0

    return v2
.end method

.method readTags([Lorg/mapsforge/core/model/Tag;B)Ljava/util/List;
    .locals 9
    .param p1, "tagsArray"    # [Lorg/mapsforge/core/model/Tag;
    .param p2, "numberOfTags"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/mapsforge/core/model/Tag;",
            "B)",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    iget-object v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->tagIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 197
    array-length v1, p1

    .line 199
    .local v1, "maxTag":I
    move v2, p2

    .local v2, "tagIndex":B
    :goto_0
    if-eqz v2, :cond_2

    .line 200
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v3

    .line 201
    .local v3, "tagId":I
    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 205
    :cond_0
    iget-object v4, p0, Lorg/mapsforge/map/reader/ReadBuffer;->tagIds:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v3    # "tagId":I
    add-int/lit8 v3, v2, -0x1

    int-to-byte v2, v3

    goto :goto_0

    .line 202
    .restart local v3    # "tagId":I
    :cond_1
    :goto_1
    sget-object v4, Lorg/mapsforge/map/reader/ReadBuffer;->LOGGER:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid tag ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 203
    const/4 v4, 0x0

    return-object v4

    .line 208
    .end local v2    # "tagIndex":B
    .end local v3    # "tagId":I
    :cond_2
    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->tagIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 209
    .restart local v3    # "tagId":I
    aget-object v4, p1, v3

    .line 211
    .local v4, "tag":Lorg/mapsforge/core/model/Tag;
    iget-object v5, v4, Lorg/mapsforge/core/model/Tag;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    iget-object v5, v4, Lorg/mapsforge/core/model/Tag;->value:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x25

    if-ne v5, v6, :cond_9

    .line 212
    iget-object v5, v4, Lorg/mapsforge/core/model/Tag;->value:Ljava/lang/String;

    .line 213
    .local v5, "value":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x62

    if-ne v7, v8, :cond_3

    .line 214
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 215
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x69

    if-ne v7, v8, :cond_5

    .line 216
    iget-object v6, v4, Lorg/mapsforge/core/model/Tag;->key:Ljava/lang/String;

    const-string v7, ":colour"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 219
    :cond_4
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 221
    :cond_5
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x66

    if-ne v7, v8, :cond_6

    .line 222
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readFloat()F

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 223
    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x68

    if-ne v7, v8, :cond_7

    .line 224
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readShort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 225
    :cond_7
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x73

    if-ne v6, v7, :cond_8

    .line 226
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v5

    .line 228
    :cond_8
    :goto_3
    new-instance v6, Lorg/mapsforge/core/model/Tag;

    iget-object v7, v4, Lorg/mapsforge/core/model/Tag;->key:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Lorg/mapsforge/core/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 230
    .end local v5    # "value":Ljava/lang/String;
    :cond_9
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v3    # "tagId":I
    .end local v4    # "tag":Lorg/mapsforge/core/model/Tag;
    goto/16 :goto_2

    .line 233
    :cond_a
    return-object v0
.end method

.method public readUTF8EncodedString()Ljava/lang/String;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUTF8EncodedString(I)Ljava/lang/String;
    .locals 4
    .param p1, "stringLength"    # I

    .line 273
    if-lez p1, :cond_0

    iget v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int v1, v0, p1

    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 274
    add-int/2addr v0, p1

    iput v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    .line 276
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    sub-int/2addr v2, p1

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 281
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    sget-object v0, Lorg/mapsforge/map/reader/ReadBuffer;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid string length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public readUnsignedInt()I
    .locals 5

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "variableByteDecode":I
    const/4 v1, 0x0

    .line 248
    .local v1, "variableByteShift":B
    :goto_0
    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    aget-byte v2, v2, v3

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_0

    .line 249
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    and-int/lit8 v2, v2, 0x7f

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 250
    add-int/lit8 v2, v1, 0x7

    int-to-byte v1, v2

    goto :goto_0

    .line 254
    :cond_0
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    shl-int/2addr v2, v1

    or-int/2addr v2, v0

    return v2
.end method

.method setBufferPosition(I)V
    .locals 0
    .param p1, "bufferPosition"    # I

    .line 305
    iput p1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    .line 306
    return-void
.end method

.method skipBytes(I)V
    .locals 1
    .param p1, "bytes"    # I

    .line 314
    iget v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    .line 315
    return-void
.end method
