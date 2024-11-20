.class public Lorg/mapsforge/map/model/MapViewPosition;
.super Lorg/mapsforge/map/model/common/Observable;
.source "MapViewPosition.java"

# interfaces
.implements Lorg/mapsforge/map/model/IMapViewPosition;
.implements Lorg/mapsforge/map/model/common/Persistable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/model/MapViewPosition$Animator;
    }
.end annotation


# static fields
.field private static final LATITUDE:Ljava/lang/String; = "latitude"

.field private static final LATITUDE_MAX:Ljava/lang/String; = "latitudeMax"

.field private static final LATITUDE_MIN:Ljava/lang/String; = "latitudeMin"

.field private static final LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final LONGITUDE_MAX:Ljava/lang/String; = "longitudeMax"

.field private static final LONGITUDE_MIN:Ljava/lang/String; = "longitudeMin"

.field private static final ZOOM_LEVEL:Ljava/lang/String; = "zoomLevel"

.field private static final ZOOM_LEVEL_MAX:Ljava/lang/String; = "zoomLevelMax"

.field private static final ZOOM_LEVEL_MIN:Ljava/lang/String; = "zoomLevelMin"


# instance fields
.field private final animator:Lorg/mapsforge/map/model/MapViewPosition$Animator;

.field private final displayModel:Lorg/mapsforge/map/model/DisplayModel;

.field private latitude:D

.field private longitude:D

.field private mapLimit:Lorg/mapsforge/core/model/BoundingBox;

.field private pivot:Lorg/mapsforge/core/model/LatLong;

.field private scaleFactor:D

.field private zoomLevel:B

.field private zoomLevelMax:B

.field private zoomLevelMin:B


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/model/DisplayModel;)V
    .locals 2
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 154
    invoke-direct {p0}, Lorg/mapsforge/map/model/common/Observable;-><init>()V

    .line 155
    iput-object p1, p0, Lorg/mapsforge/map/model/MapViewPosition;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 156
    const/16 v0, 0x7f

    iput-byte v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevelMax:B

    .line 157
    new-instance v0, Lorg/mapsforge/map/model/MapViewPosition$Animator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mapsforge/map/model/MapViewPosition$Animator;-><init>(Lorg/mapsforge/map/model/MapViewPosition;Lorg/mapsforge/map/model/MapViewPosition$1;)V

    iput-object v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->animator:Lorg/mapsforge/map/model/MapViewPosition$Animator;

    .line 158
    invoke-virtual {v0}, Lorg/mapsforge/map/model/MapViewPosition$Animator;->start()V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lorg/mapsforge/map/model/MapViewPosition;)D
    .locals 2
    .param p0, "x0"    # Lorg/mapsforge/map/model/MapViewPosition;

    .line 31
    iget-wide v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->longitude:D

    return-wide v0
.end method

.method static synthetic access$100(Lorg/mapsforge/map/model/MapViewPosition;)D
    .locals 2
    .param p0, "x0"    # Lorg/mapsforge/map/model/MapViewPosition;

    .line 31
    iget-wide v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->latitude:D

    return-wide v0
.end method

.method static synthetic access$200(Lorg/mapsforge/map/model/MapViewPosition;)B
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/model/MapViewPosition;

    .line 31
    iget-byte v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevel:B

    return v0
.end method

.method static synthetic access$300(Lorg/mapsforge/map/model/MapViewPosition;)Lorg/mapsforge/map/model/DisplayModel;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/model/MapViewPosition;

    .line 31
    iget-object v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    return-object v0
.end method

