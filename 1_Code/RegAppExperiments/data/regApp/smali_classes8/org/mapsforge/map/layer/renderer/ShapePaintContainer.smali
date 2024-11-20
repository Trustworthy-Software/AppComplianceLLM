.class public Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;
.super Ljava/lang/Object;
.source "ShapePaintContainer.java"


# instance fields
.field final dy:F

.field final paint:Lorg/mapsforge/core/graphics/Paint;

.field final shapeContainer:Lorg/mapsforge/map/layer/renderer/ShapeContainer;


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/layer/renderer/ShapeContainer;Lorg/mapsforge/core/graphics/Paint;)V
    .locals 1
    .param p1, "shapeContainer"    # Lorg/mapsforge/map/layer/renderer/ShapeContainer;
    .param p2, "paint"    # Lorg/mapsforge/core/graphics/Paint;

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;-><init>(Lorg/mapsforge/map/layer/renderer/ShapeContainer;Lorg/mapsforge/core/graphics/Paint;F)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/layer/renderer/ShapeContainer;Lorg/mapsforge/core/graphics/Paint;F)V
    .locals 0
    .param p1, "shapeContainer"    # Lorg/mapsforge/map/layer/renderer/ShapeContainer;
    .param p2, "paint"    # Lorg/mapsforge/core/graphics/Paint;
    .param p3, "dy"    # F

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;->shapeContainer:Lorg/mapsforge/map/layer/renderer/ShapeContainer;

    .line 30
    iput-object p2, p0, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;->paint:Lorg/mapsforge/core/graphics/Paint;

    .line 31
    iput p3, p0, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;->dy:F

    .line 32
    return-void
.end method
