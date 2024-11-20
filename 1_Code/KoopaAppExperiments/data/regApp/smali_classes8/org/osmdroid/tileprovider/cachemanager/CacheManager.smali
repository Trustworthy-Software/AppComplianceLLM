.class public Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$ListWrapper;,
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;,
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;,
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;,
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    }
.end annotation


# instance fields
.field protected final mMaxZoomLevel:I

.field protected final mMinZoomLevel:I

.field protected mPendingTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

.field protected final mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

.field protected final mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

.field protected verifyCancel:Z


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;II)V
    .locals 1
    .param p1, "pTileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p2, "pWriter"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .param p3, "pMinZoomLevel"    # I
    .param p4, "pMaxZoomLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicyException;
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;II)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;II)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pWriter"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .param p3, "pMinZoomLevel"    # I
    .param p4, "pMaxZoomLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicyException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/osmdroid/tileprovider/modules/TileDownloader;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/modules/TileDownloader;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->verifyCancel:Z

    .line 103
    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 104
    iput-object p2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 105
    iput p3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMinZoomLevel:I

    .line 106
    iput p4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMaxZoomLevel:I

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicyException;
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileWriter()Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;-><init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 4
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p2, "writer"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicyException;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-direct {p0, v0, p2, v1, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;II)V

    .line 82
    return-void
.end method

.method public static getCoordinatesFromMapTile(III)Lorg/osmdroid/util/GeoPoint;
    .locals 5
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "zoom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/TileSystem;->getLatitudeFromTileY(II)D

    move-result-wide v0

    .line 135
    .local v0, "lat":D
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/osmdroid/util/TileSystem;->getLongitudeFromTileX(II)D

    move-result-wide v2

    .line 136
    .local v2, "lon":D
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v4
.end method

