.class public Lorg/mapsforge/map/layer/overlay/Circle;
.super Lorg/mapsforge/map/layer/Layer;
.source "Circle.java"


# instance fields
.field private final keepAligned:Z

.field private latLong:Lorg/mapsforge/core/model/LatLong;

.field private paintFill:Lorg/mapsforge/core/graphics/Paint;

.field private paintStroke:Lorg/mapsforge/core/graphics/Paint;

.field private radius:F


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/model/LatLong;FLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;)V
    .locals 6
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p2, "radius"    # F
    .param p3, "paintFill"    # Lorg/mapsforge/core/graphics/Paint;
    .param p4, "paintStroke"    # Lorg/mapsforge/core/graphics/Paint;

    .line 50
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/mapsforge/map/layer/overlay/Circle;-><init>(Lorg/mapsforge/core/model/LatLong;FLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/core/model/LatLong;FLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Z)V
    .locals 0
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p2, "radius"    # F
    .param p3, "paintFill"    # Lorg/mapsforge/core/graphics/Paint;
    .param p4, "paintStroke"    # Lorg/mapsforge/core/graphics/Paint;
    .param p5, "keepAligned"    # Z

    .line 63
    invoke-direct {p0}, Lorg/mapsforge/map/layer/Layer;-><init>()V

    .line 65
    iput-boolean p5, p0, Lorg/mapsforge/map/layer/overlay/Circle;->keepAligned:Z

    .line 66
    iput-object p1, p0, Lorg/mapsforge/map/layer/overlay/Circle;->latLong:Lorg/mapsforge/core/model/LatLong;

    .line 67
    invoke-direct {p0, p2}, Lorg/mapsforge/map/layer/overlay/Circle;->setRadiusInternal(F)V

    .line 68
    iput-object p3, p0, Lorg/mapsforge/map/layer/overlay/Circle;->paintFill:Lorg/mapsforge/core/graphics/Paint;

    .line 69
    iput-object p4, p0, Lorg/mapsforge/map/layer/overlay/Circle;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    .line 70
    return-void
.end method

