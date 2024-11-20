.class public Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;
.super Ljava/lang/Object;
.source "SimpleShadingAlgorithm.java"

# interfaces
.implements Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field public final linearity:D

.field private lookup:[B

.field private lookupOffset:I

.field public final scale:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 41
    const-wide v0, 0x3fb999999999999aL    # 0.1

    const-wide v2, 0x3fe54fdf3b645a1dL    # 0.666

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;-><init>(DD)V

    .line 42
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .param p1, "linearity"    # D
    .param p3, "scale"    # D

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->linearity:D

    .line 56
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->scale:D

    .line 57
    return-void
.end method

.method private convert(Ljava/nio/MappedByteBuffer;III)[B
    .locals 20
    .param p1, "din"    # Ljava/nio/MappedByteBuffer;
    .param p2, "axisLength"    # I
    .param p3, "rowLen"    # I
    .param p4, "padding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-array v4, v3, [S

    .line 125
    .local v4, "ringbuffer":[S
    mul-int/lit8 v5, p4, 0x2

    add-int/2addr v5, v2

    mul-int/lit8 v6, p4, 0x2

    add-int/2addr v6, v2

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    .line 129
    .local v5, "bytes":[B
    iget-object v6, v0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->lookup:[B

    .line 130
    .local v6, "lookup":[B
    if-nez v6, :cond_0

    .line 131
    invoke-direct/range {p0 .. p0}, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->fillLookup()V

    .line 132
    iget-object v6, v0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->lookup:[B

    .line 135
    :cond_0
    mul-int/lit8 v7, p4, 0x2

    add-int/2addr v7, v2

    mul-int v7, v7, p4

    add-int v7, v7, p4

    .line 136
    .local v7, "outidx":I
    const/4 v8, 0x0

    .line 138
    .local v8, "rbcur":I
    const/4 v9, 0x0

    .line 139
    .local v9, "last":S
    const/4 v10, 0x0

    .local v10, "col":I
    :goto_0
    if-ge v10, v3, :cond_1

    .line 140
    invoke-static {v1, v9}, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->readNext(Ljava/nio/ByteBuffer;S)S

    move-result v9

    .line 141
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "rbcur":I
    .local v11, "rbcur":I
    aput-short v9, v4, v8

    .line 139
    add-int/lit8 v10, v10, 0x1

    move v8, v11

    goto :goto_0

    .line 144
    .end local v9    # "last":S
    .end local v10    # "col":I
    .end local v11    # "rbcur":I
    .restart local v8    # "rbcur":I
    :cond_1
    const/4 v9, 0x1

    .local v9, "line":I
    :goto_1
    if-gt v9, v2, :cond_4

    .line 145
    if-lt v8, v3, :cond_2

    .line 146
    const/4 v8, 0x0

    .line 149
    :cond_2
    aget-short v10, v4, v8

    .line 150
    .local v10, "nw":S
    invoke-static {v1, v10}, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->readNext(Ljava/nio/ByteBuffer;S)S

    move-result v11

    .line 151
    .local v11, "sw":S
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "rbcur":I
    .local v12, "rbcur":I
    aput-short v11, v4, v8

    .line 153
    const/4 v8, 0x1

    .local v8, "col":I
    :goto_2
    if-gt v8, v2, :cond_3

    .line 154
    aget-short v13, v4, v12

    .line 155
    .local v13, "ne":S
    invoke-static {v1, v13}, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->readNext(Ljava/nio/ByteBuffer;S)S

    move-result v14

    .line 156
    .local v14, "se":S
    add-int/lit8 v15, v12, 0x1

    .end local v12    # "rbcur":I
    .local v15, "rbcur":I
    aput-short v14, v4, v12

    .line 158
    sub-int v12, v14, v13

    sub-int v16, v11, v10

    add-int v12, v12, v16

    neg-int v12, v12

    .line 160
    .local v12, "noso":I
    sub-int v16, v13, v10

    sub-int v17, v14, v11

    add-int v1, v16, v17

    neg-int v1, v1

    .line 162
    .local v1, "eawe":I
    invoke-direct {v0, v6, v12}, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->exaggerate([BI)B

    move-result v12

    .line 163
    invoke-direct {v0, v6, v1}, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->exaggerate([BI)B

    move-result v1

    .line 165
    add-int v16, v12, v1

    .line 166
    .local v16, "zeroIsFlat":I
    add-int/lit8 v0, v16, 0x7f

    move/from16 v17, v1

    .end local v1    # "eawe":I
    .local v17, "eawe":I
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 168
    .local v0, "intVal":I
    and-int/lit16 v1, v0, 0xff

    .line 170
    .local v1, "shade":I
    add-int/lit8 v18, v7, 0x1

    move/from16 v19, v0

    .end local v0    # "intVal":I
    .end local v7    # "outidx":I
    .local v18, "outidx":I
    .local v19, "intVal":I
    int-to-byte v0, v1

    aput-byte v0, v5, v7

    .line 172
    move v10, v13

    .line 173
    move v11, v14

    .line 153
    .end local v1    # "shade":I
    .end local v12    # "noso":I
    .end local v13    # "ne":S
    .end local v14    # "se":S
    .end local v16    # "zeroIsFlat":I
    .end local v17    # "eawe":I
    .end local v19    # "intVal":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v12, v15

    move/from16 v7, v18

    goto :goto_2

    .line 175
    .end local v8    # "col":I
    .end local v15    # "rbcur":I
    .end local v18    # "outidx":I
    .restart local v7    # "outidx":I
    .local v12, "rbcur":I
    :cond_3
    mul-int/lit8 v0, p4, 0x2

    add-int/2addr v7, v0

    .line 144
    .end local v10    # "nw":S
    .end local v11    # "sw":S
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v8, v12

    goto :goto_1

    .line 177
    .end local v9    # "line":I
    .end local v12    # "rbcur":I
    .local v8, "rbcur":I
    :cond_4
    return-object v5
.end method

.method private exaggerate([BI)B
    .locals 2
    .param p1, "lookup"    # [B
    .param p2, "x"    # I

    .line 182
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->lookupOffset:I

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget-byte v0, p1, v0

    return v0
.end method

.method private fillLookup()V
    .locals 10

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "lowest":I
    :goto_0
    const/16 v1, -0x400

    const-wide v2, 0x405fc00000000000L    # 127.0

    const-wide/high16 v4, -0x3fa0000000000000L    # -128.0

    if-le v0, v1, :cond_1

    .line 188
    int-to-double v6, v0

    invoke-virtual {p0, v6, v7}, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->exaggerate(D)D

    move-result-wide v6

    .line 189
    .local v6, "exaggerate":D
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    .line 190
    .local v8, "exaggerated":D
    cmpg-double v1, v8, v4

    if-lez v1, :cond_1

    cmpl-double v1, v8, v2

    if-ltz v1, :cond_0

    goto :goto_1

    .line 191
    :cond_0
    nop

    .end local v6    # "exaggerate":D
    .end local v8    # "exaggerated":D
    add-int/lit8 v0, v0, -0x1

    .line 192
    goto :goto_0

    .line 193
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 194
    .local v1, "highest":I
    :goto_2
    const/16 v6, 0x400

    if-ge v1, v6, :cond_3

    .line 195
    int-to-double v6, v1

    invoke-virtual {p0, v6, v7}, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->exaggerate(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    .line 196
    .local v6, "exaggerated":D
    cmpg-double v8, v6, v4

    if-lez v8, :cond_3

    cmpl-double v8, v6, v2

    if-ltz v8, :cond_2

    goto :goto_3

    .line 197
    :cond_2
    nop

    .end local v6    # "exaggerated":D
    add-int/lit8 v1, v1, 0x1

    .line 198
    goto :goto_2

    .line 199
    :cond_3
    :goto_3
    add-int/lit8 v2, v1, 0x1

    sub-int/2addr v2, v0

    .line 200
    .local v2, "size":I
    new-array v3, v2, [B

    .line 201
    .local v3, "nextLookup":[B
    move v4, v0

    .line 202
    .local v4, "in":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v2, :cond_4

    .line 203
    int-to-double v6, v4

    invoke-virtual {p0, v6, v7}, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->exaggerate(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 204
    .local v6, "exaggerated":B
    aput-byte v6, v3, v5

    .line 205
    nop

    .end local v6    # "exaggerated":B
    add-int/lit8 v4, v4, 0x1

    .line 202
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 207
    .end local v5    # "i":I
    :cond_4
    iput-object v3, p0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->lookup:[B

    .line 208
    neg-int v5, v0

    iput v5, p0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->lookupOffset:I

    .line 209
    return-void
.end method

.method private static readNext(Ljava/nio/ByteBuffer;S)S
    .locals 2
    .param p0, "din"    # Ljava/nio/ByteBuffer;
    .param p1, "fallback"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 61
    .local v0, "read":S
    const/16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 62
    return p1

    .line 63
    :cond_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 213
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 214
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 216
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;

    .line 218
    .local v2, "that":Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;
    iget-wide v3, v2, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->linearity:D

    iget-wide v5, p0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->linearity:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 219
    :cond_2
    iget-wide v3, v2, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->scale:D

    iget-wide v5, p0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->scale:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 214
    .end local v2    # "that":Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;
    :cond_4
    :goto_1
    return v1
.end method

.method protected exaggerate(D)D
    .locals 8
    .param p1, "in"    # D

    .line 72
    iget-wide v0, p0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->scale:D

    mul-double/2addr v0, p1

    .line 73
    .local v0, "x":D
    const-wide/high16 v2, 0x4060000000000000L    # 128.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    const-wide/high16 v6, -0x3fa0000000000000L    # -128.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 74
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v6, v0, v4

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    iget-wide v2, p0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->linearity:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v2

    mul-double/2addr v4, v6

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    .line 75
    .local v4, "ret":D
    return-wide v4
.end method

.method public getAxisLenght(Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;)I
    .locals 7
    .param p1, "source"    # Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

    .line 80
    invoke-virtual {p1}, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->getSize()J

    move-result-wide v0

    .line 81
    .local v0, "size":J
    const-wide/16 v2, 0x2

    div-long v2, v0, v2

    .line 82
    .local v2, "elements":J
    long-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 83
    .local v4, "rowLen":I
    mul-int v5, v4, v4

    mul-int/lit8 v5, v5, 0x2

    int-to-long v5, v5

    cmp-long v5, v5, v0

    if-eqz v5, :cond_0

    .line 84
    const/4 v5, 0x0

    return v5

    .line 86
    :cond_0
    add-int/lit8 v5, v4, -0x1

    return v5
.end method

.method public hashCode()I
    .locals 7

    .line 226
    iget-wide v0, p0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->linearity:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 227
    .local v0, "temp":J
    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v3, v0

    long-to-int v3, v3

    .line 228
    .local v3, "result":I
    iget-wide v4, p0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->scale:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 229
    mul-int/lit8 v4, v3, 0x1f

    ushr-long v5, v0, v2

    xor-long/2addr v5, v0

    long-to-int v2, v5

    add-int/2addr v4, v2

    .line 230
    .end local v3    # "result":I
    .local v4, "result":I
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleShadingAlgorithm{linearity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->linearity:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->scale:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformToByteBuffer(Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;I)Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;
    .locals 12
    .param p1, "source"    # Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;
    .param p2, "padding"    # I

    .line 91
    invoke-virtual {p0, p1}, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->getAxisLenght(Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;)I

    move-result v0

    .line 92
    .local v0, "axisLength":I
    add-int/lit8 v1, v0, 0x1

    .line 93
    .local v1, "rowLen":I
    const/4 v2, 0x0

    .line 94
    .local v2, "stream":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 96
    .local v3, "channel":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {p1}, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->getFile()Ljava/io/File;

    move-result-object v4

    .line 97
    .local v4, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v5

    .line 98
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    move-object v3, v5

    .line 99
    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    move-object v6, v3

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v5

    .line 100
    .local v5, "map":Ljava/nio/MappedByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 101
    invoke-direct {p0, v5, v0, v1, p2}, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->convert(Ljava/nio/MappedByteBuffer;III)[B

    move-result-object v6

    .line 103
    .local v6, "bytes":[B
    new-instance v7, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;

    invoke-direct {v7, v6, v0, v0, p2}, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;-><init>([BIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-eqz v3, :cond_0

    .line 109
    :try_start_1
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    goto :goto_0

    .line 110
    :catch_0
    move-exception v8

    .line 111
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    .end local v8    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 114
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    goto :goto_1

    .line 115
    :catch_1
    move-exception v8

    .line 116
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 103
    .end local v8    # "e":Ljava/io/IOException;
    :goto_1
    return-object v7

    .line 108
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "map":Ljava/nio/MappedByteBuffer;
    .end local v6    # "bytes":[B
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 104
    :catch_2
    move-exception v4

    .line 105
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v5, Lorg/mapsforge/map/layer/hills/SimpleShadingAlgorithm;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    nop

    .line 108
    if-eqz v3, :cond_1

    .line 109
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 112
    goto :goto_2

    .line 110
    :catch_3
    move-exception v5

    .line 111
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 114
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 117
    goto :goto_3

    .line 115
    :catch_4
    move-exception v5

    .line 116
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    const/4 v5, 0x0

    return-object v5

    .line 108
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v3, :cond_3

    .line 109
    :try_start_6
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 112
    goto :goto_5

    .line 110
    :catch_5
    move-exception v5

    .line 111
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 114
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 117
    goto :goto_6

    .line 115
    :catch_6
    move-exception v5

    .line 116
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    :goto_6
    throw v4
.end method