.method public static getFileName(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/File;
    .locals 4
    .param p0, "tileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p1, "pMapTileIndex"    # J

    .line 140
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-interface {p0, p1, p2}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileRelativeFilenameString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method public static getMapTileFromCoordinates(DDI)Landroid/graphics/Point;
    .locals 3
    .param p0, "aLat"    # D
    .param p2, "aLon"    # D
    .param p4, "zoom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p4}, Lorg/osmdroid/util/TileSystem;->getTileYFromLatitude(DI)I

    move-result v0

    .line 124
    .local v0, "y":I
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Lorg/osmdroid/util/TileSystem;->getTileXFromLongitude(DI)I

    move-result v1

    .line 125
    .local v1, "x":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public static getTilesCoverage(Ljava/util/ArrayList;I)Ljava/util/Collection;
    .locals 36
    .param p1, "pZoomLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;I)",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 291
    .local p0, "pGeoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    move/from16 v0, p1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 293
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 294
    .local v2, "prevPoint":Lorg/osmdroid/util/GeoPoint;
    const/4 v3, 0x0

    .line 296
    .local v3, "prevTile":Landroid/graphics/Point;
    const/4 v4, 0x1

    shl-int v5, v4, v0

    .line 297
    .local v5, "mapTileUpperBound":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/osmdroid/util/GeoPoint;

    .line 299
    .local v7, "geoPoint":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9, v0}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v8

    .line 301
    .local v8, "d":D
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v10

    if-eqz v10, :cond_d

    .line 303
    if-eqz v2, :cond_c

    .line 305
    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v14

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v16

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    .line 307
    .local v12, "leadCoef":D
    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v14

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v16

    cmpl-double v10, v14, v16

    if-lez v10, :cond_0

    .line 308
    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v16

    sub-double v14, v14, v16

    .local v14, "brng":D
    goto :goto_1

    .line 310
    .end local v14    # "brng":D
    :cond_0
    const-wide v14, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v16

    sub-double v14, v14, v16

    .line 313
    .restart local v14    # "brng":D
    :goto_1
    new-instance v10, Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v17, v12

    .end local v12    # "leadCoef":D
    .local v17, "leadCoef":D
    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v11

    move/from16 v19, v5

    .end local v5    # "mapTileUpperBound":I
    .local v19, "mapTileUpperBound":I
    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v10, v11, v12, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v4, v10

    .line 315
    .local v4, "wayPoint":Lorg/osmdroid/util/GeoPoint;
    :goto_2
    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v20

    cmpl-double v5, v10, v20

    if-lez v5, :cond_1

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v20

    cmpg-double v5, v10, v20

    if-ltz v5, :cond_2

    .line 316
    :cond_1
    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v20

    cmpg-double v5, v10, v20

    if-gez v5, :cond_b

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v20

    cmpl-double v5, v10, v20

    if-lez v5, :cond_b

    .line 317
    :cond_2
    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v20

    cmpl-double v5, v10, v20

    if-lez v5, :cond_3

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v20

    cmpg-double v5, v10, v20

    if-ltz v5, :cond_4

    .line 318
    :cond_3
    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v20

    cmpg-double v5, v10, v20

    if-gez v5, :cond_a

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v20

    cmpl-double v5, v10, v20

    if-lez v5, :cond_a

    .line 320
    :cond_4
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v10

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v10, v10, v20

    const-wide v22, 0x4066800000000000L    # 180.0

    div-double v10, v10, v22

    .line 321
    .local v10, "prevLatRad":D
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v24

    mul-double v24, v24, v20

    div-double v24, v24, v22

    .line 323
    .local v24, "prevLonRad":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    const-wide v28, 0x415854a640000000L    # 6378137.0

    div-double v30, v8, v28

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v26, v26, v30

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    div-double v32, v8, v28

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v26, v26, v30

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v26

    .line 324
    .local v26, "latRad":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    div-double v32, v8, v28

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    move-wide/from16 v34, v14

    .end local v14    # "brng":D
    .local v34, "brng":D
    mul-double v13, v30, v32

    div-double v28, v8, v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    move-object v12, v6

    sub-double v5, v28, v30

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    add-double v5, v24, v5

    .line 326
    .local v5, "lonRad":D
    mul-double v13, v26, v22

    div-double v13, v13, v20

    invoke-virtual {v4, v13, v14}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 327
    mul-double v22, v22, v5

    div-double v13, v22, v20

    invoke-virtual {v4, v13, v14}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 329
    new-instance v13, Landroid/graphics/Point;

    .line 330
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v14

    move-wide/from16 v20, v5

    .end local v5    # "lonRad":D
    .local v20, "lonRad":D
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v14, v5, v6, v0}, Lorg/osmdroid/util/TileSystem;->getTileXFromLongitude(DI)I

    move-result v5

    .line 331
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v6

    move-wide/from16 v22, v8

    .end local v8    # "d":D
    .local v22, "d":D
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v0}, Lorg/osmdroid/util/TileSystem;->getTileYFromLatitude(DI)I

    move-result v6

    invoke-direct {v13, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    move-object v5, v13

    .line 333
    .local v5, "tile":Landroid/graphics/Point;
    invoke-virtual {v5, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 335
    iget v6, v5, Landroid/graphics/Point;->x:I

    if-ltz v6, :cond_5

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    iget v6, v5, Landroid/graphics/Point;->x:I

    neg-int v6, v6

    .line 336
    .local v6, "ofsx":I
    :goto_3
    iget v8, v5, Landroid/graphics/Point;->y:I

    if-ltz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    iget v8, v5, Landroid/graphics/Point;->y:I

    neg-int v8, v8

    .line 337
    .local v8, "ofsy":I
    :goto_4
    iget v9, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v6

    .local v9, "xAround":I
    :goto_5
    iget v13, v5, Landroid/graphics/Point;->x:I

    const/4 v14, 0x1

    add-int/2addr v13, v14

    add-int/2addr v13, v6

    if-gt v9, v13, :cond_8

    .line 338
    iget v13, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v13, v8

    move v15, v13

    .local v15, "yAround":I
    :goto_6
    iget v13, v5, Landroid/graphics/Point;->y:I

    add-int/lit8 v28, v13, 0x1

    add-int v14, v28, v8

    if-gt v15, v14, :cond_7

    .line 339
    move/from16 v14, v19

    .end local v19    # "mapTileUpperBound":I
    .local v14, "mapTileUpperBound":I
    invoke-static {v15, v14}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v13

    .line 340
    .local v13, "tileY":I
    move-object/from16 v28, v2

    .end local v2    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .local v28, "prevPoint":Lorg/osmdroid/util/GeoPoint;
    invoke-static {v9, v14}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v2

    .line 341
    .local v2, "tileX":I
    invoke-static {v0, v2, v13}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v29

    move/from16 v31, v2

    .end local v2    # "tileX":I
    .local v31, "tileX":I
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v13    # "tileY":I
    .end local v31    # "tileX":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v28

    const/4 v14, 0x1

    goto :goto_6

    .end local v14    # "mapTileUpperBound":I
    .end local v28    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .local v2, "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .restart local v19    # "mapTileUpperBound":I
    :cond_7
    move-object/from16 v28, v2

    move/from16 v14, v19

    .line 337
    .end local v2    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v15    # "yAround":I
    .end local v19    # "mapTileUpperBound":I
    .restart local v14    # "mapTileUpperBound":I
    .restart local v28    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .end local v14    # "mapTileUpperBound":I
    .end local v28    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .restart local v2    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .restart local v19    # "mapTileUpperBound":I
    :cond_8
    move-object/from16 v28, v2

    move/from16 v14, v19

    .line 345
    .end local v2    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v9    # "xAround":I
    .end local v19    # "mapTileUpperBound":I
    .restart local v14    # "mapTileUpperBound":I
    .restart local v28    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    move-object v2, v5

    move-object v3, v2

    .end local v3    # "prevTile":Landroid/graphics/Point;
    .local v2, "prevTile":Landroid/graphics/Point;
    goto :goto_7

    .line 333
    .end local v6    # "ofsx":I
    .end local v8    # "ofsy":I
    .end local v14    # "mapTileUpperBound":I
    .end local v28    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .local v2, "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .restart local v3    # "prevTile":Landroid/graphics/Point;
    .restart local v19    # "mapTileUpperBound":I
    :cond_9
    move-object/from16 v28, v2

    move/from16 v14, v19

    .line 347
    .end local v2    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v10    # "prevLatRad":D
    .end local v19    # "mapTileUpperBound":I
    .end local v20    # "lonRad":D
    .end local v24    # "prevLonRad":D
    .end local v26    # "latRad":D
    .restart local v14    # "mapTileUpperBound":I
    .restart local v28    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    :goto_7
    move-object v6, v12

    move/from16 v19, v14

    move-wide/from16 v8, v22

    move-object/from16 v2, v28

    move-wide/from16 v14, v34

    goto/16 :goto_2

    .line 318
    .end local v5    # "tile":Landroid/graphics/Point;
    .end local v22    # "d":D
    .end local v28    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v34    # "brng":D
    .restart local v2    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .local v8, "d":D
    .local v14, "brng":D
    .restart local v19    # "mapTileUpperBound":I
    :cond_a
    move-object/from16 v28, v2

    move-object v12, v6

    move-wide/from16 v22, v8

    move-wide/from16 v34, v14

    move/from16 v14, v19

    .end local v2    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v8    # "d":D
    .end local v19    # "mapTileUpperBound":I
    .local v14, "mapTileUpperBound":I
    .restart local v22    # "d":D
    .restart local v28    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .restart local v34    # "brng":D
    goto :goto_8

    .line 316
    .end local v22    # "d":D
    .end local v28    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v34    # "brng":D
    .restart local v2    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .restart local v8    # "d":D
    .local v14, "brng":D
    .restart local v19    # "mapTileUpperBound":I
    :cond_b
    move-object/from16 v28, v2

    move-object v12, v6

    move-wide/from16 v22, v8

    move-wide/from16 v34, v14

    move/from16 v14, v19

    .line 348
    .end local v2    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v4    # "wayPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v8    # "d":D
    .end local v17    # "leadCoef":D
    .end local v19    # "mapTileUpperBound":I
    .local v14, "mapTileUpperBound":I
    .restart local v22    # "d":D
    .restart local v28    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    :goto_8
    const/4 v9, 0x1

    goto/16 :goto_d

    .line 303
    .end local v14    # "mapTileUpperBound":I
    .end local v22    # "d":D
    .end local v28    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .restart local v2    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .local v5, "mapTileUpperBound":I
    .restart local v8    # "d":D
    :cond_c
    move-object/from16 v28, v2

    move v14, v5

    move-object v12, v6

    move-wide/from16 v22, v8

    .end local v2    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v5    # "mapTileUpperBound":I
    .end local v8    # "d":D
    .restart local v14    # "mapTileUpperBound":I
    .restart local v22    # "d":D
    .restart local v28    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    const/4 v9, 0x1

    goto :goto_d

    .line 351
    .end local v14    # "mapTileUpperBound":I
    .end local v22    # "d":D
    .end local v28    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .restart local v2    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .restart local v5    # "mapTileUpperBound":I
    .restart local v8    # "d":D
    :cond_d
    move-object/from16 v28, v2

    move v14, v5

    move-object v12, v6

    move-wide/from16 v22, v8

    .end local v2    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v5    # "mapTileUpperBound":I
    .end local v8    # "d":D
    .restart local v14    # "mapTileUpperBound":I
    .restart local v22    # "d":D
    .restart local v28    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    new-instance v2, Landroid/graphics/Point;

    .line 352
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v4

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v0}, Lorg/osmdroid/util/TileSystem;->getTileXFromLongitude(DI)I

    move-result v4

    .line 353
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v5

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9, v0}, Lorg/osmdroid/util/TileSystem;->getTileYFromLatitude(DI)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 354
    .local v2, "tile":Landroid/graphics/Point;
    move-object v3, v2

    .line 356
    iget v4, v2, Landroid/graphics/Point;->x:I

    if-ltz v4, :cond_e

    const/4 v4, 0x0

    goto :goto_9

    :cond_e
    iget v4, v2, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    .line 357
    .local v4, "ofsx":I
    :goto_9
    iget v5, v2, Landroid/graphics/Point;->y:I

    if-ltz v5, :cond_f

    const/4 v11, 0x0

    goto :goto_a

    :cond_f
    iget v5, v2, Landroid/graphics/Point;->y:I

    neg-int v11, v5

    :goto_a
    move v5, v11

    .line 358
    .local v5, "ofsy":I
    iget v6, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v4

    .local v6, "xAround":I
    :goto_b
    iget v8, v2, Landroid/graphics/Point;->x:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    if-gt v6, v8, :cond_11

    .line 359
    iget v8, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v5

    .local v8, "yAround":I
    :goto_c
    iget v10, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v9

    add-int/2addr v10, v5

    if-gt v8, v10, :cond_10

    .line 360
    invoke-static {v8, v14}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v10

    .line 361
    .local v10, "tileY":I
    invoke-static {v6, v14}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v11

    .line 362
    .local v11, "tileX":I
    invoke-static {v0, v11, v10}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    .end local v10    # "tileY":I
    .end local v11    # "tileX":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 358
    .end local v8    # "yAround":I
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 367
    .end local v2    # "tile":Landroid/graphics/Point;
    .end local v4    # "ofsx":I
    .end local v5    # "ofsy":I
    .end local v6    # "xAround":I
    :cond_11
    :goto_d
    move-object v2, v7

    .line 368
    .end local v7    # "geoPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v22    # "d":D
    .end local v28    # "prevPoint":Lorg/osmdroid/util/GeoPoint;
    .local v2, "prevPoint":Lorg/osmdroid/util/GeoPoint;
    move v4, v9

    move-object v6, v12

    move v5, v14

    goto/16 :goto_0

    .line 369
    .end local v14    # "mapTileUpperBound":I
    .local v5, "mapTileUpperBound":I
    :cond_12
    return-object v1
