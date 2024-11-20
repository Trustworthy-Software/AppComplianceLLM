.class public Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;
.super Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;
.source "LineSymbol.java"


# static fields
.field private static final REPEAT_GAP_DEFAULT:F = 200.0f

.field private static final REPEAT_START_DEFAULT:F = 30.0f


# instance fields
.field private alignCenter:Z

.field private bitmap:Lorg/mapsforge/core/graphics/Bitmap;

.field private bitmapInvalid:Z

.field private display:Lorg/mapsforge/core/graphics/Display;

.field private dy:F

.field private final dyScaled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private priority:I

.field private final relativePathPrefix:Ljava/lang/String;

.field private repeat:Z

.field private repeatGap:F

.field private repeatStart:F

.field private rotate:Z

.field private scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

.field private src:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 1
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p5, "relativePathPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V

    .line 54
    sget-object v0, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;->STROKE:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    .line 61
    sget-object v0, Lorg/mapsforge/core/graphics/Display;->IFSPACE:Lorg/mapsforge/core/graphics/Display;

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->display:Lorg/mapsforge/core/graphics/Display;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->rotate:Z

    .line 63
    iput-object p5, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->relativePathPrefix:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->dyScaled:Ljava/util/Map;

    .line 66
    invoke-direct {p0, p3, p4}, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->extractValues(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 67
    return-void
.end method

.method private extractValues(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->repeatGap:F

    .line 78
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->repeatStart:F

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 81
    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "value":Ljava/lang/String;
    const-string v3, "src"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->src:Ljava/lang/String;

    goto/16 :goto_1

    .line 86
    :cond_0
    const-string v3, "align-center"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->alignCenter:Z

    goto/16 :goto_1

    .line 88
    :cond_1
    const-string v3, "cat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 90
    :cond_2
    const-string v3, "display"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    invoke-static {v2}, Lorg/mapsforge/core/graphics/Display;->fromString(Ljava/lang/String;)Lorg/mapsforge/core/graphics/Display;

    move-result-object v3

    iput-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->display:Lorg/mapsforge/core/graphics/Display;

    goto/16 :goto_1

    .line 92
    :cond_3
    const-string v3, "dy"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v4}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->dy:F

    goto/16 :goto_1

    .line 94
    :cond_4
    const-string v3, "priority"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->priority:I

    goto/16 :goto_1

    .line 96
    :cond_5
    const-string v3, "repeat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 97
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->repeat:Z

    goto/16 :goto_1

    .line 98
    :cond_6
    const-string v3, "repeat-gap"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 99
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v4}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->repeatGap:F

    goto/16 :goto_1

    .line 100
    :cond_7
    const-string v3, "repeat-start"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 101
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v4}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->repeatStart:F

    goto :goto_1

    .line 102
    :cond_8
    const-string v3, "rotate"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 103
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->rotate:Z

    goto :goto_1

    .line 104
    :cond_9
    const-string v3, "scale"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 105
    invoke-virtual {p0, v2}, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->scaleFromValue(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    move-result-object v3

    iput-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    goto :goto_1

    .line 106
    :cond_a
    const-string v3, "symbol-height"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 107
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v4}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->height:F

    goto :goto_1

    .line 108
    :cond_b
    const-string v3, "symbol-percent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 109
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->percent:I

    goto :goto_1

    .line 110
    :cond_c
    const-string v3, "symbol-scaling"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_1

    .line 112
    :cond_d
    const-string v3, "symbol-width"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 113
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v4}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->width:F

    .line 80
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 115
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_e
    invoke-static {p1, v1, v2, v0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->createXmlPullParserException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object v3

    throw v3

    .line 118
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_f
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Bitmap;->decrementRefCount()V

    .line 74
    :cond_0
    return-void
.end method

.method public renderNode(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/PointOfInterest;)V
    .locals 0
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "poi"    # Lorg/mapsforge/map/datastore/PointOfInterest;

    .line 123
    return-void
.end method

.method public renderWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 15
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 127
    move-object v1, p0

    sget-object v0, Lorg/mapsforge/core/graphics/Display;->NEVER:Lorg/mapsforge/core/graphics/Display;

    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->display:Lorg/mapsforge/core/graphics/Display;

    if-ne v0, v2, :cond_0

    .line 128
    return-void

    .line 131
    :cond_0
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->bitmapInvalid:Z

    if-nez v0, :cond_1

    .line 133
    :try_start_0
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->relativePathPrefix:Ljava/lang/String;

    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->src:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->createBitmap(Ljava/lang/String;Ljava/lang/String;)Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ioException":Ljava/io/IOException;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->bitmapInvalid:Z

    .line 139
    .end local v0    # "ioException":Ljava/io/IOException;
    :cond_1
    :goto_0
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->dyScaled:Ljava/util/Map;

    move-object/from16 v14, p2

    iget-object v2, v14, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v2, v2, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v2, v2, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 140
    .local v0, "dyScale":Ljava/lang/Float;
    if-nez v0, :cond_2

    .line 141
    iget v2, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->dy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 144
    :cond_2
    iget-object v6, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 145
    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->display:Lorg/mapsforge/core/graphics/Display;

    iget v5, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->priority:I

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-boolean v8, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->alignCenter:Z

    iget-boolean v9, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->repeat:Z

    iget v10, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->repeatGap:F

    iget v11, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->repeatStart:F

    iget-boolean v12, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->rotate:Z

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v13, p3

    invoke-interface/range {v2 .. v13}, Lorg/mapsforge/map/rendertheme/RenderCallback;->renderWaySymbol(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILorg/mapsforge/core/graphics/Bitmap;FZZFFZLorg/mapsforge/map/layer/renderer/PolylineContainer;)V

    .line 148
    :cond_3
    return-void
.end method

.method public scaleStrokeWidth(FB)V
    .locals 3
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 152
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    sget-object v1, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;->NONE:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    if-ne v0, v1, :cond_0

    .line 153
    const/high16 p1, 0x3f800000    # 1.0f

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->dyScaled:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;->dy:F

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public scaleTextSize(FB)V
    .locals 0
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 161
    return-void
.end method
