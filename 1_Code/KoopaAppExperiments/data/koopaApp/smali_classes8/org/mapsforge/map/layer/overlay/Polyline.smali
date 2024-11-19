.class public Lorg/mapsforge/map/layer/overlay/Polyline;
.super Lorg/mapsforge/map/layer/Layer;
.source "Polyline.java"


# static fields
.field private static final STROKE_MIN_ZOOM:B = 0xct


# instance fields
.field private boundingBox:Lorg/mapsforge/core/model/BoundingBox;

.field private final graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

.field private final keepAligned:Z

.field private final latLongs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/LatLong;",
            ">;"
        }
    .end annotation
.end field

.field private paintStroke:Lorg/mapsforge/core/graphics/Paint;

.field private strokeIncrease:D


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 1
    .param p1, "paintStroke"    # Lorg/mapsforge/core/graphics/Paint;
    .param p2, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mapsforge/map/layer/overlay/Polyline;-><init>(Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/GraphicFactory;Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/GraphicFactory;Z)V
    .locals 2
    .param p1, "paintStroke"    # Lorg/mapsforge/core/graphics/Paint;
    .param p2, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p3, "keepAligned"    # Z

    .line 67
    invoke-direct {p0}, Lorg/mapsforge/map/layer/Layer;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->latLongs:Ljava/util/List;

    .line 50
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->strokeIncrease:D

    .line 69
    iput-boolean p3, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->keepAligned:Z

    .line 70
    iput-object p1, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    .line 71
    iput-object p2, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 72
    return-void
.end method

.method private updatePoints()V
    .locals 2

    .line 197
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->latLongs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mapsforge/core/model/BoundingBox;

    iget-object v1, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->latLongs:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/mapsforge/core/model/BoundingBox;-><init>(Ljava/util/List;)V

    :goto_0
    iput-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    .line 198
    return-void
.end method