.end method

.method public static getTilesCoverage(Lorg/osmdroid/util/BoundingBox;I)Ljava/util/Collection;
    .locals 3
    .param p0, "pBB"    # Lorg/osmdroid/util/BoundingBox;
    .param p1, "pZoomLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/BoundingBox;",
            "I)",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 221
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p0, p1, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverageIterable(Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/util/IterableWithSize;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/util/IterableWithSize;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 222
    .local v2, "mapTile":Ljava/lang/Long;
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v2    # "mapTile":Ljava/lang/Long;
    goto :goto_0

    .line 224
    :cond_0
    return-object v0
.end method

.method public static getTilesCoverage(Ljava/util/ArrayList;II)Ljava/util/List;
    .locals 3
    .param p1, "pZoomMin"    # I
    .param p2, "pZoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 277
    .local p0, "pGeoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move v1, p1

    .local v1, "zoomLevel":I
    :goto_0
    if-gt v1, p2, :cond_0

    .line 279
    invoke-static {p0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverage(Ljava/util/ArrayList;I)Ljava/util/Collection;

    move-result-object v2

    .line 280
    .local v2, "resultForZoom":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    .end local v2    # "resultForZoom":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v1    # "zoomLevel":I
    :cond_0
    return-object v0
.end method

.method public static getTilesCoverage(Lorg/osmdroid/util/BoundingBox;II)Ljava/util/List;
    .locals 3
    .param p0, "pBB"    # Lorg/osmdroid/util/BoundingBox;
    .param p1, "pZoomMin"    # I
    .param p2, "pZoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/BoundingBox;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move v1, p1

    .local v1, "zoomLevel":I
    :goto_0
    if-gt v1, p2, :cond_0

    .line 208
    invoke-static {p0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverage(Lorg/osmdroid/util/BoundingBox;I)Ljava/util/Collection;

    move-result-object v2

    .line 209
    .local v2, "resultForZoom":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    .end local v2    # "resultForZoom":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "zoomLevel":I
    :cond_0
    return-object v0
.end method

.method static getTilesCoverageIterable(Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/util/IterableWithSize;
    .locals 5
    .param p0, "pBB"    # Lorg/osmdroid/util/BoundingBox;
    .param p1, "pZoomMin"    # I
    .param p2, "pZoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/BoundingBox;",
            "II)",
            "Lorg/osmdroid/util/IterableWithSize<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 237
    new-instance v0, Lorg/osmdroid/util/MapTileAreaList;

    invoke-direct {v0}, Lorg/osmdroid/util/MapTileAreaList;-><init>()V

    .line 238
    .local v0, "list":Lorg/osmdroid/util/MapTileAreaList;
    move v1, p1

    .local v1, "zoomLevel":I
    :goto_0
    if-gt v1, p2, :cond_0

    .line 239
    invoke-virtual {v0}, Lorg/osmdroid/util/MapTileAreaList;->getList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/osmdroid/util/MapTileArea;

    invoke-direct {v3}, Lorg/osmdroid/util/MapTileArea;-><init>()V

    invoke-static {p0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesRect(Lorg/osmdroid/util/BoundingBox;I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/osmdroid/util/MapTileArea;->set(ILandroid/graphics/Rect;)Lorg/osmdroid/util/MapTileArea;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "zoomLevel":I
    :cond_0
    return-object v0
.end method

.method public static getTilesRect(Lorg/osmdroid/util/BoundingBox;I)Landroid/graphics/Rect;
    .locals 11
    .param p0, "pBB"    # Lorg/osmdroid/util/BoundingBox;
    .param p1, "pZoomLevel"    # I

    .line 254
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 255
    .local v1, "mapTileUpperBound":I
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Lorg/osmdroid/util/TileSystem;->getTileXFromLongitude(DI)I

    move-result v2

    .line 256
    .local v2, "right":I
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v3

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p1}, Lorg/osmdroid/util/TileSystem;->getTileYFromLatitude(DI)I

    move-result v3

    .line 257
    .local v3, "bottom":I
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v4

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6, p1}, Lorg/osmdroid/util/TileSystem;->getTileXFromLongitude(DI)I

    move-result v4

    .line 258
    .local v4, "left":I
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v5

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7, p1}, Lorg/osmdroid/util/TileSystem;->getTileYFromLatitude(DI)I

    move-result v5

    .line 259
    .local v5, "top":I
    sub-int v6, v2, v4

    add-int/2addr v6, v0

    .line 260
    .local v6, "width":I
    if-gtz v6, :cond_0

    .line 261
    add-int/2addr v6, v1

    .line 263
    :cond_0
    sub-int v7, v3, v5

    add-int/2addr v7, v0

    .line 264
    .local v7, "height":I
    if-gtz v7, :cond_1

    .line 265
    add-int/2addr v7, v1

    .line 267
    :cond_1
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v4, v6

    sub-int/2addr v9, v0

    add-int v10, v5, v7

    sub-int/2addr v10, v0

    invoke-direct {v8, v4, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v8
.end method


# virtual methods
.method public cacheCapacity()J
    .locals 2

    .line 1005
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public cancelAllJobs()V
    .locals 3

    .line 519
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 520
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 522
    .local v1, "next":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->cancel(Z)Z

    .line 523
    .end local v1    # "next":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    goto :goto_0

    .line 524
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 525
    return-void
.end method

.method public checkTile(J)Z
    .locals 2
    .param p1, "pMapTileIndex"    # J

    .line 182
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v0, v1, p1, p2}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z

    move-result v0

    return v0
.end method

.method public cleanAreaAsync(Landroid/content/Context;Ljava/util/ArrayList;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .line 961
    .local p2, "geoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-virtual {p0, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->extendedBoundsFromGeoPoints(Ljava/util/ArrayList;I)Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    .line 962
    .local v0, "extendedBounds":Lorg/osmdroid/util/BoundingBox;
    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->cleanAreaAsync(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public cleanAreaAsync(Landroid/content/Context;Ljava/util/List;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;II)",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .line 969
    .local p2, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCleaningAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/List;II)V

    .line 970
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCleaningDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 971
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public cleanAreaAsync(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "bb"    # Lorg/osmdroid/util/BoundingBox;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I

    .line 947
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCleaningAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/BoundingBox;II)V

    .line 948
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCleaningDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 949
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public currentCacheUsage()J
    .locals 2

    .line 997
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->directorySize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteTile(J)Z
    .locals 2
    .param p1, "pMapTileIndex"    # J

    .line 178
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v0, v1, p1, p2}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v0, v1, p1, p2}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->remove(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public directorySize(Ljava/io/File;)J
    .locals 8
    .param p1, "pDirectory"    # Ljava/io/File;

    .line 1012
    const-wide/16 v0, 0x0

    .line 1013
    .local v0, "usedCacheSpace":J
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1014
    .local v2, "z":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 1015
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1016
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1017
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1

    .line 1019
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1020
    invoke-virtual {p0, v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->directorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 1015
    .end local v5    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1025
    :cond_2
    return-wide v0
.end method

.method public downloadAreaAsync(Landroid/content/Context;Ljava/util/ArrayList;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .line 422
    .local p2, "geoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 424
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/ArrayList;II)V

    .line 428
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 429
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public downloadAreaAsync(Landroid/content/Context;Ljava/util/ArrayList;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .param p5, "callback"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;",
            ")",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .line 461
    .local p2, "geoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 463
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/ArrayList;II)V

    .line 467
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {v0, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 468
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 469
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public downloadAreaAsync(Landroid/content/Context;Ljava/util/List;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;II)",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .line 536
    .local p2, "pTiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 538
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/List;II)V

    .line 542
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 543
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public downloadAreaAsync(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "bb"    # Lorg/osmdroid/util/BoundingBox;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I

    .line 403
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 405
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/BoundingBox;II)V

    .line 409
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 410
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public downloadAreaAsync(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "bb"    # Lorg/osmdroid/util/BoundingBox;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .param p5, "callback"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    .line 441
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 443
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/BoundingBox;II)V

    .line 447
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {v0, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 448
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 449
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public downloadAreaAsyncNoUI(Landroid/content/Context;Ljava/util/ArrayList;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .param p5, "callback"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;",
            ")",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .line 482
    .local p2, "geoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 484
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/ArrayList;II)V

    .line 488
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {v0, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 489
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public downloadAreaAsyncNoUI(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "bb"    # Lorg/osmdroid/util/BoundingBox;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .param p5, "callback"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    .line 502
    new-instance v6, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 504
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/BoundingBox;II)V

    .line 508
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {v0, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 509
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 510
    return-object v0
.end method

.method public execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 1
    .param p1, "pTask"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 389
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 390
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 391
    return-object p1
.end method

.method public extendedBoundsFromGeoPoints(Ljava/util/ArrayList;I)Lorg/osmdroid/util/BoundingBox;
    .locals 16
    .param p2, "minZoomLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;I)",
            "Lorg/osmdroid/util/BoundingBox;"
        }
    .end annotation

    .line 979
    .local p1, "geoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    move/from16 v0, p2

    invoke-static/range {p1 .. p1}, Lorg/osmdroid/util/BoundingBox;->fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v1

    .line 980
    .local v1, "bb":Lorg/osmdroid/util/BoundingBox;
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v0}, Lorg/osmdroid/util/TileSystem;->getTileXFromLongitude(DI)I

    move-result v2

    .line 981
    .local v2, "right":I
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v3

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v0}, Lorg/osmdroid/util/TileSystem;->getTileYFromLatitude(DI)I

    move-result v3

    .line 982
    .local v3, "bottom":I
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v4

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v0}, Lorg/osmdroid/util/TileSystem;->getTileXFromLongitude(DI)I

    move-result v4

    .line 983
    .local v4, "left":I
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v5

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v0}, Lorg/osmdroid/util/TileSystem;->getTileYFromLatitude(DI)I

    move-result v5

    .line 984
    .local v5, "top":I
    new-instance v15, Lorg/osmdroid/util/BoundingBox;

    .line 985
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v6

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7, v0}, Lorg/osmdroid/util/TileSystem;->getLatitudeFromTileY(II)D

    move-result-wide v7

    .line 986
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v6

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v6, v9, v0}, Lorg/osmdroid/util/TileSystem;->getLongitudeFromTileX(II)D

    move-result-wide v9

    .line 987
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v6

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v6, v11, v0}, Lorg/osmdroid/util/TileSystem;->getLatitudeFromTileY(II)D

    move-result-wide v11

    .line 988
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v6

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v6, v13, v0}, Lorg/osmdroid/util/TileSystem;->getLongitudeFromTileX(II)D

    move-result-wide v13

    move-object v6, v15

    invoke-direct/range {v6 .. v14}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 984
    return-object v15