.method private static varargs isNan([D)Z
    .locals 6
    .param p0, "values"    # [D

    .line 136
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p0, v2

    .line 137
    .local v3, "value":D
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    const/4 v0, 0x1

    return v0

    .line 136
    .end local v3    # "value":D
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_1
    return v1
.end method

.method private setCenterInternal(DD)V
    .locals 4
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 547
    iget-object v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->mapLimit:Lorg/mapsforge/core/model/BoundingBox;

    if-nez v0, :cond_0

    .line 548
    iput-wide p1, p0, Lorg/mapsforge/map/model/MapViewPosition;->latitude:D

    .line 549
    iput-wide p3, p0, Lorg/mapsforge/map/model/MapViewPosition;->longitude:D

    goto :goto_0

    .line 551
    :cond_0
    iget-wide v0, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-object v2, p0, Lorg/mapsforge/map/model/MapViewPosition;->mapLimit:Lorg/mapsforge/core/model/BoundingBox;

    iget-wide v2, v2, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->latitude:D

    .line 552
    iget-object v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->mapLimit:Lorg/mapsforge/core/model/BoundingBox;

    iget-wide v0, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-object v2, p0, Lorg/mapsforge/map/model/MapViewPosition;->mapLimit:Lorg/mapsforge/core/model/BoundingBox;

    iget-wide v2, v2, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->longitude:D

    .line 554
    :goto_0
    return-void
.end method

.method private setZoomLevelInternal(IZ)V
    .locals 7
    .param p1, "zoomLevel"    # I
    .param p2, "animated"    # Z

    .line 557
    iget-byte v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevelMax:B

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-byte v1, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevelMin:B

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevel:B

    .line 558
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-eqz p2, :cond_0

    .line 559
    iget-object v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->animator:Lorg/mapsforge/map/model/MapViewPosition$Animator;

    invoke-virtual {p0}, Lorg/mapsforge/map/model/MapViewPosition;->getScaleFactor()D

    move-result-wide v3

    iget-byte v5, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevel:B

    int-to-double v5, v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/mapsforge/map/model/MapViewPosition$Animator;->startAnimationZoom(DD)V

    goto :goto_0

    .line 561
    :cond_0
    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/mapsforge/map/model/MapViewPosition;->setScaleFactor(D)V

    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/model/MapViewPosition;->setPivot(Lorg/mapsforge/core/model/LatLong;)V

    .line 564
    :goto_0
    return-void
.end method


# virtual methods
.method public animateTo(Lorg/mapsforge/core/model/LatLong;)V
    .locals 1
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;

    .line 166
    iget-object v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->animator:Lorg/mapsforge/map/model/MapViewPosition$Animator;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/model/MapViewPosition$Animator;->startAnimationMove(Lorg/mapsforge/core/model/LatLong;)V

    .line 167
    return-void
.end method

.method public animationInProgress()Z
    .locals 4

    .line 171
    iget-wide v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->scaleFactor:D

    iget-byte v2, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevel:B

    invoke-static {v2}, Lorg/mapsforge/core/util/MercatorProjection;->zoomLevelToScaleFactor(B)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public destroy()V
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->animator:Lorg/mapsforge/map/model/MapViewPosition$Animator;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/MapViewPosition$Animator;->finish()V

    .line 177
    return-void
.end method

.method public declared-synchronized getCenter()Lorg/mapsforge/core/model/LatLong;
    .locals 5

    monitor-enter p0

    .line 184
    :try_start_0
    new-instance v0, Lorg/mapsforge/core/model/LatLong;

    iget-wide v1, p0, Lorg/mapsforge/map/model/MapViewPosition;->latitude:D

    iget-wide v3, p0, Lorg/mapsforge/map/model/MapViewPosition;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 184
    .end local p0    # "this":Lorg/mapsforge/map/model/MapViewPosition;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMapLimit()Lorg/mapsforge/core/model/BoundingBox;
    .locals 1

    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->mapLimit:Lorg/mapsforge/core/model/BoundingBox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 192
    .end local p0    # "this":Lorg/mapsforge/map/model/MapViewPosition;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMapPosition()Lorg/mapsforge/core/model/MapPosition;
    .locals 3

    monitor-enter p0

    .line 200
    :try_start_0
    new-instance v0, Lorg/mapsforge/core/model/MapPosition;

    invoke-virtual {p0}, Lorg/mapsforge/map/model/MapViewPosition;->getCenter()Lorg/mapsforge/core/model/LatLong;

    move-result-object v1

    iget-byte v2, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevel:B

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/core/model/MapPosition;-><init>(Lorg/mapsforge/core/model/LatLong;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 200
    .end local p0    # "this":Lorg/mapsforge/map/model/MapViewPosition;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPivot()Lorg/mapsforge/core/model/LatLong;
    .locals 1

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->pivot:Lorg/mapsforge/core/model/LatLong;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 210
    .end local p0    # "this":Lorg/mapsforge/map/model/MapViewPosition;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPivotXY(B)Lorg/mapsforge/core/model/Point;
    .locals 3
    .param p1, "zoomLevel"    # B

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->pivot:Lorg/mapsforge/core/model/LatLong;

    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lorg/mapsforge/map/model/MapViewPosition;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v1}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v1

    invoke-static {p1, v1}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/mapsforge/core/util/MercatorProjection;->getPixel(Lorg/mapsforge/core/model/LatLong;J)Lorg/mapsforge/core/model/Point;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 226
    .end local p0    # "this":Lorg/mapsforge/map/model/MapViewPosition;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 222
    .end local p1    # "zoomLevel":B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getScaleFactor()D
    .locals 2

    monitor-enter p0

    .line 231
    :try_start_0
    iget-wide v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->scaleFactor:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 231
    .end local p0    # "this":Lorg/mapsforge/map/model/MapViewPosition;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getZoomLevel()B
    .locals 1

    monitor-enter p0

    .line 239
    :try_start_0
    iget-byte v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevel:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 239
    .end local p0    # "this":Lorg/mapsforge/map/model/MapViewPosition;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getZoomLevelMax()B
    .locals 1

    monitor-enter p0

    .line 244
    :try_start_0
    iget-byte v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevelMax:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 244
    .end local p0    # "this":Lorg/mapsforge/map/model/MapViewPosition;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getZoomLevelMin()B
    .locals 1

    monitor-enter p0

    .line 249
    :try_start_0
    iget-byte v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevelMin:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 249
    .end local p0    # "this":Lorg/mapsforge/map/model/MapViewPosition;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lorg/mapsforge/map/model/common/PreferencesFacade;)V
    .locals 22
    .param p1, "preferencesFacade"    # Lorg/mapsforge/map/model/common/PreferencesFacade;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 254
    :try_start_0
    const-string v2, "latitude"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Lorg/mapsforge/map/model/common/PreferencesFacade;->getDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, v1, Lorg/mapsforge/map/model/MapViewPosition;->latitude:D

    .line 255
    const-string v2, "longitude"

    invoke-interface {v0, v2, v3, v4}, Lorg/mapsforge/map/model/common/PreferencesFacade;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/mapsforge/map/model/MapViewPosition;->longitude:D

    .line 257
    const-string v2, "latitudeMax"

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    invoke-interface {v0, v2, v3, v4}, Lorg/mapsforge/map/model/common/PreferencesFacade;->getDouble(Ljava/lang/String;D)D

    move-result-wide v5

    .line 258
    .local v5, "maxLatitude":D
    const-string v2, "latitudeMin"

    invoke-interface {v0, v2, v3, v4}, Lorg/mapsforge/map/model/common/PreferencesFacade;->getDouble(Ljava/lang/String;D)D

    move-result-wide v7

    move-wide/from16 v16, v7

    .line 259
    .local v16, "minLatitude":D
    const-string v2, "longitudeMax"

    invoke-interface {v0, v2, v3, v4}, Lorg/mapsforge/map/model/common/PreferencesFacade;->getDouble(Ljava/lang/String;D)D

    move-result-wide v7

    move-wide/from16 v18, v7

    .line 260
    .local v18, "maxLongitude":D
    const-string v2, "longitudeMin"

    invoke-interface {v0, v2, v3, v4}, Lorg/mapsforge/map/model/common/PreferencesFacade;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 262
    .local v2, "minLongitude":D
    const/4 v4, 0x4

    new-array v4, v4, [D

    const/4 v14, 0x0

    aput-wide v5, v4, v14

    const/4 v7, 0x1

    aput-wide v16, v4, v7

    const/4 v7, 0x2

    aput-wide v18, v4, v7

    const/4 v7, 0x3

    aput-wide v2, v4, v7

    invoke-static {v4}, Lorg/mapsforge/map/model/MapViewPosition;->isNan([D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    const/4 v4, 0x0

    iput-object v4, v1, Lorg/mapsforge/map/model/MapViewPosition;->mapLimit:Lorg/mapsforge/core/model/BoundingBox;

    move-wide/from16 v20, v2

    move v2, v14

    goto :goto_0

    .line 265
    .end local p0    # "this":Lorg/mapsforge/map/model/MapViewPosition;
    :cond_0
    new-instance v4, Lorg/mapsforge/core/model/BoundingBox;

    move-object v7, v4

    move-wide/from16 v8, v16

    move-wide v10, v2

    move-wide v12, v5

    move-wide/from16 v20, v2

    move v2, v14

    .end local v2    # "minLongitude":D
    .local v20, "minLongitude":D
    move-wide/from16 v14, v18

    invoke-direct/range {v7 .. v15}, Lorg/mapsforge/core/model/BoundingBox;-><init>(DDDD)V

    iput-object v4, v1, Lorg/mapsforge/map/model/MapViewPosition;->mapLimit:Lorg/mapsforge/core/model/BoundingBox;

    .line 268
    :goto_0
    const-string v3, "zoomLevel"

    invoke-interface {v0, v3, v2}, Lorg/mapsforge/map/model/common/PreferencesFacade;->getByte(Ljava/lang/String;B)B

    move-result v3

    iput-byte v3, v1, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevel:B

    .line 269
    const-string v3, "zoomLevelMax"

    const/16 v4, 0x7f

    invoke-interface {v0, v3, v4}, Lorg/mapsforge/map/model/common/PreferencesFacade;->getByte(Ljava/lang/String;B)B

    move-result v3

    iput-byte v3, v1, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevelMax:B

    .line 270
    const-string v3, "zoomLevelMin"

    invoke-interface {v0, v3, v2}, Lorg/mapsforge/map/model/common/PreferencesFacade;->getByte(Ljava/lang/String;B)B

    move-result v2

    iput-byte v2, v1, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevelMin:B

    .line 271
    iget-byte v2, v1, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevel:B

    int-to-double v2, v2

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/mapsforge/map/model/MapViewPosition;->scaleFactor:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 253
    .end local v5    # "maxLatitude":D
    .end local v16    # "minLatitude":D
    .end local v18    # "maxLongitude":D
    .end local v20    # "minLongitude":D
    .end local p1    # "preferencesFacade":Lorg/mapsforge/map/model/common/PreferencesFacade;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public moveCenter(DD)V
    .locals 7
    .param p1, "moveHorizontal"    # D
    .param p3, "moveVertical"    # D

    .line 282
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lorg/mapsforge/map/model/MapViewPosition;->moveCenterAndZoom(DDBZ)V

    .line 283
    return-void
.end method

.method public moveCenter(DDZ)V
    .locals 7
    .param p1, "moveHorizontal"    # D
    .param p3, "moveVertical"    # D
    .param p5, "animated"    # Z

    .line 294
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/mapsforge/map/model/MapViewPosition;->moveCenterAndZoom(DDBZ)V

    .line 295
    return-void
.end method

.method public moveCenterAndZoom(DDB)V
    .locals 7
    .param p1, "moveHorizontal"    # D
    .param p3, "moveVertical"    # D
    .param p5, "zoomLevelDiff"    # B

    .line 306
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/mapsforge/map/model/MapViewPosition;->moveCenterAndZoom(DDBZ)V

    .line 307
    return-void
.end method

.method public moveCenterAndZoom(DDBZ)V
    .locals 14
    .param p1, "moveHorizontal"    # D
    .param p3, "moveVertical"    # D
    .param p5, "zoomLevelDiff"    # B
    .param p6, "animated"    # Z

    .line 318
    move-object v1, p0

    monitor-enter p0

    .line 319
    :try_start_0
    iget-byte v0, v1, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevel:B

    iget-object v2, v1, Lorg/mapsforge/map/model/MapViewPosition;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v2}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v2

    invoke-static {v0, v2}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v2

    .line 320
    .local v2, "mapSize":J
    iget-wide v4, v1, Lorg/mapsforge/map/model/MapViewPosition;->longitude:D

    invoke-static {v4, v5, v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v4

    sub-double/2addr v4, p1

    .line 322
    .local v4, "pixelX":D
    iget-wide v6, v1, Lorg/mapsforge/map/model/MapViewPosition;->latitude:D

    invoke-static {v6, v7, v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v6

    sub-double v6, v6, p3

    .line 324
    .local v6, "pixelY":D
    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    long-to-double v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    move-wide v4, v10

    .line 325
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    long-to-double v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    move-wide v6, v8

    .line 327
    invoke-static {v6, v7, v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->pixelYToLatitude(DJ)D

    move-result-wide v8

    .line 328
    .local v8, "newLatitude":D
    invoke-static {v4, v5, v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->pixelXToLongitude(DJ)D

    move-result-wide v10

    .line 329
    .local v10, "newLongitude":D
    invoke-direct {p0, v8, v9, v10, v11}, Lorg/mapsforge/map/model/MapViewPosition;->setCenterInternal(DD)V

    .line 330
    iget-byte v0, v1, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevel:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int v0, v0, p5

    move/from16 v12, p6

    :try_start_1
    invoke-direct {p0, v0, v12}, Lorg/mapsforge/map/model/MapViewPosition;->setZoomLevelInternal(IZ)V

    .line 331
    .end local v2    # "mapSize":J
    .end local v4    # "pixelX":D
    .end local v6    # "pixelY":D
    .end local v8    # "newLatitude":D
    .end local v10    # "newLongitude":D
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 332
    invoke-virtual {p0}, Lorg/mapsforge/map/model/MapViewPosition;->notifyObservers()V

    .line 333
    return-void

    .line 331
    :catchall_0
    move-exception v0

    move/from16 v12, p6

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized save(Lorg/mapsforge/map/model/common/PreferencesFacade;)V
    .locals 4
    .param p1, "preferencesFacade"    # Lorg/mapsforge/map/model/common/PreferencesFacade;

    monitor-enter p0

    .line 337
    :try_start_0
    const-string v0, "latitude"

    iget-wide v1, p0, Lorg/mapsforge/map/model/MapViewPosition;->latitude:D

    invoke-interface {p1, v0, v1, v2}, Lorg/mapsforge/map/model/common/PreferencesFacade;->putDouble(Ljava/lang/String;D)V

    .line 338
    const-string v0, "longitude"

    iget-wide v1, p0, Lorg/mapsforge/map/model/MapViewPosition;->longitude:D

    invoke-interface {p1, v0, v1, v2}, Lorg/mapsforge/map/model/common/PreferencesFacade;->putDouble(Ljava/lang/String;D)V

    .line 340
    iget-object v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->mapLimit:Lorg/mapsforge/core/model/BoundingBox;

    if-nez v0, :cond_0

    .line 341
    const-string v0, "latitudeMax"

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-interface {p1, v0, v1, v2}, Lorg/mapsforge/map/model/common/PreferencesFacade;->putDouble(Ljava/lang/String;D)V

    .line 342
    const-string v0, "latitudeMin"

    invoke-interface {p1, v0, v1, v2}, Lorg/mapsforge/map/model/common/PreferencesFacade;->putDouble(Ljava/lang/String;D)V

    .line 343
    const-string v0, "longitudeMax"

    invoke-interface {p1, v0, v1, v2}, Lorg/mapsforge/map/model/common/PreferencesFacade;->putDouble(Ljava/lang/String;D)V

    .line 344
    const-string v0, "longitudeMin"

    invoke-interface {p1, v0, v1, v2}, Lorg/mapsforge/map/model/common/PreferencesFacade;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 346
    .end local p0    # "this":Lorg/mapsforge/map/model/MapViewPosition;
    :cond_0
    const-string v1, "latitudeMax"

    iget-wide v2, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    invoke-interface {p1, v1, v2, v3}, Lorg/mapsforge/map/model/common/PreferencesFacade;->putDouble(Ljava/lang/String;D)V

    .line 347
    const-string v0, "latitudeMin"

    iget-object v1, p0, Lorg/mapsforge/map/model/MapViewPosition;->mapLimit:Lorg/mapsforge/core/model/BoundingBox;

    iget-wide v1, v1, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-interface {p1, v0, v1, v2}, Lorg/mapsforge/map/model/common/PreferencesFacade;->putDouble(Ljava/lang/String;D)V

    .line 348
    const-string v0, "longitudeMax"

    iget-object v1, p0, Lorg/mapsforge/map/model/MapViewPosition;->mapLimit:Lorg/mapsforge/core/model/BoundingBox;

    iget-wide v1, v1, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    invoke-interface {p1, v0, v1, v2}, Lorg/mapsforge/map/model/common/PreferencesFacade;->putDouble(Ljava/lang/String;D)V

    .line 349
    const-string v0, "longitudeMin"

    iget-object v1, p0, Lorg/mapsforge/map/model/MapViewPosition;->mapLimit:Lorg/mapsforge/core/model/BoundingBox;

    iget-wide v1, v1, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    invoke-interface {p1, v0, v1, v2}, Lorg/mapsforge/map/model/common/PreferencesFacade;->putDouble(Ljava/lang/String;D)V

    .line 352
    :goto_0
    const-string v0, "zoomLevel"

    iget-byte v1, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevel:B

    invoke-interface {p1, v0, v1}, Lorg/mapsforge/map/model/common/PreferencesFacade;->putByte(Ljava/lang/String;B)V

    .line 353
    const-string v0, "zoomLevelMax"

    iget-byte v1, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevelMax:B

    invoke-interface {p1, v0, v1}, Lorg/mapsforge/map/model/common/PreferencesFacade;->putByte(Ljava/lang/String;B)V

    .line 354
    const-string v0, "zoomLevelMin"

    iget-byte v1, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevelMin:B

    invoke-interface {p1, v0, v1}, Lorg/mapsforge/map/model/common/PreferencesFacade;->putByte(Ljava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 336
    .end local p1    # "preferencesFacade":Lorg/mapsforge/map/model/common/PreferencesFacade;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCenter(Lorg/mapsforge/core/model/LatLong;)V
    .locals 4
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;

    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    iget-wide v0, p1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-wide v2, p1, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/mapsforge/map/model/MapViewPosition;->setCenterInternal(DD)V

    .line 364
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-virtual {p0}, Lorg/mapsforge/map/model/MapViewPosition;->notifyObservers()V

    .line 366
    return-void

    .line 364
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMapLimit(Lorg/mapsforge/core/model/BoundingBox;)V
    .locals 1
    .param p1, "mapLimit"    # Lorg/mapsforge/core/model/BoundingBox;

    .line 373
    monitor-enter p0

    .line 374
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/model/MapViewPosition;->mapLimit:Lorg/mapsforge/core/model/BoundingBox;

    .line 375
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    invoke-virtual {p0}, Lorg/mapsforge/map/model/MapViewPosition;->notifyObservers()V

    .line 377
    return-void

    .line 375
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMapPosition(Lorg/mapsforge/core/model/MapPosition;)V
    .locals 1
    .param p1, "mapPosition"    # Lorg/mapsforge/core/model/MapPosition;

    .line 386
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/mapsforge/map/model/MapViewPosition;->setMapPosition(Lorg/mapsforge/core/model/MapPosition;Z)V

    .line 387
    return-void
.end method

.method public setMapPosition(Lorg/mapsforge/core/model/MapPosition;Z)V
    .locals 4
    .param p1, "mapPosition"    # Lorg/mapsforge/core/model/MapPosition;
    .param p2, "animated"    # Z

    .line 394
    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p1, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    iget-wide v0, v0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-object v2, p1, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    iget-wide v2, v2, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/mapsforge/map/model/MapViewPosition;->setCenterInternal(DD)V

    .line 396
    iget-byte v0, p1, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    invoke-direct {p0, v0, p2}, Lorg/mapsforge/map/model/MapViewPosition;->setZoomLevelInternal(IZ)V

    .line 397
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    invoke-virtual {p0}, Lorg/mapsforge/map/model/MapViewPosition;->notifyObservers()V

    .line 399
    return-void

    .line 397
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setPivot(Lorg/mapsforge/core/model/LatLong;)V
    .locals 1
    .param p1, "pivot"    # Lorg/mapsforge/core/model/LatLong;

    .line 411
    monitor-enter p0

    .line 412
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/model/MapViewPosition;->pivot:Lorg/mapsforge/core/model/LatLong;

    .line 413
    monitor-exit p0

    .line 414
    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScaleFactor(D)V
    .locals 1
    .param p1, "scaleFactor"    # D

    .line 420
    monitor-enter p0

    .line 421
    :try_start_0
    iput-wide p1, p0, Lorg/mapsforge/map/model/MapViewPosition;->scaleFactor:D

    .line 422
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-virtual {p0}, Lorg/mapsforge/map/model/MapViewPosition;->notifyObservers()V

    .line 424
    return-void

    .line 422
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setScaleFactorAdjustment(D)V
    .locals 4
    .param p1, "adjustment"    # D

    .line 428
    monitor-enter p0

    .line 429
    :try_start_0
    iget-byte v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevel:B

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/mapsforge/map/model/MapViewPosition;->setScaleFactor(D)V

    .line 430
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    invoke-virtual {p0}, Lorg/mapsforge/map/model/MapViewPosition;->notifyObservers()V

    .line 432
    return-void

    .line 430
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setZoomLevel(B)V
    .locals 1
    .param p1, "zoomLevel"    # B

    .line 443
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/mapsforge/map/model/MapViewPosition;->setZoomLevel(BZ)V

    .line 444
    return-void
.end method

.method public setZoomLevel(BZ)V
    .locals 3
    .param p1, "zoomLevel"    # B
    .param p2, "animated"    # Z

    .line 455
    if-ltz p1, :cond_0

    .line 458
    monitor-enter p0

    .line 459
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/map/model/MapViewPosition;->setZoomLevelInternal(IZ)V

    .line 460
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    invoke-virtual {p0}, Lorg/mapsforge/map/model/MapViewPosition;->notifyObservers()V

    .line 462
    return-void

    .line 460
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 456
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomLevel must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setZoomLevelMax(B)V
    .locals 3
    .param p1, "zoomLevelMax"    # B

    .line 466
    if-ltz p1, :cond_1

    .line 469
    monitor-enter p0

    .line 470
    :try_start_0
    iget-byte v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevelMin:B

    if-lt p1, v0, :cond_0

    .line 473
    iput-byte p1, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevelMax:B

    .line 474
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-virtual {p0}, Lorg/mapsforge/map/model/MapViewPosition;->notifyObservers()V

    .line 476
    return-void

    .line 471
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomLevelMax must be >= zoomLevelMin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "zoomLevelMax":B
    throw v0

    .line 474
    .restart local p1    # "zoomLevelMax":B
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 467
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomLevelMax must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setZoomLevelMin(B)V
    .locals 3
    .param p1, "zoomLevelMin"    # B

    .line 480
    if-ltz p1, :cond_1

    .line 483
    monitor-enter p0

    .line 484
    :try_start_0
    iget-byte v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevelMax:B

    if-gt p1, v0, :cond_0

    .line 487
    iput-byte p1, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevelMin:B

    .line 488
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    invoke-virtual {p0}, Lorg/mapsforge/map/model/MapViewPosition;->notifyObservers()V

    .line 490
    return-void

    .line 485
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomLevelMin must be <= zoomLevelMax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "zoomLevelMin":B
    throw v0

    .line 488
    .restart local p1    # "zoomLevelMin":B
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 481
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomLevelMin must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zoom(B)V
    .locals 1
    .param p1, "zoomLevelDiff"    # B

    .line 499
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/mapsforge/map/model/MapViewPosition;->zoom(BZ)V

    .line 500
    return-void
.end method

.method public zoom(BZ)V
    .locals 1
    .param p1, "zoomLevelDiff"    # B
    .param p2, "animated"    # Z

    .line 506
    monitor-enter p0

    .line 507
    :try_start_0
    iget-byte v0, p0, Lorg/mapsforge/map/model/MapViewPosition;->zoomLevel:B

    add-int/2addr v0, p1

    invoke-direct {p0, v0, p2}, Lorg/mapsforge/map/model/MapViewPosition;->setZoomLevelInternal(IZ)V

    .line 508
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    invoke-virtual {p0}, Lorg/mapsforge/map/model/MapViewPosition;->notifyObservers()V

    .line 510
    return-void

    .line 508
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public zoomIn()V
    .locals 1

    .line 519
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/model/MapViewPosition;->zoomIn(Z)V

    .line 520
    return-void
.end method

.method public zoomIn(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .line 526
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/mapsforge/map/model/MapViewPosition;->zoom(BZ)V

    .line 527
    return-void
.end method

.method public zoomOut()V
    .locals 1

    .line 536
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/model/MapViewPosition;->zoomOut(Z)V

    .line 537
    return-void
.end method

.method public zoomOut(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .line 543
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lorg/mapsforge/map/model/MapViewPosition;->zoom(BZ)V

    .line 544
    return-void
.end method
