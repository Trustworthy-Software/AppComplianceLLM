.class public Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;
.super Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;
.source "PathText.java"


# static fields
.field private static final REPEAT_GAP_DEFAULT:F = 50.0f

.field private static final REPEAT_START_DEFAULT:F = 10.0f


# instance fields
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

.field private fontSize:F

.field private priority:I

.field private repeat:Z

.field private repeatGap:F

.field private repeatStart:F

.field private rotate:Z

.field private scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

.field private final stroke:Lorg/mapsforge/core/graphics/Paint;

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

.field private textKey:Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V

    .line 53
    sget-object v0, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;->STROKE:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    .line 65
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->fill:Lorg/mapsforge/core/graphics/Paint;

    .line 66
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->BLACK:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 67
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->FILL:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 68
    sget-object v1, Lorg/mapsforge/core/graphics/Align;->CENTER:Lorg/mapsforge/core/graphics/Align;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setTextAlign(Lorg/mapsforge/core/graphics/Align;)V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->fills:Ljava/util/Map;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->rotate:Z

    .line 71
    iput-boolean v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->repeat:Z

    .line 73
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->stroke:Lorg/mapsforge/core/graphics/Paint;

    .line 74
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->BLACK:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 75
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 76
    sget-object v1, Lorg/mapsforge/core/graphics/Align;->CENTER:Lorg/mapsforge/core/graphics/Align;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setTextAlign(Lorg/mapsforge/core/graphics/Align;)V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->strokes:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->dyScaled:Ljava/util/Map;

    .line 79
    sget-object v0, Lorg/mapsforge/core/graphics/Display;->IFSPACE:Lorg/mapsforge/core/graphics/Display;

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->display:Lorg/mapsforge/core/graphics/Display;

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->extractValues(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 82
    return-void
.end method

.method private extractValues(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 91
    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->repeatGap:F

    .line 92
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->repeatStart:F

    .line 94
    sget-object v0, Lorg/mapsforge/core/graphics/FontFamily;->DEFAULT:Lorg/mapsforge/core/graphics/FontFamily;

    .line 95
    .local v0, "fontFamily":Lorg/mapsforge/core/graphics/FontFamily;
    sget-object v1, Lorg/mapsforge/core/graphics/FontStyle;->NORMAL:Lorg/mapsforge/core/graphics/FontStyle;

    .line 97
    .local v1, "fontStyle":Lorg/mapsforge/core/graphics/FontStyle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const-string v4, "k"

    if-ge v2, v3, :cond_10

    .line 98
    invoke-interface {p4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-static {v5}, Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;->getInstance(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;

    move-result-object v4

    iput-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->textKey:Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;

    goto/16 :goto_1

    .line 103
    :cond_0
    const-string v4, "cat"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    iput-object v5, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 105
    :cond_1
    const-string v4, "display"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    invoke-static {v5}, Lorg/mapsforge/core/graphics/Display;->fromString(Ljava/lang/String;)Lorg/mapsforge/core/graphics/Display;

    move-result-object v4

    iput-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->display:Lorg/mapsforge/core/graphics/Display;

    goto/16 :goto_1

    .line 107
    :cond_2
    const-string v4, "dy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v6

    mul-float/2addr v4, v6

    iput v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->dy:F

    goto/16 :goto_1

    .line 109
    :cond_3
    const-string v4, "fill"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 110
    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->fill:Lorg/mapsforge/core/graphics/Paint;

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getThemeCallback()Lorg/mapsforge/map/rendertheme/ThemeCallback;

    move-result-object v6

    invoke-static {p1, v5, v6, p0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getColor(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Lorg/mapsforge/map/rendertheme/ThemeCallback;Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)I

    move-result v6

    invoke-interface {v4, v6}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 111
    :cond_4
    const-string v4, "font-family"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 112
    invoke-static {v5}, Lorg/mapsforge/core/graphics/FontFamily;->fromString(Ljava/lang/String;)Lorg/mapsforge/core/graphics/FontFamily;

    move-result-object v0

    goto/16 :goto_1

    .line 113
    :cond_5
    const-string v4, "font-size"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 114
    invoke-static {v3, v5}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v6

    mul-float/2addr v4, v6

    iput v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->fontSize:F

    goto/16 :goto_1

    .line 115
    :cond_6
    const-string v4, "font-style"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 116
    invoke-static {v5}, Lorg/mapsforge/core/graphics/FontStyle;->fromString(Ljava/lang/String;)Lorg/mapsforge/core/graphics/FontStyle;

    move-result-object v1

    goto/16 :goto_1

    .line 117
    :cond_7
    const-string v4, "repeat"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 118
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->repeat:Z

    goto/16 :goto_1

    .line 119
    :cond_8
    const-string v4, "repeat-gap"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 120
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v6

    mul-float/2addr v4, v6

    iput v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->repeatGap:F

    goto/16 :goto_1

    .line 121
    :cond_9
    const-string v4, "repeat-start"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 122
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v6

    mul-float/2addr v4, v6

    iput v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->repeatStart:F

    goto :goto_1

    .line 123
    :cond_a
    const-string v4, "rotate"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 124
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->rotate:Z

    goto :goto_1

    .line 125
    :cond_b
    const-string v4, "priority"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 126
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->priority:I

    goto :goto_1

    .line 127
    :cond_c
    const-string v4, "scale"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 128
    invoke-virtual {p0, v5}, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->scaleFromValue(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    move-result-object v4

    iput-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    goto :goto_1

    .line 129
    :cond_d
    const-string v4, "stroke"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 130
    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getThemeCallback()Lorg/mapsforge/map/rendertheme/ThemeCallback;

    move-result-object v6

    invoke-static {p1, v5, v6, p0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getColor(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Lorg/mapsforge/map/rendertheme/ThemeCallback;Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)I

    move-result v6

    invoke-interface {v4, v6}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 131
    :cond_e
    const-string v4, "stroke-width"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 132
    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-static {v3, v5}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-interface {v4, v6}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 134
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_f
    invoke-static {p3, v3, v5, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->createXmlPullParserException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object v4

    throw v4

    .line 138
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_10
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->fill:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v2, v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setTypeface(Lorg/mapsforge/core/graphics/FontFamily;Lorg/mapsforge/core/graphics/FontStyle;)V

    .line 139
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v2, v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setTypeface(Lorg/mapsforge/core/graphics/FontFamily;Lorg/mapsforge/core/graphics/FontStyle;)V

    .line 141
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->textKey:Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;

    invoke-static {p3, v4, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->checkMandatoryAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method private getFillPaint(B)Lorg/mapsforge/core/graphics/Paint;
    .locals 2
    .param p1, "zoomLevel"    # B

    .line 145
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->fills:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/Paint;

    .line 146
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->fill:Lorg/mapsforge/core/graphics/Paint;

    .line 149
    :cond_0
    return-object v0
.end method

.method private getStrokePaint(B)Lorg/mapsforge/core/graphics/Paint;
    .locals 2
    .param p1, "zoomLevel"    # B

    .line 153
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->strokes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/Paint;

    .line 154
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->stroke:Lorg/mapsforge/core/graphics/Paint;

    .line 157
    :cond_0
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 87
    return-void
.end method

.method public renderNode(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/PointOfInterest;)V
    .locals 0
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "poi"    # Lorg/mapsforge/map/datastore/PointOfInterest;

    .line 163
    return-void
.end method

.method public renderWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 17
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v14, p2

    sget-object v1, Lorg/mapsforge/core/graphics/Display;->NEVER:Lorg/mapsforge/core/graphics/Display;

    iget-object v2, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->display:Lorg/mapsforge/core/graphics/Display;

    if-ne v1, v2, :cond_0

    .line 168
    return-void

    .line 171
    :cond_0
    iget-object v1, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->textKey:Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;

    invoke-virtual/range {p3 .. p3}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;->getValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 172
    .local v15, "caption":Ljava/lang/String;
    if-nez v15, :cond_1

    .line 173
    return-void

    .line 176
    :cond_1
    iget-object v1, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->dyScaled:Ljava/util/Map;

    iget-object v2, v14, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v2, v2, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v2, v2, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 177
    .local v1, "dyScale":Ljava/lang/Float;
    if-nez v1, :cond_2

    .line 178
    iget v2, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->dy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_0

    .line 177
    :cond_2
    move-object/from16 v16, v1

    .line 181
    .end local v1    # "dyScale":Ljava/lang/Float;
    .local v16, "dyScale":Ljava/lang/Float;
    :goto_0
    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->display:Lorg/mapsforge/core/graphics/Display;

    iget v4, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->priority:I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v1, v14, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v1, v1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v1, v1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    .line 182
    invoke-direct {v0, v1}, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->getFillPaint(B)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v7

    iget-object v1, v14, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v1, v1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v1, v1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    .line 183
    invoke-direct {v0, v1}, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->getStrokePaint(B)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v8

    iget-boolean v9, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->repeat:Z

    iget v10, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->repeatGap:F

    iget v11, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->repeatStart:F

    iget-boolean v12, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->rotate:Z

    .line 181
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v5, v15

    move-object/from16 v13, p3

    invoke-interface/range {v1 .. v13}, Lorg/mapsforge/map/rendertheme/RenderCallback;->renderWayText(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;FLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;ZFFZLorg/mapsforge/map/layer/renderer/PolylineContainer;)V

    .line 186
    return-void
.end method

.method public scaleStrokeWidth(FB)V
    .locals 3
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 190
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->scale:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    sget-object v1, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;->NONE:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    if-ne v0, v1, :cond_0

    .line 191
    const/high16 p1, 0x3f800000    # 1.0f

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->dyScaled:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->dy:F

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public scaleTextSize(FB)V
    .locals 4
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 198
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->fill:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint(Lorg/mapsforge/core/graphics/Paint;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 199
    .local v0, "zlPaint":Lorg/mapsforge/core/graphics/Paint;
    iget v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->fontSize:F

    mul-float/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setTextSize(F)V

    .line 200
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->fills:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v1, v2}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint(Lorg/mapsforge/core/graphics/Paint;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v1

    .line 203
    .local v1, "zlStroke":Lorg/mapsforge/core/graphics/Paint;
    iget v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->fontSize:F

    mul-float/2addr v2, p1

    invoke-interface {v1, v2}, Lorg/mapsforge/core/graphics/Paint;->setTextSize(F)V

    .line 204
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;->strokes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method
