.class public Lorg/mapsforge/map/android/layers/MyLocationOverlay;
.super Lorg/mapsforge/map/layer/Layer;
.source "MyLocationOverlay.java"


# instance fields
.field private final circle:Lorg/mapsforge/map/layer/overlay/Circle;

.field private final marker:Lorg/mapsforge/map/layer/overlay/Marker;


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/layer/overlay/Marker;)V
    .locals 1
    .param p1, "marker"    # Lorg/mapsforge/map/layer/overlay/Marker;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mapsforge/map/android/layers/MyLocationOverlay;-><init>(Lorg/mapsforge/map/layer/overlay/Marker;Lorg/mapsforge/map/layer/overlay/Circle;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/layer/overlay/Marker;Lorg/mapsforge/map/layer/overlay/Circle;)V
    .locals 0
    .param p1, "marker"    # Lorg/mapsforge/map/layer/overlay/Marker;
    .param p2, "circle"    # Lorg/mapsforge/map/layer/overlay/Circle;

    .line 52
    invoke-direct {p0}, Lorg/mapsforge/map/layer/Layer;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/mapsforge/map/android/layers/MyLocationOverlay;->marker:Lorg/mapsforge/map/layer/overlay/Marker;

    .line 54
    iput-object p2, p0, Lorg/mapsforge/map/android/layers/MyLocationOverlay;->circle:Lorg/mapsforge/map/layer/overlay/Circle;

    .line 55
    return-void
.end method


# virtual methods
.method public declared-synchronized draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
    .locals 1
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p2, "zoomLevel"    # B
    .param p3, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p4, "topLeftPoint"    # Lorg/mapsforge/core/model/Point;

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/android/layers/MyLocationOverlay;->circle:Lorg/mapsforge/map/layer/overlay/Circle;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mapsforge/map/layer/overlay/Circle;->draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V

    .line 62
    .end local p0    # "this":Lorg/mapsforge/map/android/layers/MyLocationOverlay;
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/android/layers/MyLocationOverlay;->marker:Lorg/mapsforge/map/layer/overlay/Marker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mapsforge/map/layer/overlay/Marker;->draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 58
    .end local p1    # "boundingBox":Lorg/mapsforge/core/model/BoundingBox;
    .end local p2    # "zoomLevel":B
    .end local p3    # "canvas":Lorg/mapsforge/core/graphics/Canvas;
    .end local p4    # "topLeftPoint":Lorg/mapsforge/core/model/Point;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onAdd()V
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/mapsforge/map/android/layers/MyLocationOverlay;->circle:Lorg/mapsforge/map/layer/overlay/Circle;

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lorg/mapsforge/map/android/layers/MyLocationOverlay;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/layer/overlay/Circle;->setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/android/layers/MyLocationOverlay;->marker:Lorg/mapsforge/map/layer/overlay/Marker;

    iget-object v1, p0, Lorg/mapsforge/map/android/layers/MyLocationOverlay;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/layer/overlay/Marker;->setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/mapsforge/map/android/layers/MyLocationOverlay;->marker:Lorg/mapsforge/map/layer/overlay/Marker;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/overlay/Marker;->onDestroy()V

    .line 76
    return-void
.end method

.method public setPosition(DDF)V
    .locals 2
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "accuracy"    # F

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    new-instance v0, Lorg/mapsforge/core/model/LatLong;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    .line 81
    .local v0, "latLong":Lorg/mapsforge/core/model/LatLong;
    iget-object v1, p0, Lorg/mapsforge/map/android/layers/MyLocationOverlay;->marker:Lorg/mapsforge/map/layer/overlay/Marker;

    invoke-virtual {v1, v0}, Lorg/mapsforge/map/layer/overlay/Marker;->setLatLong(Lorg/mapsforge/core/model/LatLong;)V

    .line 82
    iget-object v1, p0, Lorg/mapsforge/map/android/layers/MyLocationOverlay;->circle:Lorg/mapsforge/map/layer/overlay/Circle;

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1, v0}, Lorg/mapsforge/map/layer/overlay/Circle;->setLatLong(Lorg/mapsforge/core/model/LatLong;)V

    .line 84
    iget-object v1, p0, Lorg/mapsforge/map/android/layers/MyLocationOverlay;->circle:Lorg/mapsforge/map/layer/overlay/Circle;

    invoke-virtual {v1, p5}, Lorg/mapsforge/map/layer/overlay/Circle;->setRadius(F)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/mapsforge/map/android/layers/MyLocationOverlay;->requestRedraw()V

    .line 87
    .end local v0    # "latLong":Lorg/mapsforge/core/model/LatLong;
    monitor-exit p0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
