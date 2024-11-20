.class public Lorg/osmdroid/views/util/PathProjection;
.super Ljava/lang/Object;
.source "PathProjection.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 1
    .param p0, "projection"    # Lorg/osmdroid/views/Projection;
    .param p2, "reuse"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/Projection;",
            "Ljava/util/List<",
            "+",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 26
    .local p1, "in":Ljava/util/List;, "Ljava/util/List<+Lorg/osmdroid/util/GeoPoint;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/osmdroid/views/util/PathProjection;->toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;Z)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public static toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;Z)Landroid/graphics/Path;
    .locals 31
    .param p0, "projection"    # Lorg/osmdroid/views/Projection;
    .param p2, "reuse"    # Landroid/graphics/Path;
    .param p3, "doGudermann"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/Projection;",
            "Ljava/util/List<",
            "+",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Landroid/graphics/Path;",
            "Z)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 31
    .local p1, "in":Ljava/util/List;, "Ljava/util/List<+Lorg/osmdroid/util/GeoPoint;>;"
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    .line 35
    if-eqz p2, :cond_0

    move-object/from16 v1, p2

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 36
    .local v1, "out":Landroid/graphics/Path;
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->incReserve(I)V

    .line 38
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    .line 39
    .local v2, "tileSystem":Lorg/osmdroid/util/TileSystem;
    const/4 v3, 0x1

    .line 40
    .local v3, "first":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v3

    .end local v3    # "first":Z
    .local v14, "first":Z
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lorg/osmdroid/util/GeoPoint;

    .line 41
    .local v15, "gp":Lorg/osmdroid/util/GeoPoint;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    move-object v12, v3

    .line 42
    .local v12, "underGeopointTileCoords":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v16

    .line 43
    .local v16, "mapSize":D
    nop

    .line 44
    invoke-virtual {v15}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v15}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 43
    move-object v3, v2

    move-wide/from16 v8, v16

    invoke-virtual/range {v3 .. v11}, Lorg/osmdroid/util/TileSystem;->getMercatorFromGeo(DDDLorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;

    move-result-object v11

    .line 46
    .local v11, "mercator":Lorg/osmdroid/util/PointL;
    iget-wide v3, v11, Lorg/osmdroid/util/PointL;->x:J

    invoke-virtual {v0, v3, v4}, Lorg/osmdroid/views/Projection;->getTileFromMercator(J)I

    move-result v3

    iput v3, v12, Landroid/graphics/Point;->x:I

    .line 47
    iget-wide v3, v11, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v0, v3, v4}, Lorg/osmdroid/views/Projection;->getTileFromMercator(J)I

    move-result v3

    iput v3, v12, Landroid/graphics/Point;->y:I

    .line 52
    new-instance v3, Lorg/osmdroid/util/PointL;

    iget v4, v12, Landroid/graphics/Point;->x:I

    .line 53
    invoke-virtual {v0, v4}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v4

    iget v6, v12, Landroid/graphics/Point;->y:I

    .line 54
    invoke-virtual {v0, v6}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/PointL;-><init>(JJ)V

    move-object v10, v3

    .line 55
    .local v10, "upperRight":Lorg/osmdroid/util/PointL;
    new-instance v3, Lorg/osmdroid/util/PointL;

    iget v4, v12, Landroid/graphics/Point;->x:I

    .line 56
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v4

    iget v6, v12, Landroid/graphics/Point;->y:I

    .line 57
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/PointL;-><init>(JJ)V

    move-object v8, v3

    .line 58
    .local v8, "lowerLeft":Lorg/osmdroid/util/PointL;
    iget-wide v4, v10, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v6, v10, Lorg/osmdroid/util/PointL;->y:J

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object v3, v2

    move-object/from16 v21, v8

    .end local v8    # "lowerLeft":Lorg/osmdroid/util/PointL;
    .local v21, "lowerLeft":Lorg/osmdroid/util/PointL;
    move-wide/from16 v8, v16

    move-object/from16 v22, v10

    .end local v10    # "upperRight":Lorg/osmdroid/util/PointL;
    .local v22, "upperRight":Lorg/osmdroid/util/PointL;
    move-object/from16 v10, v18

    move-object/from16 v18, v11

    .end local v11    # "mercator":Lorg/osmdroid/util/PointL;
    .local v18, "mercator":Lorg/osmdroid/util/PointL;
    move/from16 v11, v19

    move-object/from16 v19, v13

    move-object v13, v12

    .end local v12    # "underGeopointTileCoords":Landroid/graphics/Point;
    .local v13, "underGeopointTileCoords":Landroid/graphics/Point;
    move/from16 v12, v20

    invoke-virtual/range {v3 .. v12}, Lorg/osmdroid/util/TileSystem;->getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;

    move-result-object v20

    .line 59
    .local v20, "neGeoPoint":Lorg/osmdroid/util/GeoPoint;
    move-object/from16 v12, v21

    .end local v21    # "lowerLeft":Lorg/osmdroid/util/PointL;
    .local v12, "lowerLeft":Lorg/osmdroid/util/PointL;
    iget-wide v4, v12, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v6, v12, Lorg/osmdroid/util/PointL;->y:J

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v21, 0x1

    move-object/from16 v23, v12

    .end local v12    # "lowerLeft":Lorg/osmdroid/util/PointL;
    .local v23, "lowerLeft":Lorg/osmdroid/util/PointL;
    move/from16 v12, v21

    invoke-virtual/range {v3 .. v12}, Lorg/osmdroid/util/TileSystem;->getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    .line 60
    .local v3, "swGeoPoint":Lorg/osmdroid/util/GeoPoint;
    new-instance v21, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual/range {v20 .. v20}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    .line 61
    invoke-virtual/range {v20 .. v20}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    .line 62
    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    move-object/from16 v4, v21

    invoke-direct/range {v4 .. v12}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 65
    .local v4, "bb":Lorg/osmdroid/util/BoundingBox;
    if-eqz p3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v5

    const-wide/high16 v7, 0x401c000000000000L    # 7.0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    .line 66
    nop

    .line 68
    invoke-virtual {v15}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v15}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    const/4 v9, 0x0

    .line 67
    invoke-virtual/range {v4 .. v9}, Lorg/osmdroid/util/BoundingBox;->getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    .local v5, "relativePositionInCenterMapTile":Landroid/graphics/PointF;
    goto :goto_2

    .line 70
    .end local v5    # "relativePositionInCenterMapTile":Landroid/graphics/PointF;
    :cond_1
    nop

    .line 72
    invoke-virtual {v15}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v15}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v9

    const/4 v11, 0x0

    .line 71
    move-object v6, v4

    invoke-virtual/range {v6 .. v11}, Lorg/osmdroid/util/BoundingBox;->getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    .line 75
    .restart local v5    # "relativePositionInCenterMapTile":Landroid/graphics/PointF;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 76
    .local v6, "screenRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Point;

    .line 77
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Lorg/osmdroid/views/Projection;->getTileFromMercator(J)I

    move-result v8

    .line 78
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v0, v9, v10}, Lorg/osmdroid/views/Projection;->getTileFromMercator(J)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 79
    .local v7, "centerMapTileCoords":Landroid/graphics/Point;
    new-instance v8, Lorg/osmdroid/util/PointL;

    iget v9, v7, Landroid/graphics/Point;->x:I

    .line 80
    invoke-virtual {v0, v9}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v9

    iget v11, v7, Landroid/graphics/Point;->y:I

    .line 81
    invoke-virtual {v0, v11}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/osmdroid/util/PointL;-><init>(JJ)V

    .line 82
    .local v8, "upperLeftCornerOfCenterMapTile":Lorg/osmdroid/util/PointL;
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    .line 83
    .local v9, "tileDiffX":I
    iget v10, v7, Landroid/graphics/Point;->y:I

    iget v11, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v11

    .line 84
    .local v10, "tileDiffY":I
    iget-wide v11, v8, Lorg/osmdroid/util/PointL;->x:J

    .line 85
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v21

    mul-int v0, v21, v9

    move-object/from16 v21, v2

    move-object/from16 v24, v3

    .end local v2    # "tileSystem":Lorg/osmdroid/util/TileSystem;
    .end local v3    # "swGeoPoint":Lorg/osmdroid/util/GeoPoint;
    .local v21, "tileSystem":Lorg/osmdroid/util/TileSystem;
    .local v24, "swGeoPoint":Lorg/osmdroid/util/GeoPoint;
    int-to-long v2, v0

    sub-long/2addr v11, v2

    .line 86
    .local v11, "underGeopointTileScreenLeft":J
    iget-wide v2, v8, Lorg/osmdroid/util/PointL;->y:J

    .line 87
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v0

    mul-int/2addr v0, v10

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .end local v6    # "screenRect":Landroid/graphics/Rect;
    .end local v7    # "centerMapTileCoords":Landroid/graphics/Point;
    .local v25, "screenRect":Landroid/graphics/Rect;
    .local v26, "centerMapTileCoords":Landroid/graphics/Point;
    int-to-long v6, v0

    sub-long/2addr v2, v6

    .line 89
    .local v2, "underGeopointTileScreenTop":J
    iget v0, v5, Landroid/graphics/PointF;->x:F

    .line 90
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    float-to-long v6, v0

    add-long/2addr v6, v11

    .line 91
    .local v6, "x":J
    iget v0, v5, Landroid/graphics/PointF;->y:F

    .line 92
    move-object/from16 v27, v4

    .end local v4    # "bb":Lorg/osmdroid/util/BoundingBox;
    .local v27, "bb":Lorg/osmdroid/util/BoundingBox;
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    move-object/from16 v28, v5

    .end local v5    # "relativePositionInCenterMapTile":Landroid/graphics/PointF;
    .local v28, "relativePositionInCenterMapTile":Landroid/graphics/PointF;
    float-to-long v4, v0

    add-long/2addr v4, v2

    .line 95
    .local v4, "y":J
    if-eqz v14, :cond_2

    .line 96
    long-to-float v0, v6

    move-wide/from16 v29, v2

    .end local v2    # "underGeopointTileScreenTop":J
    .local v29, "underGeopointTileScreenTop":J
    long-to-float v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    .line 100
    .end local v29    # "underGeopointTileScreenTop":J
    .restart local v2    # "underGeopointTileScreenTop":J
    :cond_2
    move-wide/from16 v29, v2

    .end local v2    # "underGeopointTileScreenTop":J
    .restart local v29    # "underGeopointTileScreenTop":J
    long-to-float v0, v6

    long-to-float v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    :goto_3
    const/4 v14, 0x0

    .line 103
    .end local v4    # "y":J
    .end local v6    # "x":J
    .end local v8    # "upperLeftCornerOfCenterMapTile":Lorg/osmdroid/util/PointL;
    .end local v9    # "tileDiffX":I
    .end local v10    # "tileDiffY":I
    .end local v11    # "underGeopointTileScreenLeft":J
    .end local v13    # "underGeopointTileCoords":Landroid/graphics/Point;
    .end local v15    # "gp":Lorg/osmdroid/util/GeoPoint;
    .end local v16    # "mapSize":D
    .end local v18    # "mercator":Lorg/osmdroid/util/PointL;
    .end local v20    # "neGeoPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v22    # "upperRight":Lorg/osmdroid/util/PointL;
    .end local v23    # "lowerLeft":Lorg/osmdroid/util/PointL;
    .end local v24    # "swGeoPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v25    # "screenRect":Landroid/graphics/Rect;
    .end local v26    # "centerMapTileCoords":Landroid/graphics/Point;
    .end local v27    # "bb":Lorg/osmdroid/util/BoundingBox;
    .end local v28    # "relativePositionInCenterMapTile":Landroid/graphics/PointF;
    .end local v29    # "underGeopointTileScreenTop":J
    move-object/from16 v0, p0

    move-object/from16 v13, v19

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 105
    .end local v21    # "tileSystem":Lorg/osmdroid/util/TileSystem;
    .local v2, "tileSystem":Lorg/osmdroid/util/TileSystem;
    :cond_3
    return-object v1

    .line 32
    .end local v1    # "out":Landroid/graphics/Path;
    .end local v2    # "tileSystem":Lorg/osmdroid/util/TileSystem;
    .end local v14    # "first":Z
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of GeoPoints needs to be at least 2."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
