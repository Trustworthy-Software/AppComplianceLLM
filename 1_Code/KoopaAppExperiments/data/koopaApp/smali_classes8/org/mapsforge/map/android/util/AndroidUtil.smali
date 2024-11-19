.class public final Lorg/mapsforge/map/android/util/AndroidUtil;
.super Ljava/lang/Object;
.source "AndroidUtil.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lorg/mapsforge/map/android/util/AndroidUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/android/util/AndroidUtil;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    return-void
.end method

.method public static createExternalStorageTileCache(Landroid/content/Context;Ljava/lang/String;II)Lorg/mapsforge/map/layer/cache/TileCache;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "firstLevelSize"    # I
    .param p3, "tileSize"    # I

    .line 67
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/mapsforge/map/android/util/AndroidUtil;->createExternalStorageTileCache(Landroid/content/Context;Ljava/lang/String;IIZ)Lorg/mapsforge/map/layer/cache/TileCache;

    move-result-object v0

    return-object v0
.end method

.method public static createExternalStorageTileCache(Landroid/content/Context;Ljava/lang/String;IIZ)Lorg/mapsforge/map/layer/cache/TileCache;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "firstLevelSize"    # I
    .param p3, "tileSize"    # I
    .param p4, "persistent"    # Z

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lorg/mapsforge/map/android/util/AndroidUtil;->createExternalStorageTileCache(Ljava/io/File;Ljava/lang/String;IIZ)Lorg/mapsforge/map/layer/cache/TileCache;

    move-result-object v0

    return-object v0
.end method

.method public static createExternalStorageTileCache(Ljava/io/File;Ljava/lang/String;IIZ)Lorg/mapsforge/map/layer/cache/TileCache;
    .locals 7
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "firstLevelSize"    # I
    .param p3, "tileSize"    # I
    .param p4, "persistent"    # Z

    .line 98
    sget-object v0, Lorg/mapsforge/map/android/util/AndroidUtil;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TILECACHE INMEMORY SIZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 99
    new-instance v1, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;

    invoke-direct {v1, p2}, Lorg/mapsforge/map/layer/cache/InMemoryTileCache;-><init>(I)V

    .line 100
    .local v1, "firstLevelTileCache":Lorg/mapsforge/map/layer/cache/TileCache;
    if-eqz p0, :cond_1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "cacheDirectoryName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v3, "cacheDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    :cond_0
    invoke-static {v2, p2, p3}, Lorg/mapsforge/map/android/util/AndroidUtil;->estimateSizeOfFileSystemCache(Ljava/lang/String;II)I

    move-result v4

    .line 105
    .local v4, "tileCacheFiles":I
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_1

    if-lez v4, :cond_1

    .line 107
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TILECACHE FILE SIZE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 109
    new-instance v0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;

    sget-object v5, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    invoke-direct {v0, v4, v3, v5, p4}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;-><init>(ILjava/io/File;Lorg/mapsforge/core/graphics/GraphicFactory;Z)V

    .line 111
    .local v0, "secondLevelTileCache":Lorg/mapsforge/map/layer/cache/TileCache;
    new-instance v5, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;

    invoke-direct {v5, v1, v0}, Lorg/mapsforge/map/layer/cache/TwoLevelTileCache;-><init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/layer/cache/TileCache;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 112
    .end local v0    # "secondLevelTileCache":Lorg/mapsforge/map/layer/cache/TileCache;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lorg/mapsforge/map/android/util/AndroidUtil;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 118
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "cacheDirectoryName":Ljava/lang/String;
    .end local v3    # "cacheDirectory":Ljava/io/File;
    .end local v4    # "tileCacheFiles":I
    :cond_1
    return-object v1
.end method

.method public static createTileCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;IFDZ)Lorg/mapsforge/map/layer/cache/TileCache;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "tileSize"    # I
    .param p4, "screenRatio"    # F
    .param p5, "overdraw"    # D
    .param p7, "persistent"    # Z

    .line 136
    invoke-static {p0, p3, p5, p6, p4}, Lorg/mapsforge/map/android/util/AndroidUtil;->getMinimumCacheSize(Landroid/content/Context;IDF)I

    move-result v0

    .line 137
    .local v0, "cacheSize":I
    invoke-static {p1, p2, v0, p3, p7}, Lorg/mapsforge/map/android/util/AndroidUtil;->createExternalStorageTileCache(Ljava/io/File;Ljava/lang/String;IIZ)Lorg/mapsforge/map/layer/cache/TileCache;

    move-result-object v1

    return-object v1
