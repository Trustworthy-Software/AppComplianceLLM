.class public Lorg/mapsforge/map/reader/MapFile;
.super Lorg/mapsforge/map/datastore/MapDataStore;
.source "MapFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/reader/MapFile$Selector;
    }
.end annotation


# static fields
.field private static final BITMASK_INDEX_OFFSET:J = 0x7fffffffffL

.field private static final BITMASK_INDEX_WATER:J = 0x8000000000L

.field private static final DEFAULT_START_ZOOM_LEVEL:B = 0xct

.field private static final INDEX_CACHE_SIZE:I = 0x40

.field private static final INVALID_FIRST_WAY_OFFSET:Ljava/lang/String; = "invalid first way offset: "

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final POI_FEATURE_ELEVATION:I = 0x20

.field private static final POI_FEATURE_HOUSE_NUMBER:I = 0x40

.field private static final POI_FEATURE_NAME:I = 0x80

.field private static final POI_LAYER_BITMASK:I = 0xf0

.field private static final POI_LAYER_SHIFT:I = 0x4

.field private static final POI_NUMBER_OF_TAGS_BITMASK:I = 0xf

.field private static final SIGNATURE_LENGTH_BLOCK:B = 0x20t

.field private static final SIGNATURE_LENGTH_POI:B = 0x20t

.field private static final SIGNATURE_LENGTH_WAY:B = 0x20t

.field private static final TAG_KEY_ELE:Ljava/lang/String; = "ele"

.field private static final TAG_KEY_HOUSE_NUMBER:Ljava/lang/String; = "addr:housenumber"

.field private static final TAG_KEY_NAME:Ljava/lang/String; = "name"

.field private static final TAG_KEY_REF:Ljava/lang/String; = "ref"

.field public static final TEST_MAP_FILE:Lorg/mapsforge/map/reader/MapFile;

.field private static final WAY_FEATURE_DATA_BLOCKS_BYTE:I = 0x8

.field private static final WAY_FEATURE_DOUBLE_DELTA_ENCODING:I = 0x4

.field private static final WAY_FEATURE_HOUSE_NUMBER:I = 0x40

.field private static final WAY_FEATURE_LABEL_POSITION:I = 0x10

.field private static final WAY_FEATURE_NAME:I = 0x80

.field private static final WAY_FEATURE_REF:I = 0x20

.field private static final WAY_LAYER_BITMASK:I = 0xf0

.field private static final WAY_LAYER_SHIFT:I = 0x4

.field private static final WAY_NUMBER_OF_TAGS_BITMASK:I = 0xf

.field public static wayFilterDistance:I

.field public static wayFilterEnabled:Z


# instance fields
.field private final databaseIndexCache:Lorg/mapsforge/map/reader/IndexCache;

.field private final fileSize:J

.field private final inputChannel:Ljava/nio/channels/FileChannel;

.field private final mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

.field private final timestamp:J

.field private zoomLevelMax:B

