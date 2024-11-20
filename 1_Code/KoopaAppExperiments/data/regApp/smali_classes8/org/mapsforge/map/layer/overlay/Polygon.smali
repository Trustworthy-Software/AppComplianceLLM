.class public Lorg/mapsforge/map/layer/overlay/Polygon;
.super Lorg/mapsforge/map/layer/Layer;
.source "Polygon.java"


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

.field private paintFill:Lorg/mapsforge/core/graphics/Paint;

.field private paintStroke:Lorg/mapsforge/core/graphics/Paint;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 1
    .param p1, "paintFill"    # Lorg/mapsforge/core/graphics/Paint;
    .param p2, "paintStroke"    # Lorg/mapsforge/core/graphics/Paint;
    .param p3, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mapsforge/map/layer/overlay/Polygon;-><init>(Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/GraphicFactory;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/GraphicFactory;Z)V
    .locals 1
    .param p1, "paintFill"    # Lorg/mapsforge/core/graphics/Paint;
    .param p2, "paintStroke"    # Lorg/mapsforge/core/graphics/Paint;
    .param p3, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p4, "keepAligned"    # Z

    .line 67
    invoke-direct {p0}, Lorg/mapsforge/map/layer/Layer;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->latLongs:Ljava/util/List;

    .line 68
    iput-boolean p4, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->keepAligned:Z

    .line 69
    iput-object p1, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->paintFill:Lorg/mapsforge/core/graphics/Paint;

    .line 70
    iput-object p2, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    .line 71
    iput-object p3, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 72
    return-void
.end method

.method private updatePoints()V
    .locals 2

    .line 185
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->latLongs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mapsforge/core/model/BoundingBox;

    iget-object v1, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->latLongs:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/mapsforge/core/model/BoundingBox;-><init>(Ljava/util/List;)V

    :goto_0
    iput-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    .line 186
    return-void
.end method