.method private setRadiusInternal(F)V
    .locals 3
    .param p1, "radius"    # F

    .line 185
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iput p1, p0, Lorg/mapsforge/map/layer/overlay/Circle;->radius:F

    .line 189
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid radius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized contains(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;DB)Z
    .locals 4
    .param p1, "center"    # Lorg/mapsforge/core/model/Point;
    .param p2, "point"    # Lorg/mapsforge/core/model/Point;
    .param p3, "latitude"    # D
    .param p5, "zoomLevel"    # B

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Circle;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    .line 75
    invoke-virtual {p0, p3, p4, p5}, Lorg/mapsforge/map/layer/overlay/Circle;->getRadiusInPixels(DB)I

    move-result v1

    int-to-float v1, v1

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    .line 76
    .local v0, "distance":D
    invoke-virtual {p1, p2}, Lorg/mapsforge/core/model/Point;->distance(Lorg/mapsforge/core/model/Point;)D

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return v2

    .line 73
    .end local v0    # "distance":D
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Circle;
    .end local p1    # "center":Lorg/mapsforge/core/model/Point;
    .end local p2    # "point":Lorg/mapsforge/core/model/Point;
    .end local p3    # "latitude":D
    .end local p5    # "zoomLevel":B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
    .locals 25
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p2, "zoomLevel"    # B
    .param p3, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p4, "topLeftPoint"    # Lorg/mapsforge/core/model/Point;

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v4, v1, Lorg/mapsforge/map/layer/overlay/Circle;->latLong:Lorg/mapsforge/core/model/LatLong;

    if-eqz v4, :cond_6

    iget-object v5, v1, Lorg/mapsforge/map/layer/overlay/Circle;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    if-nez v5, :cond_0

    iget-object v5, v1, Lorg/mapsforge/map/layer/overlay/Circle;->paintFill:Lorg/mapsforge/core/graphics/Paint;

    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 85
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Circle;
    :cond_0
    iget-wide v4, v4, Lorg/mapsforge/core/model/LatLong;->latitude:D

    .line 86
    .local v4, "latitude":D
    iget-object v6, v1, Lorg/mapsforge/map/layer/overlay/Circle;->latLong:Lorg/mapsforge/core/model/LatLong;

    iget-wide v6, v6, Lorg/mapsforge/core/model/LatLong;->longitude:D

    .line 87
    .local v6, "longitude":D
    iget-object v8, v1, Lorg/mapsforge/map/layer/overlay/Circle;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v8}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v8

    invoke-static {v0, v8}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v8

    .line 88
    .local v8, "mapSize":J
    invoke-static {v6, v7, v8, v9}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v10

    iget-wide v12, v3, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v10, v12

    double-to-int v10, v10

    .line 89
    .local v10, "pixelX":I
    invoke-static {v4, v5, v8, v9}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v11

    iget-wide v13, v3, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v11, v13

    double-to-int v11, v11

    .line 90
    .local v11, "pixelY":I
    invoke-virtual {v1, v4, v5, v0}, Lorg/mapsforge/map/layer/overlay/Circle;->getRadiusInPixels(DB)I

    move-result v12

    .line 92
    .local v12, "radiusInPixel":I
    new-instance v22, Lorg/mapsforge/core/model/Rectangle;

    const-wide/16 v16, 0x0

    invoke-interface/range {p3 .. p3}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v13

    int-to-double v14, v13

    invoke-interface/range {p3 .. p3}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v13

    move-wide/from16 v23, v4

    .end local v4    # "latitude":D
    .local v23, "latitude":D
    int-to-double v4, v13

    move-object/from16 v13, v22

    move-wide/from16 v18, v14

    const-wide/16 v14, 0x0

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v21}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    move-object/from16 v13, v22

    .line 93
    .local v13, "canvasRectangle":Lorg/mapsforge/core/model/Rectangle;
    int-to-double v14, v10

    int-to-double v4, v11

    move-wide/from16 v20, v6

    .end local v6    # "longitude":D
    .local v20, "longitude":D
    int-to-double v6, v12

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    invoke-virtual/range {v13 .. v19}, Lorg/mapsforge/core/model/Rectangle;->intersectsCircle(DDD)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 94
    monitor-exit p0

    return-void

    .line 97
    :cond_1
    :try_start_1
    iget-object v4, v1, Lorg/mapsforge/map/layer/overlay/Circle;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    if-eqz v4, :cond_3

    .line 98
    iget-boolean v5, v1, Lorg/mapsforge/map/layer/overlay/Circle;->keepAligned:Z

    if-eqz v5, :cond_2

    .line 99
    invoke-interface {v4, v3}, Lorg/mapsforge/core/graphics/Paint;->setBitmapShaderShift(Lorg/mapsforge/core/model/Point;)V

    .line 101
    :cond_2
    iget-object v4, v1, Lorg/mapsforge/map/layer/overlay/Circle;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v2, v10, v11, v12, v4}, Lorg/mapsforge/core/graphics/Canvas;->drawCircle(IIILorg/mapsforge/core/graphics/Paint;)V

    .line 103
    :cond_3
    iget-object v4, v1, Lorg/mapsforge/map/layer/overlay/Circle;->paintFill:Lorg/mapsforge/core/graphics/Paint;

    if-eqz v4, :cond_5

    .line 104
    iget-boolean v5, v1, Lorg/mapsforge/map/layer/overlay/Circle;->keepAligned:Z

    if-eqz v5, :cond_4

    .line 105
    invoke-interface {v4, v3}, Lorg/mapsforge/core/graphics/Paint;->setBitmapShaderShift(Lorg/mapsforge/core/model/Point;)V

    .line 107
    :cond_4
    iget-object v4, v1, Lorg/mapsforge/map/layer/overlay/Circle;->paintFill:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v2, v10, v11, v12, v4}, Lorg/mapsforge/core/graphics/Canvas;->drawCircle(IIILorg/mapsforge/core/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_5
    monitor-exit p0

    return-void

    .line 82
    .end local v8    # "mapSize":J
    .end local v10    # "pixelX":I
    .end local v11    # "pixelY":I
    .end local v12    # "radiusInPixel":I
    .end local v13    # "canvasRectangle":Lorg/mapsforge/core/model/Rectangle;
    .end local v20    # "longitude":D
    .end local v23    # "latitude":D
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    .end local p1    # "boundingBox":Lorg/mapsforge/core/model/BoundingBox;
    .end local p2    # "zoomLevel":B
    .end local p3    # "canvas":Lorg/mapsforge/core/graphics/Canvas;
    .end local p4    # "topLeftPoint":Lorg/mapsforge/core/model/Point;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPaintFill()Lorg/mapsforge/core/graphics/Paint;
    .locals 1

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Circle;->paintFill:Lorg/mapsforge/core/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 115
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Circle;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPaintStroke()Lorg/mapsforge/core/graphics/Paint;
    .locals 1

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Circle;->paintStroke:Lorg/mapsforge/core/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 122
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Circle;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPosition()Lorg/mapsforge/core/model/LatLong;
    .locals 1

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Circle;->latLong:Lorg/mapsforge/core/model/LatLong;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 130
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Circle;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRadius()F
    .locals 1

    monitor-enter p0

    .line 137
    :try_start_0
    iget v0, p0, Lorg/mapsforge/map/layer/overlay/Circle;->radius:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 137
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Circle;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getRadiusInPixels(DB)I
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "zoomLevel"    # B

    .line 144
    iget v0, p0, Lorg/mapsforge/map/layer/overlay/Circle;->radius:F

    iget-object v1, p0, Lorg/mapsforge/map/layer/overlay/Circle;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v1}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v1

    invoke-static {p3, v1}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v1

    invoke-static {v0, p1, p2, v1, v2}, Lorg/mapsforge/core/util/MercatorProjection;->metersToPixels(FDJ)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public isKeepAligned()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/overlay/Circle;->keepAligned:Z

    return v0
.end method

.method public declared-synchronized setLatLong(Lorg/mapsforge/core/model/LatLong;)V
    .locals 0
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;

    monitor-enter p0

    .line 159
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/layer/overlay/Circle;->latLong:Lorg/mapsforge/core/model/LatLong;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 158
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Circle;
    .end local p1    # "latLong":Lorg/mapsforge/core/model/LatLong;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPaintFill(Lorg/mapsforge/core/graphics/Paint;)V
    .locals 0
    .param p1, "paintFill"    # Lorg/mapsforge/core/graphics/Paint;

    monitor-enter p0

    .line 166
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/layer/overlay/Circle;->paintFill:Lorg/mapsforge/core/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 165
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Circle;
    .end local p1    # "paintFill":Lorg/mapsforge/core/graphics/Paint;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPaintStroke(Lorg/mapsforge/core/graphics/Paint;)V
    .locals 0
    .param p1, "paintStroke"    # Lorg/mapsforge/core/graphics/Paint;

    monitor-enter p0

    .line 173
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/layer/overlay/Circle;->paintStroke:Lorg/mapsforge/core/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 172
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Circle;
    .end local p1    # "paintStroke":Lorg/mapsforge/core/graphics/Paint;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    monitor-enter p0

    .line 181
    :try_start_0
    invoke-direct {p0, p1}, Lorg/mapsforge/map/layer/overlay/Circle;->setRadiusInternal(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 180
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Circle;
    .end local p1    # "radius":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