.end method

.method public static createTileCache(Landroid/content/Context;Ljava/lang/String;IFD)Lorg/mapsforge/map/layer/cache/TileCache;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tileSize"    # I
    .param p3, "screenRatio"    # F
    .param p4, "overdraw"    # D

    .line 171
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lorg/mapsforge/map/android/util/AndroidUtil;->createTileCache(Landroid/content/Context;Ljava/lang/String;IFDZ)Lorg/mapsforge/map/layer/cache/TileCache;

    move-result-object v0

    return-object v0
.end method

.method public static createTileCache(Landroid/content/Context;Ljava/lang/String;IFDZ)Lorg/mapsforge/map/layer/cache/TileCache;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tileSize"    # I
    .param p3, "screenRatio"    # F
    .param p4, "overdraw"    # D
    .param p6, "persistent"    # Z

    .line 154
    invoke-static {p0, p2, p4, p5, p3}, Lorg/mapsforge/map/android/util/AndroidUtil;->getMinimumCacheSize(Landroid/content/Context;IDF)I

    move-result v0

    .line 155
    .local v0, "cacheSize":I
    invoke-static {p0, p1, v0, p2, p6}, Lorg/mapsforge/map/android/util/AndroidUtil;->createExternalStorageTileCache(Landroid/content/Context;Ljava/lang/String;IIZ)Lorg/mapsforge/map/layer/cache/TileCache;

    move-result-object v1

    return-object v1
.end method

.method public static createTileCache(Landroid/content/Context;Ljava/lang/String;IIID)Lorg/mapsforge/map/layer/cache/TileCache;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tileSize"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "overdraw"    # D

    .line 223
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lorg/mapsforge/map/android/util/AndroidUtil;->createTileCache(Landroid/content/Context;Ljava/lang/String;IIIDZ)Lorg/mapsforge/map/layer/cache/TileCache;

    move-result-object v0

    return-object v0
.end method

.method public static createTileCache(Landroid/content/Context;Ljava/lang/String;IIIDZ)Lorg/mapsforge/map/layer/cache/TileCache;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tileSize"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "overdraw"    # D
    .param p7, "persistent"    # Z

    .line 206
    invoke-static {p2, p5, p6, p3, p4}, Lorg/mapsforge/map/android/util/AndroidUtil;->getMinimumCacheSize(IDII)I

    move-result v0

    .line 207
    .local v0, "cacheSize":I
    invoke-static {p0, p1, v0, p2, p7}, Lorg/mapsforge/map/android/util/AndroidUtil;->createExternalStorageTileCache(Landroid/content/Context;Ljava/lang/String;IIZ)Lorg/mapsforge/map/layer/cache/TileCache;

    move-result-object v1

    return-object v1
.end method

.method public static createTileCache(Ljava/io/File;Ljava/lang/String;IIIDZ)Lorg/mapsforge/map/layer/cache/TileCache;
    .locals 2
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tileSize"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "overdraw"    # D
    .param p7, "persistent"    # Z

    .line 188
    invoke-static {p2, p5, p6, p3, p4}, Lorg/mapsforge/map/android/util/AndroidUtil;->getMinimumCacheSize(IDII)I

    move-result v0

    .line 189
    .local v0, "cacheSize":I
    invoke-static {p0, p1, v0, p2, p7}, Lorg/mapsforge/map/android/util/AndroidUtil;->createExternalStorageTileCache(Ljava/io/File;Ljava/lang/String;IIZ)Lorg/mapsforge/map/layer/cache/TileCache;

    move-result-object v1

    return-object v1
.end method

.method public static createTileRendererLayer(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;)Lorg/mapsforge/map/layer/renderer/TileRendererLayer;
    .locals 2
    .param p0, "tileCache"    # Lorg/mapsforge/map/layer/cache/TileCache;
    .param p1, "mapViewPosition"    # Lorg/mapsforge/map/model/IMapViewPosition;
    .param p2, "mapFile"    # Lorg/mapsforge/map/datastore/MapDataStore;
    .param p3, "renderTheme"    # Lorg/mapsforge/map/rendertheme/XmlRenderTheme;

    .line 238
    new-instance v0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;

    sget-object v1, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    invoke-direct {v0, p0, p2, p1, v1}, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;-><init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/core/graphics/GraphicFactory;)V

    .line 240
    .local v0, "tileRendererLayer":Lorg/mapsforge/map/layer/renderer/TileRendererLayer;
    invoke-virtual {v0, p3}, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->setXmlRenderTheme(Lorg/mapsforge/map/rendertheme/XmlRenderTheme;)V

    .line 241
    return-object v0
