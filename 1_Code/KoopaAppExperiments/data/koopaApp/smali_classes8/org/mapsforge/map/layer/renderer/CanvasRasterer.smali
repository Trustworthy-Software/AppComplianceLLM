.class public Lorg/mapsforge/map/layer/renderer/CanvasRasterer;
.super Ljava/lang/Object;
.source "CanvasRasterer.java"


# instance fields
.field private final canvas:Lorg/mapsforge/core/graphics/Canvas;

.field private final path:Lorg/mapsforge/core/graphics/Path;

.field private final symbolMatrix:Lorg/mapsforge/core/graphics/Matrix;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 1
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createCanvas()Lorg/mapsforge/core/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->canvas:Lorg/mapsforge/core/graphics/Canvas;

    .line 46
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPath()Lorg/mapsforge/core/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->path:Lorg/mapsforge/core/graphics/Path;

    .line 47
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createMatrix()Lorg/mapsforge/core/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->symbolMatrix:Lorg/mapsforge/core/graphics/Matrix;

    .line 48
    return-void
.end method

.method private drawCircleContainer(Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;)V
    .locals 7
    .param p1, "shapePaintContainer"    # Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;

    .line 123
    iget-object v0, p1, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;->shapeContainer:Lorg/mapsforge/map/layer/renderer/ShapeContainer;

    check-cast v0, Lorg/mapsforge/map/layer/renderer/CircleContainer;

    .line 124
    .local v0, "circleContainer":Lorg/mapsforge/map/layer/renderer/CircleContainer;
    iget-object v1, v0, Lorg/mapsforge/map/layer/renderer/CircleContainer;->point:Lorg/mapsforge/core/model/Point;

    .line 125
    .local v1, "point":Lorg/mapsforge/core/model/Point;
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->canvas:Lorg/mapsforge/core/graphics/Canvas;

    iget-wide v3, v1, Lorg/mapsforge/core/model/Point;->x:D

    double-to-int v3, v3

    iget-wide v4, v1, Lorg/mapsforge/core/model/Point;->y:D

    double-to-int v4, v4

    iget v5, v0, Lorg/mapsforge/map/layer/renderer/CircleContainer;->radius:F

    float-to-int v5, v5

    iget-object v6, p1, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;->paint:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/mapsforge/core/graphics/Canvas;->drawCircle(IIILorg/mapsforge/core/graphics/Paint;)V

    .line 126
    return-void
.end method

.method private drawHillshading(Lorg/mapsforge/map/layer/renderer/HillshadingContainer;)V
    .locals 5
    .param p1, "container"    # Lorg/mapsforge/map/layer/renderer/HillshadingContainer;

    .line 129
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->canvas:Lorg/mapsforge/core/graphics/Canvas;

    iget-object v1, p1, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    iget-object v2, p1, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;->hillsRect:Lorg/mapsforge/core/model/Rectangle;

    iget-object v3, p1, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;->tileRect:Lorg/mapsforge/core/model/Rectangle;

    iget v4, p1, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;->magnitude:F

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/graphics/Canvas;->shadeBitmap(Lorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/core/model/Rectangle;Lorg/mapsforge/core/model/Rectangle;F)V

    .line 130
    return-void
.end method