# virtual methods
.method public declared-synchronized addPoint(Lorg/mapsforge/core/model/LatLong;)V
    .locals 1
    .param p1, "point"    # Lorg/mapsforge/core/model/LatLong;

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->latLongs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-direct {p0}, Lorg/mapsforge/map/layer/overlay/Polyline;->updatePoints()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 74
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polyline;
    .end local p1    # "point":Lorg/mapsforge/core/model/LatLong;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/LatLong;",
            ">;)V"
        }
    .end annotation

    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/LatLong;>;"
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->latLongs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    invoke-direct {p0}, Lorg/mapsforge/map/layer/overlay/Polyline;->updatePoints()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 79
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polyline;
    .end local p1    # "points":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/LatLong;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->latLongs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    invoke-direct {p0}, Lorg/mapsforge/map/layer/overlay/Polyline;->updatePoints()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 84
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polyline;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/map/util/MapViewProjection;)Z
    .locals 22
    .param p1, "tapXY"    # Lorg/mapsforge/core/model/Point;
    .param p2, "mapViewProjection"    # Lorg/mapsforge/map/util/MapViewProjection;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v3, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v3}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    iget-object v4, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    .line 92
    invoke-interface {v4}, Lorg/mapsforge/core/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 91
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v3, v3

    .line 93
    .local v3, "distance":D
    const/4 v5, 0x0

    .line 94
    .local v5, "point2":Lorg/mapsforge/core/model/Point;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->latLongs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_2

    .line 95
    if-nez v6, :cond_0

    iget-object v7, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->latLongs:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mapsforge/core/model/LatLong;

    invoke-virtual {v2, v7}, Lorg/mapsforge/map/util/MapViewProjection;->toPixels(Lorg/mapsforge/core/model/LatLong;)Lorg/mapsforge/core/model/Point;

    move-result-object v7

    goto :goto_1

    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polyline;
    :cond_0
    move-object v7, v5

    .line 96
    .local v7, "point1":Lorg/mapsforge/core/model/Point;
    :goto_1
    iget-object v9, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->latLongs:Ljava/util/List;

    add-int/lit8 v10, v6, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mapsforge/core/model/LatLong;

    invoke-virtual {v2, v9}, Lorg/mapsforge/map/util/MapViewProjection;->toPixels(Lorg/mapsforge/core/model/LatLong;)Lorg/mapsforge/core/model/Point;

    move-result-object v9

    move-object v5, v9

    .line 97
    iget-wide v9, v7, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v11, v7, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v13, v5, Lorg/mapsforge/core/model/Point;->x:D

    move-wide v15, v9

    iget-wide v8, v5, Lorg/mapsforge/core/model/Point;->y:D

    move-object/from16 v21, v7

    move-wide/from16 v17, v8

    .end local v7    # "point1":Lorg/mapsforge/core/model/Point;
    .local v21, "point1":Lorg/mapsforge/core/model/Point;
    iget-wide v7, v0, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v9, v0, Lorg/mapsforge/core/model/Point;->y:D

    move-wide/from16 v19, v9

    move-wide v9, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v7

    invoke-static/range {v9 .. v20}, Lorg/mapsforge/core/util/LatLongUtils;->distanceSegmentPoint(DDDDDD)D

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-double v7, v7, v3

    if-gtz v7, :cond_1

    .line 98
    monitor-exit p0

    const/4 v7, 0x1

    return v7

    .line 94
    .end local v21    # "point1":Lorg/mapsforge/core/model/Point;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 101
    .end local v6    # "i":I
    :cond_2
    monitor-exit p0

    const/4 v6, 0x0

    return v6

    .line 90
    .end local v3    # "distance":D
    .end local v5    # "point2":Lorg/mapsforge/core/model/Point;
    .end local p1    # "tapXY":Lorg/mapsforge/core/model/Point;
    .end local p2    # "mapViewProjection":Lorg/mapsforge/map/util/MapViewProjection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
    .locals 16
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p2, "zoomLevel"    # B
    .param p3, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p4, "topLeftPoint"    # Lorg/mapsforge/core/model/Point;

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p4

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v3, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->latLongs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    if-nez v3, :cond_0

    move-object/from16 v4, p1

    move-object/from16 v13, p3

    goto/16 :goto_1

    .line 110
    :cond_0
    iget-object v3, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    if-eqz v3, :cond_1

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Lorg/mapsforge/core/model/BoundingBox;->intersects(Lorg/mapsforge/core/model/BoundingBox;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 111
    monitor-exit p0

    return-void

    .line 110
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polyline;
    :cond_1
    move-object/from16 v4, p1

    .line 114
    :cond_2
    :try_start_1
    iget-object v3, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->latLongs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 115
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapsforge/core/model/LatLong;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_3

    .line 116
    monitor-exit p0

    return-void

    .line 119
    :cond_3
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/core/model/LatLong;

    .line 120
    .local v5, "latLong":Lorg/mapsforge/core/model/LatLong;
    iget-object v6, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v6}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v6

    invoke-static {v0, v6}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v6

    .line 121
    .local v6, "mapSize":J
    iget-wide v8, v5, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v8, v9, v6, v7}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v8

    iget-wide v10, v2, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v8, v10

    double-to-float v8, v8

    .line 122
    .local v8, "x":F
    iget-wide v9, v5, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v9, v10, v6, v7}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v9

    iget-wide v11, v2, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v9, v11

    double-to-float v9, v9

    .line 124
    .local v9, "y":F
    iget-object v10, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    invoke-interface {v10}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPath()Lorg/mapsforge/core/graphics/Path;

    move-result-object v10

    .line 125
    .local v10, "path":Lorg/mapsforge/core/graphics/Path;
    invoke-interface {v10, v8, v9}, Lorg/mapsforge/core/graphics/Path;->moveTo(FF)V

    .line 127
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 128
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/core/model/LatLong;

    move-object v5, v11

    .line 129
    iget-wide v11, v5, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v11, v12, v6, v7}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v11

    iget-wide v13, v2, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v11, v13

    double-to-float v8, v11

    .line 130
    iget-wide v11, v5, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v11, v12, v6, v7}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v11

    iget-wide v13, v2, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v11, v13

    double-to-float v9, v11

    .line 132
    invoke-interface {v10, v8, v9}, Lorg/mapsforge/core/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 135
    :cond_4
    iget-boolean v11, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->keepAligned:Z

    if-eqz v11, :cond_5

    .line 136
    iget-object v11, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v11, v2}, Lorg/mapsforge/core/graphics/Paint;->setBitmapShaderShift(Lorg/mapsforge/core/model/Point;)V

    .line 138
    :cond_5
    iget-object v11, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v11}, Lorg/mapsforge/core/graphics/Paint;->getStrokeWidth()F

    move-result v11

    .line 139
    .local v11, "strokeWidth":F
    iget-wide v12, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->strokeIncrease:D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v12, v14

    if-lez v14, :cond_6

    .line 140
    add-int/lit8 v14, v0, -0xc

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v12, v12

    .line 141
    .local v12, "scale":F
    iget-object v13, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    mul-float v14, v11, v12

    invoke-interface {v13, v14}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    .line 143
    .end local v12    # "scale":F
    :cond_6
    iget-object v12, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    move-object/from16 v13, p3

    invoke-interface {v13, v10, v12}, Lorg/mapsforge/core/graphics/Canvas;->drawPath(Lorg/mapsforge/core/graphics/Path;Lorg/mapsforge/core/graphics/Paint;)V

    .line 144
    iget-object v12, v1, Lorg/mapsforge/map/layer/overlay/Polyline;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v12, v11}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 106
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapsforge/core/model/LatLong;>;"
    .end local v5    # "latLong":Lorg/mapsforge/core/model/LatLong;
    .end local v6    # "mapSize":J
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v10    # "path":Lorg/mapsforge/core/graphics/Path;
    .end local v11    # "strokeWidth":F
    :cond_7
    move-object/from16 v4, p1

    move-object/from16 v13, p3

    .line 107
    :goto_1
    monitor-exit p0

    return-void

    .line 105
    .end local p1    # "boundingBox":Lorg/mapsforge/core/model/BoundingBox;
    .end local p2    # "zoomLevel":B
    .end local p3    # "canvas":Lorg/mapsforge/core/graphics/Canvas;
    .end local p4    # "topLeftPoint":Lorg/mapsforge/core/model/Point;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLatLongs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/LatLong;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->latLongs:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getPaintStroke()Lorg/mapsforge/core/graphics/Paint;
    .locals 1

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->paintStroke:Lorg/mapsforge/core/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 158
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polyline;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStrokeIncrease()D
    .locals 2

    monitor-enter p0

    .line 165
    :try_start_0
    iget-wide v0, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->strokeIncrease:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 165
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polyline;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isKeepAligned()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->keepAligned:Z

    return v0
.end method

.method public declared-synchronized setPaintStroke(Lorg/mapsforge/core/graphics/Paint;)V
    .locals 0
    .param p1, "paintStroke"    # Lorg/mapsforge/core/graphics/Paint;

    monitor-enter p0

    .line 180
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->paintStroke:Lorg/mapsforge/core/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 179
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polyline;
    .end local p1    # "paintStroke":Lorg/mapsforge/core/graphics/Paint;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/LatLong;",
            ">;)V"
        }
    .end annotation

    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/LatLong;>;"
    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->latLongs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->latLongs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    invoke-direct {p0}, Lorg/mapsforge/map/layer/overlay/Polyline;->updatePoints()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 183
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polyline;
    .end local p1    # "points":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/LatLong;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStrokeIncrease(D)V
    .locals 0
    .param p1, "strokeIncrease"    # D

    monitor-enter p0

    .line 193
    :try_start_0
    iput-wide p1, p0, Lorg/mapsforge/map/layer/overlay/Polyline;->strokeIncrease:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 192
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polyline;
    .end local p1    # "strokeIncrease":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
