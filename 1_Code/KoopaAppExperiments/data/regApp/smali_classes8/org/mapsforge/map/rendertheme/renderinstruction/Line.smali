.class public Lorg/mapsforge/map/rendertheme/renderinstruction/Line;
.super Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;
.source "Line.java"


# static fields
.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private bitmapCreated:Z

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

.field private final level:I

.field private final relativePathPrefix:Ljava/lang/String;

.field private scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

.field private shaderBitmap:Lorg/mapsforge/core/graphics/Bitmap;

.field private src:Ljava/lang/String;

.field private final stroke:Lorg/mapsforge/core/graphics/Paint;

.field private strokeDasharray:[F

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
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

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

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V

    .line 51
    sget-object v0, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;->STROKE:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    .line 62
    iput p5, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->level:I

    .line 63
    iput-object p6, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->relativePathPrefix:Ljava/lang/String;

    .line 65
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->stroke:Lorg/mapsforge/core/graphics/Paint;

    .line 66
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->BLACK:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 67
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 68
    sget-object v1, Lorg/mapsforge/core/graphics/Cap;->ROUND:Lorg/mapsforge/core/graphics/Cap;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStrokeCap(Lorg/mapsforge/core/graphics/Cap;)V

    .line 69
    sget-object v1, Lorg/mapsforge/core/graphics/Join;->ROUND:Lorg/mapsforge/core/graphics/Join;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStrokeJoin(Lorg/mapsforge/core/graphics/Join;)V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->strokes:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->dyScaled:Ljava/util/Map;

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->extractValues(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 74
    return-void
.end method

.method private extractValues(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 84
    invoke-interface {p4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "value":Ljava/lang/String;
    const-string v3, "src"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->src:Ljava/lang/String;

    goto/16 :goto_2

    .line 89
    :cond_0
    const-string v3, "cat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->category:Ljava/lang/String;

    goto/16 :goto_2

    .line 91
    :cond_1
    const-string v3, "dy"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->dy:F

    goto/16 :goto_2

    .line 93
    :cond_2
    const-string v3, "scale"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    invoke-virtual {p0, v2}, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->scaleFromValue(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    move-result-object v3

    iput-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    goto/16 :goto_2

    .line 95
    :cond_3
    const-string v3, "stroke"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 96
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getThemeCallback()Lorg/mapsforge/map/rendertheme/ThemeCallback;

    move-result-object v4

    invoke-static {p1, v2, v4, p0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getColor(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Lorg/mapsforge/map/rendertheme/ThemeCallback;Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)I

    move-result v4

    invoke-interface {v3, v4}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 97
    :cond_4
    const-string v3, "stroke-dasharray"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 98
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->parseFloatArray(Ljava/lang/String;Ljava/lang/String;)[F

    move-result-object v3

    iput-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->strokeDasharray:[F

    .line 99
    const/4 v3, 0x0

    .local v3, "f":I
    :goto_1
    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->strokeDasharray:[F

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 100
    aget v5, v4, v3

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v6

    mul-float/2addr v5, v6

    aput v5, v4, v3

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 102
    .end local v3    # "f":I
    :cond_5
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v3, v4}, Lorg/mapsforge/core/graphics/Paint;->setDashPathEffect([F)V

    goto/16 :goto_2

    .line 103
    :cond_6
    const-string v3, "stroke-linecap"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 104
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-static {v2}, Lorg/mapsforge/core/graphics/Cap;->fromString(Ljava/lang/String;)Lorg/mapsforge/core/graphics/Cap;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/mapsforge/core/graphics/Paint;->setStrokeCap(Lorg/mapsforge/core/graphics/Cap;)V

    goto :goto_2

    .line 105
    :cond_7
    const-string v3, "stroke-linejoin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 106
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-static {v2}, Lorg/mapsforge/core/graphics/Join;->fromString(Ljava/lang/String;)Lorg/mapsforge/core/graphics/Join;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/mapsforge/core/graphics/Paint;->setStrokeJoin(Lorg/mapsforge/core/graphics/Join;)V

    goto :goto_2

    .line 107
    :cond_8
    const-string v3, "stroke-width"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 108
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->strokeWidth:F

    goto :goto_2

    .line 109
    :cond_9
    const-string v3, "symbol-height"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 110
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->height:F

    goto :goto_2

    .line 111
    :cond_a
    const-string v3, "symbol-percent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 112
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->percent:I

    goto :goto_2

    .line 113
    :cond_b
    const-string v3, "symbol-scaling"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_2

    .line 115
    :cond_c
    const-string v3, "symbol-width"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 116
    invoke-static {v1, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->width:F

    .line 83
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 118
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_d
    invoke-static {p3, v1, v2, v0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->createXmlPullParserException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object v3

    throw v3

    .line 121
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_e
    return-void
.end method

.method private getStrokePaint(B)Lorg/mapsforge/core/graphics/Paint;
    .locals 2
    .param p1, "zoomLevel"    # B

    .line 124
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->strokes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/Paint;

    .line 125
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->stroke:Lorg/mapsforge/core/graphics/Paint;

    .line 128
    :cond_0
    return-object v0
.end method

.method private static parseFloatArray(Ljava/lang/String;Ljava/lang/String;)[F
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dashString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 132
    sget-object v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "dashEntries":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [F

    .line 134
    .local v1, "dashIntervals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 135
    aget-object v3, v0, v2

    invoke-static {p0, v3}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 79
    return-void
.end method

.method public renderNode(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/PointOfInterest;)V
    .locals 0
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "poi"    # Lorg/mapsforge/map/datastore/PointOfInterest;

    .line 143
    return-void
.end method

.method public declared-synchronized renderWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 8
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    monitor-enter p0

    .line 147
    :try_start_0
    iget-boolean v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->bitmapCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 149
    :try_start_1
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->relativePathPrefix:Ljava/lang/String;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->src:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->createBitmap(Ljava/lang/String;Ljava/lang/String;)Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->shaderBitmap:Lorg/mapsforge/core/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    goto :goto_0

    .line 150
    .end local p0    # "this":Lorg/mapsforge/map/rendertheme/renderinstruction/Line;
    :catch_0
    move-exception v0

    .line 153
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->bitmapCreated:Z

    .line 156
    :cond_0
    iget-object v0, p2, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v0, v0, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v0, v0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-direct {p0, v0}, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->getStrokePaint(B)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 158
    .local v0, "strokePaint":Lorg/mapsforge/core/graphics/Paint;
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->shaderBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 159
    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setBitmapShader(Lorg/mapsforge/core/graphics/Bitmap;)V

    .line 160
    invoke-virtual {p3}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getUpperLeft()Lorg/mapsforge/core/model/Tile;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mapsforge/core/model/Tile;->getOrigin()Lorg/mapsforge/core/model/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setBitmapShaderShift(Lorg/mapsforge/core/model/Point;)V

    .line 163
    :cond_1
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->dyScaled:Ljava/util/Map;

    iget-object v2, p2, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v2, v2, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v2, v2, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 164
    .local v1, "dyScale":Ljava/lang/Float;
    if-nez v1, :cond_2

    .line 165
    iget v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->dy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v1, v2

    move-object v7, v1

    goto :goto_1

    .line 164
    :cond_2
    move-object v7, v1

    .line 167
    .end local v1    # "dyScale":Ljava/lang/Float;
    .local v7, "dyScale":Ljava/lang/Float;
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->level:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/mapsforge/map/rendertheme/RenderCallback;->renderWay(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Paint;FILorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 146
    .end local v0    # "strokePaint":Lorg/mapsforge/core/graphics/Paint;
    .end local v7    # "dyScale":Ljava/lang/Float;
    .end local p1    # "renderCallback":Lorg/mapsforge/map/rendertheme/RenderCallback;
    .end local p2    # "renderContext":Lorg/mapsforge/map/rendertheme/RenderContext;
    .end local p3    # "way":Lorg/mapsforge/map/layer/renderer/PolylineContainer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scaleStrokeWidth(FB)V
    .locals 5
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 172
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    sget-object v1, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;->NONE:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    if-ne v0, v1, :cond_0

    .line 173
    const/high16 p1, 0x3f800000    # 1.0f

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->stroke:Lorg/mapsforge/core/graphics/Paint;

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint(Lorg/mapsforge/core/graphics/Paint;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 177
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    iget v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->strokeWidth:F

    mul-float/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    sget-object v2, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;->ALL:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    if-ne v1, v2, :cond_2

    .line 179
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->strokeDasharray:[F

    array-length v1, v1

    new-array v1, v1, [F

    .line 180
    .local v1, "strokeDasharrayScaled":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->strokeDasharray:[F

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 181
    aget v3, v3, v2

    mul-float/2addr v3, p1

    aput v3, v1, v2

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v2    # "i":I
    :cond_1
    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setDashPathEffect([F)V

    .line 185
    .end local v1    # "strokeDasharrayScaled":[F
    :cond_2
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->strokes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .end local v0    # "paint":Lorg/mapsforge/core/graphics/Paint;
    :cond_3
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->dyScaled:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;->dy:F

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public scaleTextSize(FB)V
    .locals 0
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 194
    return-void
.end method
