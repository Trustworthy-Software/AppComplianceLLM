.class public Lorg/mapsforge/map/rendertheme/renderinstruction/Area;
.super Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;
.source "Area.java"


# instance fields
.field private bitmapInvalid:Z

.field private final fill:Lorg/mapsforge/core/graphics/Paint;

.field private final level:I

.field private final relativePathPrefix:Ljava/lang/String;

.field private scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

.field private shaderBitmap:Lorg/mapsforge/core/graphics/Bitmap;

.field private src:Ljava/lang/String;

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
.method public constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)V
    .locals 2
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p5, "level"    # I
    .param p6, "relativePathPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V

    .line 46
    sget-object v0, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;->STROKE:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    .line 57
    iput p5, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->level:I

    .line 58
    iput-object p6, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->relativePathPrefix:Ljava/lang/String;

    .line 60
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->fill:Lorg/mapsforge/core/graphics/Paint;

    .line 61
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->TRANSPARENT:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 62
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->FILL:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 63
    sget-object v1, Lorg/mapsforge/core/graphics/Cap;->ROUND:Lorg/mapsforge/core/graphics/Cap;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStrokeCap(Lorg/mapsforge/core/graphics/Cap;)V

    .line 65
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->stroke:Lorg/mapsforge/core/graphics/Paint;

    .line 66
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->TRANSPARENT:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 67
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 68
    sget-object v1, Lorg/mapsforge/core/graphics/Cap;->ROUND:Lorg/mapsforge/core/graphics/Cap;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStrokeCap(Lorg/mapsforge/core/graphics/Cap;)V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->strokes:Ljava/util/Map;

    .line 72
    invoke-direct {p0, p3, p4}, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->extractValues(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 73
    return-void
.end method

.method private extractValues(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 83
    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "value":Ljava/lang/String;
    const-string v3, "src"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->src:Ljava/lang/String;

    goto/16 :goto_1

    .line 88
    :cond_0
    const-string v3, "cat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 90
    :cond_1
    const-string v3, "fill"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->fill:Lorg/mapsforge/core/graphics/Paint;

    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v5, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v5}, Lorg/mapsforge/map/model/DisplayModel;->getThemeCallback()Lorg/mapsforge/map/rendertheme/ThemeCallback;

    move-result-object v5

    invoke-static {v4, v2, v5, p0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getColor(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Lorg/mapsforge/map/rendertheme/ThemeCallback;Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)I

    move-result v4

    invoke-interface {v3, v4}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 92
    :cond_2
    const-string v3, "scale"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    invoke-virtual {p0, v2}, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->scaleFromValue(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    move-result-object v3

    iput-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    goto/16 :goto_1

    .line 94
    :cond_3
    const-string v3, "stroke"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->stroke:Lorg/mapsforge/core/graphics/Paint;

    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v5, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v5}, Lorg/mapsforge/map/model/DisplayModel;->getThemeCallback()Lorg/mapsforge/map/rendertheme/ThemeCallback;

    move-result-object v5

    invoke-static {v4, v2, v5, p0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getColor(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Lorg/mapsforge/map/rendertheme/ThemeCallback;Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)I

    move-result v4

    invoke-interface {v3, v4}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 96
    :cond_4
    const-string v3, "stroke-width"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 97
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v4}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->strokeWidth:F

    goto :goto_1

    .line 98
    :cond_5
    const-string v3, "symbol-height"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 99
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v4}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->height:F

    goto :goto_1

    .line 100
    :cond_6
    const-string v3, "symbol-percent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 101
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->percent:I

    goto :goto_1

    .line 102
    :cond_7
    const-string v3, "symbol-scaling"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    .line 104
    :cond_8
    const-string v3, "symbol-width"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 105
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v4}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->width:F

    .line 82
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 107
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_9
    invoke-static {p1, v1, v2, v0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->createXmlPullParserException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object v3

    throw v3

    .line 110
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private getFillPaint()Lorg/mapsforge/core/graphics/Paint;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->fill:Lorg/mapsforge/core/graphics/Paint;

    return-object v0
.end method

.method private getStrokePaint(B)Lorg/mapsforge/core/graphics/Paint;
    .locals 2
    .param p1, "zoomLevel"    # B

    .line 117
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->strokes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/Paint;

    .line 118
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->stroke:Lorg/mapsforge/core/graphics/Paint;

    .line 121
    :cond_0
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 78
    return-void
.end method

.method public renderNode(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/PointOfInterest;)V
    .locals 0
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "poi"    # Lorg/mapsforge/map/datastore/PointOfInterest;

    .line 127
    return-void
.end method

.method public renderWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 7
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 131
    monitor-enter p0

    .line 134
    :try_start_0
    invoke-direct {p0}, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->getFillPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 135
    .local v0, "fillPaint":Lorg/mapsforge/core/graphics/Paint;
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->shaderBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->bitmapInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 137
    :try_start_1
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->relativePathPrefix:Ljava/lang/String;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->src:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->createBitmap(Ljava/lang/String;Ljava/lang/String;)Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->shaderBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 138
    if-eqz v1, :cond_0

    .line 139
    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setBitmapShader(Lorg/mapsforge/core/graphics/Bitmap;)V

    .line 140
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->shaderBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v1}, Lorg/mapsforge/core/graphics/Bitmap;->decrementRefCount()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :cond_0
    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "ioException":Ljava/io/IOException;
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->bitmapInvalid:Z

    .line 147
    .end local v1    # "ioException":Ljava/io/IOException;
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getUpperLeft()Lorg/mapsforge/core/model/Tile;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mapsforge/core/model/Tile;->getOrigin()Lorg/mapsforge/core/model/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setBitmapShaderShift(Lorg/mapsforge/core/model/Point;)V

    .line 149
    iget-object v1, p2, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v1, v1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v1, v1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-direct {p0, v1}, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->getStrokePaint(B)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v4

    iget v5, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->level:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/mapsforge/map/rendertheme/RenderCallback;->renderArea(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;ILorg/mapsforge/map/layer/renderer/PolylineContainer;)V

    .line 150
    .end local v0    # "fillPaint":Lorg/mapsforge/core/graphics/Paint;
    monitor-exit p0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public scaleStrokeWidth(FB)V
    .locals 3
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 155
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->stroke:Lorg/mapsforge/core/graphics/Paint;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    sget-object v1, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;->NONE:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    if-ne v0, v1, :cond_0

    .line 157
    const/high16 p1, 0x3f800000    # 1.0f

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint(Lorg/mapsforge/core/graphics/Paint;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 160
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    iget v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->strokeWidth:F

    mul-float/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;->strokes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .end local v0    # "paint":Lorg/mapsforge/core/graphics/Paint;
    :cond_1
    return-void
.end method

.method public scaleTextSize(FB)V
    .locals 0
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 168
    return-void
.end method
