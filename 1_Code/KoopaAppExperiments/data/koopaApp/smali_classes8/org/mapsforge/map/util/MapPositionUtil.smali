.class public final Lorg/mapsforge/map/util/MapPositionUtil;
.super Ljava/lang/Object;
.source "MapPositionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static getBoundingBox(Lorg/mapsforge/core/model/MapPosition;Lorg/mapsforge/core/model/Dimension;I)Lorg/mapsforge/core/model/BoundingBox;
    .locals 34
    .param p0, "mapPosition"    # Lorg/mapsforge/core/model/MapPosition;
    .param p1, "canvasDimension"    # Lorg/mapsforge/core/model/Dimension;
    .param p2, "tileSize"    # I

    .line 29
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-byte v2, v0, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    move/from16 v3, p2

    invoke-static {v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v4

    .line 30
    .local v4, "mapSize":J
    iget-object v2, v0, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    iget-wide v6, v2, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v6, v7, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v6

    .line 31
    .local v6, "pixelX":D
    iget-object v2, v0, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    iget-wide v8, v2, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v8, v9, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v8

    .line 33
    .local v8, "pixelY":D
    iget v2, v1, Lorg/mapsforge/core/model/Dimension;->width:I

    div-int/lit8 v2, v2, 0x2

    .line 34
    .local v2, "halfCanvasWidth":I
    iget v10, v1, Lorg/mapsforge/core/model/Dimension;->height:I

    div-int/lit8 v10, v10, 0x2

    .line 36
    .local v10, "halfCanvasHeight":I
    int-to-double v11, v2

    sub-double v11, v6, v11

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 37
    .local v11, "pixelXMin":D
    int-to-double v0, v10

    sub-double v0, v8, v0

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 38
    .local v0, "pixelYMin":D
    long-to-double v13, v4

    move-wide v15, v0

    .end local v0    # "pixelYMin":D
    .local v15, "pixelYMin":D
    int-to-double v0, v2

    add-double/2addr v0, v6

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 39
    .local v0, "pixelXMax":D
    long-to-double v13, v4

    move/from16 v17, v2

    .end local v2    # "halfCanvasWidth":I
    .local v17, "halfCanvasWidth":I
    int-to-double v2, v10

    add-double/2addr v2, v8

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 41
    .local v2, "pixelYMax":D
    invoke-static {v2, v3, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->pixelYToLatitude(DJ)D

    move-result-wide v13

    .line 42
    .local v13, "minLatitude":D
    invoke-static {v11, v12, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->pixelXToLongitude(DJ)D

    move-result-wide v27

    .line 43
    .local v27, "minLongitude":D
    move-wide/from16 v29, v2

    move-wide v2, v15

    .end local v15    # "pixelYMin":D
    .local v2, "pixelYMin":D
    .local v29, "pixelYMax":D
    invoke-static {v2, v3, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->pixelYToLatitude(DJ)D

    move-result-wide v15

    .line 44
    .local v15, "maxLatitude":D
    invoke-static {v0, v1, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->pixelXToLongitude(DJ)D

    move-result-wide v31

    .line 46
    .local v31, "maxLongitude":D
    new-instance v33, Lorg/mapsforge/core/model/BoundingBox;

    move-object/from16 v18, v33

    move-wide/from16 v19, v13

    move-wide/from16 v21, v27

    move-wide/from16 v23, v15

    move-wide/from16 v25, v31

    invoke-direct/range {v18 .. v26}, Lorg/mapsforge/core/model/BoundingBox;-><init>(DDDD)V

    return-object v33
.end method

.method public static getTopLeftPoint(Lorg/mapsforge/core/model/MapPosition;Lorg/mapsforge/core/model/Dimension;I)Lorg/mapsforge/core/model/Point;
    .locals 17
    .param p0, "mapPosition"    # Lorg/mapsforge/core/model/MapPosition;
    .param p1, "canvasDimension"    # Lorg/mapsforge/core/model/Dimension;
    .param p2, "tileSize"    # I

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    .line 52
    .local v2, "centerPoint":Lorg/mapsforge/core/model/LatLong;
    iget v3, v1, Lorg/mapsforge/core/model/Dimension;->width:I

    div-int/lit8 v3, v3, 0x2

    .line 53
    .local v3, "halfCanvasWidth":I
    iget v4, v1, Lorg/mapsforge/core/model/Dimension;->height:I

    div-int/lit8 v4, v4, 0x2

    .line 55
    .local v4, "halfCanvasHeight":I
    iget-byte v5, v0, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    move/from16 v6, p2

    invoke-static {v5, v6}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v7

    .line 56
    .local v7, "mapSize":J
    iget-wide v9, v2, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v9, v10, v7, v8}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-double v9, v9

    .line 57
    .local v9, "pixelX":D
    iget-wide v11, v2, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v11, v12, v7, v8}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-double v11, v11

    .line 58
    .local v11, "pixelY":D
    new-instance v5, Lorg/mapsforge/core/model/Point;

    double-to-long v13, v9

    int-to-long v0, v3

    sub-long/2addr v13, v0

    long-to-double v0, v13

    double-to-long v13, v11

    move-object v15, v2

    move/from16 v16, v3

    .end local v2    # "centerPoint":Lorg/mapsforge/core/model/LatLong;
    .end local v3    # "halfCanvasWidth":I
    .local v15, "centerPoint":Lorg/mapsforge/core/model/LatLong;
    .local v16, "halfCanvasWidth":I
    int-to-long v2, v4

    sub-long/2addr v13, v2

    long-to-double v2, v13

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    return-object v5
.end method