.end method

.method public static createTileRendererLayer(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;ZZZ)Lorg/mapsforge/map/layer/renderer/TileRendererLayer;
    .locals 9
    .param p0, "tileCache"    # Lorg/mapsforge/map/layer/cache/TileCache;
    .param p1, "mapViewPosition"    # Lorg/mapsforge/map/model/IMapViewPosition;
    .param p2, "mapFile"    # Lorg/mapsforge/map/datastore/MapDataStore;
    .param p3, "renderTheme"    # Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    .param p4, "hasAlpha"    # Z
    .param p5, "renderLabels"    # Z
    .param p6, "cacheLabels"    # Z

    .line 260
    new-instance v8, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;

    sget-object v7, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;-><init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/model/IMapViewPosition;ZZZLorg/mapsforge/core/graphics/GraphicFactory;)V

    .line 262
    .local v0, "tileRendererLayer":Lorg/mapsforge/map/layer/renderer/TileRendererLayer;
    invoke-virtual {v0, p3}, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->setXmlRenderTheme(Lorg/mapsforge/map/rendertheme/XmlRenderTheme;)V

    .line 263
    return-object v0
.end method

.method public static createTileRendererLayer(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;ZZZLorg/mapsforge/map/layer/hills/HillsRenderConfig;)Lorg/mapsforge/map/layer/renderer/TileRendererLayer;
    .locals 10
    .param p0, "tileCache"    # Lorg/mapsforge/map/layer/cache/TileCache;
    .param p1, "mapViewPosition"    # Lorg/mapsforge/map/model/IMapViewPosition;
    .param p2, "mapFile"    # Lorg/mapsforge/map/datastore/MapDataStore;
    .param p3, "renderTheme"    # Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    .param p4, "hasAlpha"    # Z
    .param p5, "renderLabels"    # Z
    .param p6, "cacheLabels"    # Z
    .param p7, "hillsRenderConfig"    # Lorg/mapsforge/map/layer/hills/HillsRenderConfig;

    .line 283
    new-instance v9, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;

    sget-object v7, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;-><init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/model/IMapViewPosition;ZZZLorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/layer/hills/HillsRenderConfig;)V

    .line 286
    .local v0, "tileRendererLayer":Lorg/mapsforge/map/layer/renderer/TileRendererLayer;
    move-object v1, p3

    invoke-virtual {v0, p3}, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->setXmlRenderTheme(Lorg/mapsforge/map/rendertheme/XmlRenderTheme;)V

    .line 287
    return-object v0
.end method