.end method

.method public forceLoadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;J)Z
    .locals 3
    .param p1, "tileSource"    # Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    .param p2, "pMapTileIndex"    # J

    .line 170
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

    iget-object v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-virtual {v1, p2, p3, v2, p1}, Lorg/osmdroid/tileprovider/modules/TileDownloader;->downloadTile(JLorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Lorg/osmdroid/tileprovider/modules/CantContinueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 172
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Lorg/osmdroid/tileprovider/modules/CantContinueException;
    return v0
.end method

.method public getCleaningAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
    .locals 1

    .line 920
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$4;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$4;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;)V

    return-object v0
.end method

.method public getCleaningDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
    .locals 1
    .param p1, "pCtx"    # Landroid/content/Context;
    .param p2, "pTask"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 831
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$2;

    invoke-direct {v0, p0, p1, p2, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$2;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;Landroid/content/Context;)V

    return-object v0
.end method

.method public getDownloadingAction(Landroid/content/Context;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
    .locals 1
    .param p1, "pCtx"    # Landroid/content/Context;

    .line 893
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;

    invoke-direct {v0, p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;)V

    return-object v0
.end method

.method public getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
    .locals 1
    .param p1, "pCtx"    # Landroid/content/Context;
    .param p2, "pTask"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 814
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;

    invoke-direct {v0, p0, p1, p2, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;Landroid/content/Context;)V

    return-object v0
.end method

.method public getPendingJobs()I
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getVerifyCancel()Z
    .locals 1

    .line 556
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->verifyCancel:Z

    return v0
.end method

.method public isTileToBeDownloaded(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z
    .locals 6
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 191
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-interface {v0, p1, p2, p3}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->getExpirationTimestamp(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/lang/Long;

    move-result-object v0

    .line 192
    .local v0, "expiration":Ljava/lang/Long;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 193
    return v1

    .line 195
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 196
    .local v2, "now":J
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public loadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;J)Z
    .locals 3
    .param p1, "tileSource"    # Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    .param p2, "pMapTileIndex"    # J

    .line 150
    invoke-static {p1, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getFileName(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/File;

    move-result-object v0

    .line 151
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 152
    return v2

    .line 155
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-interface {v1, p1, p2, p3}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    return v2

    .line 159
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->forceLoadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;J)Z

    move-result v1

    return v1
.end method

.method public possibleTilesCovered(Ljava/util/ArrayList;II)I
    .locals 1
    .param p2, "pZoomMin"    # I
    .param p3, "pZoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)I"
        }
    .end annotation

    .line 385
    .local p1, "pGeoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-static {p1, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverage(Ljava/util/ArrayList;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public possibleTilesInArea(Lorg/osmdroid/util/BoundingBox;II)I
    .locals 1
    .param p1, "pBB"    # Lorg/osmdroid/util/BoundingBox;
    .param p2, "pZoomMin"    # I
    .param p3, "pZoomMax"    # I

    .line 376
    invoke-static {p1, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverageIterable(Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/util/IterableWithSize;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/util/IterableWithSize;->size()I

    move-result v0

    return v0
.end method

.method public setTileDownloader(Lorg/osmdroid/tileprovider/modules/TileDownloader;)V
    .locals 0
    .param p1, "pTileDownloader"    # Lorg/osmdroid/tileprovider/modules/TileDownloader;

    .line 1032
    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

    .line 1033
    return-void
.end method

.method public setVerifyCancel(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 552
    iput-boolean p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->verifyCancel:Z

    .line 553
    return-void
.end method
