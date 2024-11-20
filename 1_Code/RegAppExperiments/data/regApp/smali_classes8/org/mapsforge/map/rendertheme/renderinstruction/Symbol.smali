.class public Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;
.super Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;
.source "Symbol.java"


# instance fields
.field private bitmap:Lorg/mapsforge/core/graphics/Bitmap;

.field private bitmapInvalid:Z

.field private display:Lorg/mapsforge/core/graphics/Display;

.field private id:Ljava/lang/String;

.field private priority:I

.field private final relativePathPrefix:Ljava/lang/String;

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

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V

    .line 48
    iput-object p5, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->relativePathPrefix:Ljava/lang/String;

    .line 49
    sget-object v0, Lorg/mapsforge/core/graphics/Display;->IFSPACE:Lorg/mapsforge/core/graphics/Display;

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->display:Lorg/mapsforge/core/graphics/Display;

    .line 50
    invoke-direct {p0, p3, p4}, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->extractValues(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 51
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

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 62
    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "value":Ljava/lang/String;
    const-string v3, "src"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->src:Ljava/lang/String;

    goto/16 :goto_1

    .line 67
    :cond_0
    const-string v3, "cat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 69
    :cond_1
    const-string v3, "display"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    invoke-static {v2}, Lorg/mapsforge/core/graphics/Display;->fromString(Ljava/lang/String;)Lorg/mapsforge/core/graphics/Display;

    move-result-object v3

    iput-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->display:Lorg/mapsforge/core/graphics/Display;

    goto :goto_1

    .line 71
    :cond_2
    const-string v3, "id"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->id:Ljava/lang/String;

    goto :goto_1

    .line 73
    :cond_3
    const-string v3, "priority"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->priority:I

    goto :goto_1

    .line 75
    :cond_4
    const-string v3, "symbol-height"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 76
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v4}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->height:F

    goto :goto_1

    .line 77
    :cond_5
    const-string v3, "symbol-percent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 78
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->percent:I

    goto :goto_1

    .line 79
    :cond_6
    const-string v3, "symbol-scaling"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    .line 81
    :cond_7
    const-string v3, "symbol-width"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 82
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v4}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->width:F

    .line 61
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 84
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_8
    invoke-static {p1, v1, v2, v0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->createXmlPullParserException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object v3

    throw v3

    .line 87
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_9
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Bitmap;->decrementRefCount()V

    .line 58
    :cond_0
    return-void
.end method

.method public getBitmap()Lorg/mapsforge/core/graphics/Bitmap;
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->bitmapInvalid:Z

    if-nez v0, :cond_0

    .line 92
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->relativePathPrefix:Ljava/lang/String;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->src:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->createBitmap(Ljava/lang/String;Ljava/lang/String;)Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ioException":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->bitmapInvalid:Z

    .line 97
    .end local v0    # "ioException":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->id:Ljava/lang/String;

    return-object v0
.end method

.method public renderNode(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/PointOfInterest;)V
    .locals 7
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "poi"    # Lorg/mapsforge/map/datastore/PointOfInterest;

    .line 106
    sget-object v0, Lorg/mapsforge/core/graphics/Display;->NEVER:Lorg/mapsforge/core/graphics/Display;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->display:Lorg/mapsforge/core/graphics/Display;

    if-ne v0, v1, :cond_0

    .line 107
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->getBitmap()Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->display:Lorg/mapsforge/core/graphics/Display;

    iget v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->priority:I

    iget-object v5, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/mapsforge/map/rendertheme/RenderCallback;->renderPointOfInterestSymbol(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/map/datastore/PointOfInterest;)V

    .line 113
    :cond_1
    return-void
.end method

.method public renderWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 7
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 117
    sget-object v0, Lorg/mapsforge/core/graphics/Display;->NEVER:Lorg/mapsforge/core/graphics/Display;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->display:Lorg/mapsforge/core/graphics/Display;

    if-ne v0, v1, :cond_0

    .line 118
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->getBitmap()Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->display:Lorg/mapsforge/core/graphics/Display;

    iget v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->priority:I

    iget-object v5, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/mapsforge/map/rendertheme/RenderCallback;->renderAreaSymbol(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V

    .line 124
    :cond_1
    return-void
.end method

.method public scaleStrokeWidth(FB)V
    .locals 0
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 129
    return-void
.end method

.method public scaleTextSize(FB)V
    .locals 0
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 134
    return-void
.end method