.method private drawPath(Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;[[Lorg/mapsforge/core/model/Point;F)V
    .locals 11
    .param p1, "shapePaintContainer"    # Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;
    .param p2, "coordinates"    # [[Lorg/mapsforge/core/model/Point;
    .param p3, "dy"    # F

    .line 133
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->path:Lorg/mapsforge/core/graphics/Path;

    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Path;->clear()V

    .line 135
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 137
    .local v3, "innerList":[Lorg/mapsforge/core/model/Point;
    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-eqz v4, :cond_0

    .line 138
    float-to-double v4, p3

    invoke-static {v3, v4, v5}, Lorg/mapsforge/map/layer/renderer/RendererUtils;->parallelPath([Lorg/mapsforge/core/model/Point;D)[Lorg/mapsforge/core/model/Point;

    move-result-object v4

    .local v4, "points":[Lorg/mapsforge/core/model/Point;
    goto :goto_1

    .line 140
    .end local v4    # "points":[Lorg/mapsforge/core/model/Point;
    :cond_0
    move-object v4, v3

    .line 142
    .restart local v4    # "points":[Lorg/mapsforge/core/model/Point;
    :goto_1
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 143
    aget-object v5, v4, v1

    .line 144
    .local v5, "point":Lorg/mapsforge/core/model/Point;
    iget-object v6, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->path:Lorg/mapsforge/core/graphics/Path;

    iget-wide v7, v5, Lorg/mapsforge/core/model/Point;->x:D

    double-to-float v7, v7

    iget-wide v8, v5, Lorg/mapsforge/core/model/Point;->y:D

    double-to-float v8, v8

    invoke-interface {v6, v7, v8}, Lorg/mapsforge/core/graphics/Path;->moveTo(FF)V

    .line 145
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_1

    .line 146
    aget-object v5, v4, v6

    .line 147
    iget-object v7, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->path:Lorg/mapsforge/core/graphics/Path;

    iget-wide v8, v5, Lorg/mapsforge/core/model/Point;->x:D

    double-to-int v8, v8

    int-to-float v8, v8

    iget-wide v9, v5, Lorg/mapsforge/core/model/Point;->y:D

    double-to-int v9, v9

    int-to-float v9, v9

    invoke-interface {v7, v8, v9}, Lorg/mapsforge/core/graphics/Path;->lineTo(FF)V

    .line 145
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 135
    .end local v3    # "innerList":[Lorg/mapsforge/core/model/Point;
    .end local v4    # "points":[Lorg/mapsforge/core/model/Point;
    .end local v5    # "point":Lorg/mapsforge/core/model/Point;
    .end local v6    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->canvas:Lorg/mapsforge/core/graphics/Canvas;

    iget-object v1, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->path:Lorg/mapsforge/core/graphics/Path;

    iget-object v2, p1, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;->paint:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v0, v1, v2}, Lorg/mapsforge/core/graphics/Canvas;->drawPath(Lorg/mapsforge/core/graphics/Path;Lorg/mapsforge/core/graphics/Paint;)V

    .line 153
    return-void
.end method

.method private drawShapePaintContainer(Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;)V
    .locals 5
    .param p1, "shapePaintContainer"    # Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;

    .line 156
    iget-object v0, p1, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;->shapeContainer:Lorg/mapsforge/map/layer/renderer/ShapeContainer;

    .line 157
    .local v0, "shapeContainer":Lorg/mapsforge/map/layer/renderer/ShapeContainer;
    invoke-interface {v0}, Lorg/mapsforge/map/layer/renderer/ShapeContainer;->getShapeType()Lorg/mapsforge/map/layer/renderer/ShapeType;

    move-result-object v1

    .line 158
    .local v1, "shapeType":Lorg/mapsforge/map/layer/renderer/ShapeType;
    sget-object v2, Lorg/mapsforge/map/layer/renderer/CanvasRasterer$1;->$SwitchMap$org$mapsforge$map$layer$renderer$ShapeType:[I

    invoke-virtual {v1}, Lorg/mapsforge/map/layer/renderer/ShapeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 167
    :pswitch_0
    move-object v2, v0

    check-cast v2, Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 168
    .local v2, "polylineContainer":Lorg/mapsforge/map/layer/renderer/PolylineContainer;
    invoke-virtual {v2}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getCoordinatesRelativeToOrigin()[[Lorg/mapsforge/core/model/Point;

    move-result-object v3

    iget v4, p1, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;->dy:F

    invoke-direct {p0, p1, v3, v4}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->drawPath(Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;[[Lorg/mapsforge/core/model/Point;F)V

    goto :goto_0

    .line 163
    .end local v2    # "polylineContainer":Lorg/mapsforge/map/layer/renderer/PolylineContainer;
    :pswitch_1
    move-object v2, v0

    check-cast v2, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;

    .line 164
    .local v2, "hillshadingContainer":Lorg/mapsforge/map/layer/renderer/HillshadingContainer;
    invoke-direct {p0, v2}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->drawHillshading(Lorg/mapsforge/map/layer/renderer/HillshadingContainer;)V

    .line 165
    goto :goto_0

    .line 160
    .end local v2    # "hillshadingContainer":Lorg/mapsforge/map/layer/renderer/HillshadingContainer;
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->drawCircleContainer(Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;)V

    .line 161
    nop

    .line 171
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->canvas:Lorg/mapsforge/core/graphics/Canvas;

    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Canvas;->destroy()V

    .line 52
    return-void
.end method

.method drawMapElements(Ljava/util/Set;Lorg/mapsforge/core/model/Tile;)V
    .locals 7
    .param p2, "tile"    # Lorg/mapsforge/core/model/Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/mapsforge/core/mapelements/MapElementContainer;",
            ">;",
            "Lorg/mapsforge/core/model/Tile;",
            ")V"
        }
    .end annotation

    .line 74
    .local p1, "elements":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    .local v0, "elementsAsList":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/core/mapelements/MapElementContainer;

    .line 81
    .local v2, "element":Lorg/mapsforge/core/mapelements/MapElementContainer;
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->canvas:Lorg/mapsforge/core/graphics/Canvas;

    invoke-virtual {p2}, Lorg/mapsforge/core/model/Tile;->getOrigin()Lorg/mapsforge/core/model/Point;

    move-result-object v4

    iget-object v5, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->symbolMatrix:Lorg/mapsforge/core/graphics/Matrix;

    sget-object v6, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/mapsforge/core/mapelements/MapElementContainer;->draw(Lorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Matrix;Lorg/mapsforge/core/graphics/Filter;)V

    .line 82
    .end local v2    # "element":Lorg/mapsforge/core/mapelements/MapElementContainer;
    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method drawWays(Lorg/mapsforge/map/rendertheme/RenderContext;)V
    .locals 8
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;

    .line 55
    iget-object v0, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->ways:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 57
    .local v0, "levelsPerLayer":I
    const/4 v1, 0x0

    .local v1, "layer":I
    iget-object v2, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->ways:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "layers":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 58
    iget-object v3, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->ways:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 60
    .local v3, "shapePaintContainers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;>;>;"
    const/4 v4, 0x0

    .local v4, "level":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 61
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 63
    .local v5, "wayList":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "index":I
    :goto_2
    if-ltz v6, :cond_0

    .line 64
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;

    invoke-direct {p0, v7}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->drawShapePaintContainer(Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;)V

    .line 63
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 60
    .end local v5    # "wayList":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;>;"
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 57
    .end local v3    # "shapePaintContainers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;>;>;"
    .end local v4    # "level":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "layer":I
    .end local v2    # "layers":I
    :cond_2
    return-void
.end method

.method fill(I)V
    .locals 1
    .param p1, "color"    # I

    .line 86
    invoke-static {p1}, Lorg/mapsforge/core/graphics/GraphicUtils;->getAlpha(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->canvas:Lorg/mapsforge/core/graphics/Canvas;

    invoke-interface {v0, p1}, Lorg/mapsforge/core/graphics/Canvas;->fillColor(I)V

    .line 89
    :cond_0
    return-void
.end method

.method fillOutsideAreas(ILorg/mapsforge/core/model/Rectangle;)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "insideArea"    # Lorg/mapsforge/core/model/Rectangle;

    .line 113
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->canvas:Lorg/mapsforge/core/graphics/Canvas;

    iget-wide v1, p2, Lorg/mapsforge/core/model/Rectangle;->left:D

    double-to-int v1, v1

    iget-wide v2, p2, Lorg/mapsforge/core/model/Rectangle;->top:D

    double-to-int v2, v2

    invoke-virtual {p2}, Lorg/mapsforge/core/model/Rectangle;->getWidth()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p2}, Lorg/mapsforge/core/model/Rectangle;->getHeight()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/graphics/Canvas;->setClipDifference(IIII)V

    .line 114
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->canvas:Lorg/mapsforge/core/graphics/Canvas;

    invoke-interface {v0, p1}, Lorg/mapsforge/core/graphics/Canvas;->fillColor(I)V

    .line 115
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->canvas:Lorg/mapsforge/core/graphics/Canvas;

    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Canvas;->resetClip()V

    .line 116
    return-void
.end method

.method fillOutsideAreas(Lorg/mapsforge/core/graphics/Color;Lorg/mapsforge/core/model/Rectangle;)V
    .locals 6
    .param p1, "color"    # Lorg/mapsforge/core/graphics/Color;
    .param p2, "insideArea"    # Lorg/mapsforge/core/model/Rectangle;

    .line 100
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->canvas:Lorg/mapsforge/core/graphics/Canvas;

    iget-wide v1, p2, Lorg/mapsforge/core/model/Rectangle;->left:D

    double-to-int v1, v1

    iget-wide v2, p2, Lorg/mapsforge/core/model/Rectangle;->top:D

    double-to-int v2, v2

    invoke-virtual {p2}, Lorg/mapsforge/core/model/Rectangle;->getWidth()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p2}, Lorg/mapsforge/core/model/Rectangle;->getHeight()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/graphics/Canvas;->setClipDifference(IIII)V

    .line 101
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->canvas:Lorg/mapsforge/core/graphics/Canvas;

    invoke-interface {v0, p1}, Lorg/mapsforge/core/graphics/Canvas;->fillColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 102
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->canvas:Lorg/mapsforge/core/graphics/Canvas;

    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Canvas;->resetClip()V

    .line 103
    return-void
.end method

.method setCanvasBitmap(Lorg/mapsforge/core/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Lorg/mapsforge/core/graphics/Bitmap;

    .line 119
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->canvas:Lorg/mapsforge/core/graphics/Canvas;

    invoke-interface {v0, p1}, Lorg/mapsforge/core/graphics/Canvas;->setBitmap(Lorg/mapsforge/core/graphics/Bitmap;)V

    .line 120
    return-void
.end method
