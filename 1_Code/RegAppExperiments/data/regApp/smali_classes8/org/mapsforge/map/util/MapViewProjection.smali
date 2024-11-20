.class public Lorg/mapsforge/map/util/MapViewProjection;
.super Ljava/lang/Object;
.source "MapViewProjection.java"


# static fields
.field private static final INVALID_MAP_VIEW_DIMENSIONS:Ljava/lang/String; = "invalid MapView dimensions"


# instance fields
.field private final mapView:Lorg/mapsforge/map/view/MapView;


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/view/MapView;)V
    .locals 0
    .param p1, "mapView"    # Lorg/mapsforge/map/view/MapView;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    .line 32
    return-void
.end method


# virtual methods
.method public fromPixels(DD)Lorg/mapsforge/core/model/LatLong;
    .locals 15
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 40
    move-object v1, p0

    iget-object v0, v1, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v0}, Lorg/mapsforge/map/view/MapView;->getWidth()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_2

    iget-object v0, v1, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v0}, Lorg/mapsforge/map/view/MapView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, v1, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v0}, Lorg/mapsforge/map/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->frameBufferModel:Lorg/mapsforge/map/model/FrameBufferModel;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/FrameBufferModel;->getMapPosition()Lorg/mapsforge/core/model/MapPosition;

    move-result-object v3

    .line 49
    .local v3, "mapPosition":Lorg/mapsforge/core/model/MapPosition;
    if-nez v3, :cond_1

    .line 50
    return-object v2

    .line 54
    :cond_1
    iget-object v4, v3, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    .line 55
    .local v4, "latLong":Lorg/mapsforge/core/model/LatLong;
    iget-byte v0, v3, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    iget-object v5, v1, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v5}, Lorg/mapsforge/map/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v5

    iget-object v5, v5, Lorg/mapsforge/map/model/Model;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v5}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v5

    invoke-static {v0, v5}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v5

    .line 56
    .local v5, "mapSize":J
    iget-wide v7, v4, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v7, v8, v5, v6}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v7

    .line 57
    .local v7, "pixelX":D
    iget-wide v9, v4, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v9, v10, v5, v6}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v9

    .line 58
    .local v9, "pixelY":D
    iget-object v0, v1, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v0}, Lorg/mapsforge/map/view/MapView;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-double v11, v0

    sub-double/2addr v7, v11

    .line 59
    iget-object v0, v1, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v0}, Lorg/mapsforge/map/view/MapView;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-double v11, v0

    sub-double/2addr v9, v11

    .line 64
    :try_start_0
    new-instance v0, Lorg/mapsforge/core/model/LatLong;

    add-double v11, v9, p3

    invoke-static {v11, v12, v5, v6}, Lorg/mapsforge/core/util/MercatorProjection;->pixelYToLatitude(DJ)D

    move-result-wide v11

    add-double v13, v7, p1

    .line 65
    invoke-static {v13, v14, v5, v6}, Lorg/mapsforge/core/util/MercatorProjection;->pixelXToLongitude(DJ)D

    move-result-wide v13

    invoke-direct {v0, v11, v12, v13, v14}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    return-object v2

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "mapPosition":Lorg/mapsforge/core/model/MapPosition;
    .end local v4    # "latLong":Lorg/mapsforge/core/model/LatLong;
    .end local v5    # "mapSize":J
    .end local v7    # "pixelX":D
    .end local v9    # "pixelY":D
    :cond_2
    :goto_0
    return-object v2
.end method

