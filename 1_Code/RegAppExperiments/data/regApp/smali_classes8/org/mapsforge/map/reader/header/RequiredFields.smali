.class final Lorg/mapsforge/map/reader/header/RequiredFields;
.super Ljava/lang/Object;
.source "RequiredFields.java"


# static fields
.field private static final BINARY_OSM_MAGIC_BYTE:Ljava/lang/String; = "mapsforge binary OSM"

.field private static final HEADER_SIZE_MAX:I = 0xf4240

.field private static final HEADER_SIZE_MIN:I = 0x46

.field private static final MERCATOR:Ljava/lang/String; = "Mercator"

.field private static final SUPPORTED_FILE_VERSION_MAX:I = 0x5

.field private static final SUPPORTED_FILE_VERSION_MIN:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static readBoundingBox(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V
    .locals 18
    .param p0, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p1, "mapFileInfoBuilder"    # Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    .line 57
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v10

    .line 58
    .local v10, "minLatitude":D
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v12

    .line 59
    .local v12, "minLongitude":D
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v14

    .line 60
    .local v14, "maxLatitude":D
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v16

    .line 63
    .local v16, "maxLongitude":D
    :try_start_0
    new-instance v0, Lorg/mapsforge/core/model/BoundingBox;

    move-object v1, v0

    move-wide v2, v10

    move-wide v4, v12

    move-wide v6, v14

    move-wide/from16 v8, v16

    invoke-direct/range {v1 .. v9}, Lorg/mapsforge/core/model/BoundingBox;-><init>(DDDD)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p1

    :try_start_1
    iput-object v0, v1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    nop

    .line 67
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v1, p1

    .line 65
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v2, Lorg/mapsforge/map/reader/header/MapFileException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static readFileSize(Lorg/mapsforge/map/reader/ReadBuffer;JLorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V
    .locals 5
    .param p0, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p1, "fileSize"    # J
    .param p3, "mapFileInfoBuilder"    # Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    .line 71
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readLong()J

    move-result-wide v0

    .line 72
    .local v0, "headerFileSize":J
    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 75
    iput-wide p1, p3, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->fileSize:J

    .line 76
    return-void

    .line 73
    :cond_0
    new-instance v2, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid file size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static readFileVersion(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V
    .locals 4
    .param p0, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p1, "mapFileInfoBuilder"    # Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    .line 80
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v0

    .line 81
    .local v0, "fileVersion":I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 84
    iput v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->fileVersion:I

    .line 85
    return-void

    .line 82
    :cond_0
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported file version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static readMagicByte(Lorg/mapsforge/map/reader/ReadBuffer;)V
    .locals 5
    .param p0, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const-string v0, "mapsforge binary OSM"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 90
    .local v1, "magicByteLength":I
    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p0, v2}, Lorg/mapsforge/map/reader/ReadBuffer;->readFromFile(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {p0, v1}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "magicByte":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    return-void

    .line 97
    :cond_0
    new-instance v0, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid magic byte: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    .end local v2    # "magicByte":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/mapsforge/map/reader/header/MapFileException;

    const-string v2, "reading magic byte has failed"

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static readMapDate(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V
    .locals 5
    .param p0, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p1, "mapFileInfoBuilder"    # Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    .line 103
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readLong()J

    move-result-wide v0

    .line 105
    .local v0, "mapDate":J
    const-wide v2, 0x1176592e000L

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 108
    iput-wide v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->mapDate:J

    .line 109
    return-void

    .line 106
    :cond_0
    new-instance v2, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid map date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static readPoiTags(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V
    .locals 7
    .param p0, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p1, "mapFileInfoBuilder"    # Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    .line 113
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readShort()I

    move-result v0

    .line 114
    .local v0, "numberOfPoiTags":I
    if-ltz v0, :cond_2

    .line 118
    new-array v1, v0, [Lorg/mapsforge/core/model/Tag;

    .line 119
    .local v1, "poiTags":[Lorg/mapsforge/core/model/Tag;
    const/4 v2, 0x0

    .local v2, "currentTagId":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "tag":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 125
    new-instance v4, Lorg/mapsforge/core/model/Tag;

    invoke-direct {v4, v3}, Lorg/mapsforge/core/model/Tag;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v2

    .line 119
    .end local v3    # "tag":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .restart local v3    # "tag":Ljava/lang/String;
    :cond_0
    new-instance v4, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "POI tag must not be null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 127
    .end local v2    # "currentTagId":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    iput-object v1, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->poiTags:[Lorg/mapsforge/core/model/Tag;

    .line 128
    return-void

    .line 115
    .end local v1    # "poiTags":[Lorg/mapsforge/core/model/Tag;
    :cond_2
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid number of POI tags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static readProjectionName(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V
    .locals 4
    .param p0, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p1, "mapFileInfoBuilder"    # Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    .line 132
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "projectionName":Ljava/lang/String;
    const-string v1, "Mercator"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iput-object v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->projectionName:Ljava/lang/String;

    .line 137
    return-void

    .line 134
    :cond_0
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported projection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static readRemainingHeader(Lorg/mapsforge/map/reader/ReadBuffer;)V
    .locals 4
    .param p0, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v0

    .line 142
    .local v0, "remainingHeaderSize":I
    const/16 v1, 0x46

    if-lt v0, v1, :cond_1

    const v1, 0xf4240

    if-gt v0, v1, :cond_1

    .line 147
    invoke-virtual {p0, v0}, Lorg/mapsforge/map/reader/ReadBuffer;->readFromFile(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    return-void

    .line 148
    :cond_0
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reading header data has failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_1
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid remaining header size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static readTilePixelSize(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V
    .locals 1
    .param p0, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p1, "mapFileInfoBuilder"    # Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    .line 154
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readShort()I

    move-result v0

    .line 158
    .local v0, "tilePixelSize":I
    iput v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->tilePixelSize:I

    .line 159
    return-void
.end method

.method static readWayTags(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V
    .locals 7
    .param p0, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p1, "mapFileInfoBuilder"    # Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    .line 163
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readShort()I

    move-result v0

    .line 164
    .local v0, "numberOfWayTags":I
    if-ltz v0, :cond_2

    .line 168
    new-array v1, v0, [Lorg/mapsforge/core/model/Tag;

    .line 170
    .local v1, "wayTags":[Lorg/mapsforge/core/model/Tag;
    const/4 v2, 0x0

    .local v2, "currentTagId":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "tag":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 176
    new-instance v4, Lorg/mapsforge/core/model/Tag;

    invoke-direct {v4, v3}, Lorg/mapsforge/core/model/Tag;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v2

    .line 170
    .end local v3    # "tag":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .restart local v3    # "tag":Ljava/lang/String;
    :cond_0
    new-instance v4, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "way tag must not be null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 178
    .end local v2    # "currentTagId":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    iput-object v1, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->wayTags:[Lorg/mapsforge/core/model/Tag;

    .line 179
    return-void

    .line 165
    .end local v1    # "wayTags":[Lorg/mapsforge/core/model/Tag;
    :cond_2
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid number of way tags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
