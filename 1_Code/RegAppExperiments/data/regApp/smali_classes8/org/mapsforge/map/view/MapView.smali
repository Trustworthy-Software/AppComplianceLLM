.class public interface abstract Lorg/mapsforge/map/view/MapView;
.super Ljava/lang/Object;
.source "MapView.java"


# virtual methods
.method public abstract addLayer(Lorg/mapsforge/map/layer/Layer;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract destroyAll()V
.end method

.method public abstract getBoundingBox()Lorg/mapsforge/core/model/BoundingBox;
.end method

.method public abstract getDimension()Lorg/mapsforge/core/model/Dimension;
.end method

.method public abstract getFpsCounter()Lorg/mapsforge/map/view/FpsCounter;
.end method

.method public abstract getFrameBuffer()Lorg/mapsforge/map/view/FrameBuffer;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLayerManager()Lorg/mapsforge/map/layer/LayerManager;
.end method

.method public abstract getMapScaleBar()Lorg/mapsforge/map/scalebar/MapScaleBar;
.end method

.method public abstract getMapViewProjection()Lorg/mapsforge/map/util/MapViewProjection;
.end method

.method public abstract getModel()Lorg/mapsforge/map/model/Model;
.end method

.method public abstract getWidth()I
.end method

.method public abstract repaint()V
.end method

.method public abstract setCenter(Lorg/mapsforge/core/model/LatLong;)V
.end method

.method public abstract setMapScaleBar(Lorg/mapsforge/map/scalebar/MapScaleBar;)V
.end method

.method public abstract setZoomLevel(B)V
.end method

.method public abstract setZoomLevelMax(B)V
.end method

.method public abstract setZoomLevelMin(B)V
.end method
