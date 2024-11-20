.class public Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;
.super Ljava/lang/Object;
.source "DiffuseLightShadingAlgorithm.java"

# interfaces
.implements Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final halfPi:D = 1.5707963267948966


# instance fields
.field private a:D

.field private final ast2:D

.field private final heightAngle:F

.field private final neutral:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    const/high16 v0, 0x42480000    # 50.0f

    invoke-direct {p0, v0}, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;-><init>(F)V

    .line 50
    return-void
.end method

.method public constructor <init>(F)V
    .locals 4
    .param p1, "heightAngle"    # F

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->heightAngle:F

    .line 57
    invoke-static {p1}, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->heightAngleToRelativeHeight(F)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->a:D

    .line 58
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->ast2:D

    .line 59
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->calculateRaw(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->neutral:D

    .line 60
    return-void
.end method

.method private convert(Ljava/nio/MappedByteBuffer;IIILorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;)[B
    .locals 27
    .param p1, "din"    # Ljava/nio/MappedByteBuffer;
    .param p2, "axisLength"    # I
    .param p3, "rowLen"    # I
    .param p4, "padding"    # I
    .param p5, "fileInfo"    # Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    new-array v3, v2, [S

    .line 126
    .local v3, "ringbuffer":[S
    mul-int/lit8 v4, p4, 0x2

    add-int/2addr v4, v1

    mul-int/lit8 v5, p4, 0x2

    add-int/2addr v5, v1

    mul-int/2addr v4, v5

    new-array v4, v4, [B

    .line 128
    .local v4, "bytes":[B
    mul-int/lit8 v5, p4, 0x2

    add-int/2addr v5, v1

    mul-int v5, v5, p4

    add-int v5, v5, p4

    .line 129
    .local v5, "outidx":I
    const/4 v6, 0x0

    .line 131
    .local v6, "rbcur":I
    const/4 v7, 0x0

    .line 132
    .local v7, "last":S
    const/4 v8, 0x0

    .local v8, "col":I
    :goto_0
    if-ge v8, v2, :cond_0

    .line 133
    invoke-static {v0, v7}, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->readNext(Ljava/nio/ByteBuffer;S)S

    move-result v7

    .line 134
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "rbcur":I
    .local v9, "rbcur":I
    aput-short v7, v3, v6

    .line 132
    add-int/lit8 v8, v8, 0x1

    move v6, v9

    goto :goto_0

    .line 138
    .end local v7    # "last":S
    .end local v8    # "col":I
    .end local v9    # "rbcur":I
    .restart local v6    # "rbcur":I
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->southLat()D

    move-result-wide v7

    mul-int/lit16 v9, v1, 0xaa

    int-to-long v9, v9

    invoke-static {v7, v8, v9, v10}, Lorg/mapsforge/core/util/MercatorProjection;->calculateGroundResolution(DJ)D

    move-result-wide v7

    .line 139
    .local v7, "southPerPixel":D
    invoke-virtual/range {p5 .. p5}, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->northLat()D

    move-result-wide v9

    mul-int/lit16 v11, v1, 0xaa

    int-to-long v11, v11

    invoke-static {v9, v10, v11, v12}, Lorg/mapsforge/core/util/MercatorProjection;->calculateGroundResolution(DJ)D

    move-result-wide v9

    .line 141
    .local v9, "northPerPixel":D
    mul-int/lit8 v11, v1, 0x2

    int-to-double v11, v11

    div-double v11, v7, v11

    .line 142
    .local v11, "southPerPixelByLine":D
    mul-int/lit8 v13, v1, 0x2

    int-to-double v13, v13

    div-double v13, v9, v13

    .line 144
    .local v13, "northPerPixelByLine":D
    const/4 v15, 0x1

    .local v15, "line":I
    :goto_1
    if-gt v15, v1, :cond_3

    .line 145
    if-lt v6, v2, :cond_1

    .line 146
    const/4 v6, 0x0

    .line 148
    :cond_1
    aget-short v2, v3, v6

    .line 149
    .local v2, "nw":S
    invoke-static {v0, v2}, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->readNext(Ljava/nio/ByteBuffer;S)S

    move-result v16

    .line 150
    .local v16, "sw":S
    add-int/lit8 v17, v6, 0x1

    .end local v6    # "rbcur":I
    .local v17, "rbcur":I
    aput-short v16, v3, v6

    .line 151
    move/from16 v18, v5

    .end local v5    # "outidx":I
    .local v18, "outidx":I
    int-to-double v5, v15

    mul-double/2addr v5, v11

    move/from16 v19, v2

    .end local v2    # "nw":S
    .local v19, "nw":S
    sub-int v2, v1, v15

    move-wide/from16 v20, v7

    .end local v7    # "southPerPixel":D
    .local v20, "southPerPixel":D
    int-to-double v7, v2

    mul-double/2addr v7, v13

    add-double/2addr v5, v7

    .line 152
    .local v5, "halfmetersPerPixel":D
    const/4 v2, 0x1

    .local v2, "col":I
    :goto_2
    if-gt v2, v1, :cond_2

    .line 153
    aget-short v7, v3, v17

    .line 154
    .local v7, "ne":S
    invoke-static {v0, v7}, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->readNext(Ljava/nio/ByteBuffer;S)S

    move-result v8

    .line 155
    .local v8, "se":S
    add-int/lit8 v22, v17, 0x1

    .end local v17    # "rbcur":I
    .local v22, "rbcur":I
    aput-short v8, v3, v17

    .line 157
    sub-int v17, v8, v7

    sub-int v23, v16, v19

    add-int v0, v17, v23

    neg-int v0, v0

    .line 159
    .local v0, "noso":I
    sub-int v17, v7, v19

    sub-int v23, v8, v16

    add-int v1, v17, v23

    neg-int v1, v1

    .line 161
    .local v1, "eawe":I
    move-wide/from16 v23, v9

    .end local v9    # "northPerPixel":D
    .local v23, "northPerPixel":D
    int-to-double v9, v0

    div-double/2addr v9, v5

    move-wide/from16 v25, v11

    .end local v11    # "southPerPixelByLine":D
    .local v25, "southPerPixelByLine":D
    int-to-double v11, v1

    div-double/2addr v11, v5

    move/from16 v17, v0

    move-object/from16 v0, p0

    .end local v0    # "noso":I
    .local v17, "noso":I
    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->calculate(DD)I

    move-result v9

    .line 163
    .local v9, "zeroIsFlat":I
    add-int/lit8 v10, v9, 0x7f

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/16 v11, 0xff

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 165
    .local v10, "intVal":I
    and-int/lit16 v11, v10, 0xff

    .line 167
    .local v11, "shade":I
    add-int/lit8 v12, v18, 0x1

    .end local v18    # "outidx":I
    .local v12, "outidx":I
    int-to-byte v0, v11

    aput-byte v0, v4, v18

    .line 169
    move/from16 v19, v7

    .line 170
    move/from16 v16, v8

    .line 152
    .end local v1    # "eawe":I
    .end local v7    # "ne":S
    .end local v8    # "se":S
    .end local v9    # "zeroIsFlat":I
    .end local v10    # "intVal":I
    .end local v11    # "shade":I
    .end local v17    # "noso":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v18, v12

    move/from16 v17, v22

    move-wide/from16 v9, v23

    move-wide/from16 v11, v25

    goto :goto_2

    .end local v12    # "outidx":I
    .end local v22    # "rbcur":I
    .end local v23    # "northPerPixel":D
    .end local v25    # "southPerPixelByLine":D
    .local v9, "northPerPixel":D
    .local v11, "southPerPixelByLine":D
    .local v17, "rbcur":I
    .restart local v18    # "outidx":I
    :cond_2
    move-wide/from16 v23, v9

    move-wide/from16 v25, v11

    .line 172
    .end local v2    # "col":I
    .end local v9    # "northPerPixel":D
    .end local v11    # "southPerPixelByLine":D
    .restart local v23    # "northPerPixel":D
    .restart local v25    # "southPerPixelByLine":D
    mul-int/lit8 v0, p4, 0x2

    add-int v5, v18, v0

    .line 144
    .end local v16    # "sw":S
    .end local v18    # "outidx":I
    .end local v19    # "nw":S
    .local v5, "outidx":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v6, v17

    move-wide/from16 v7, v20

    goto/16 :goto_1

    .line 174
    .end local v15    # "line":I
    .end local v17    # "rbcur":I
    .end local v20    # "southPerPixel":D
    .end local v23    # "northPerPixel":D
    .end local v25    # "southPerPixelByLine":D
    .restart local v6    # "rbcur":I
    .local v7, "southPerPixel":D
    .restart local v9    # "northPerPixel":D
    .restart local v11    # "southPerPixelByLine":D
    :cond_3
    return-object v4
.end method

.method static heightAngleToRelativeHeight(F)D
    .locals 6
    .param p0, "heightAngle"    # F

    .line 63
    float-to-double v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    .line 65
    .local v0, "radians":D
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    return-wide v2
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

    .line 69
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 70
    .local v0, "read":S
    const/16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 71
    return p1

    .line 72
    :cond_0
    return v0
.end method


# virtual methods
.method calculate(DD)I
    .locals 9
    .param p1, "n"    # D
    .param p3, "e"    # D

    .line 178
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->calculateRaw(DD)D

    move-result-wide v0

    .line 180
    .local v0, "raw":D
    iget-wide v2, p0, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->neutral:D

    sub-double v4, v0, v2

    .line 182
    .local v4, "v":D
    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    .line 183
    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    div-double v2, v4, v2

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    return v2

    .line 184
    :cond_0
    cmpl-double v6, v4, v6

    if-lez v6, :cond_1

    .line 185
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v2

    div-double v2, v4, v6

    const-wide v6, 0x405fc00000000000L    # 127.0

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    return v2

    .line 187
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method calculateRaw(DD)D
    .locals 8
    .param p1, "n"    # D
    .param p3, "e"    # D

    .line 198
    add-double v0, p3, p1

    iget-wide v2, p0, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->a:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->ast2:D

    mul-double v4, p1, p1

    mul-double v6, p3, p3

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 200
    .local v0, "normPlaneDist":D
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 201
    .local v2, "lightness":D
    return-wide v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 206
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 207
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;

    .line 211
    .local v2, "that":Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;
    iget-wide v3, v2, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->a:D

    iget-wide v5, p0, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 207
    .end local v2    # "that":Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;
    :cond_3
    :goto_1
    return v1
.end method

.method public getAxisLenght(Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;)I
    .locals 7
    .param p1, "source"    # Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

    .line 81
    invoke-virtual {p1}, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->getSize()J

    move-result-wide v0

    .line 82
    .local v0, "size":J
    const-wide/16 v2, 0x2

    div-long v2, v0, v2

    .line 83
    .local v2, "elements":J
    long-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 84
    .local v4, "rowLen":I
    mul-int v5, v4, v4

    mul-int/lit8 v5, v5, 0x2

    int-to-long v5, v5

    cmp-long v5, v5, v0

    if-eqz v5, :cond_0

    .line 85
    const/4 v5, 0x0

    return v5

    .line 87
    :cond_0
    add-int/lit8 v5, v4, -0x1

    return v5
.end method

.method public getLightHeight()D
    .locals 2

    .line 76
    iget-wide v0, p0, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->a:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 216
    iget-wide v0, p0, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 217
    .local v0, "temp":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiffuseLightShadingAlgorithm{heightAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->heightAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformToByteBuffer(Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;I)Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;
    .locals 18
    .param p1, "source"    # Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;
    .param p2, "padding"    # I

    .line 92
    invoke-virtual/range {p0 .. p1}, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->getAxisLenght(Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;)I

    move-result v7

    .line 93
    .local v7, "axisLength":I
    add-int/lit8 v8, v7, 0x1

    .line 94
    .local v8, "rowLen":I
    const/4 v1, 0x0

    .line 95
    .local v1, "stream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 97
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->getFile()Ljava/io/File;

    move-result-object v0

    move-object v9, v0

    .line 98
    .local v9, "file":Ljava/io/File;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v10, v0

    .line 99
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v17, v0

    .line 100
    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    .local v17, "channel":Ljava/nio/channels/FileChannel;
    :try_start_2
    sget-object v12, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v13, 0x0

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v15

    move-object/from16 v11, v17

    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    move-object v11, v0

    .line 101
    .local v11, "map":Ljava/nio/MappedByteBuffer;
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v0}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 102
    move-object/from16 v1, p0

    move-object v2, v11

    move v3, v7

    move v4, v8

    move/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->convert(Ljava/nio/MappedByteBuffer;IIILorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;)[B

    move-result-object v0

    move-object v1, v0

    .line 104
    .local v1, "bytes":[B
    new-instance v2, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v3, p2

    :try_start_3
    invoke-direct {v2, v1, v7, v7, v3}, Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;-><init>([BIII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    if-eqz v17, :cond_0

    .line 110
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 112
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 115
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 118
    goto :goto_1

    .line 116
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 117
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-object v2

    .line 109
    .end local v1    # "bytes":[B
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "map":Ljava/nio/MappedByteBuffer;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 105
    :catch_2
    move-exception v0

    goto :goto_3

    .line 109
    :catchall_1
    move-exception v0

    move/from16 v3, p2

    :goto_2
    move-object v4, v0

    move-object v1, v10

    move-object/from16 v2, v17

    goto :goto_8

    .line 105
    :catch_3
    move-exception v0

    move/from16 v3, p2

    :goto_3
    move-object v1, v10

    move-object/from16 v2, v17

    goto :goto_5

    .line 109
    .end local v17    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v2    # "channel":Ljava/nio/channels/FileChannel;
    :catchall_2
    move-exception v0

    move/from16 v3, p2

    move-object v4, v0

    move-object v1, v10

    goto :goto_8

    .line 105
    :catch_4
    move-exception v0

    move/from16 v3, p2

    move-object v1, v10

    goto :goto_5

    .line 109
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "stream":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v0

    move/from16 v3, p2

    :goto_4
    move-object v4, v0

    goto :goto_8

    .line 105
    :catch_5
    move-exception v0

    move/from16 v3, p2

    :goto_5
    move-object v4, v0

    .line 106
    .local v4, "e":Ljava/io/IOException;
    :try_start_6
    sget-object v0, Lorg/mapsforge/map/layer/hills/DiffuseLightShadingAlgorithm;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 107
    nop

    .line 109
    if-eqz v2, :cond_1

    .line 110
    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 113
    goto :goto_6

    .line 111
    :catch_6
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 112
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_6
    if-eqz v1, :cond_2

    .line 115
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 118
    goto :goto_7

    .line 116
    :catch_7
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 117
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_7
    const/4 v0, 0x0

    return-object v0

    .line 109
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v0

    goto :goto_4

    :goto_8
    if-eqz v2, :cond_3

    .line 110
    :try_start_9
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 113
    goto :goto_9

    .line 111
    :catch_8
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 112
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_9
    if-eqz v1, :cond_4

    .line 115
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 118
    goto :goto_a

    .line 116
    :catch_9
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 117
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_a
    throw v4
.end method
