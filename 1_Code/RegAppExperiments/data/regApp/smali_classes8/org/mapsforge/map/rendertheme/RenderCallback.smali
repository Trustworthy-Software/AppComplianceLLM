.class public interface abstract Lorg/mapsforge/map/rendertheme/RenderCallback;
.super Ljava/lang/Object;
.source "RenderCallback.java"


# virtual methods
.method public abstract renderArea(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;ILorg/mapsforge/map/layer/renderer/PolylineContainer;)V
.end method

.method public abstract renderAreaCaption(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;FFLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Position;ILorg/mapsforge/map/layer/renderer/PolylineContainer;)V
.end method

.method public abstract renderAreaSymbol(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V
.end method

.method public abstract renderPointOfInterestCaption(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;FFLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Position;ILorg/mapsforge/map/datastore/PointOfInterest;)V
.end method

.method public abstract renderPointOfInterestCircle(Lorg/mapsforge/map/rendertheme/RenderContext;FLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;ILorg/mapsforge/map/datastore/PointOfInterest;)V
.end method

.method public abstract renderPointOfInterestSymbol(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/map/datastore/PointOfInterest;)V
.end method

.method public abstract renderWay(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Paint;FILorg/mapsforge/map/layer/renderer/PolylineContainer;)V
.end method

.method public abstract renderWaySymbol(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILorg/mapsforge/core/graphics/Bitmap;FZZFFZLorg/mapsforge/map/layer/renderer/PolylineContainer;)V
.end method

.method public abstract renderWayText(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;FLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;ZFFZLorg/mapsforge/map/layer/renderer/PolylineContainer;)V
.end method