.method public static currentThreadIsUiThread()Z
    .locals 2

    .line 294
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static estimateSizeOfFileSystemCache(Ljava/lang/String;II)I
    .locals 6
    .param p0, "cacheDirectoryName"    # Ljava/lang/String;
    .param p1, "firstLevelSize"    # I
    .param p2, "tileSize"    # I

    .line 306
    mul-int/lit8 v0, p2, 0x4

    mul-int/2addr v0, p2

    .line 307
    .local v0, "tileCacheFileSize":I
    const/16 v1, 0x7d0

    .line 310
    .local v1, "maxCacheFiles":I
    const-wide/16 v2, 0x7d0

    invoke-static {p0, v0}, Lorg/mapsforge/map/android/util/AndroidUtil;->getAvailableCacheSlots(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 312
    .local v2, "result":I
    if-le p1, v2, :cond_0

    .line 314
    const/4 v2, 0x0

    .line 316
    :cond_0
    return v2
.end method

.method public static getAvailableCacheSlots(Ljava/lang/String;I)J
    .locals 5
    .param p0, "directory"    # Ljava/lang/String;
    .param p1, "fileSize"    # I

    .line 329
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "statfs":Landroid/os/StatFs;
    nop

    .line 331
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    int-to-long v3, p1

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public static getMinimumCacheSize(IDII)I
    .locals 3
    .param p0, "tileSize"    # I
    .param p1, "overdrawFactor"    # D
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 398
    new-instance v0, Lorg/mapsforge/core/model/Dimension;

    invoke-direct {v0, p3, p4}, Lorg/mapsforge/core/model/Dimension;-><init>(II)V

    invoke-static {v0, p1, p2}, Lorg/mapsforge/map/controller/FrameBufferController;->calculateFrameBufferDimension(Lorg/mapsforge/core/model/Dimension;D)Lorg/mapsforge/core/model/Dimension;

    move-result-object v0

    .line 399
    .local v0, "dimension":Lorg/mapsforge/core/model/Dimension;
    iget v1, v0, Lorg/mapsforge/core/model/Dimension;->height:I

    div-int/2addr v1, p0

    add-int/lit8 v1, v1, 0x2

    iget v2, v0, Lorg/mapsforge/core/model/Dimension;->width:I

    div-int/2addr v2, p0

    add-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    const/4 v2, 0x4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static getMinimumCacheSize(Landroid/content/Context;IDF)I
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "tileSize"    # I
    .param p2, "overdrawFactor"    # D
    .param p4, "screenRatio"    # F

    .line 353
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 354
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 357
    .local v1, "display":Landroid/view/Display;
    nop

    .line 358
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 359
    .local v2, "p":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 360
    iget v3, v2, Landroid/graphics/Point;->y:I

    .line 361
    .local v3, "height":I
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 362
    .local v2, "width":I
    nop

    .line 376
    new-instance v4, Lorg/mapsforge/core/model/Dimension;

    invoke-direct {v4, v2, v3}, Lorg/mapsforge/core/model/Dimension;-><init>(II)V

    invoke-static {v4, p2, p3}, Lorg/mapsforge/map/controller/FrameBufferController;->calculateFrameBufferDimension(Lorg/mapsforge/core/model/Dimension;D)Lorg/mapsforge/core/model/Dimension;

    move-result-object v4

    .line 377
    .local v4, "dimension":Lorg/mapsforge/core/model/Dimension;
    iget v5, v4, Lorg/mapsforge/core/model/Dimension;->height:I

    div-int/2addr v5, p1

    add-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, p4

    iget v6, v4, Lorg/mapsforge/core/model/Dimension;->width:I

    div-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    return v5
.end method

.method public static restartActivity(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .line 410
    nop

    .line 411
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 421
    return-void
.end method

.method public static setMapScaleBar(Lorg/mapsforge/map/android/view/MapView;Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;)V
    .locals 6
    .param p0, "mapView"    # Lorg/mapsforge/map/android/view/MapView;
    .param p1, "primaryDistanceUnitAdapter"    # Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;
    .param p2, "secondaryDistanceUnitAdapter"    # Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;

    .line 436
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/android/view/MapView;->setMapScaleBar(Lorg/mapsforge/map/scalebar/MapScaleBar;)V

    goto :goto_1

    .line 439
    :cond_0
    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->getMapScaleBar()Lorg/mapsforge/map/scalebar/MapScaleBar;

    move-result-object v0

    .line 440
    .local v0, "scaleBar":Lorg/mapsforge/map/scalebar/MapScaleBar;
    if-nez v0, :cond_1

    .line 441
    new-instance v1, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;

    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v2

    iget-object v2, v2, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v3

    iget-object v3, v3, Lorg/mapsforge/map/model/Model;->mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

    sget-object v4, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    .line 442
    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v5

    iget-object v5, v5, Lorg/mapsforge/map/model/Model;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;-><init>(Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/map/model/MapViewDimension;Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V

    move-object v0, v1

    .line 443
    invoke-virtual {p0, v0}, Lorg/mapsforge/map/android/view/MapView;->setMapScaleBar(Lorg/mapsforge/map/scalebar/MapScaleBar;)V

    .line 445
    :cond_1
    instance-of v1, v0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;

    if-eqz v1, :cond_3

    .line 446
    if-eqz p2, :cond_2

    .line 447
    move-object v1, v0

    check-cast v1, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;

    sget-object v2, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;->BOTH:Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;

    invoke-virtual {v1, v2}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->setScaleBarMode(Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;)V

    .line 448
    move-object v1, v0

    check-cast v1, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;

    invoke-virtual {v1, p2}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->setSecondaryDistanceUnitAdapter(Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;)V

    goto :goto_0

    .line 450
    :cond_2
    move-object v1, v0

    check-cast v1, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;

    sget-object v2, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;->SINGLE:Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;

    invoke-virtual {v1, v2}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->setScaleBarMode(Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;)V

    .line 453
    :cond_3
    :goto_0
    invoke-virtual {v0, p1}, Lorg/mapsforge/map/scalebar/MapScaleBar;->setDistanceUnitAdapter(Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;)V

    .line 455
    .end local v0    # "scaleBar":Lorg/mapsforge/map/scalebar/MapScaleBar;
    :goto_1
    return-void
.end method
