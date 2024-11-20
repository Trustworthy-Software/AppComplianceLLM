.class public Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;
.super Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;
.source "Circle.java"


# instance fields
.field private final fill:Lorg/mapsforge/core/graphics/Paint;

.field private final fills:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lorg/mapsforge/core/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private final level:I

.field private radius:F

.field private renderRadius:F

.field private final renderRadiusScaled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private scaleRadius:Z

.field private final stroke:Lorg/mapsforge/core/graphics/Paint;

.field private strokeWidth:F

.field private final strokes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lorg/mapsforge/core/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p5, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V

    .line 53
    iput p5, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->level:I

    .line 55
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->fill:Lorg/mapsforge/core/graphics/Paint;

    .line 56
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->TRANSPARENT:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 57
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->FILL:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->fills:Ljava/util/Map;

    .line 60
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->stroke:Lorg/mapsforge/core/graphics/Paint;

    .line 61
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->TRANSPARENT:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 62
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->strokes:Ljava/util/Map;

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->renderRadiusScaled:Ljava/util/Map;

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->extractValues(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 68
    iget-boolean v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->scaleRadius:Z

    if-nez v1, :cond_0

    .line 69
    iget v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->radius:F

    iput v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->renderRadius:F

    .line 70
    iget v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->strokeWidth:F

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    :cond_0
    return-void
.end method

.method private extractValues(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const-string v2, "radius"

    if-ge v0, v1, :cond_7

    .line 82
    invoke-interface {p4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "r"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    const-string v2, "cat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    iput-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->category:Ljava/lang/String;

    goto :goto_2

    .line 89
    :cond_1
    const-string v2, "fill"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->fill:Lorg/mapsforge/core/graphics/Paint;

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getThemeCallback()Lorg/mapsforge/map/rendertheme/ThemeCallback;

    move-result-object v4

    invoke-static {p1, v3, v4, p0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getColor(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Lorg/mapsforge/map/rendertheme/ThemeCallback;Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)I

    move-result v4

    invoke-interface {v2, v4}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 91
    :cond_2
    const-string v2, "scale-radius"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->scaleRadius:Z

    goto :goto_2

    .line 93
    :cond_3
    const-string v2, "stroke"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getThemeCallback()Lorg/mapsforge/map/rendertheme/ThemeCallback;

    move-result-object v4

    invoke-static {p1, v3, v4, p0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getColor(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Lorg/mapsforge/map/rendertheme/ThemeCallback;Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)I

    move-result v4

    invoke-interface {v2, v4}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 95
    :cond_4
    const-string v2, "stroke-width"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    invoke-static {v1, v3}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v2, v4

    iput v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->strokeWidth:F

    goto :goto_2

    .line 98
    :cond_5
    invoke-static {p3, v1, v3, v0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->createXmlPullParserException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object v2

    throw v2

    .line 86
    :cond_6
    :goto_1
    invoke-static {v1, v3}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v2, v4

    iput v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->radius:F

    .line 81
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_7
    iget v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->radius:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p3, v2, v0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->checkMandatoryAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method private getFillPaint(B)Lorg/mapsforge/core/graphics/Paint;
    .locals 2
    .param p1, "zoomLevel"    # B

    .line 106
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->fills:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/Paint;

    .line 107
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->fill:Lorg/mapsforge/core/graphics/Paint;

    .line 110
    :cond_0
    return-object v0
.end method

.method private getRenderRadius(B)F
    .locals 2
    .param p1, "zoomLevel"    # B

    .line 114
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->renderRadiusScaled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 115
    .local v0, "radius":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 116
    iget v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->renderRadius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method private getStrokePaint(B)Lorg/mapsforge/core/graphics/Paint;
    .locals 2
    .param p1, "zoomLevel"    # B

    .line 122
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->strokes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/Paint;

    .line 123
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->stroke:Lorg/mapsforge/core/graphics/Paint;

    .line 126
    :cond_0
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 77
    return-void
.end method

.method public renderNode(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/PointOfInterest;)V
    .locals 8
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "poi"    # Lorg/mapsforge/map/datastore/PointOfInterest;

    .line 131
    iget-object v0, p2, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v0, v0, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v0, v0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-direct {p0, v0}, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->getRenderRadius(B)F

    move-result v3

    iget-object v0, p2, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v0, v0, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v0, v0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-direct {p0, v0}, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->getFillPaint(B)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v4

    iget-object v0, p2, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v0, v0, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v0, v0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-direct {p0, v0}, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->getStrokePaint(B)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v5

    iget v6, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->level:I

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lorg/mapsforge/map/rendertheme/RenderCallback;->renderPointOfInterestCircle(Lorg/mapsforge/map/rendertheme/RenderContext;FLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;ILorg/mapsforge/map/datastore/PointOfInterest;)V

    .line 132
    return-void
.end method

.method public renderWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 0
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 137
    return-void
.end method

.method public scaleStrokeWidth(FB)V
    .locals 3
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 141
    iget-boolean v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->scaleRadius:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->renderRadiusScaled:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->radius:F

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->stroke:Lorg/mapsforge/core/graphics/Paint;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint(Lorg/mapsforge/core/graphics/Paint;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 145
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    iget v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->strokeWidth:F

    mul-float/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;->strokes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .end local v0    # "paint":Lorg/mapsforge/core/graphics/Paint;
    :cond_0
    return-void
.end method

.method public scaleTextSize(FB)V
    .locals 0
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 154
    return-void
.end method
