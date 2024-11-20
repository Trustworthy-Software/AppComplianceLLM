.class public interface abstract Lorg/mapsforge/map/model/IMapViewPosition;
.super Ljava/lang/Object;
.source "IMapViewPosition.java"


# virtual methods
.method public abstract addObserver(Lorg/mapsforge/map/model/common/Observer;)V
.end method

.method public abstract animateTo(Lorg/mapsforge/core/model/LatLong;)V
.end method

.method public abstract animationInProgress()Z
.end method

.method public abstract destroy()V
.end method

.method public abstract getCenter()Lorg/mapsforge/core/model/LatLong;
.end method

.method public abstract getMapLimit()Lorg/mapsforge/core/model/BoundingBox;
.end method

.method public abstract getMapPosition()Lorg/mapsforge/core/model/MapPosition;
.end method

.method public abstract getPivot()Lorg/mapsforge/core/model/LatLong;
.end method

.method public abstract getScaleFactor()D
.end method

.method public abstract getZoomLevel()B
.end method

.method public abstract getZoomLevelMax()B
.end method

.method public abstract getZoomLevelMin()B
.end method

.method public abstract init(Lorg/mapsforge/map/model/common/PreferencesFacade;)V
.end method

.method public abstract moveCenter(DD)V
.end method

.method public abstract moveCenter(DDZ)V
.end method

.method public abstract moveCenterAndZoom(DDB)V
.end method

.method public abstract removeObserver(Lorg/mapsforge/map/model/common/Observer;)V
.end method

.method public abstract save(Lorg/mapsforge/map/model/common/PreferencesFacade;)V
.end method

.method public abstract setCenter(Lorg/mapsforge/core/model/LatLong;)V
.end method

.method public abstract setMapLimit(Lorg/mapsforge/core/model/BoundingBox;)V
.end method

.method public abstract setMapPosition(Lorg/mapsforge/core/model/MapPosition;)V
.end method

.method public abstract setMapPosition(Lorg/mapsforge/core/model/MapPosition;Z)V
.end method

.method public abstract setPivot(Lorg/mapsforge/core/model/LatLong;)V
.end method

.method public abstract setScaleFactorAdjustment(D)V
.end method

.method public abstract setZoomLevel(B)V
.end method

.method public abstract setZoomLevel(BZ)V
.end method

.method public abstract setZoomLevelMax(B)V
.end method

.method public abstract setZoomLevelMin(B)V
.end method

.method public abstract zoom(B)V
.end method

.method public abstract zoomIn()V
.end method

.method public abstract zoomOut()V
.end method
