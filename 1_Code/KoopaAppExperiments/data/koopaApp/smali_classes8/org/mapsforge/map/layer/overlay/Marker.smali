.class public Lorg/mapsforge/map/layer/overlay/Marker;
.super Lorg/mapsforge/map/layer/Layer;
.source "Marker.java"


# instance fields
.field private bitmap:Lorg/mapsforge/core/graphics/Bitmap;

.field private horizontalOffset:I

.field private latLong:Lorg/mapsforge/core/model/LatLong;

.field private verticalOffset:I


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/graphics/Bitmap;II)V
    .locals 0
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p2, "bitmap"    # Lorg/mapsforge/core/graphics/Bitmap;
    .param p3, "horizontalOffset"    # I
    .param p4, "verticalOffset"    # I

    .line 44
    invoke-direct {p0}, Lorg/mapsforge/map/layer/Layer;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/mapsforge/map/layer/overlay/Marker;->latLong:Lorg/mapsforge/core/model/LatLong;

    .line 47
    iput-object p2, p0, Lorg/mapsforge/map/layer/overlay/Marker;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 48
    iput p3, p0, Lorg/mapsforge/map/layer/overlay/Marker;->horizontalOffset:I

    .line 49
    iput p4, p0, Lorg/mapsforge/map/layer/overlay/Marker;->verticalOffset:I

    .line 50
    return-void
.end method