.field private zoomLevelMin:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lorg/mapsforge/map/reader/MapFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    .line 61
    new-instance v0, Lorg/mapsforge/map/reader/MapFile;

    invoke-direct {v0}, Lorg/mapsforge/map/reader/MapFile;-><init>()V

    sput-object v0, Lorg/mapsforge/map/reader/MapFile;->TEST_MAP_FILE:Lorg/mapsforge/map/reader/MapFile;

    .line 179
    const/4 v0, 0x1

    sput-boolean v0, Lorg/mapsforge/map/reader/MapFile;->wayFilterEnabled:Z

    .line 180
    const/16 v0, 0x14

    sput v0, Lorg/mapsforge/map/reader/MapFile;->wayFilterDistance:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 191
    invoke-direct {p0}, Lorg/mapsforge/map/datastore/MapDataStore;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/mapsforge/map/reader/MapFile;->zoomLevelMin:B

    .line 189
    const/16 v0, 0x7f

    iput-byte v0, p0, Lorg/mapsforge/map/reader/MapFile;->zoomLevelMax:B

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/map/reader/MapFile;->databaseIndexCache:Lorg/mapsforge/map/reader/IndexCache;

    .line 194
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/mapsforge/map/reader/MapFile;->fileSize:J

    .line 195
    iput-object v0, p0, Lorg/mapsforge/map/reader/MapFile;->inputChannel:Ljava/nio/channels/FileChannel;

    .line 196
    iput-object v0, p0, Lorg/mapsforge/map/reader/MapFile;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/MapFile;->timestamp:J

    .line 198
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "mapFile"    # Ljava/io/File;

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mapsforge/map/reader/MapFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "mapFile"    # Ljava/io/File;
    .param p2, "language"    # Ljava/lang/String;

    .line 218
    invoke-direct {p0, p2}, Lorg/mapsforge/map/datastore/MapDataStore;-><init>(Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/mapsforge/map/reader/MapFile;->zoomLevelMin:B

    .line 189
    const/16 v0, 0x7f

    iput-byte v0, p0, Lorg/mapsforge/map/reader/MapFile;->zoomLevelMax:B

    .line 219
    if-eqz p1, :cond_3

    .line 224
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 235
    .local v0, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/reader/MapFile;->inputChannel:Ljava/nio/channels/FileChannel;

    .line 236
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mapsforge/map/reader/MapFile;->fileSize:J

    .line 238
    new-instance v4, Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-direct {v4, v1}, Lorg/mapsforge/map/reader/ReadBuffer;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 239
    .local v4, "readBuffer":Lorg/mapsforge/map/reader/ReadBuffer;
    new-instance v5, Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-direct {v5}, Lorg/mapsforge/map/reader/header/MapFileHeader;-><init>()V

    iput-object v5, p0, Lorg/mapsforge/map/reader/MapFile;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    .line 240
    invoke-virtual {v5, v4, v2, v3}, Lorg/mapsforge/map/reader/header/MapFileHeader;->readHeader(Lorg/mapsforge/map/reader/ReadBuffer;J)V

    .line 241
    new-instance v2, Lorg/mapsforge/map/reader/IndexCache;

    const/16 v3, 0x40

    invoke-direct {v2, v1, v3}, Lorg/mapsforge/map/reader/IndexCache;-><init>(Ljava/nio/channels/FileChannel;I)V

    iput-object v2, p0, Lorg/mapsforge/map/reader/MapFile;->databaseIndexCache:Lorg/mapsforge/map/reader/IndexCache;

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/mapsforge/map/reader/MapFile;->timestamp:J

    .line 248
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "readBuffer":Lorg/mapsforge/map/reader/ReadBuffer;
    nop

    .line 249
    return-void

    .line 229
    :cond_0
    new-instance v0, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot read file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    .end local p1    # "mapFile":Ljava/io/File;
    .end local p2    # "language":Ljava/lang/String;
    throw v0

    .line 227
    .restart local p1    # "mapFile":Ljava/io/File;
    .restart local p2    # "language":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    .end local p1    # "mapFile":Ljava/io/File;
    .end local p2    # "language":Ljava/lang/String;
    throw v0

    .line 225
    .restart local p1    # "mapFile":Ljava/io/File;
    .restart local p2    # "language":Ljava/lang/String;
    :cond_2
    new-instance v0, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    .end local p1    # "mapFile":Ljava/io/File;
    .end local p2    # "language":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .restart local p1    # "mapFile":Ljava/io/File;
    .restart local p2    # "language":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lorg/mapsforge/map/reader/MapFile;->closeFileChannel()V

    .line 247
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v0, Lorg/mapsforge/map/reader/header/MapFileException;

    const-string v1, "mapFile must not be null"

    invoke-direct {v0, v1}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mapPath"    # Ljava/lang/String;

    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mapsforge/map/reader/MapFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mapPath"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;

    .line 299
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/mapsforge/map/reader/MapFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;JLjava/lang/String;)V
    .locals 4
    .param p1, "mapFileChannel"    # Ljava/nio/channels/FileChannel;
    .param p2, "lastModified"    # J
    .param p4, "language"    # Ljava/lang/String;

    .line 259
    invoke-direct {p0, p4}, Lorg/mapsforge/map/datastore/MapDataStore;-><init>(Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/mapsforge/map/reader/MapFile;->zoomLevelMin:B

    .line 189
    const/16 v0, 0x7f

    iput-byte v0, p0, Lorg/mapsforge/map/reader/MapFile;->zoomLevelMax:B

    .line 260
    if-eqz p1, :cond_0

    .line 264
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/reader/MapFile;->inputChannel:Ljava/nio/channels/FileChannel;

    .line 265
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/MapFile;->fileSize:J

    .line 267
    new-instance v2, Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-direct {v2, p1}, Lorg/mapsforge/map/reader/ReadBuffer;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 268
    .local v2, "readBuffer":Lorg/mapsforge/map/reader/ReadBuffer;
    new-instance v3, Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-direct {v3}, Lorg/mapsforge/map/reader/header/MapFileHeader;-><init>()V

    iput-object v3, p0, Lorg/mapsforge/map/reader/MapFile;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    .line 269
    invoke-virtual {v3, v2, v0, v1}, Lorg/mapsforge/map/reader/header/MapFileHeader;->readHeader(Lorg/mapsforge/map/reader/ReadBuffer;J)V

    .line 270
    new-instance v0, Lorg/mapsforge/map/reader/IndexCache;

    const/16 v1, 0x40

    invoke-direct {v0, p1, v1}, Lorg/mapsforge/map/reader/IndexCache;-><init>(Ljava/nio/channels/FileChannel;I)V

    iput-object v0, p0, Lorg/mapsforge/map/reader/MapFile;->databaseIndexCache:Lorg/mapsforge/map/reader/IndexCache;

    .line 272
    iput-wide p2, p0, Lorg/mapsforge/map/reader/MapFile;->timestamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v2    # "readBuffer":Lorg/mapsforge/map/reader/ReadBuffer;
    nop

    .line 278
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lorg/mapsforge/map/reader/MapFile;->closeFileChannel()V

    .line 276
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Lorg/mapsforge/map/reader/header/MapFileException;

    const-string v1, "mapFileChannel must not be null"

    invoke-direct {v0, v1}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private closeFileChannel()V
    .locals 4

    .line 318
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/reader/MapFile;->databaseIndexCache:Lorg/mapsforge/map/reader/IndexCache;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/IndexCache;->destroy()V

    .line 321
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/reader/MapFile;->inputChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_1
    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private decodeWayNodesDoubleDelta([Lorg/mapsforge/core/model/LatLong;DDLorg/mapsforge/map/reader/ReadBuffer;)V
    .locals 23
    .param p1, "waySegment"    # [Lorg/mapsforge/core/model/LatLong;
    .param p2, "tileLatitude"    # D
    .param p4, "tileLongitude"    # D
    .param p6, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;

    .line 331
    move-object/from16 v0, p1

    .line 332
    invoke-virtual/range {p6 .. p6}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v1

    invoke-static {v1}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v1

    add-double v1, p2, v1

    .line 335
    .local v1, "wayNodeLatitude":D
    nop

    .line 336
    invoke-virtual/range {p6 .. p6}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v3

    invoke-static {v3}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v3

    add-double v3, p4, v3

    .line 339
    .local v3, "wayNodeLongitude":D
    new-instance v5, Lorg/mapsforge/core/model/LatLong;

    invoke-direct {v5, v1, v2, v3, v4}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    const/4 v6, 0x0

    aput-object v5, v0, v6

    .line 341
    const-wide/16 v5, 0x0

    .line 342
    .local v5, "previousSingleDeltaLatitude":D
    const-wide/16 v7, 0x0

    .line 344
    .local v7, "previousSingleDeltaLongitude":D
    const/4 v9, 0x1

    .local v9, "wayNodesIndex":I
    :goto_0
    array-length v10, v0

    if-ge v9, v10, :cond_2

    .line 346
    invoke-virtual/range {p6 .. p6}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v10

    invoke-static {v10}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v10

    .line 349
    .local v10, "doubleDeltaLatitude":D
    invoke-virtual/range {p6 .. p6}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v12

    invoke-static {v12}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v12

    .line 351
    .local v12, "doubleDeltaLongitude":D
    add-double v14, v10, v5

    .line 352
    .local v14, "singleDeltaLatitude":D
    add-double v16, v12, v7

    .line 354
    .local v16, "singleDeltaLongitude":D
    add-double/2addr v1, v14

    .line 355
    add-double v3, v3, v16

    .line 358
    const-wide v18, -0x3f99800000000000L    # -180.0

    cmpg-double v20, v3, v18

    const-wide v21, 0x3f50624dd2f1a9fcL    # 0.001

    if-gez v20, :cond_0

    sub-double v18, v18, v3

    cmpg-double v18, v18, v21

    if-gez v18, :cond_0

    .line 360
    const-wide v3, -0x3f99800000000000L    # -180.0

    goto :goto_1

    .line 361
    :cond_0
    const-wide v18, 0x4066800000000000L    # 180.0

    cmpl-double v20, v3, v18

    if-lez v20, :cond_1

    sub-double v18, v3, v18

    cmpg-double v18, v18, v21

    if-gez v18, :cond_1

    .line 363
    const-wide v3, 0x4066800000000000L    # 180.0

    .line 366
    :cond_1
    :goto_1
    move-wide/from16 v18, v5

    .end local v5    # "previousSingleDeltaLatitude":D
    .local v18, "previousSingleDeltaLatitude":D
    new-instance v5, Lorg/mapsforge/core/model/LatLong;

    invoke-direct {v5, v1, v2, v3, v4}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    aput-object v5, v0, v9

    .line 368
    move-wide v5, v14

    .line 369
    .end local v18    # "previousSingleDeltaLatitude":D
    .restart local v5    # "previousSingleDeltaLatitude":D
    move-wide/from16 v7, v16

    .line 344
    .end local v10    # "doubleDeltaLatitude":D
    .end local v12    # "doubleDeltaLongitude":D
    .end local v14    # "singleDeltaLatitude":D
    .end local v16    # "singleDeltaLongitude":D
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 371
    .end local v9    # "wayNodesIndex":I
    :cond_2
    return-void
.end method

.method private decodeWayNodesSingleDelta([Lorg/mapsforge/core/model/LatLong;DDLorg/mapsforge/map/reader/ReadBuffer;)V
    .locals 11
    .param p1, "waySegment"    # [Lorg/mapsforge/core/model/LatLong;
    .param p2, "tileLatitude"    # D
    .param p4, "tileLongitude"    # D
    .param p6, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;

    .line 375
    move-object v0, p1

    .line 376
    invoke-virtual/range {p6 .. p6}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v1

    invoke-static {v1}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v1

    add-double/2addr v1, p2

    .line 379
    .local v1, "wayNodeLatitude":D
    nop

    .line 380
    invoke-virtual/range {p6 .. p6}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v3

    invoke-static {v3}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v3

    add-double/2addr v3, p4

    .line 383
    .local v3, "wayNodeLongitude":D
    new-instance v5, Lorg/mapsforge/core/model/LatLong;

    invoke-direct {v5, v1, v2, v3, v4}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    const/4 v6, 0x0

    aput-object v5, v0, v6

    .line 385
    const/4 v5, 0x1

    .local v5, "wayNodesIndex":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_2

    .line 387
    invoke-virtual/range {p6 .. p6}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v6

    invoke-static {v6}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v6

    add-double/2addr v1, v6

    .line 390
    invoke-virtual/range {p6 .. p6}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v6

    invoke-static {v6}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v6

    add-double/2addr v3, v6

    .line 393
    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v8, v3, v6

    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    if-gez v8, :cond_0

    sub-double/2addr v6, v3

    cmpg-double v6, v6, v9

    if-gez v6, :cond_0

    .line 395
    const-wide v3, -0x3f99800000000000L    # -180.0

    goto :goto_1

    .line 396
    :cond_0
    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v8, v3, v6

    if-lez v8, :cond_1

    sub-double v6, v3, v6

    cmpg-double v6, v6, v9

    if-gez v6, :cond_1

    .line 398
    const-wide v3, 0x4066800000000000L    # 180.0

    .line 401
    :cond_1
    :goto_1
    new-instance v6, Lorg/mapsforge/core/model/LatLong;

    invoke-direct {v6, v1, v2, v3, v4}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    aput-object v6, v0, v5

    .line 385
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 403
    .end local v5    # "wayNodesIndex":I
    :cond_2
    return-void
.end method

.method private processBlock(Lorg/mapsforge/map/reader/QueryParameters;Lorg/mapsforge/map/reader/header/SubFileParameter;Lorg/mapsforge/core/model/BoundingBox;DDLorg/mapsforge/map/reader/MapFile$Selector;Lorg/mapsforge/map/reader/ReadBuffer;)Lorg/mapsforge/map/datastore/PoiWayBundle;
    .locals 24
    .param p1, "queryParameters"    # Lorg/mapsforge/map/reader/QueryParameters;
    .param p2, "subFileParameter"    # Lorg/mapsforge/map/reader/header/SubFileParameter;
    .param p3, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p4, "tileLatitude"    # D
    .param p6, "tileLongitude"    # D
    .param p8, "selector"    # Lorg/mapsforge/map/reader/MapFile$Selector;
    .param p9, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;

    .line 444
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v12, p9

    invoke-direct {v15, v12}, Lorg/mapsforge/map/reader/MapFile;->processBlockSignature(Lorg/mapsforge/map/reader/ReadBuffer;)Z

    move-result v0

    const/16 v19, 0x0

    if-nez v0, :cond_0

    .line 445
    return-object v19

    .line 448
    :cond_0
    invoke-direct {v15, v14, v12}, Lorg/mapsforge/map/reader/MapFile;->readZoomTable(Lorg/mapsforge/map/reader/header/SubFileParameter;Lorg/mapsforge/map/reader/ReadBuffer;)[[I

    move-result-object v20

    .line 449
    .local v20, "zoomTable":[[I
    iget v0, v13, Lorg/mapsforge/map/reader/QueryParameters;->queryZoomLevel:I

    iget-byte v1, v14, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMin:B

    sub-int v21, v0, v1

    .line 450
    .local v21, "zoomTableRow":I
    aget-object v0, v20, v21

    const/4 v1, 0x0

    aget v22, v0, v1

    .line 451
    .local v22, "poisOnQueryZoomLevel":I
    aget-object v0, v20, v21

    const/4 v2, 0x1

    aget v23, v0, v2

    .line 454
    .local v23, "waysOnQueryZoomLevel":I
    invoke-virtual/range {p9 .. p9}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v0

    .line 455
    .local v0, "firstWayOffset":I
    const-string v3, "invalid first way offset: "

    if-gez v0, :cond_1

    .line 456
    sget-object v1, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 457
    return-object v19

    .line 461
    :cond_1
    invoke-virtual/range {p9 .. p9}, Lorg/mapsforge/map/reader/ReadBuffer;->getBufferPosition()I

    move-result v4

    add-int v11, v0, v4

    .line 462
    .end local v0    # "firstWayOffset":I
    .local v11, "firstWayOffset":I
    invoke-virtual/range {p9 .. p9}, Lorg/mapsforge/map/reader/ReadBuffer;->getBufferSize()I

    move-result v0

    if-le v11, v0, :cond_2

    .line 463
    sget-object v0, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 464
    return-object v19

    .line 467
    :cond_2
    iget v0, v13, Lorg/mapsforge/map/reader/QueryParameters;->queryZoomLevel:I

    iget-byte v3, v14, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    if-le v0, v3, :cond_3

    move v7, v2

    goto :goto_0

    :cond_3
    move v7, v1

    .line 469
    .local v7, "filterRequired":Z
    :goto_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-wide/from16 v3, p6

    move/from16 v5, v22

    move-object/from16 v6, p3

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/mapsforge/map/reader/MapFile;->processPOIs(DDILorg/mapsforge/core/model/BoundingBox;ZLorg/mapsforge/map/reader/ReadBuffer;)Ljava/util/List;

    move-result-object v0

    .line 470
    .local v0, "pois":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/datastore/PointOfInterest;>;"
    if-nez v0, :cond_4

    .line 471
    return-object v19

    .line 475
    :cond_4
    sget-object v1, Lorg/mapsforge/map/reader/MapFile$Selector;->POIS:Lorg/mapsforge/map/reader/MapFile$Selector;

    move-object/from16 v2, p8

    if-ne v1, v2, :cond_5

    .line 476
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    move v1, v11

    .local v1, "ways":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/datastore/Way;>;"
    goto :goto_1

    .line 479
    .end local v1    # "ways":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/datastore/Way;>;"
    :cond_5
    invoke-virtual/range {p9 .. p9}, Lorg/mapsforge/map/reader/ReadBuffer;->getBufferPosition()I

    move-result v1

    if-le v1, v11, :cond_6

    .line 480
    sget-object v1, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid buffer position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p9 .. p9}, Lorg/mapsforge/map/reader/ReadBuffer;->getBufferPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 481
    return-object v19

    .line 485
    :cond_6
    invoke-virtual {v12, v11}, Lorg/mapsforge/map/reader/ReadBuffer;->setBufferPosition(I)V

    .line 487
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, v23

    move v1, v11

    .end local v11    # "firstWayOffset":I
    .local v1, "firstWayOffset":I
    move-object/from16 v11, p3

    move v12, v7

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    invoke-direct/range {v8 .. v18}, Lorg/mapsforge/map/reader/MapFile;->processWays(Lorg/mapsforge/map/reader/QueryParameters;ILorg/mapsforge/core/model/BoundingBox;ZDDLorg/mapsforge/map/reader/MapFile$Selector;Lorg/mapsforge/map/reader/ReadBuffer;)Ljava/util/List;

    move-result-object v3

    .line 489
    .local v3, "ways":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/datastore/Way;>;"
    if-nez v3, :cond_7

    .line 490
    return-object v19

    .line 494
    :cond_7
    :goto_1
    new-instance v4, Lorg/mapsforge/map/datastore/PoiWayBundle;

    invoke-direct {v4, v0, v3}, Lorg/mapsforge/map/datastore/PoiWayBundle;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v4
.end method

.method private processBlockSignature(Lorg/mapsforge/map/reader/ReadBuffer;)Z
    .locals 4
    .param p1, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;

    .line 503
    iget-object v0, p0, Lorg/mapsforge/map/reader/MapFile;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    iget-boolean v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->debugFile:Z

    if-eqz v0, :cond_0

    .line 505
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString(I)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "signatureBlock":Ljava/lang/String;
    const-string v1, "###TileStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    sget-object v1, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid block signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 508
    const/4 v1, 0x0

    return v1

    .line 511
    .end local v0    # "signatureBlock":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private processBlocks(Lorg/mapsforge/map/reader/QueryParameters;Lorg/mapsforge/map/reader/header/SubFileParameter;Lorg/mapsforge/core/model/BoundingBox;Lorg/mapsforge/map/reader/MapFile$Selector;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 35
    .param p1, "queryParameters"    # Lorg/mapsforge/map/reader/QueryParameters;
    .param p2, "subFileParameter"    # Lorg/mapsforge/map/reader/header/SubFileParameter;
    .param p3, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p4, "selector"    # Lorg/mapsforge/map/reader/MapFile$Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    const/4 v0, 0x1

    .line 517
    .local v0, "queryIsWater":Z
    const/4 v1, 0x0

    .line 519
    .local v1, "queryReadWaterInfo":Z
    new-instance v2, Lorg/mapsforge/map/datastore/MapReadResult;

    invoke-direct {v2}, Lorg/mapsforge/map/datastore/MapReadResult;-><init>()V

    move-object v14, v2

    .line 522
    .local v14, "mapFileReadResult":Lorg/mapsforge/map/datastore/MapReadResult;
    iget-wide v2, v12, Lorg/mapsforge/map/reader/QueryParameters;->fromBlockY:J

    move-wide v15, v2

    .local v15, "row":J
    :goto_0
    iget-wide v2, v12, Lorg/mapsforge/map/reader/QueryParameters;->toBlockY:J

    cmp-long v2, v15, v2

    if-gtz v2, :cond_d

    .line 523
    iget-wide v2, v12, Lorg/mapsforge/map/reader/QueryParameters;->fromBlockX:J

    move-wide/from16 v17, v2

    .local v17, "column":J
    :goto_1
    iget-wide v2, v12, Lorg/mapsforge/map/reader/QueryParameters;->toBlockX:J

    cmp-long v2, v17, v2

    const-wide/16 v19, 0x1

    if-gtz v2, :cond_c

    .line 525
    iget-wide v2, v13, Lorg/mapsforge/map/reader/header/SubFileParameter;->blocksWidth:J

    mul-long/2addr v2, v15

    add-long v9, v2, v17

    .line 528
    .local v9, "blockNumber":J
    iget-object v2, v11, Lorg/mapsforge/map/reader/MapFile;->databaseIndexCache:Lorg/mapsforge/map/reader/IndexCache;

    invoke-virtual {v2, v13, v9, v10}, Lorg/mapsforge/map/reader/IndexCache;->getIndexEntry(Lorg/mapsforge/map/reader/header/SubFileParameter;J)J

    move-result-wide v21

    .line 531
    .local v21, "currentBlockIndexEntry":J
    if-eqz v0, :cond_1

    .line 533
    const-wide v2, 0x8000000000L

    and-long v2, v21, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_2
    and-int/2addr v0, v2

    .line 534
    const/4 v1, 0x1

    move/from16 v23, v0

    move/from16 v24, v1

    goto :goto_3

    .line 531
    :cond_1
    move/from16 v23, v0

    move/from16 v24, v1

    .line 538
    .end local v0    # "queryIsWater":Z
    .end local v1    # "queryReadWaterInfo":Z
    .local v23, "queryIsWater":Z
    .local v24, "queryReadWaterInfo":Z
    :goto_3
    const-wide v0, 0x7fffffffffL

    and-long v7, v21, v0

    .line 539
    .local v7, "currentBlockPointer":J
    cmp-long v2, v7, v19

    const/4 v3, 0x0

    if-ltz v2, :cond_b

    iget-wide v4, v13, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    cmp-long v2, v7, v4

    if-lez v2, :cond_2

    move-wide v11, v7

    move-wide/from16 v33, v9

    goto/16 :goto_6

    .line 547
    :cond_2
    add-long v4, v9, v19

    iget-wide v0, v13, Lorg/mapsforge/map/reader/header/SubFileParameter;->numberOfBlocks:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_3

    .line 549
    iget-wide v0, v13, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    move-wide/from16 v25, v0

    .local v0, "nextBlockPointer":J
    goto :goto_4

    .line 552
    .end local v0    # "nextBlockPointer":J
    :cond_3
    iget-object v0, v11, Lorg/mapsforge/map/reader/MapFile;->databaseIndexCache:Lorg/mapsforge/map/reader/IndexCache;

    add-long v1, v9, v19

    invoke-virtual {v0, v13, v1, v2}, Lorg/mapsforge/map/reader/IndexCache;->getIndexEntry(Lorg/mapsforge/map/reader/header/SubFileParameter;J)J

    move-result-wide v0

    const-wide v4, 0x7fffffffffL

    and-long/2addr v0, v4

    .line 554
    .restart local v0    # "nextBlockPointer":J
    iget-wide v4, v13, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_4

    .line 555
    sget-object v2, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid next block pointer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sub-file size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v13, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 557
    return-object v3

    .line 554
    :cond_4
    move-wide/from16 v25, v0

    .line 562
    .end local v0    # "nextBlockPointer":J
    .local v25, "nextBlockPointer":J
    :goto_4
    sub-long v0, v25, v7

    long-to-int v5, v0

    .line 563
    .local v5, "currentBlockSize":I
    if-gez v5, :cond_5

    .line 564
    sget-object v0, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current block size must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 565
    return-object v3

    .line 566
    :cond_5
    if-nez v5, :cond_6

    .line 568
    goto/16 :goto_5

    .line 569
    :cond_6
    sget v0, Lorg/mapsforge/core/util/Parameters;->MAXIMUM_BUFFER_SIZE:I

    if-le v5, v0, :cond_7

    .line 571
    sget-object v0, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current block size too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 572
    goto/16 :goto_5

    .line 573
    :cond_7
    int-to-long v0, v5

    add-long/2addr v0, v7

    iget-wide v3, v11, Lorg/mapsforge/map/reader/MapFile;->fileSize:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_8

    .line 574
    sget-object v0, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current block largher than file size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 575
    const/4 v0, 0x0

    return-object v0

    .line 580
    :cond_8
    new-instance v0, Lorg/mapsforge/map/reader/ReadBuffer;

    iget-object v1, v11, Lorg/mapsforge/map/reader/MapFile;->inputChannel:Ljava/nio/channels/FileChannel;

    invoke-direct {v0, v1}, Lorg/mapsforge/map/reader/ReadBuffer;-><init>(Ljava/nio/channels/FileChannel;)V

    move-object v6, v0

    .line 581
    .local v6, "readBuffer":Lorg/mapsforge/map/reader/ReadBuffer;
    iget-wide v0, v13, Lorg/mapsforge/map/reader/header/SubFileParameter;->startAddress:J

    add-long/2addr v0, v7

    invoke-virtual {v6, v0, v1, v5}, Lorg/mapsforge/map/reader/ReadBuffer;->readFromFile(JI)Z

    move-result v0

    if-nez v0, :cond_9

    .line 583
    sget-object v0, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reading current block has failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 584
    const/4 v0, 0x0

    return-object v0

    .line 588
    :cond_9
    iget-wide v0, v13, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileTop:J

    add-long/2addr v0, v15

    iget-byte v2, v13, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    invoke-static {v0, v1, v2}, Lorg/mapsforge/core/util/MercatorProjection;->tileYToLatitude(JB)D

    move-result-wide v27

    .line 590
    .local v27, "tileLatitude":D
    iget-wide v0, v13, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileLeft:J

    add-long v0, v0, v17

    iget-byte v2, v13, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    invoke-static {v0, v1, v2}, Lorg/mapsforge/core/util/MercatorProjection;->tileXToLongitude(JB)D

    move-result-wide v29

    .line 594
    .local v29, "tileLongitude":D
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v31, v5

    move-object/from16 v32, v6

    .end local v5    # "currentBlockSize":I
    .end local v6    # "readBuffer":Lorg/mapsforge/map/reader/ReadBuffer;
    .local v31, "currentBlockSize":I
    .local v32, "readBuffer":Lorg/mapsforge/map/reader/ReadBuffer;
    move-wide/from16 v5, v27

    move-wide v11, v7

    .end local v7    # "currentBlockPointer":J
    .local v11, "currentBlockPointer":J
    move-wide/from16 v7, v29

    move-wide/from16 v33, v9

    .end local v9    # "blockNumber":J
    .local v33, "blockNumber":J
    move-object/from16 v9, p4

    move-object/from16 v10, v32

    :try_start_0
    invoke-direct/range {v1 .. v10}, Lorg/mapsforge/map/reader/MapFile;->processBlock(Lorg/mapsforge/map/reader/QueryParameters;Lorg/mapsforge/map/reader/header/SubFileParameter;Lorg/mapsforge/core/model/BoundingBox;DDLorg/mapsforge/map/reader/MapFile$Selector;Lorg/mapsforge/map/reader/ReadBuffer;)Lorg/mapsforge/map/datastore/PoiWayBundle;

    move-result-object v0

    .line 596
    .local v0, "poiWayBundle":Lorg/mapsforge/map/datastore/PoiWayBundle;
    if-eqz v0, :cond_a

    .line 597
    invoke-virtual {v14, v0}, Lorg/mapsforge/map/datastore/MapReadResult;->add(Lorg/mapsforge/map/datastore/PoiWayBundle;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .end local v0    # "poiWayBundle":Lorg/mapsforge/map/datastore/PoiWayBundle;
    :cond_a
    goto :goto_5

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v1, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v11    # "currentBlockPointer":J
    .end local v21    # "currentBlockIndexEntry":J
    .end local v25    # "nextBlockPointer":J
    .end local v27    # "tileLatitude":D
    .end local v29    # "tileLongitude":D
    .end local v31    # "currentBlockSize":I
    .end local v32    # "readBuffer":Lorg/mapsforge/map/reader/ReadBuffer;
    .end local v33    # "blockNumber":J
    :goto_5
    add-long v17, v17, v19

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v0, v23

    move/from16 v1, v24

    goto/16 :goto_1

    .line 539
    .restart local v7    # "currentBlockPointer":J
    .restart local v9    # "blockNumber":J
    .restart local v21    # "currentBlockIndexEntry":J
    :cond_b
    move-wide v11, v7

    move-wide/from16 v33, v9

    .line 540
    .end local v7    # "currentBlockPointer":J
    .end local v9    # "blockNumber":J
    .restart local v11    # "currentBlockPointer":J
    .restart local v33    # "blockNumber":J
    :goto_6
    sget-object v0, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid current block pointer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subFileSize: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v13, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 542
    const/4 v0, 0x0

    return-object v0

    .line 522
    .end local v11    # "currentBlockPointer":J
    .end local v17    # "column":J
    .end local v21    # "currentBlockIndexEntry":J
    .end local v23    # "queryIsWater":Z
    .end local v24    # "queryReadWaterInfo":Z
    .end local v33    # "blockNumber":J
    .local v0, "queryIsWater":Z
    .restart local v1    # "queryReadWaterInfo":Z
    :cond_c
    add-long v15, v15, v19

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    goto/16 :goto_0

    .line 606
    .end local v15    # "row":J
    :cond_d
    nop

    .line 611
    return-object v14
.end method

.method private processPOIs(DDILorg/mapsforge/core/model/BoundingBox;ZLorg/mapsforge/map/reader/ReadBuffer;)Ljava/util/List;
    .locals 19
    .param p1, "tileLatitude"    # D
    .param p3, "tileLongitude"    # D
    .param p5, "numberOfPois"    # I
    .param p6, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p7, "filterRequired"    # Z
    .param p8, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Lorg/mapsforge/core/model/BoundingBox;",
            "Z",
            "Lorg/mapsforge/map/reader/ReadBuffer;",
            ")",
            "Ljava/util/List<",
            "Lorg/mapsforge/map/datastore/PointOfInterest;",
            ">;"
        }
    .end annotation

    .line 615
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v2, "pois":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/datastore/PointOfInterest;>;"
    iget-object v3, v0, Lorg/mapsforge/map/reader/MapFile;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-virtual {v3}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v3

    iget-object v3, v3, Lorg/mapsforge/map/reader/header/MapFileInfo;->poiTags:[Lorg/mapsforge/core/model/Tag;

    .line 618
    .local v3, "poiTags":[Lorg/mapsforge/core/model/Tag;
    move/from16 v4, p5

    .local v4, "elementCounter":I
    :goto_0
    if-eqz v4, :cond_a

    .line 619
    iget-object v5, v0, Lorg/mapsforge/map/reader/MapFile;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-virtual {v5}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v5

    iget-boolean v5, v5, Lorg/mapsforge/map/reader/header/MapFileInfo;->debugFile:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 621
    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString(I)Ljava/lang/String;

    move-result-object v5

    .line 622
    .local v5, "signaturePoi":Ljava/lang/String;
    const-string v7, "***POIStart"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 623
    sget-object v7, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid POI signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 624
    return-object v6

    .line 629
    .end local v5    # "signaturePoi":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p8 .. p8}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v5

    invoke-static {v5}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v7

    add-double v7, p1, v7

    .line 632
    .local v7, "latitude":D
    invoke-virtual/range {p8 .. p8}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v5

    invoke-static {v5}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v9

    add-double v9, p3, v9

    .line 635
    .local v9, "longitude":D
    invoke-virtual/range {p8 .. p8}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v5

    .line 638
    .local v5, "specialByte":B
    and-int/lit16 v11, v5, 0xf0

    ushr-int/lit8 v11, v11, 0x4

    int-to-byte v11, v11

    .line 640
    .local v11, "layer":B
    and-int/lit8 v12, v5, 0xf

    int-to-byte v12, v12

    .line 643
    .local v12, "numberOfTags":B
    invoke-virtual {v1, v3, v12}, Lorg/mapsforge/map/reader/ReadBuffer;->readTags([Lorg/mapsforge/core/model/Tag;B)Ljava/util/List;

    move-result-object v13

    .line 644
    .local v13, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    if-nez v13, :cond_1

    .line 645
    return-object v6

    .line 649
    :cond_1
    invoke-virtual/range {p8 .. p8}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v6

    .line 652
    .local v6, "featureByte":B
    and-int/lit16 v14, v6, 0x80

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v14, :cond_2

    move v14, v15

    goto :goto_1

    :cond_2
    move/from16 v14, v16

    .line 653
    .local v14, "featureName":Z
    :goto_1
    and-int/lit8 v17, v6, 0x40

    if-eqz v17, :cond_3

    move/from16 v17, v15

    goto :goto_2

    :cond_3
    move/from16 v17, v16

    .line 654
    .local v17, "featureHouseNumber":Z
    :goto_2
    and-int/lit8 v18, v6, 0x20

    if-eqz v18, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v15, v16

    .line 657
    .local v15, "featureElevation":Z
    :goto_3
    if-eqz v14, :cond_5

    .line 658
    new-instance v1, Lorg/mapsforge/core/model/Tag;

    move-object/from16 v16, v3

    .end local v3    # "poiTags":[Lorg/mapsforge/core/model/Tag;
    .local v16, "poiTags":[Lorg/mapsforge/core/model/Tag;
    invoke-virtual/range {p8 .. p8}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mapsforge/map/reader/MapFile;->extractLocalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "name"

    invoke-direct {v1, v0, v3}, Lorg/mapsforge/core/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 657
    .end local v16    # "poiTags":[Lorg/mapsforge/core/model/Tag;
    .restart local v3    # "poiTags":[Lorg/mapsforge/core/model/Tag;
    :cond_5
    move-object/from16 v16, v3

    .line 662
    .end local v3    # "poiTags":[Lorg/mapsforge/core/model/Tag;
    .restart local v16    # "poiTags":[Lorg/mapsforge/core/model/Tag;
    :goto_4
    if-eqz v17, :cond_6

    .line 663
    new-instance v0, Lorg/mapsforge/core/model/Tag;

    const-string v1, "addr:housenumber"

    invoke-virtual/range {p8 .. p8}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/mapsforge/core/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_6
    if-eqz v15, :cond_7

    .line 668
    new-instance v0, Lorg/mapsforge/core/model/Tag;

    invoke-virtual/range {p8 .. p8}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ele"

    invoke-direct {v0, v3, v1}, Lorg/mapsforge/core/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_7
    new-instance v0, Lorg/mapsforge/core/model/LatLong;

    invoke-direct {v0, v7, v8, v9, v10}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    .line 674
    .local v0, "position":Lorg/mapsforge/core/model/LatLong;
    if-eqz p7, :cond_8

    move-object/from16 v1, p6

    invoke-virtual {v1, v0}, Lorg/mapsforge/core/model/BoundingBox;->contains(Lorg/mapsforge/core/model/LatLong;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_8
    move-object/from16 v1, p6

    .line 675
    :goto_5
    new-instance v3, Lorg/mapsforge/map/datastore/PointOfInterest;

    invoke-direct {v3, v11, v13, v0}, Lorg/mapsforge/map/datastore/PointOfInterest;-><init>(BLjava/util/List;Lorg/mapsforge/core/model/LatLong;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    .end local v0    # "position":Lorg/mapsforge/core/model/LatLong;
    .end local v5    # "specialByte":B
    .end local v6    # "featureByte":B
    .end local v7    # "latitude":D
    .end local v9    # "longitude":D
    .end local v11    # "layer":B
    .end local v12    # "numberOfTags":B
    .end local v13    # "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    .end local v14    # "featureName":Z
    .end local v15    # "featureElevation":Z
    .end local v17    # "featureHouseNumber":Z
    :cond_9
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 679
    .end local v4    # "elementCounter":I
    .end local v16    # "poiTags":[Lorg/mapsforge/core/model/Tag;
    .restart local v3    # "poiTags":[Lorg/mapsforge/core/model/Tag;
    :cond_a
    return-object v2
.end method

.method private processWayDataBlock(DDZLorg/mapsforge/map/reader/ReadBuffer;)[[Lorg/mapsforge/core/model/LatLong;
    .locals 14
    .param p1, "tileLatitude"    # D
    .param p3, "tileLongitude"    # D
    .param p5, "doubleDeltaEncoding"    # Z
    .param p6, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;

    .line 684
    invoke-virtual/range {p6 .. p6}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v0

    .line 685
    .local v0, "numberOfWayCoordinateBlocks":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_5

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_0

    goto :goto_3

    .line 691
    :cond_0
    new-array v3, v0, [[Lorg/mapsforge/core/model/LatLong;

    .line 694
    .local v3, "wayCoordinates":[[Lorg/mapsforge/core/model/LatLong;
    const/4 v4, 0x0

    .local v4, "coordinateBlock":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 696
    invoke-virtual/range {p6 .. p6}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v5

    .line 697
    .local v5, "numberOfWayNodes":I
    const/4 v6, 0x2

    if-lt v5, v6, :cond_3

    if-le v5, v1, :cond_1

    goto :goto_2

    .line 706
    :cond_1
    new-array v6, v5, [Lorg/mapsforge/core/model/LatLong;

    .line 708
    .local v6, "waySegment":[Lorg/mapsforge/core/model/LatLong;
    if-eqz p5, :cond_2

    .line 709
    move-object v7, p0

    move-object v8, v6

    move-wide v9, p1

    move-wide/from16 v11, p3

    move-object/from16 v13, p6

    invoke-direct/range {v7 .. v13}, Lorg/mapsforge/map/reader/MapFile;->decodeWayNodesDoubleDelta([Lorg/mapsforge/core/model/LatLong;DDLorg/mapsforge/map/reader/ReadBuffer;)V

    goto :goto_1

    .line 711
    :cond_2
    move-object v7, p0

    move-object v8, v6

    move-wide v9, p1

    move-wide/from16 v11, p3

    move-object/from16 v13, p6

    invoke-direct/range {v7 .. v13}, Lorg/mapsforge/map/reader/MapFile;->decodeWayNodesSingleDelta([Lorg/mapsforge/core/model/LatLong;DDLorg/mapsforge/map/reader/ReadBuffer;)V

    .line 714
    :goto_1
    aput-object v6, v3, v4

    .line 694
    .end local v5    # "numberOfWayNodes":I
    .end local v6    # "waySegment":[Lorg/mapsforge/core/model/LatLong;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 698
    .restart local v5    # "numberOfWayNodes":I
    :cond_3
    :goto_2
    sget-object v1, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid number of way nodes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 702
    move-object v1, v2

    check-cast v1, [[Lorg/mapsforge/core/model/LatLong;

    return-object v2

    .line 717
    .end local v4    # "coordinateBlock":I
    .end local v5    # "numberOfWayNodes":I
    :cond_4
    return-object v3

    .line 686
    .end local v3    # "wayCoordinates":[[Lorg/mapsforge/core/model/LatLong;
    :cond_5
    :goto_3
    sget-object v1, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid number of way coordinate blocks: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 687
    move-object v1, v2

    check-cast v1, [[Lorg/mapsforge/core/model/LatLong;

    return-object v2
.end method

.method private processWays(Lorg/mapsforge/map/reader/QueryParameters;ILorg/mapsforge/core/model/BoundingBox;ZDDLorg/mapsforge/map/reader/MapFile$Selector;Lorg/mapsforge/map/reader/ReadBuffer;)Ljava/util/List;
    .locals 32
    .param p1, "queryParameters"    # Lorg/mapsforge/map/reader/QueryParameters;
    .param p2, "numberOfWays"    # I
    .param p3, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p4, "filterRequired"    # Z
    .param p5, "tileLatitude"    # D
    .param p7, "tileLongitude"    # D
    .param p9, "selector"    # Lorg/mapsforge/map/reader/MapFile$Selector;
    .param p10, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/map/reader/QueryParameters;",
            "I",
            "Lorg/mapsforge/core/model/BoundingBox;",
            "ZDD",
            "Lorg/mapsforge/map/reader/MapFile$Selector;",
            "Lorg/mapsforge/map/reader/ReadBuffer;",
            ")",
            "Ljava/util/List<",
            "Lorg/mapsforge/map/datastore/Way;",
            ">;"
        }
    .end annotation

    .line 723
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 724
    .local v10, "ways":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/datastore/Way;>;"
    iget-object v0, v7, Lorg/mapsforge/map/reader/MapFile;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    iget-object v11, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->wayTags:[Lorg/mapsforge/core/model/Tag;

    .line 726
    .local v11, "wayTags":[Lorg/mapsforge/core/model/Tag;
    sget v0, Lorg/mapsforge/map/reader/MapFile;->wayFilterDistance:I

    move-object/from16 v12, p3

    invoke-virtual {v12, v0}, Lorg/mapsforge/core/model/BoundingBox;->extendMeters(I)Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v13

    .line 728
    .local v13, "wayFilterBbox":Lorg/mapsforge/core/model/BoundingBox;
    move/from16 v0, p2

    move v14, v0

    .local v14, "elementCounter":I
    :goto_0
    if-eqz v14, :cond_16

    .line 729
    iget-object v0, v7, Lorg/mapsforge/map/reader/MapFile;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    iget-boolean v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->debugFile:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 731
    const/16 v0, 0x20

    invoke-virtual {v9, v0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString(I)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "signatureWay":Ljava/lang/String;
    const-string v2, "---WayStart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 733
    sget-object v2, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid way signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 734
    return-object v1

    .line 739
    .end local v0    # "signatureWay":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p10 .. p10}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v15

    .line 740
    .local v15, "wayDataSize":I
    if-gez v15, :cond_1

    .line 741
    sget-object v0, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid way data size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 742
    return-object v1

    .line 745
    :cond_1
    iget-boolean v0, v8, Lorg/mapsforge/map/reader/QueryParameters;->useTileBitmask:Z

    if-eqz v0, :cond_3

    .line 747
    invoke-virtual/range {p10 .. p10}, Lorg/mapsforge/map/reader/ReadBuffer;->readShort()I

    move-result v0

    .line 749
    .local v0, "tileBitmask":I
    iget v2, v8, Lorg/mapsforge/map/reader/QueryParameters;->queryTileBitmask:I

    and-int/2addr v2, v0

    if-nez v2, :cond_2

    .line 751
    add-int/lit8 v1, v15, -0x2

    invoke-virtual {v9, v1}, Lorg/mapsforge/map/reader/ReadBuffer;->skipBytes(I)V

    .line 752
    goto/16 :goto_e

    .line 754
    .end local v0    # "tileBitmask":I
    :cond_2
    goto :goto_1

    .line 756
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Lorg/mapsforge/map/reader/ReadBuffer;->skipBytes(I)V

    .line 760
    :goto_1
    invoke-virtual/range {p10 .. p10}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v6

    .line 763
    .local v6, "specialByte":B
    and-int/lit16 v0, v6, 0xf0

    ushr-int/lit8 v0, v0, 0x4

    int-to-byte v3, v0

    .line 765
    .local v3, "layer":B
    and-int/lit8 v0, v6, 0xf

    int-to-byte v4, v0

    .line 768
    .local v4, "numberOfTags":B
    invoke-virtual {v9, v11, v4}, Lorg/mapsforge/map/reader/ReadBuffer;->readTags([Lorg/mapsforge/core/model/Tag;B)Ljava/util/List;

    move-result-object v2

    .line 769
    .local v2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    if-nez v2, :cond_4

    .line 770
    return-object v1

    .line 774
    :cond_4
    invoke-virtual/range {p10 .. p10}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v0

    .line 777
    .local v0, "featureByte":B
    and-int/lit16 v5, v0, 0x80

    const/16 v17, 0x0

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    move/from16 v5, v17

    :goto_2
    move/from16 v18, v5

    .line 778
    .local v18, "featureName":Z
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    move/from16 v5, v17

    :goto_3
    move/from16 v19, v5

    .line 779
    .local v19, "featureHouseNumber":Z
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    move/from16 v5, v17

    :goto_4
    move/from16 v20, v5

    .line 780
    .local v20, "featureRef":Z
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    move/from16 v5, v17

    :goto_5
    move/from16 v21, v5

    .line 781
    .local v21, "featureLabelPosition":Z
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    move/from16 v5, v17

    .line 782
    .local v5, "featureWayDataBlocksByte":Z
    :goto_6
    and-int/lit8 v22, v0, 0x4

    if-eqz v22, :cond_a

    const/16 v22, 0x1

    goto :goto_7

    :cond_a
    move/from16 v22, v17

    :goto_7
    move v1, v5

    .end local v5    # "featureWayDataBlocksByte":Z
    .local v1, "featureWayDataBlocksByte":Z
    move/from16 v5, v22

    .line 785
    .local v5, "featureWayDoubleDeltaEncoding":Z
    if-eqz v18, :cond_b

    .line 786
    move/from16 v22, v0

    .end local v0    # "featureByte":B
    .local v22, "featureByte":B
    new-instance v0, Lorg/mapsforge/core/model/Tag;

    move/from16 v24, v3

    .end local v3    # "layer":B
    .local v24, "layer":B
    invoke-virtual/range {p10 .. p10}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/mapsforge/map/reader/MapFile;->extractLocalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v25, v4

    .end local v4    # "numberOfTags":B
    .local v25, "numberOfTags":B
    const-string v4, "name"

    invoke-direct {v0, v4, v3}, Lorg/mapsforge/core/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 785
    .end local v22    # "featureByte":B
    .end local v24    # "layer":B
    .end local v25    # "numberOfTags":B
    .restart local v0    # "featureByte":B
    .restart local v3    # "layer":B
    .restart local v4    # "numberOfTags":B
    :cond_b
    move/from16 v22, v0

    move/from16 v24, v3

    move/from16 v25, v4

    .line 790
    .end local v0    # "featureByte":B
    .end local v3    # "layer":B
    .end local v4    # "numberOfTags":B
    .restart local v22    # "featureByte":B
    .restart local v24    # "layer":B
    .restart local v25    # "numberOfTags":B
    :goto_8
    if-eqz v19, :cond_c

    .line 791
    new-instance v0, Lorg/mapsforge/core/model/Tag;

    const-string v3, "addr:housenumber"

    invoke-virtual/range {p10 .. p10}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/mapsforge/core/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    :cond_c
    if-eqz v20, :cond_d

    .line 796
    new-instance v0, Lorg/mapsforge/core/model/Tag;

    const-string v3, "ref"

    invoke-virtual/range {p10 .. p10}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/mapsforge/core/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_d
    const/4 v0, 0x0

    .line 800
    .local v0, "labelPosition":[I
    if-eqz v21, :cond_e

    .line 801
    invoke-direct {v7, v9}, Lorg/mapsforge/map/reader/MapFile;->readOptionalLabelPosition(Lorg/mapsforge/map/reader/ReadBuffer;)[I

    move-result-object v0

    move-object/from16 v26, v0

    goto :goto_9

    .line 800
    :cond_e
    move-object/from16 v26, v0

    .line 804
    .end local v0    # "labelPosition":[I
    .local v26, "labelPosition":[I
    :goto_9
    invoke-direct {v7, v1, v9}, Lorg/mapsforge/map/reader/MapFile;->readOptionalWayDataBlocksByte(ZLorg/mapsforge/map/reader/ReadBuffer;)I

    move-result v3

    .line 805
    .local v3, "wayDataBlocks":I
    const/4 v4, 0x1

    if-ge v3, v4, :cond_f

    .line 806
    sget-object v0, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v1

    .end local v1    # "featureWayDataBlocksByte":Z
    .local v23, "featureWayDataBlocksByte":Z
    const-string v1, "invalid number of way data blocks: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 807
    const/4 v0, 0x0

    return-object v0

    .line 810
    .end local v23    # "featureWayDataBlocksByte":Z
    .restart local v1    # "featureWayDataBlocksByte":Z
    :cond_f
    move/from16 v23, v1

    .end local v1    # "featureWayDataBlocksByte":Z
    .restart local v23    # "featureWayDataBlocksByte":Z
    const/4 v0, 0x0

    move v1, v0

    .local v1, "wayDataBlock":I
    :goto_a
    if-ge v1, v3, :cond_15

    .line 811
    move/from16 v16, v22

    .end local v22    # "featureByte":B
    .local v16, "featureByte":B
    move-object/from16 v0, p0

    move/from16 v27, v4

    move/from16 v22, v23

    move/from16 v23, v1

    move-object v4, v2

    .end local v1    # "wayDataBlock":I
    .end local v2    # "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    .local v4, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    .local v22, "featureWayDataBlocksByte":Z
    .local v23, "wayDataBlock":I
    move-wide/from16 v1, p5

    move-object v9, v4

    move/from16 v8, v24

    move/from16 v24, v25

    move/from16 v25, v3

    .end local v3    # "wayDataBlocks":I
    .end local v4    # "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    .local v8, "layer":B
    .local v9, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    .local v24, "numberOfTags":B
    .local v25, "wayDataBlocks":I
    move-wide/from16 v3, p7

    move/from16 v28, v6

    .end local v6    # "specialByte":B
    .local v28, "specialByte":B
    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lorg/mapsforge/map/reader/MapFile;->processWayDataBlock(DDZLorg/mapsforge/map/reader/ReadBuffer;)[[Lorg/mapsforge/core/model/LatLong;

    move-result-object v0

    .line 812
    .local v0, "wayNodes":[[Lorg/mapsforge/core/model/LatLong;
    if-eqz v0, :cond_14

    .line 813
    if-eqz p4, :cond_10

    sget-boolean v1, Lorg/mapsforge/map/reader/MapFile;->wayFilterEnabled:Z

    if-eqz v1, :cond_10

    invoke-virtual {v13, v0}, Lorg/mapsforge/core/model/BoundingBox;->intersectsArea([[Lorg/mapsforge/core/model/LatLong;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 814
    move/from16 v29, v5

    goto :goto_d

    .line 816
    :cond_10
    sget-object v1, Lorg/mapsforge/map/reader/MapFile$Selector;->ALL:Lorg/mapsforge/map/reader/MapFile$Selector;

    move-object/from16 v2, p9

    if-eq v1, v2, :cond_12

    if-nez v18, :cond_12

    if-nez v19, :cond_12

    if-nez v20, :cond_12

    invoke-virtual {v7, v9}, Lorg/mapsforge/map/reader/MapFile;->wayAsLabelTagFilter(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_b

    :cond_11
    move/from16 v29, v5

    goto :goto_d

    .line 817
    :cond_12
    :goto_b
    const/4 v1, 0x0

    .line 818
    .local v1, "labelLatLong":Lorg/mapsforge/core/model/LatLong;
    if-eqz v26, :cond_13

    .line 819
    new-instance v3, Lorg/mapsforge/core/model/LatLong;

    aget-object v4, v0, v17

    aget-object v4, v4, v17

    move-object v6, v1

    .end local v1    # "labelLatLong":Lorg/mapsforge/core/model/LatLong;
    .local v6, "labelLatLong":Lorg/mapsforge/core/model/LatLong;
    iget-wide v1, v4, Lorg/mapsforge/core/model/LatLong;->latitude:D

    aget v4, v26, v27

    invoke-static {v4}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v29

    add-double v1, v1, v29

    aget-object v4, v0, v17

    aget-object v4, v4, v17

    move/from16 v29, v5

    .end local v5    # "featureWayDoubleDeltaEncoding":Z
    .local v29, "featureWayDoubleDeltaEncoding":Z
    iget-wide v4, v4, Lorg/mapsforge/core/model/LatLong;->longitude:D

    aget v30, v26, v17

    .line 820
    invoke-static/range {v30 .. v30}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v30

    add-double v4, v4, v30

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    move-object v1, v3

    .end local v6    # "labelLatLong":Lorg/mapsforge/core/model/LatLong;
    .restart local v1    # "labelLatLong":Lorg/mapsforge/core/model/LatLong;
    goto :goto_c

    .line 818
    .end local v29    # "featureWayDoubleDeltaEncoding":Z
    .restart local v5    # "featureWayDoubleDeltaEncoding":Z
    :cond_13
    move-object v6, v1

    move/from16 v29, v5

    .line 822
    .end local v5    # "featureWayDoubleDeltaEncoding":Z
    .restart local v29    # "featureWayDoubleDeltaEncoding":Z
    :goto_c
    new-instance v2, Lorg/mapsforge/map/datastore/Way;

    invoke-direct {v2, v8, v9, v0, v1}, Lorg/mapsforge/map/datastore/Way;-><init>(BLjava/util/List;[[Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/LatLong;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 812
    .end local v1    # "labelLatLong":Lorg/mapsforge/core/model/LatLong;
    .end local v29    # "featureWayDoubleDeltaEncoding":Z
    .restart local v5    # "featureWayDoubleDeltaEncoding":Z
    :cond_14
    move/from16 v29, v5

    .line 810
    .end local v0    # "wayNodes":[[Lorg/mapsforge/core/model/LatLong;
    .end local v5    # "featureWayDoubleDeltaEncoding":Z
    .restart local v29    # "featureWayDoubleDeltaEncoding":Z
    :goto_d
    add-int/lit8 v1, v23, 0x1

    move-object v2, v9

    move/from16 v23, v22

    move/from16 v3, v25

    move/from16 v4, v27

    move/from16 v6, v28

    move/from16 v5, v29

    move-object/from16 v9, p10

    move/from16 v22, v16

    move/from16 v25, v24

    move/from16 v24, v8

    move-object/from16 v8, p1

    .end local v23    # "wayDataBlock":I
    .local v1, "wayDataBlock":I
    goto/16 :goto_a

    .end local v8    # "layer":B
    .end local v9    # "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    .end local v16    # "featureByte":B
    .end local v28    # "specialByte":B
    .end local v29    # "featureWayDoubleDeltaEncoding":Z
    .restart local v2    # "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    .restart local v3    # "wayDataBlocks":I
    .restart local v5    # "featureWayDoubleDeltaEncoding":Z
    .local v6, "specialByte":B
    .local v22, "featureByte":B
    .local v23, "featureWayDataBlocksByte":Z
    .local v24, "layer":B
    .local v25, "numberOfTags":B
    :cond_15
    move-object v9, v2

    move/from16 v29, v5

    move/from16 v28, v6

    move/from16 v16, v22

    move/from16 v22, v23

    move/from16 v8, v24

    move/from16 v24, v25

    move/from16 v23, v1

    move/from16 v25, v3

    .line 728
    .end local v1    # "wayDataBlock":I
    .end local v2    # "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    .end local v3    # "wayDataBlocks":I
    .end local v5    # "featureWayDoubleDeltaEncoding":Z
    .end local v6    # "specialByte":B
    .end local v15    # "wayDataSize":I
    .end local v18    # "featureName":Z
    .end local v19    # "featureHouseNumber":Z
    .end local v20    # "featureRef":Z
    .end local v21    # "featureLabelPosition":Z
    .end local v22    # "featureByte":B
    .end local v23    # "featureWayDataBlocksByte":Z
    .end local v24    # "layer":B
    .end local v25    # "numberOfTags":B
    .end local v26    # "labelPosition":[I
    :goto_e
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v8, p1

    move-object/from16 v9, p10

    goto/16 :goto_0

    .line 828
    .end local v14    # "elementCounter":I
    :cond_16
    return-object v10
.end method

.method private readMapData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/reader/MapFile$Selector;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 6
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;
    .param p3, "selector"    # Lorg/mapsforge/map/reader/MapFile$Selector;

    .line 882
    iget v0, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    iget v1, p2, Lorg/mapsforge/core/model/Tile;->tileX:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    iget v1, p2, Lorg/mapsforge/core/model/Tile;->tileY:I

    if-le v0, v1, :cond_1

    .line 883
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "upperLeft tile must be above and left of lowerRight tile"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 887
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/mapsforge/map/reader/QueryParameters;

    invoke-direct {v1}, Lorg/mapsforge/map/reader/QueryParameters;-><init>()V

    .line 888
    .local v1, "queryParameters":Lorg/mapsforge/map/reader/QueryParameters;
    iget-object v2, p0, Lorg/mapsforge/map/reader/MapFile;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    iget-byte v3, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-virtual {v2, v3}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getQueryZoomLevel(B)B

    move-result v2

    iput v2, v1, Lorg/mapsforge/map/reader/QueryParameters;->queryZoomLevel:I

    .line 891
    iget-object v2, p0, Lorg/mapsforge/map/reader/MapFile;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    iget v3, v1, Lorg/mapsforge/map/reader/QueryParameters;->queryZoomLevel:I

    invoke-virtual {v2, v3}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getSubFileParameter(I)Lorg/mapsforge/map/reader/header/SubFileParameter;

    move-result-object v2

    .line 892
    .local v2, "subFileParameter":Lorg/mapsforge/map/reader/header/SubFileParameter;
    if-nez v2, :cond_2

    .line 893
    sget-object v3, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no sub-file for zoom level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lorg/mapsforge/map/reader/QueryParameters;->queryZoomLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 894
    return-object v0

    .line 897
    :cond_2
    invoke-virtual {v1, p1, p2, v2}, Lorg/mapsforge/map/reader/QueryParameters;->calculateBaseTiles(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/reader/header/SubFileParameter;)V

    .line 898
    invoke-virtual {v1, v2}, Lorg/mapsforge/map/reader/QueryParameters;->calculateBlocks(Lorg/mapsforge/map/reader/header/SubFileParameter;)V

    .line 903
    invoke-static {p1, p2}, Lorg/mapsforge/core/model/Tile;->getBoundingBox(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, p3}, Lorg/mapsforge/map/reader/MapFile;->processBlocks(Lorg/mapsforge/map/reader/QueryParameters;Lorg/mapsforge/map/reader/header/SubFileParameter;Lorg/mapsforge/core/model/BoundingBox;Lorg/mapsforge/map/reader/MapFile$Selector;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 904
    .end local v1    # "queryParameters":Lorg/mapsforge/map/reader/QueryParameters;
    .end local v2    # "subFileParameter":Lorg/mapsforge/map/reader/header/SubFileParameter;
    :catch_0
    move-exception v1

    .line 905
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/mapsforge/map/reader/MapFile;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 906
    return-object v0
.end method

.method private readOptionalLabelPosition(Lorg/mapsforge/map/reader/ReadBuffer;)[I
    .locals 3
    .param p1, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;

    .line 911
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 914
    .local v0, "labelPosition":[I
    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v2

    aput v2, v0, v1

    .line 917
    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readSignedInt()I

    move-result v2

    aput v2, v0, v1

    .line 919
    return-object v0
.end method

.method private readOptionalWayDataBlocksByte(ZLorg/mapsforge/map/reader/ReadBuffer;)I
    .locals 1
    .param p1, "featureWayDataBlocksByte"    # Z
    .param p2, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;

    .line 923
    if-eqz p1, :cond_0

    .line 925
    invoke-virtual {p2}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v0

    return v0

    .line 928
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private readZoomTable(Lorg/mapsforge/map/reader/header/SubFileParameter;Lorg/mapsforge/map/reader/ReadBuffer;)[[I
    .locals 8
    .param p1, "subFileParameter"    # Lorg/mapsforge/map/reader/header/SubFileParameter;
    .param p2, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;

    .line 957
    iget-byte v0, p1, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMax:B

    iget-byte v1, p1, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMin:B

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 958
    .local v0, "rows":I
    const/4 v2, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 960
    .local v2, "zoomTable":[[I
    const/4 v3, 0x0

    .line 961
    .local v3, "cumulatedNumberOfPois":I
    const/4 v4, 0x0

    .line 963
    .local v4, "cumulatedNumberOfWays":I
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 964
    invoke-virtual {p2}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v6

    add-int/2addr v3, v6

    .line 965
    invoke-virtual {p2}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v6

    add-int/2addr v4, v6

    .line 967
    aget-object v6, v2, v5

    const/4 v7, 0x0

    aput v3, v6, v7

    .line 968
    aget-object v6, v2, v5

    aput v4, v6, v1

    .line 963
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 971
    .end local v5    # "row":I
    :cond_0
    return-object v2
.end method


# virtual methods
.method public boundingBox()Lorg/mapsforge/core/model/BoundingBox;
    .locals 1

    .line 304
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/MapFile;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    return-object v0
.end method

.method public close()V
    .locals 0

    .line 309
    invoke-direct {p0}, Lorg/mapsforge/map/reader/MapFile;->closeFileChannel()V

    .line 310
    return-void
.end method

.method public getDataTimestamp(Lorg/mapsforge/core/model/Tile;)J
    .locals 2
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 413
    iget-wide v0, p0, Lorg/mapsforge/map/reader/MapFile;->timestamp:J

    return-wide v0
.end method

.method public getMapFileHeader()Lorg/mapsforge/map/reader/header/MapFileHeader;
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/mapsforge/map/reader/MapFile;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    return-object v0
.end method

.method public getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/mapsforge/map/reader/MapFile;->mapFileHeader:Lorg/mapsforge/map/reader/header/MapFileHeader;

    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/MapFileHeader;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMapLanguages()[Ljava/lang/String;
    .locals 2

    .line 434
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/MapFile;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->languagesPreference:Ljava/lang/String;

    .line 435
    .local v0, "languagesPreference":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 438
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readLabels(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 1
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 839
    sget-object v0, Lorg/mapsforge/map/reader/MapFile$Selector;->LABELS:Lorg/mapsforge/map/reader/MapFile$Selector;

    invoke-direct {p0, p1, p1, v0}, Lorg/mapsforge/map/reader/MapFile;->readMapData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/reader/MapFile$Selector;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0
.end method

.method public readLabels(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 1
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;

    .line 853
    sget-object v0, Lorg/mapsforge/map/reader/MapFile$Selector;->LABELS:Lorg/mapsforge/map/reader/MapFile$Selector;

    invoke-direct {p0, p1, p2, v0}, Lorg/mapsforge/map/reader/MapFile;->readMapData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/reader/MapFile$Selector;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0
.end method

.method public readMapData(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 1
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 864
    sget-object v0, Lorg/mapsforge/map/reader/MapFile$Selector;->ALL:Lorg/mapsforge/map/reader/MapFile$Selector;

    invoke-direct {p0, p1, p1, v0}, Lorg/mapsforge/map/reader/MapFile;->readMapData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/reader/MapFile$Selector;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0
.end method

.method public readMapData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 1
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;

    .line 878
    sget-object v0, Lorg/mapsforge/map/reader/MapFile$Selector;->ALL:Lorg/mapsforge/map/reader/MapFile$Selector;

    invoke-direct {p0, p1, p2, v0}, Lorg/mapsforge/map/reader/MapFile;->readMapData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/reader/MapFile$Selector;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0
.end method

.method public readPoiData(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 1
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 939
    sget-object v0, Lorg/mapsforge/map/reader/MapFile$Selector;->POIS:Lorg/mapsforge/map/reader/MapFile$Selector;

    invoke-direct {p0, p1, p1, v0}, Lorg/mapsforge/map/reader/MapFile;->readMapData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/reader/MapFile$Selector;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0
.end method

.method public readPoiData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 1
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;

    .line 953
    sget-object v0, Lorg/mapsforge/map/reader/MapFile$Selector;->POIS:Lorg/mapsforge/map/reader/MapFile$Selector;

    invoke-direct {p0, p1, p2, v0}, Lorg/mapsforge/map/reader/MapFile;->readMapData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/reader/MapFile$Selector;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0
.end method

.method public restrictToZoomRange(BB)V
    .locals 0
    .param p1, "minZoom"    # B
    .param p2, "maxZoom"    # B

    .line 982
    iput-byte p2, p0, Lorg/mapsforge/map/reader/MapFile;->zoomLevelMax:B

    .line 983
    iput-byte p1, p0, Lorg/mapsforge/map/reader/MapFile;->zoomLevelMin:B

    .line 984
    return-void
.end method

.method public startPosition()Lorg/mapsforge/core/model/LatLong;
    .locals 1

    .line 988
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/MapFile;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->startPosition:Lorg/mapsforge/core/model/LatLong;

    if-eqz v0, :cond_0

    .line 989
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/MapFile;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->startPosition:Lorg/mapsforge/core/model/LatLong;

    return-object v0

    .line 991
    :cond_0
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/MapFile;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    invoke-virtual {v0}, Lorg/mapsforge/core/model/BoundingBox;->getCenterPoint()Lorg/mapsforge/core/model/LatLong;

    move-result-object v0

    return-object v0
.end method

.method public startZoomLevel()Ljava/lang/Byte;
    .locals 1

    .line 996
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/MapFile;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->startZoomLevel:Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/MapFile;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->startZoomLevel:Ljava/lang/Byte;

    return-object v0

    .line 999
    :cond_0
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public supportsTile(Lorg/mapsforge/core/model/Tile;)Z
    .locals 2
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 1004
    invoke-virtual {p1}, Lorg/mapsforge/core/model/Tile;->getBoundingBox()Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mapsforge/map/reader/MapFile;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v1

    iget-object v1, v1, Lorg/mapsforge/map/reader/header/MapFileInfo;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    invoke-virtual {v0, v1}, Lorg/mapsforge/core/model/BoundingBox;->intersects(Lorg/mapsforge/core/model/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget-byte v1, p0, Lorg/mapsforge/map/reader/MapFile;->zoomLevelMin:B

    if-lt v0, v1, :cond_0

    iget-byte v0, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget-byte v1, p0, Lorg/mapsforge/map/reader/MapFile;->zoomLevelMax:B

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