# virtual methods
.method public declared-synchronized addPoint(Lorg/mapsforge/core/model/LatLong;)V
    .locals 1
    .param p1, "point"    # Lorg/mapsforge/core/model/LatLong;

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->latLongs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-direct {p0}, Lorg/mapsforge/map/layer/overlay/Polygon;->updatePoints()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 74
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polygon;
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
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->latLongs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    invoke-direct {p0}, Lorg/mapsforge/map/layer/overlay/Polygon;->updatePoints()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 79
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polygon;
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
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->latLongs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    invoke-direct {p0}, Lorg/mapsforge/map/layer/overlay/Polygon;->updatePoints()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 84
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polygon;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Lorg/mapsforge/core/model/LatLong;)Z
    .locals 1
    .param p1, "tapLatLong"    # Lorg/mapsforge/core/model/LatLong;

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->latLongs:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/mapsforge/core/util/LatLongUtils;->contains(Ljava/util/List;Lorg/mapsforge/core/model/LatLong;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 90
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polygon;
    .end local p1    # "tapLatLong":Lorg/mapsforge/core/model/LatLong;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
    .locals 11
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p2, "zoomLevel"    # B
    .param p3, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p4, "topLeftPoint"    # Lorg/mapsforge/core/model/Point;

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->latLongs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->paintFill:Lorg/mapsforge/core/graphics/Paint;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 99
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polygon;
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/mapsforge/core/model/BoundingBox;->intersects(Lorg/mapsforge/core/model/BoundingBox;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 100
    monitor-exit p0

    return-void

    .line 103
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->latLongs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 105
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapsforge/core/model/LatLong;>;"
    iget-object v1, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    invoke-interface {v1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPath()Lorg/mapsforge/core/graphics/Path;

    move-result-object v1

    .line 106
    .local v1, "path":Lorg/mapsforge/core/graphics/Path;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/core/model/LatLong;

    .line 107
    .local v2, "latLong":Lorg/mapsforge/core/model/LatLong;
    iget-object v3, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v3}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v3

    invoke-static {p2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v3

    .line 108
    .local v3, "mapSize":J
    iget-wide v5, v2, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v5, v6, v3, v4}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v5

    iget-wide v7, p4, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    .line 109
    .local v5, "x":F
    iget-wide v6, v2, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v6, v7, v3, v4}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v6

    iget-wide v8, p4, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v6, v8

    double-to-float v6, v6

    .line 110
    .local v6, "y":F
    invoke-interface {v1, v5, v6}, Lorg/mapsforge/core/graphics/Path;->moveTo(FF)V

    .line 112
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mapsforge/core/model/LatLong;

    move-object v2, v7

    .line 114
    iget-wide v7, v2, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v7, v8, v3, v4}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v7

    iget-wide v9, p4, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v7, v9

    double-to-float v5, v7

    .line 115
    iget-wide v7, v2, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v7, v8, v3, v4}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v7

    iget-wide v9, p4, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v7, v9

    double-to-float v6, v7

    .line 116
    invoke-interface {v1, v5, v6}, Lorg/mapsforge/core/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v7, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    if-eqz v7, :cond_4

    .line 121
    iget-boolean v8, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->keepAligned:Z

    if-eqz v8, :cond_3

    .line 122
    invoke-interface {v7, p4}, Lorg/mapsforge/core/graphics/Paint;->setBitmapShaderShift(Lorg/mapsforge/core/model/Point;)V

    .line 124
    :cond_3
    iget-object v7, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->paintStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {p3, v1, v7}, Lorg/mapsforge/core/graphics/Canvas;->drawPath(Lorg/mapsforge/core/graphics/Path;Lorg/mapsforge/core/graphics/Paint;)V

    .line 126
    :cond_4
    iget-object v7, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->paintFill:Lorg/mapsforge/core/graphics/Paint;

    if-eqz v7, :cond_6

    .line 127
    iget-boolean v8, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->keepAligned:Z

    if-eqz v8, :cond_5

    .line 128
    invoke-interface {v7, p4}, Lorg/mapsforge/core/graphics/Paint;->setBitmapShaderShift(Lorg/mapsforge/core/model/Point;)V

    .line 131
    :cond_5
    iget-object v7, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->paintFill:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {p3, v1, v7}, Lorg/mapsforge/core/graphics/Canvas;->drawPath(Lorg/mapsforge/core/graphics/Path;Lorg/mapsforge/core/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :cond_6
    monitor-exit p0

    return-void

    .line 96
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapsforge/core/model/LatLong;>;"
    .end local v1    # "path":Lorg/mapsforge/core/graphics/Path;
    .end local v2    # "latLong":Lorg/mapsforge/core/model/LatLong;
    .end local v3    # "mapSize":J
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    .line 94
    .end local p1    # "boundingBox":Lorg/mapsforge/core/model/BoundingBox;
    .end local p2    # "zoomLevel":B
    .end local p3    # "canvas":Lorg/mapsforge/core/graphics/Canvas;
    .end local p4    # "topLeftPoint":Lorg/mapsforge/core/model/Point;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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

    .line 139
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->latLongs:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getPaintFill()Lorg/mapsforge/core/graphics/Paint;
    .locals 1

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->paintFill:Lorg/mapsforge/core/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 146
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polygon;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPaintStroke()Lorg/mapsforge/core/graphics/Paint;
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->paintStroke:Lorg/mapsforge/core/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 153
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polygon;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isKeepAligned()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->keepAligned:Z

    return v0
.end method

.method public declared-synchronized setPaintFill(Lorg/mapsforge/core/graphics/Paint;)V
    .locals 0
    .param p1, "paintFill"    # Lorg/mapsforge/core/graphics/Paint;

    monitor-enter p0

    .line 168
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->paintFill:Lorg/mapsforge/core/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 167
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polygon;
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

    .line 175
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->paintStroke:Lorg/mapsforge/core/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 174
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polygon;
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

    .line 179
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->latLongs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/Polygon;->latLongs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    invoke-direct {p0}, Lorg/mapsforge/map/layer/overlay/Polygon;->updatePoints()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 178
    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/Polygon;
    .end local p1    # "points":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/LatLong;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
