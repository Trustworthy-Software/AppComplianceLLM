.class public Lorg/mapsforge/map/reader/header/MapFileHeader;
.super Ljava/lang/Object;
.source "MapFileHeader.java"


# static fields
.field private static final BASE_ZOOM_LEVEL_MAX:I = 0x14

.field private static final HEADER_SIZE_MIN:I = 0x46

.field private static final SIGNATURE_LENGTH_INDEX:B = 0x10t

.field private static final SPACE:C = ' '


# instance fields
.field private mapFileInfo:Lorg/mapsforge/map/reader/header/MapFileInfo;

.field private subFileParameters:[Lorg/mapsforge/map/reader/header/SubFileParameter;

.field private zoomLevelMaximum:B

.field private zoomLevelMinimum:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readSubFileParameters(Lorg/mapsforge/map/reader/ReadBuffer;JLorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V
    .locals 18
    .param p1, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p2, "fileSize"    # J
    .param p4, "mapFileInfoBuilder"    # Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    .line 118
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v2

    .line 119
    .local v2, "numberOfSubFiles":B
    const/4 v3, 0x1

    if-lt v2, v3, :cond_c

    .line 122
    iput-byte v2, v1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->numberOfSubFiles:B

    .line 124
    new-array v4, v2, [Lorg/mapsforge/map/reader/header/SubFileParameter;

    .line 125
    .local v4, "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    const/16 v5, 0x7f

    iput-byte v5, v0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMinimum:B

    .line 126
    const/16 v5, -0x80

    iput-byte v5, v0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMaximum:B

    .line 129
    const/4 v5, 0x0

    .local v5, "currentSubFile":B
    :goto_0
    if-ge v5, v2, :cond_9

    .line 130
    new-instance v6, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;

    invoke-direct {v6}, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;-><init>()V

    .line 133
    .local v6, "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v7

    .line 134
    .local v7, "baseZoomLevel":B
    if-ltz v7, :cond_8

    const/16 v8, 0x14

    if-gt v7, v8, :cond_8

    .line 137
    iput-byte v7, v6, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->baseZoomLevel:B

    .line 140
    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v8

    .line 141
    .local v8, "zoomLevelMin":B
    if-ltz v8, :cond_7

    const/16 v9, 0x16

    if-gt v8, v9, :cond_7

    .line 144
    iput-byte v8, v6, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->zoomLevelMin:B

    .line 147
    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v10

    .line 148
    .local v10, "zoomLevelMax":B
    if-ltz v10, :cond_6

    if-gt v10, v9, :cond_6

    .line 151
    iput-byte v10, v6, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->zoomLevelMax:B

    .line 154
    if-gt v8, v10, :cond_5

    .line 159
    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readLong()J

    move-result-wide v11

    .line 160
    .local v11, "startAddress":J
    const-wide/16 v13, 0x46

    cmp-long v9, v11, v13

    if-ltz v9, :cond_4

    cmp-long v9, v11, p2

    if-gez v9, :cond_4

    .line 163
    iput-wide v11, v6, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->startAddress:J

    .line 165
    move-wide v13, v11

    .line 166
    .local v13, "indexStartAddress":J
    iget-object v9, v1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->optionalFields:Lorg/mapsforge/map/reader/header/OptionalFields;

    iget-boolean v9, v9, Lorg/mapsforge/map/reader/header/OptionalFields;->isDebugFile:Z

    if-eqz v9, :cond_0

    .line 168
    const-wide/16 v15, 0x10

    add-long/2addr v13, v15

    .line 170
    :cond_0
    iput-wide v13, v6, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->indexStartAddress:J

    .line 173
    move-object v15, v4

    .end local v4    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .local v15, "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readLong()J

    move-result-wide v3

    .line 174
    .local v3, "subFileSize":J
    const-wide/16 v16, 0x1

    cmp-long v16, v3, v16

    if-ltz v16, :cond_3

    .line 177
    iput-wide v3, v6, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->subFileSize:J

    .line 179
    iget-object v9, v1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    iput-object v9, v6, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    .line 182
    invoke-virtual {v6}, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->build()Lorg/mapsforge/map/reader/header/SubFileParameter;

    move-result-object v9

    aput-object v9, v15, v5

    .line 186
    iget-byte v9, v0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMinimum:B

    move-object/from16 v17, v6

    .end local v6    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    .local v17, "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    aget-object v6, v15, v5

    iget-byte v6, v6, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMin:B

    if-le v9, v6, :cond_1

    .line 187
    aget-object v6, v15, v5

    iget-byte v6, v6, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMin:B

    iput-byte v6, v0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMinimum:B

    .line 188
    iput-byte v6, v1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->zoomLevelMin:B

    .line 190
    :cond_1
    iget-byte v6, v0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMaximum:B

    aget-object v9, v15, v5

    iget-byte v9, v9, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMax:B

    if-ge v6, v9, :cond_2

    .line 191
    aget-object v6, v15, v5

    iget-byte v6, v6, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMax:B

    iput-byte v6, v0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMaximum:B

    .line 192
    iput-byte v6, v1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->zoomLevelMax:B

    .line 129
    .end local v3    # "subFileSize":J
    .end local v7    # "baseZoomLevel":B
    .end local v8    # "zoomLevelMin":B
    .end local v10    # "zoomLevelMax":B
    .end local v11    # "startAddress":J
    .end local v13    # "indexStartAddress":J
    .end local v17    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    :cond_2
    add-int/lit8 v3, v5, 0x1

    int-to-byte v5, v3

    move-object v4, v15

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 175
    .restart local v3    # "subFileSize":J
    .restart local v6    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    .restart local v7    # "baseZoomLevel":B
    .restart local v8    # "zoomLevelMin":B
    .restart local v10    # "zoomLevelMax":B
    .restart local v11    # "startAddress":J
    .restart local v13    # "indexStartAddress":J
    :cond_3
    move-object/from16 v17, v6

    .end local v6    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    .restart local v17    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    new-instance v6, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid sub-file size: "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 160
    .end local v3    # "subFileSize":J
    .end local v13    # "indexStartAddress":J
    .end local v15    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .end local v17    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    .restart local v4    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .restart local v6    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    :cond_4
    move-object v15, v4

    move-object/from16 v17, v6

    .line 161
    .end local v4    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .end local v6    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    .restart local v15    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .restart local v17    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid start address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    .end local v11    # "startAddress":J
    .end local v15    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .end local v17    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    .restart local v4    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .restart local v6    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    :cond_5
    move-object v15, v4

    .end local v4    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .restart local v15    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid zoom level range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    .end local v15    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .restart local v4    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    :cond_6
    move-object v15, v4

    move-object/from16 v17, v6

    .line 149
    .end local v4    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .end local v6    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    .restart local v15    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .restart local v17    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid maximum zoom level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    .end local v10    # "zoomLevelMax":B
    .end local v15    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .end local v17    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    .restart local v4    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .restart local v6    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    :cond_7
    move-object v15, v4

    move-object/from16 v17, v6

    .line 142
    .end local v4    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .end local v6    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    .restart local v15    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .restart local v17    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid minimum zoom level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    .end local v8    # "zoomLevelMin":B
    .end local v15    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .end local v17    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    .restart local v4    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .restart local v6    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    :cond_8
    move-object v15, v4

    move-object/from16 v17, v6

    .line 135
    .end local v4    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .end local v6    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    .restart local v15    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .restart local v17    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid base zoom level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    .end local v7    # "baseZoomLevel":B
    .end local v15    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .end local v17    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    .restart local v4    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    :cond_9
    move-object v15, v4

    .line 198
    .end local v4    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    .end local v5    # "currentSubFile":B
    .restart local v15    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    iget-byte v1, v0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMaximum:B

    const/4 v3, 0x1

    add-int/2addr v1, v3

    new-array v1, v1, [Lorg/mapsforge/map/reader/header/SubFileParameter;

    iput-object v1, v0, Lorg/mapsforge/map/reader/header/MapFileHeader;->subFileParameters:[Lorg/mapsforge/map/reader/header/SubFileParameter;

    .line 199
    const/4 v1, 0x0

    .local v1, "currentMapFile":I
    :goto_1
    if-ge v1, v2, :cond_b

    .line 200
    aget-object v3, v15, v1

    .line 201
    .local v3, "subFileParameter":Lorg/mapsforge/map/reader/header/SubFileParameter;
    iget-byte v4, v3, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMin:B

    .local v4, "zoomLevel":B
    :goto_2
    iget-byte v5, v3, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMax:B

    if-gt v4, v5, :cond_a

    .line 202
    iget-object v5, v0, Lorg/mapsforge/map/reader/header/MapFileHeader;->subFileParameters:[Lorg/mapsforge/map/reader/header/SubFileParameter;

    aput-object v3, v5, v4

    .line 201
    add-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    goto :goto_2

    .line 199
    .end local v3    # "subFileParameter":Lorg/mapsforge/map/reader/header/SubFileParameter;
    .end local v4    # "zoomLevel":B
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 205
    .end local v1    # "currentMapFile":I
    :cond_b
    return-void

    .line 120
    .end local v15    # "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    :cond_c
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid number of sub-files: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/mapsforge/map/reader/header/MapFileHeader;->mapFileInfo:Lorg/mapsforge/map/reader/header/MapFileInfo;

    return-object v0
.end method

.method public getQueryZoomLevel(B)B
    .locals 1
    .param p1, "zoomLevel"    # B

    .line 63
    iget-byte v0, p0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMaximum:B

    if-le p1, v0, :cond_0

    .line 64
    return v0

    .line 65
    :cond_0
    iget-byte v0, p0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMinimum:B

    if-ge p1, v0, :cond_1

    .line 66
    return v0

    .line 68
    :cond_1
    return p1
.end method

.method public getSubFileParameter(I)Lorg/mapsforge/map/reader/header/SubFileParameter;
    .locals 1
    .param p1, "queryZoomLevel"    # I

    .line 76
    iget-object v0, p0, Lorg/mapsforge/map/reader/header/MapFileHeader;->subFileParameters:[Lorg/mapsforge/map/reader/header/SubFileParameter;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public readHeader(Lorg/mapsforge/map/reader/ReadBuffer;J)V
    .locals 2
    .param p1, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p2, "fileSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-static {p1}, Lorg/mapsforge/map/reader/header/RequiredFields;->readMagicByte(Lorg/mapsforge/map/reader/ReadBuffer;)V

    .line 88
    invoke-static {p1}, Lorg/mapsforge/map/reader/header/RequiredFields;->readRemainingHeader(Lorg/mapsforge/map/reader/ReadBuffer;)V

    .line 90
    new-instance v0, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    invoke-direct {v0}, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;-><init>()V

    .line 92
    .local v0, "mapFileInfoBuilder":Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;
    invoke-static {p1, v0}, Lorg/mapsforge/map/reader/header/RequiredFields;->readFileVersion(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V

    .line 94
    invoke-static {p1, p2, p3, v0}, Lorg/mapsforge/map/reader/header/RequiredFields;->readFileSize(Lorg/mapsforge/map/reader/ReadBuffer;JLorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V

    .line 96
    invoke-static {p1, v0}, Lorg/mapsforge/map/reader/header/RequiredFields;->readMapDate(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V

    .line 98
    invoke-static {p1, v0}, Lorg/mapsforge/map/reader/header/RequiredFields;->readBoundingBox(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V

    .line 100
    invoke-static {p1, v0}, Lorg/mapsforge/map/reader/header/RequiredFields;->readTilePixelSize(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V

    .line 102
    invoke-static {p1, v0}, Lorg/mapsforge/map/reader/header/RequiredFields;->readProjectionName(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V

    .line 104
    invoke-static {p1, v0}, Lorg/mapsforge/map/reader/header/OptionalFields;->readOptionalFields(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V

    .line 106
    invoke-static {p1, v0}, Lorg/mapsforge/map/reader/header/RequiredFields;->readPoiTags(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V

    .line 108
    invoke-static {p1, v0}, Lorg/mapsforge/map/reader/header/RequiredFields;->readWayTags(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V

    .line 110
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mapsforge/map/reader/header/MapFileHeader;->readSubFileParameters(Lorg/mapsforge/map/reader/ReadBuffer;JLorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V

    .line 112
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->build()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/reader/header/MapFileHeader;->mapFileInfo:Lorg/mapsforge/map/reader/header/MapFileInfo;

    .line 113
    return-void
.end method