.method public getLatitudeSpan()D
    .locals 7

    .line 77
    iget-object v0, p0, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v0}, Lorg/mapsforge/map/view/MapView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v0}, Lorg/mapsforge/map/view/MapView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/mapsforge/map/util/MapViewProjection;->fromPixels(DD)Lorg/mapsforge/core/model/LatLong;

    move-result-object v2

    .line 79
    .local v2, "top":Lorg/mapsforge/core/model/LatLong;
    iget-object v3, p0, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v3}, Lorg/mapsforge/map/view/MapView;->getHeight()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p0, v0, v1, v3, v4}, Lorg/mapsforge/map/util/MapViewProjection;->fromPixels(DD)Lorg/mapsforge/core/model/LatLong;

    move-result-object v0

    .line 80
    .local v0, "bottom":Lorg/mapsforge/core/model/LatLong;
    iget-wide v3, v2, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-wide v5, v0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    return-wide v3

    .line 82
    .end local v0    # "bottom":Lorg/mapsforge/core/model/LatLong;
    .end local v2    # "top":Lorg/mapsforge/core/model/LatLong;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid MapView dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLongitudeSpan()D
    .locals 7

    .line 91
    iget-object v0, p0, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v0}, Lorg/mapsforge/map/view/MapView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v0}, Lorg/mapsforge/map/view/MapView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/mapsforge/map/util/MapViewProjection;->fromPixels(DD)Lorg/mapsforge/core/model/LatLong;

    move-result-object v2

    .line 93
    .local v2, "left":Lorg/mapsforge/core/model/LatLong;
    iget-object v3, p0, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v3}, Lorg/mapsforge/map/view/MapView;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p0, v3, v4, v0, v1}, Lorg/mapsforge/map/util/MapViewProjection;->fromPixels(DD)Lorg/mapsforge/core/model/LatLong;

    move-result-object v0

    .line 94
    .local v0, "right":Lorg/mapsforge/core/model/LatLong;
    iget-wide v3, v2, Lorg/mapsforge/core/model/LatLong;->longitude:D

    iget-wide v5, v0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    return-wide v3

    .line 96
    .end local v0    # "right":Lorg/mapsforge/core/model/LatLong;
    .end local v2    # "left":Lorg/mapsforge/core/model/LatLong;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid MapView dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toPixels(Lorg/mapsforge/core/model/LatLong;)Lorg/mapsforge/core/model/Point;
    .locals 13
    .param p1, "in"    # Lorg/mapsforge/core/model/LatLong;

    .line 106
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v1}, Lorg/mapsforge/map/view/MapView;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v1}, Lorg/mapsforge/map/view/MapView;->getHeight()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v1}, Lorg/mapsforge/map/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v1

    iget-object v1, v1, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v1}, Lorg/mapsforge/map/model/IMapViewPosition;->getMapPosition()Lorg/mapsforge/core/model/MapPosition;

    move-result-object v1

    .line 113
    .local v1, "mapPosition":Lorg/mapsforge/core/model/MapPosition;
    if-nez v1, :cond_1

    .line 114
    return-object v0

    .line 118
    :cond_1
    iget-object v0, v1, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    .line 119
    .local v0, "latLong":Lorg/mapsforge/core/model/LatLong;
    iget-byte v2, v1, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    iget-object v3, p0, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v3}, Lorg/mapsforge/map/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v3

    iget-object v3, v3, Lorg/mapsforge/map/model/Model;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v3}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v2

    .line 120
    .local v2, "mapSize":J
    iget-wide v4, v0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v4, v5, v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v4

    .line 121
    .local v4, "pixelX":D
    iget-wide v6, v0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v6, v7, v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v6

    .line 122
    .local v6, "pixelY":D
    iget-object v8, p0, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v8}, Lorg/mapsforge/map/view/MapView;->getWidth()I

    move-result v8

    shr-int/lit8 v8, v8, 0x1

    int-to-double v8, v8

    sub-double/2addr v4, v8

    .line 123
    iget-object v8, p0, Lorg/mapsforge/map/util/MapViewProjection;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v8}, Lorg/mapsforge/map/view/MapView;->getHeight()I

    move-result v8

    shr-int/lit8 v8, v8, 0x1

    int-to-double v8, v8

    sub-double/2addr v6, v8

    .line 126
    new-instance v8, Lorg/mapsforge/core/model/Point;

    iget-wide v9, p1, Lorg/mapsforge/core/model/LatLong;->longitude:D

    .line 127
    invoke-static {v9, v10, v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v9

    sub-double/2addr v9, v4

    double-to-int v9, v9

    int-to-double v9, v9

    iget-wide v11, p1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    .line 128
    invoke-static {v11, v12, v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v11

    sub-double/2addr v11, v6

    double-to-int v11, v11

    int-to-double v11, v11

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    .line 126
    return-object v8

    .line 107
    .end local v0    # "latLong":Lorg/mapsforge/core/model/LatLong;
    .end local v1    # "mapPosition":Lorg/mapsforge/core/model/MapPosition;
    .end local v2    # "mapSize":J
    .end local v4    # "pixelX":D
    .end local v6    # "pixelY":D
    :cond_2
    :goto_0
    return-object v0
.end method
