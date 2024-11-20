.class public Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;
.super Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;
.source "Caption.java"


# static fields
.field public static final DEFAULT_GAP:F = 5.0f


# instance fields
.field private bitmap:Lorg/mapsforge/core/graphics/Bitmap;

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

.field private final gap:F

.field private final maxTextWidth:I

.field private position:Lorg/mapsforge/core/graphics/Position;

.field private priority:I

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

.field private symbolId:Ljava/lang/String;

.field private textKey:Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 4
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/core/graphics/GraphicFactory;",
            "Lorg/mapsforge/map/model/DisplayModel;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 68
    .local p5, "symbols":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;>;"
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V

    .line 69
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->fill:Lorg/mapsforge/core/graphics/Paint;

    .line 70
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->BLACK:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 71
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->FILL:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->fills:Ljava/util/Map;

    .line 74
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->stroke:Lorg/mapsforge/core/graphics/Paint;

    .line 75
    sget-object v2, Lorg/mapsforge/core/graphics/Color;->BLACK:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v1, v2}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 76
    sget-object v2, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v1, v2}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 77
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->strokes:Ljava/util/Map;

    .line 78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->dyScaled:Ljava/util/Map;

    .line 81
    sget-object v2, Lorg/mapsforge/core/graphics/Display;->IFSPACE:Lorg/mapsforge/core/graphics/Display;

    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->display:Lorg/mapsforge/core/graphics/Display;

    .line 83
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v3

    mul-float/2addr v3, v2

    iput v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->gap:F

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->extractValues(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 87
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->symbolId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 88
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;

    .line 89
    .local v2, "symbol":Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2}, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->getBitmap()Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 94
    .end local v2    # "symbol":Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;
    :cond_0
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    if-nez v2, :cond_2

    .line 96
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 97
    sget-object v2, Lorg/mapsforge/core/graphics/Position;->CENTER:Lorg/mapsforge/core/graphics/Position;

    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    goto :goto_0

    .line 99
    :cond_1
    sget-object v2, Lorg/mapsforge/core/graphics/Position;->BELOW:Lorg/mapsforge/core/graphics/Position;

    iput-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    .line 102
    :cond_2
    :goto_0
    sget-object v2, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption$1;->$SwitchMap$org$mapsforge$core$graphics$Position:[I

    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    invoke-virtual {v3}, Lorg/mapsforge/core/graphics/Position;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :pswitch_0
    sget-object v2, Lorg/mapsforge/core/graphics/Align;->LEFT:Lorg/mapsforge/core/graphics/Align;

    invoke-interface {v1, v2}, Lorg/mapsforge/core/graphics/Paint;->setTextAlign(Lorg/mapsforge/core/graphics/Align;)V

    .line 119
    sget-object v1, Lorg/mapsforge/core/graphics/Align;->LEFT:Lorg/mapsforge/core/graphics/Align;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setTextAlign(Lorg/mapsforge/core/graphics/Align;)V

    .line 120
    goto :goto_1

    .line 112
    :pswitch_1
    sget-object v2, Lorg/mapsforge/core/graphics/Align;->RIGHT:Lorg/mapsforge/core/graphics/Align;

    invoke-interface {v1, v2}, Lorg/mapsforge/core/graphics/Paint;->setTextAlign(Lorg/mapsforge/core/graphics/Align;)V

    .line 113
    sget-object v1, Lorg/mapsforge/core/graphics/Align;->RIGHT:Lorg/mapsforge/core/graphics/Align;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setTextAlign(Lorg/mapsforge/core/graphics/Align;)V

    .line 114
    goto :goto_1

    .line 106
    :pswitch_2
    sget-object v2, Lorg/mapsforge/core/graphics/Align;->CENTER:Lorg/mapsforge/core/graphics/Align;

    invoke-interface {v1, v2}, Lorg/mapsforge/core/graphics/Paint;->setTextAlign(Lorg/mapsforge/core/graphics/Align;)V

    .line 107
    sget-object v1, Lorg/mapsforge/core/graphics/Align;->CENTER:Lorg/mapsforge/core/graphics/Align;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setTextAlign(Lorg/mapsforge/core/graphics/Align;)V

    .line 108
    nop

    .line 126
    :goto_1
    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getMaxTextWidth()I

    move-result v0

    iput v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->maxTextWidth:I

    .line 128
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private computeHorizontalOffset()F
    .locals 3

    .line 133
    sget-object v0, Lorg/mapsforge/core/graphics/Position;->RIGHT:Lorg/mapsforge/core/graphics/Position;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    if-eq v0, v1, :cond_1

    sget-object v0, Lorg/mapsforge/core/graphics/Position;->LEFT:Lorg/mapsforge/core/graphics/Position;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    if-eq v0, v1, :cond_1

    sget-object v0, Lorg/mapsforge/core/graphics/Position;->BELOW_RIGHT:Lorg/mapsforge/core/graphics/Position;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    if-eq v0, v1, :cond_1

    sget-object v0, Lorg/mapsforge/core/graphics/Position;->BELOW_LEFT:Lorg/mapsforge/core/graphics/Position;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    if-eq v0, v1, :cond_1

    sget-object v0, Lorg/mapsforge/core/graphics/Position;->ABOVE_RIGHT:Lorg/mapsforge/core/graphics/Position;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    if-eq v0, v1, :cond_1

    sget-object v0, Lorg/mapsforge/core/graphics/Position;->ABOVE_LEFT:Lorg/mapsforge/core/graphics/Position;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 136
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->gap:F

    add-float/2addr v0, v1

    .line 137
    .local v0, "horizontalOffset":F
    sget-object v1, Lorg/mapsforge/core/graphics/Position;->LEFT:Lorg/mapsforge/core/graphics/Position;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    if-eq v1, v2, :cond_2

    sget-object v1, Lorg/mapsforge/core/graphics/Position;->BELOW_LEFT:Lorg/mapsforge/core/graphics/Position;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    if-eq v1, v2, :cond_2

    sget-object v1, Lorg/mapsforge/core/graphics/Position;->ABOVE_LEFT:Lorg/mapsforge/core/graphics/Position;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    if-ne v1, v2, :cond_3

    .line 140
    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    .line 142
    :cond_3
    return v0
.end method

.method private computeVerticalOffset(B)F
    .locals 4
    .param p1, "zoomLevel"    # B

    .line 148
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->dyScaled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 150
    .local v0, "verticalOffset":F
    sget-object v1, Lorg/mapsforge/core/graphics/Position;->ABOVE:Lorg/mapsforge/core/graphics/Position;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_2

    sget-object v1, Lorg/mapsforge/core/graphics/Position;->ABOVE_LEFT:Lorg/mapsforge/core/graphics/Position;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    if-eq v1, v2, :cond_2

    sget-object v1, Lorg/mapsforge/core/graphics/Position;->ABOVE_RIGHT:Lorg/mapsforge/core/graphics/Position;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    sget-object v1, Lorg/mapsforge/core/graphics/Position;->BELOW:Lorg/mapsforge/core/graphics/Position;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    if-eq v1, v2, :cond_1

    sget-object v1, Lorg/mapsforge/core/graphics/Position;->BELOW_LEFT:Lorg/mapsforge/core/graphics/Position;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    if-eq v1, v2, :cond_1

    sget-object v1, Lorg/mapsforge/core/graphics/Position;->BELOW_RIGHT:Lorg/mapsforge/core/graphics/Position;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    if-ne v1, v2, :cond_3

    .line 157
    :cond_1
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v1}, Lorg/mapsforge/core/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->gap:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_1

    .line 153
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v1}, Lorg/mapsforge/core/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->gap:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 159
    :cond_3
    :goto_1
    return v0
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

    .line 169
    sget-object v0, Lorg/mapsforge/core/graphics/FontFamily;->DEFAULT:Lorg/mapsforge/core/graphics/FontFamily;

    .line 170
    .local v0, "fontFamily":Lorg/mapsforge/core/graphics/FontFamily;
    sget-object v1, Lorg/mapsforge/core/graphics/FontStyle;->NORMAL:Lorg/mapsforge/core/graphics/FontStyle;

    .line 172
    .local v1, "fontStyle":Lorg/mapsforge/core/graphics/FontStyle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const-string v4, "k"

    if-ge v2, v3, :cond_d

    .line 173
    invoke-interface {p4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    invoke-static {v5}, Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;->getInstance(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;

    move-result-object v4

    iput-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->textKey:Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;

    goto/16 :goto_1

    .line 178
    :cond_0
    const-string v4, "cat"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    iput-object v5, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 180
    :cond_1
    const-string v4, "display"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    invoke-static {v5}, Lorg/mapsforge/core/graphics/Display;->fromString(Ljava/lang/String;)Lorg/mapsforge/core/graphics/Display;

    move-result-object v4

    iput-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->display:Lorg/mapsforge/core/graphics/Display;

    goto/16 :goto_1

    .line 182
    :cond_2
    const-string v4, "dy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v6

    mul-float/2addr v4, v6

    iput v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->dy:F

    goto/16 :goto_1

    .line 184
    :cond_3
    const-string v4, "fill"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 185
    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->fill:Lorg/mapsforge/core/graphics/Paint;

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getThemeCallback()Lorg/mapsforge/map/rendertheme/ThemeCallback;

    move-result-object v6

    invoke-static {p1, v5, v6, p0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getColor(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Lorg/mapsforge/map/rendertheme/ThemeCallback;Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)I

    move-result v6

    invoke-interface {v4, v6}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 186
    :cond_4
    const-string v4, "font-family"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 187
    invoke-static {v5}, Lorg/mapsforge/core/graphics/FontFamily;->fromString(Ljava/lang/String;)Lorg/mapsforge/core/graphics/FontFamily;

    move-result-object v0

    goto/16 :goto_1

    .line 188
    :cond_5
    const-string v4, "font-size"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 189
    invoke-static {v3, v5}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v6

    mul-float/2addr v4, v6

    iput v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->fontSize:F

    goto :goto_1

    .line 190
    :cond_6
    const-string v4, "font-style"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 191
    invoke-static {v5}, Lorg/mapsforge/core/graphics/FontStyle;->fromString(Ljava/lang/String;)Lorg/mapsforge/core/graphics/FontStyle;

    move-result-object v1

    goto :goto_1

    .line 192
    :cond_7
    const-string v4, "position"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 193
    invoke-static {v5}, Lorg/mapsforge/core/graphics/Position;->fromString(Ljava/lang/String;)Lorg/mapsforge/core/graphics/Position;

    move-result-object v4

    iput-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    goto :goto_1

    .line 194
    :cond_8
    const-string v4, "priority"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 195
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->priority:I

    goto :goto_1

    .line 196
    :cond_9
    const-string v4, "stroke"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 197
    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getThemeCallback()Lorg/mapsforge/map/rendertheme/ThemeCallback;

    move-result-object v6

    invoke-static {p1, v5, v6, p0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getColor(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Lorg/mapsforge/map/rendertheme/ThemeCallback;Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)I

    move-result v6

    invoke-interface {v4, v6}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 198
    :cond_a
    const-string v4, "stroke-width"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 199
    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-static {v3, v5}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p2}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-interface {v4, v6}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1

    .line 200
    :cond_b
    const-string v4, "symbol-id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 201
    iput-object v5, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->symbolId:Ljava/lang/String;

    .line 172
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 203
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_c
    invoke-static {p3, v3, v5, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->createXmlPullParserException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object v4

    throw v4

    .line 207
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_d
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->fill:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v2, v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setTypeface(Lorg/mapsforge/core/graphics/FontFamily;Lorg/mapsforge/core/graphics/FontStyle;)V

    .line 208
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v2, v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setTypeface(Lorg/mapsforge/core/graphics/FontFamily;Lorg/mapsforge/core/graphics/FontStyle;)V

    .line 210
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->textKey:Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;

    invoke-static {p3, v4, v2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->checkMandatoryAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method private getFillPaint(B)Lorg/mapsforge/core/graphics/Paint;
    .locals 2
    .param p1, "zoomLevel"    # B

    .line 214
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->fills:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/Paint;

    .line 215
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->fill:Lorg/mapsforge/core/graphics/Paint;

    .line 218
    :cond_0
    return-object v0
.end method

.method private getStrokePaint(B)Lorg/mapsforge/core/graphics/Paint;
    .locals 2
    .param p1, "zoomLevel"    # B

    .line 222
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->strokes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/Paint;

    .line 223
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->stroke:Lorg/mapsforge/core/graphics/Paint;

    .line 226
    :cond_0
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 165
    return-void
.end method

.method public renderNode(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/PointOfInterest;)V
    .locals 18
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "poi"    # Lorg/mapsforge/map/datastore/PointOfInterest;

    .line 231
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    sget-object v1, Lorg/mapsforge/core/graphics/Display;->NEVER:Lorg/mapsforge/core/graphics/Display;

    iget-object v2, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->display:Lorg/mapsforge/core/graphics/Display;

    if-ne v1, v2, :cond_0

    .line 232
    return-void

    .line 235
    :cond_0
    iget-object v1, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->textKey:Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;

    move-object/from16 v14, p3

    iget-object v2, v14, Lorg/mapsforge/map/datastore/PointOfInterest;->tags:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;->getValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 236
    .local v15, "caption":Ljava/lang/String;
    if-nez v15, :cond_1

    .line 237
    return-void

    .line 240
    :cond_1
    const/4 v1, 0x0

    .line 242
    .local v1, "horizontalOffset":F
    iget-object v2, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->dyScaled:Ljava/util/Map;

    iget-object v3, v13, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v3, v3, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v3, v3, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 243
    .local v2, "verticalOffset":Ljava/lang/Float;
    if-nez v2, :cond_2

    .line 244
    iget v3, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->dy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 247
    :cond_2
    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 248
    invoke-direct/range {p0 .. p0}, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->computeHorizontalOffset()F

    move-result v1

    .line 249
    iget-object v3, v13, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v3, v3, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v3, v3, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-direct {v0, v3}, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->computeVerticalOffset(B)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_0

    .line 247
    :cond_3
    move/from16 v16, v1

    move-object/from16 v17, v2

    .line 252
    .end local v1    # "horizontalOffset":F
    .end local v2    # "verticalOffset":Ljava/lang/Float;
    .local v16, "horizontalOffset":F
    .local v17, "verticalOffset":Ljava/lang/Float;
    :goto_0
    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->display:Lorg/mapsforge/core/graphics/Display;

    iget v4, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->priority:I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v1, v13, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v1, v1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v1, v1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    .line 253
    invoke-direct {v0, v1}, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->getFillPaint(B)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v8

    iget-object v1, v13, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v1, v1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v1, v1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-direct {v0, v1}, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->getStrokePaint(B)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v9

    iget-object v10, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    iget v11, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->maxTextWidth:I

    .line 252
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v5, v15

    move/from16 v6, v16

    move-object/from16 v12, p3

    invoke-interface/range {v1 .. v12}, Lorg/mapsforge/map/rendertheme/RenderCallback;->renderPointOfInterestCaption(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;FFLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Position;ILorg/mapsforge/map/datastore/PointOfInterest;)V

    .line 254
    return-void
.end method

.method public renderWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 17
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 258
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    sget-object v1, Lorg/mapsforge/core/graphics/Display;->NEVER:Lorg/mapsforge/core/graphics/Display;

    iget-object v2, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->display:Lorg/mapsforge/core/graphics/Display;

    if-ne v1, v2, :cond_0

    .line 259
    return-void

    .line 262
    :cond_0
    iget-object v1, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->textKey:Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;

    invoke-virtual/range {p3 .. p3}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mapsforge/map/rendertheme/renderinstruction/TextKey;->getValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 263
    .local v14, "caption":Ljava/lang/String;
    if-nez v14, :cond_1

    .line 264
    return-void

    .line 267
    :cond_1
    const/4 v1, 0x0

    .line 268
    .local v1, "horizontalOffset":F
    iget-object v2, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->dyScaled:Ljava/util/Map;

    iget-object v3, v13, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v3, v3, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v3, v3, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 269
    .local v2, "verticalOffset":Ljava/lang/Float;
    if-nez v2, :cond_2

    .line 270
    iget v3, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->dy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 273
    :cond_2
    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 274
    invoke-direct/range {p0 .. p0}, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->computeHorizontalOffset()F

    move-result v1

    .line 275
    iget-object v3, v13, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v3, v3, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v3, v3, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-direct {v0, v3}, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->computeVerticalOffset(B)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move v15, v1

    move-object/from16 v16, v2

    goto :goto_0

    .line 273
    :cond_3
    move v15, v1

    move-object/from16 v16, v2

    .line 278
    .end local v1    # "horizontalOffset":F
    .end local v2    # "verticalOffset":Ljava/lang/Float;
    .local v15, "horizontalOffset":F
    .local v16, "verticalOffset":Ljava/lang/Float;
    :goto_0
    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->display:Lorg/mapsforge/core/graphics/Display;

    iget v4, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->priority:I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v1, v13, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v1, v1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v1, v1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    .line 279
    invoke-direct {v0, v1}, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->getFillPaint(B)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v8

    iget-object v1, v13, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v1, v1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v1, v1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-direct {v0, v1}, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->getStrokePaint(B)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v9

    iget-object v10, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->position:Lorg/mapsforge/core/graphics/Position;

    iget v11, v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->maxTextWidth:I

    .line 278
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v5, v14

    move v6, v15

    move-object/from16 v12, p3

    invoke-interface/range {v1 .. v12}, Lorg/mapsforge/map/rendertheme/RenderCallback;->renderAreaCaption(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;FFLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Position;ILorg/mapsforge/map/layer/renderer/PolylineContainer;)V

    .line 280
    return-void
.end method

.method public scaleStrokeWidth(FB)V
    .locals 0
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 285
    return-void
.end method

.method public scaleTextSize(FB)V
    .locals 5
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 289
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->fill:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint(Lorg/mapsforge/core/graphics/Paint;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 290
    .local v0, "f":Lorg/mapsforge/core/graphics/Paint;
    iget v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->fontSize:F

    mul-float/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setTextSize(F)V

    .line 291
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->fills:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->stroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v1, v2}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint(Lorg/mapsforge/core/graphics/Paint;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v1

    .line 294
    .local v1, "s":Lorg/mapsforge/core/graphics/Paint;
    iget v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->fontSize:F

    mul-float/2addr v2, p1

    invoke-interface {v1, v2}, Lorg/mapsforge/core/graphics/Paint;->setTextSize(F)V

    .line 295
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->strokes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->dyScaled:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iget v4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;->dy:F

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-void
.end method