# virtual methods
.method public declared-synchronized contains(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)Z
    .locals 20
    .param p1, "center"    # Lorg/mapsforge/core/model/Point;
    .param p2, "point"    # Lorg/mapsforge/core/model/Point;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v2, v1, Lorg/mapsforge/map/layer/overlay/Marker;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    iget-object v4, v1, Lorg/mapsforge/map/layer/overlay/Marker;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v4}, Lorg/mapsforge/core/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v4, v2

    .line 55
    .local v4, "width":D
    iget-object v2, v1, Lorg/mapsforge/map/layer/overlay/Marker;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v3

    iget-object v3, v1, Lorg/mapsforge/map/layer/overlay/Marker;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v3}, Lorg/mapsforge/core/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v2, v2

    .line 56
    .local v2, "height":D
    new-instance v15, Lorg/mapsforge/core/model/Rectangle;

    iget-wide v6, v0, Lorg/mapsforge/core/model/Point;->x:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v10, v4, v8

    sub-double/2addr v6, v10

    iget v10, v1, Lorg/mapsforge/map/layer/overlay/Marker;->horizontalOffset:I

    int-to-double v10, v10

    add-double/2addr v10, v6

    iget-wide v6, v0, Lorg/mapsforge/core/model/Point;->y:D

    div-double v12, v2, v8

    sub-double/2addr v6, v12

    iget v12, v1, Lorg/mapsforge/map/layer/overlay/Marker;->verticalOffset:I

    int-to-double v12, v12

    add-double/2addr v12, v6

    iget-wide v6, v0, Lorg/mapsforge/core/model/Point;->x:D

    div-double v16, v4, v8

    add-double v6, v6, v16

    iget v14, v1, Lorg/mapsforge/map/layer/overlay/Marker;->horizontalOffset:I

    int-to-double v8, v14

    add-double v18, v6, v8

    iget-wide v6, v0, Lorg/mapsforge/core/model/Point;->y:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v8, v2, v8

    add-double/2addr v6, v8

    iget v8, v1, Lorg/mapsforge/map/layer/overlay/Marker;->verticalOffset:I

    int-to-double v8, v8

    add-double v16, v6, v8

    move-object v6, v15

    move-wide v7, v10

    move-wide v9, v12

    move-wide/from16 v11, v18

    move-wide/from16 v13, v16

    invoke-direct/range {v6 .. v14}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    move-object v6, v15

    .line 61
    .local v6, "r":Lorg/mapsforge/core/model/Rectangle;
    move-object/from16 v7, p2

    invoke-virtual {v6, v7}, Lorg/mapsforge/core/model/Rectangle;->contains(Lorg/mapsforge/core/model/Point;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v8

    .line 53
    .end local v2    # "height":D
    .end local v4    # "width":D
    .end local v6    # "r":Lorg/mapsforge/core/model/Rectangle;
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Marker;
    .end local p1    # "center":Lorg/mapsforge/core/model/Point;
    .end local p2    # "point":Lorg/mapsforge/core/model/Point;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
    .locals 32
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p2, "zoomLevel"    # B
    .param p3, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p4, "topLeftPoint"    # Lorg/mapsforge/core/model/Point;

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v2, v1, Lorg/mapsforge/map/layer/overlay/Marker;->latLong:Lorg/mapsforge/core/model/LatLong;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/mapsforge/map/layer/overlay/Marker;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/mapsforge/core/graphics/Bitmap;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v5, p3

    goto/16 :goto_0

    .line 70
    :cond_0
    iget-object v2, v1, Lorg/mapsforge/map/layer/overlay/Marker;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v2}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v2

    move/from16 v3, p2

    invoke-static {v3, v2}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v4

    .line 71
    .local v4, "mapSize":J
    iget-object v2, v1, Lorg/mapsforge/map/layer/overlay/Marker;->latLong:Lorg/mapsforge/core/model/LatLong;

    iget-wide v6, v2, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v6, v7, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v6

    .line 72
    .local v6, "pixelX":D
    iget-object v2, v1, Lorg/mapsforge/map/layer/overlay/Marker;->latLong:Lorg/mapsforge/core/model/LatLong;

    iget-wide v8, v2, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v8, v9, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v8

    .line 74
    .local v8, "pixelY":D
    iget-object v2, v1, Lorg/mapsforge/map/layer/overlay/Marker;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v2}, Lorg/mapsforge/core/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 75
    .local v2, "halfBitmapWidth":I
    iget-object v10, v1, Lorg/mapsforge/map/layer/overlay/Marker;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v10}, Lorg/mapsforge/core/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    .line 77
    .local v10, "halfBitmapHeight":I
    iget-wide v11, v0, Lorg/mapsforge/core/model/Point;->x:D

    sub-double v11, v6, v11

    int-to-double v13, v2

    sub-double/2addr v11, v13

    iget v13, v1, Lorg/mapsforge/map/layer/overlay/Marker;->horizontalOffset:I

    int-to-double v13, v13

    add-double/2addr v11, v13

    double-to-int v11, v11

    .line 78
    .local v11, "left":I
    iget-wide v12, v0, Lorg/mapsforge/core/model/Point;->y:D

    sub-double v12, v8, v12

    int-to-double v14, v10

    sub-double/2addr v12, v14

    iget v14, v1, Lorg/mapsforge/map/layer/overlay/Marker;->verticalOffset:I

    int-to-double v14, v14

    add-double/2addr v12, v14

    double-to-int v12, v12

    .line 79
    .local v12, "top":I
    iget-object v13, v1, Lorg/mapsforge/map/layer/overlay/Marker;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v13}, Lorg/mapsforge/core/graphics/Bitmap;->getWidth()I

    move-result v13

    add-int/2addr v13, v11

    .line 80
    .local v13, "right":I
    iget-object v14, v1, Lorg/mapsforge/map/layer/overlay/Marker;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v14}, Lorg/mapsforge/core/graphics/Bitmap;->getHeight()I

    move-result v14

    add-int/2addr v14, v12

    .line 82
    .local v14, "bottom":I
    new-instance v24, Lorg/mapsforge/core/model/Rectangle;

    move/from16 v25, v2

    .end local v2    # "halfBitmapWidth":I
    .local v25, "halfBitmapWidth":I
    int-to-double v2, v11

    move-wide/from16 v26, v4

    .end local v4    # "mapSize":J
    .local v26, "mapSize":J
    int-to-double v4, v12

    move-wide/from16 v28, v6

    .end local v6    # "pixelX":D
    .local v28, "pixelX":D
    int-to-double v6, v13

    move-wide/from16 v30, v8

    .end local v8    # "pixelY":D
    .local v30, "pixelY":D
    int-to-double v8, v14

    move-object/from16 v15, v24

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    invoke-direct/range {v15 .. v23}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    move-object/from16 v2, v24

    .line 83
    .local v2, "bitmapRectangle":Lorg/mapsforge/core/model/Rectangle;
    new-instance v3, Lorg/mapsforge/core/model/Rectangle;

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-interface/range {p3 .. p3}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-interface/range {p3 .. p3}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-double v6, v6

    move-object v15, v3

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    invoke-direct/range {v15 .. v23}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    .line 84
    .local v3, "canvasRectangle":Lorg/mapsforge/core/model/Rectangle;
    invoke-virtual {v3, v2}, Lorg/mapsforge/core/model/Rectangle;->intersects(Lorg/mapsforge/core/model/Rectangle;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 85
    monitor-exit p0

    return-void

    .line 88
    :cond_1
    :try_start_1
    iget-object v4, v1, Lorg/mapsforge/map/layer/overlay/Marker;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    move-object/from16 v5, p3

    invoke-interface {v5, v4, v11, v12}, Lorg/mapsforge/core/graphics/Canvas;->drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 66
    .end local v2    # "bitmapRectangle":Lorg/mapsforge/core/model/Rectangle;
    .end local v3    # "canvasRectangle":Lorg/mapsforge/core/model/Rectangle;
    .end local v10    # "halfBitmapHeight":I
    .end local v11    # "left":I
    .end local v12    # "top":I
    .end local v13    # "right":I
    .end local v14    # "bottom":I
    .end local v25    # "halfBitmapWidth":I
    .end local v26    # "mapSize":J
    .end local v28    # "pixelX":D
    .end local v30    # "pixelY":D
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Marker;
    :cond_2
    move-object/from16 v5, p3

    .line 67
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    .end local p1    # "boundingBox":Lorg/mapsforge/core/model/BoundingBox;
    .end local p2    # "zoomLevel":B
    .end local p3    # "canvas":Lorg/mapsforge/core/graphics/Canvas;
    .end local p4    # "topLeftPoint":Lorg/mapsforge/core/model/Point;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBitmap()Lorg/mapsforge/core/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Marker;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 95
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Marker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHorizontalOffset()I
    .locals 1

    monitor-enter p0

    .line 102
    :try_start_0
    iget v0, p0, Lorg/mapsforge/map/layer/overlay/Marker;->horizontalOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 102
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Marker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatLong()Lorg/mapsforge/core/model/LatLong;
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Marker;->latLong:Lorg/mapsforge/core/model/LatLong;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 109
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Marker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPosition()Lorg/mapsforge/core/model/LatLong;
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Marker;->latLong:Lorg/mapsforge/core/model/LatLong;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 117
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Marker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVerticalOffset()I
    .locals 1

    monitor-enter p0

    .line 124
    :try_start_0
    iget v0, p0, Lorg/mapsforge/map/layer/overlay/Marker;->verticalOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 124
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Marker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Marker;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Bitmap;->decrementRefCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Marker;
    :cond_0
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBitmap(Lorg/mapsforge/core/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Lorg/mapsforge/core/graphics/Bitmap;

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Marker;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 139
    monitor-exit p0

    return-void

    .line 141
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Marker;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Marker;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 142
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Bitmap;->decrementRefCount()V

    .line 144
    :cond_1
    iput-object p1, p0, Lorg/mapsforge/map/layer/overlay/Marker;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 137
    .end local p1    # "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHorizontalOffset(I)V
    .locals 0
    .param p1, "horizontalOffset"    # I

    monitor-enter p0

    .line 151
    :try_start_0
    iput p1, p0, Lorg/mapsforge/map/layer/overlay/Marker;->horizontalOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 150
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Marker;
    .end local p1    # "horizontalOffset":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLatLong(Lorg/mapsforge/core/model/LatLong;)V
    .locals 0
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;

    monitor-enter p0

    .line 158
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/layer/overlay/Marker;->latLong:Lorg/mapsforge/core/model/LatLong;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 157
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Marker;
    .end local p1    # "latLong":Lorg/mapsforge/core/model/LatLong;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setVerticalOffset(I)V
    .locals 0
    .param p1, "verticalOffset"    # I

    monitor-enter p0

    .line 165
    :try_start_0
    iput p1, p0, Lorg/mapsforge/map/layer/overlay/Marker;->verticalOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 164
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Marker;
    .end local p1    # "verticalOffset":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
