.class public Lorg/mapsforge/map/layer/overlay/FixedPixelCircle;
.super Lorg/mapsforge/map/layer/overlay/Circle;
.source "FixedPixelCircle.java"


# instance fields
.field private scaleRadius:Z


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/model/LatLong;FLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;)V
    .locals 6
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p2, "radius"    # F
    .param p3, "paintFill"    # Lorg/mapsforge/core/graphics/Paint;
    .param p4, "paintStroke"    # Lorg/mapsforge/core/graphics/Paint;

    .line 38
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/mapsforge/map/layer/overlay/FixedPixelCircle;-><init>(Lorg/mapsforge/core/model/LatLong;FLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/core/model/LatLong;FLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Z)V
    .locals 1
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p2, "radius"    # F
    .param p3, "paintFill"    # Lorg/mapsforge/core/graphics/Paint;
    .param p4, "paintStroke"    # Lorg/mapsforge/core/graphics/Paint;
    .param p5, "keepAligned"    # Z

    .line 51
    invoke-direct/range {p0 .. p5}, Lorg/mapsforge/map/layer/overlay/Circle;-><init>(Lorg/mapsforge/core/model/LatLong;FLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Z)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/layer/overlay/FixedPixelCircle;->scaleRadius:Z

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized contains(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)Z
    .locals 4
    .param p1, "center"    # Lorg/mapsforge/core/model/Point;
    .param p2, "point"    # Lorg/mapsforge/core/model/Point;

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/overlay/FixedPixelCircle;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    .line 57
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/overlay/FixedPixelCircle;->getRadius()F

    move-result v1

    iget-boolean v2, p0, Lorg/mapsforge/map/layer/overlay/FixedPixelCircle;->scaleRadius:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mapsforge/map/layer/overlay/FixedPixelCircle;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    goto :goto_0

    .end local p0    # "this":Lorg/mapsforge/map/layer/overlay/FixedPixelCircle;
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    mul-float/2addr v1, v2

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    .line 58
    .local v0, "distance":D
    invoke-virtual {p1, p2}, Lorg/mapsforge/core/model/Point;->distance(Lorg/mapsforge/core/model/Point;)D

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    monitor-exit p0

    return v2

    .line 55
    .end local v0    # "distance":D
    .end local p1    # "center":Lorg/mapsforge/core/model/Point;
    .end local p2    # "point":Lorg/mapsforge/core/model/Point;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getRadiusInPixels(DB)I
    .locals 2
    .param p1, "latitude"    # D
    .param p3, "zoomLevel"    # B

    .line 66
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/overlay/FixedPixelCircle;->getRadius()F

    move-result v0

    iget-boolean v1, p0, Lorg/mapsforge/map/layer/overlay/FixedPixelCircle;->scaleRadius:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mapsforge/map/layer/overlay/FixedPixelCircle;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isScaleRadius()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/overlay/FixedPixelCircle;->scaleRadius:Z

    return v0
.end method

.method public setScaleRadius(Z)V
    .locals 0
    .param p1, "scaleRadius"    # Z

    .line 82
    iput-boolean p1, p0, Lorg/mapsforge/map/layer/overlay/FixedPixelCircle;->scaleRadius:Z

    .line 83
    return-void
.end method
