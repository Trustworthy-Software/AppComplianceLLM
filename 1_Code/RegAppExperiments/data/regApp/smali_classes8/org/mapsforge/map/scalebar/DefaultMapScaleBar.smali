.class public Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;
.super Lorg/mapsforge/map/scalebar/MapScaleBar;
.source "DefaultMapScaleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;
    }
.end annotation


# static fields
.field private static final BITMAP_HEIGHT:I = 0x28

.field private static final BITMAP_WIDTH:I = 0x78

.field private static final DEFAULT_HORIZONTAL_MARGIN:I = 0x5

.field private static final DEFAULT_VERTICAL_MARGIN:I = 0x0

.field private static final SCALE_BAR_MARGIN:I = 0xa

.field private static final STROKE_EXTERNAL:F = 4.0f

.field private static final STROKE_INTERNAL:F = 2.0f

.field private static final TEXT_MARGIN:I = 0x1


# instance fields
.field private final paintScaleBar:Lorg/mapsforge/core/graphics/Paint;

.field private final paintScaleBarStroke:Lorg/mapsforge/core/graphics/Paint;

.field private final paintScaleText:Lorg/mapsforge/core/graphics/Paint;

.field private final paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

.field private final scale:F

.field private scaleBarMode:Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;

.field private secondaryDistanceUnitAdapter:Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/map/model/MapViewDimension;Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V
    .locals 6
    .param p1, "mapViewPosition"    # Lorg/mapsforge/map/model/IMapViewPosition;
    .param p2, "mapViewDimension"    # Lorg/mapsforge/map/model/MapViewDimension;
    .param p3, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p4, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 59
    invoke-virtual {p4}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;-><init>(Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/map/model/MapViewDimension;Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;F)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/map/model/MapViewDimension;Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;F)V
    .locals 8
    .param p1, "mapViewPosition"    # Lorg/mapsforge/map/model/IMapViewPosition;
    .param p2, "mapViewDimension"    # Lorg/mapsforge/map/model/MapViewDimension;
    .param p3, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p4, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p5, "scale"    # F

    .line 64
    const/high16 v0, 0x42f00000    # 120.0f

    mul-float/2addr v0, p5

    float-to-int v6, v0

    const/high16 v0, 0x42200000    # 40.0f

    mul-float/2addr v0, p5

    float-to-int v7, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lorg/mapsforge/map/scalebar/MapScaleBar;-><init>(Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/map/model/MapViewDimension;Lorg/mapsforge/map/model/DisplayModel;Lorg/mapsforge/core/graphics/GraphicFactory;II)V

    .line 66
    const/high16 v0, 0x40a00000    # 5.0f

    mul-float/2addr v0, p5

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->setMarginHorizontal(I)V

    .line 67
    const/4 v0, 0x0

    mul-float v1, p5, v0

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->setMarginVertical(I)V

    .line 69
    iput p5, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->scale:F

    .line 70
    sget-object v1, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;->BOTH:Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;

    iput-object v1, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->scaleBarMode:Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;

    .line 71
    sget-object v1, Lorg/mapsforge/map/scalebar/ImperialUnitAdapter;->INSTANCE:Lorg/mapsforge/map/scalebar/ImperialUnitAdapter;

    iput-object v1, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->secondaryDistanceUnitAdapter:Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;

    .line 73
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->BLACK:Lorg/mapsforge/core/graphics/Color;

    sget-object v2, Lorg/mapsforge/core/graphics/Style;->FILL:Lorg/mapsforge/core/graphics/Style;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p0, v1, v3, v2}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->createScaleBarPaint(Lorg/mapsforge/core/graphics/Color;FLorg/mapsforge/core/graphics/Style;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleBar:Lorg/mapsforge/core/graphics/Paint;

    .line 74
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->WHITE:Lorg/mapsforge/core/graphics/Color;

    const/high16 v2, 0x40800000    # 4.0f

    sget-object v4, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    invoke-direct {p0, v1, v2, v4}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->createScaleBarPaint(Lorg/mapsforge/core/graphics/Color;FLorg/mapsforge/core/graphics/Style;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleBarStroke:Lorg/mapsforge/core/graphics/Paint;

    .line 75
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->BLACK:Lorg/mapsforge/core/graphics/Color;

    sget-object v2, Lorg/mapsforge/core/graphics/Style;->FILL:Lorg/mapsforge/core/graphics/Style;

    invoke-direct {p0, v1, v0, v2}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->createTextPaint(Lorg/mapsforge/core/graphics/Color;FLorg/mapsforge/core/graphics/Style;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleText:Lorg/mapsforge/core/graphics/Paint;

    .line 76
    sget-object v0, Lorg/mapsforge/core/graphics/Color;->WHITE:Lorg/mapsforge/core/graphics/Color;

    sget-object v1, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    invoke-direct {p0, v0, v3, v1}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->createTextPaint(Lorg/mapsforge/core/graphics/Color;FLorg/mapsforge/core/graphics/Style;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    .line 77
    return-void
.end method

.method private createScaleBarPaint(Lorg/mapsforge/core/graphics/Color;FLorg/mapsforge/core/graphics/Style;)Lorg/mapsforge/core/graphics/Paint;
    .locals 2
    .param p1, "color"    # Lorg/mapsforge/core/graphics/Color;
    .param p2, "strokeWidth"    # F
    .param p3, "style"    # Lorg/mapsforge/core/graphics/Style;

    .line 109
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    invoke-interface {v0}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 110
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    invoke-interface {v0, p1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 111
    iget v1, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->scale:F

    mul-float/2addr v1, p2

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    invoke-interface {v0, p3}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 113
    sget-object v1, Lorg/mapsforge/core/graphics/Cap;->SQUARE:Lorg/mapsforge/core/graphics/Cap;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStrokeCap(Lorg/mapsforge/core/graphics/Cap;)V

    .line 114
    return-object v0
.end method

.method private createTextPaint(Lorg/mapsforge/core/graphics/Color;FLorg/mapsforge/core/graphics/Style;)Lorg/mapsforge/core/graphics/Paint;
    .locals 3
    .param p1, "color"    # Lorg/mapsforge/core/graphics/Color;
    .param p2, "strokeWidth"    # F
    .param p3, "style"    # Lorg/mapsforge/core/graphics/Style;

    .line 118
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    invoke-interface {v0}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 119
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    invoke-interface {v0, p1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 120
    iget v1, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->scale:F

    mul-float/2addr v1, p2

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    invoke-interface {v0, p3}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 122
    sget-object v1, Lorg/mapsforge/core/graphics/FontFamily;->DEFAULT:Lorg/mapsforge/core/graphics/FontFamily;

    sget-object v2, Lorg/mapsforge/core/graphics/FontStyle;->BOLD:Lorg/mapsforge/core/graphics/FontStyle;

    invoke-interface {v0, v1, v2}, Lorg/mapsforge/core/graphics/Paint;->setTypeface(Lorg/mapsforge/core/graphics/FontFamily;Lorg/mapsforge/core/graphics/FontStyle;)V

    .line 123
    const/high16 v1, 0x41400000    # 12.0f

    iget v2, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->scale:F

    mul-float/2addr v2, v1

    invoke-interface {v0, v2}, Lorg/mapsforge/core/graphics/Paint;->setTextSize(F)V

    .line 124
    return-object v0
.end method

.method private drawScaleBar(Lorg/mapsforge/core/graphics/Canvas;IILorg/mapsforge/core/graphics/Paint;F)V
    .locals 14
    .param p1, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p2, "scaleBarLength1"    # I
    .param p3, "scaleBarLength2"    # I
    .param p4, "paint"    # Lorg/mapsforge/core/graphics/Paint;
    .param p5, "scale"    # F

    .line 151
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 153
    .local v2, "maxScaleBarLength":I
    sget-object v3, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$1;->$SwitchMap$org$mapsforge$map$scalebar$MapScaleBar$ScaleBarPosition:[I

    move-object v4, p0

    iget-object v5, v4, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->scaleBarPosition:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    invoke-virtual {v5}, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x3f000000    # 0.5f

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 250
    :pswitch_0
    if-nez v1, :cond_0

    .line 251
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    int-to-float v8, v2

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 252
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 251
    move-object v8, p1

    move-object/from16 v13, p4

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 253
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 254
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 253
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 255
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    int-to-float v8, v2

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 256
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, p5, v6

    mul-float/2addr v5, v7

    sub-float/2addr v3, v5

    int-to-float v5, v2

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 255
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    goto/16 :goto_0

    .line 258
    :cond_0
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 259
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    int-to-float v8, v2

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 258
    move-object v8, p1

    move-object/from16 v13, p4

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 260
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 261
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v5

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 260
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 262
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    int-to-float v8, v0

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 263
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    int-to-float v8, v0

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 262
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 264
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    int-to-float v8, v1

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 265
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v6, v6, p5

    mul-float/2addr v6, v7

    sub-float/2addr v3, v6

    int-to-float v6, v1

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v5, p5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 264
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    goto/16 :goto_0

    .line 231
    :pswitch_1
    if-nez v1, :cond_1

    .line 232
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v2

    add-float/2addr v3, v8

    .line 233
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 232
    move-object v8, p1

    move-object/from16 v13, p4

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 234
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    .line 235
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 234
    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 236
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v2

    add-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v5, v2

    add-float/2addr v3, v5

    .line 237
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 236
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    goto/16 :goto_0

    .line 239
    :cond_1
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v2

    add-float/2addr v3, v8

    .line 240
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 239
    move-object v8, p1

    move-object/from16 v13, p4

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 241
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    .line 242
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v5

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 241
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 243
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v0

    add-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v0

    add-float/2addr v3, v8

    .line 244
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 243
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 245
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v1

    add-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v6, v1

    add-float/2addr v3, v6

    .line 246
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v5, p5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 245
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 248
    goto/16 :goto_0

    .line 212
    :pswitch_2
    if-nez v1, :cond_2

    .line 213
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 214
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 213
    move-object v8, p1

    move-object/from16 v13, p4

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 215
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 216
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 215
    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 217
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 218
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 217
    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    goto/16 :goto_0

    .line 220
    :cond_2
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v2

    add-float/2addr v3, v8

    .line 221
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 220
    move-object v8, p1

    move-object/from16 v13, p4

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 222
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    .line 223
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v5

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 222
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 224
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v0

    add-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v0

    add-float/2addr v3, v8

    .line 225
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 224
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 226
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v1

    add-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v6, v1

    add-float/2addr v3, v6

    .line 227
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v5, p5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 226
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 229
    goto/16 :goto_0

    .line 193
    :pswitch_3
    if-nez v1, :cond_3

    .line 194
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    int-to-float v8, v2

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v5

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 195
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v5

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 194
    move-object v8, p1

    move-object/from16 v13, p4

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 196
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 197
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v5

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 196
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 198
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    int-to-float v8, v2

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 199
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v6, v6, p5

    mul-float/2addr v6, v7

    sub-float/2addr v3, v6

    int-to-float v6, v2

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v5, p5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 198
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    goto/16 :goto_0

    .line 201
    :cond_3
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 202
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    int-to-float v8, v2

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 201
    move-object v8, p1

    move-object/from16 v13, p4

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 203
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 204
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v5

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 203
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 205
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    int-to-float v8, v0

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 206
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    int-to-float v8, v0

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 205
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 207
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v6

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    int-to-float v8, v1

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 208
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v6, v6, p5

    mul-float/2addr v6, v7

    sub-float/2addr v3, v6

    int-to-float v6, v1

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v5, p5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 207
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 210
    goto/16 :goto_0

    .line 174
    :pswitch_4
    if-nez v1, :cond_4

    .line 175
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v5

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v2

    add-float/2addr v3, v8

    .line 176
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v5

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 175
    move-object v8, p1

    move-object/from16 v13, p4

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 177
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    .line 178
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v5

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 177
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 179
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v2

    add-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v6, v2

    add-float/2addr v3, v6

    .line 180
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v5, p5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 179
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    goto/16 :goto_0

    .line 182
    :cond_4
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v2

    add-float/2addr v3, v8

    .line 183
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 182
    move-object v8, p1

    move-object/from16 v13, p4

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 184
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    .line 185
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v5

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 184
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 186
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v0

    add-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v0

    add-float/2addr v3, v8

    .line 187
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 186
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 188
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v1

    add-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v6, v1

    add-float/2addr v3, v6

    .line 189
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v5, p5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 188
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 191
    goto/16 :goto_0

    .line 155
    :pswitch_5
    if-nez v1, :cond_5

    .line 156
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v6, p5, v5

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 157
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v6, p5, v5

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 156
    move-object v8, p1

    move-object/from16 v13, p4

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 158
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 159
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v6, p5, v5

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 158
    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 160
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 161
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v5, p5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 160
    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    goto/16 :goto_0

    .line 163
    :cond_5
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v2

    add-float/2addr v3, v8

    .line 164
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 163
    move-object v8, p1

    move-object/from16 v13, p4

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 165
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    .line 166
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, p5, v5

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 165
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 167
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v0

    add-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-float v3, p5, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v0

    add-float/2addr v3, v8

    .line 168
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 167
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 169
    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v8, v1

    add-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-float v3, p5, v6

    mul-float/2addr v3, v7

    int-to-float v6, v1

    add-float/2addr v3, v6

    .line 170
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v5, p5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 169
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 172
    nop

    .line 269
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawScaleText(Lorg/mapsforge/core/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;Lorg/mapsforge/core/graphics/Paint;F)V
    .locals 6
    .param p1, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p2, "scaleText1"    # Ljava/lang/String;
    .param p3, "scaleText2"    # Ljava/lang/String;
    .param p4, "paint"    # Lorg/mapsforge/core/graphics/Paint;
    .param p5, "scale"    # F

    .line 272
    sget-object v0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$1;->$SwitchMap$org$mapsforge$map$scalebar$MapScaleBar$ScaleBarPosition:[I

    iget-object v1, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->scaleBarPosition:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    invoke-virtual {v1}, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40800000    # 4.0f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 329
    :pswitch_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v5, p5, v4

    sub-float/2addr v0, v5

    mul-float v5, p5, v3

    sub-float/2addr v0, v5

    iget-object v5, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v5, p2}, Lorg/mapsforge/core/graphics/Paint;->getTextWidth(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float/2addr v1, p5

    mul-float/2addr v4, p5

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    mul-float/2addr v3, p5

    add-float/2addr v1, v3

    iget-object v2, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    .line 331
    invoke-interface {v2, p2}, Lorg/mapsforge/core/graphics/Paint;->getTextHeight(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 330
    invoke-interface {p1, p2, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    goto/16 :goto_0

    .line 333
    :cond_0
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, p5, v4

    sub-float/2addr v0, v1

    mul-float v1, p5, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v1, p2}, Lorg/mapsforge/core/graphics/Paint;->getTextWidth(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 334
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float v5, p5, v4

    mul-float/2addr v5, v2

    sub-float/2addr v1, v5

    mul-float v5, p5, v3

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 333
    invoke-interface {p1, p2, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 335
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, p5, v4

    sub-float/2addr v0, v1

    mul-float v1, p5, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v1, p3}, Lorg/mapsforge/core/graphics/Paint;->getTextWidth(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 336
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v4, p5

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    mul-float/2addr v3, p5

    add-float/2addr v1, v3

    iget-object v2, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v2, p3}, Lorg/mapsforge/core/graphics/Paint;->getTextHeight(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 335
    invoke-interface {p1, p3, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    goto/16 :goto_0

    .line 318
    :pswitch_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 319
    mul-float v0, p5, v4

    mul-float v5, p5, v3

    add-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float/2addr v1, p5

    mul-float/2addr v4, p5

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    mul-float/2addr v3, p5

    add-float/2addr v1, v3

    iget-object v2, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    .line 320
    invoke-interface {v2, p2}, Lorg/mapsforge/core/graphics/Paint;->getTextHeight(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 319
    invoke-interface {p1, p2, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    goto/16 :goto_0

    .line 322
    :cond_1
    mul-float v0, p5, v4

    mul-float v1, p5, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 323
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float v5, p5, v4

    mul-float/2addr v5, v2

    sub-float/2addr v1, v5

    mul-float v5, p5, v3

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 322
    invoke-interface {p1, p2, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 324
    mul-float v0, p5, v4

    mul-float v1, p5, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 325
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v4, p5

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    mul-float/2addr v3, p5

    add-float/2addr v1, v3

    iget-object v2, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v2, p3}, Lorg/mapsforge/core/graphics/Paint;->getTextHeight(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 324
    invoke-interface {p1, p3, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 327
    goto/16 :goto_0

    .line 307
    :pswitch_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 308
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v5, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v5, p2}, Lorg/mapsforge/core/graphics/Paint;->getTextWidth(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float/2addr v1, p5

    mul-float/2addr v4, p5

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    mul-float/2addr v3, p5

    add-float/2addr v1, v3

    iget-object v2, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    .line 309
    invoke-interface {v2, p2}, Lorg/mapsforge/core/graphics/Paint;->getTextHeight(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 308
    invoke-interface {p1, p2, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    goto/16 :goto_0

    .line 311
    :cond_2
    mul-float v0, p5, v4

    mul-float v1, p5, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 312
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float v5, p5, v4

    mul-float/2addr v5, v2

    sub-float/2addr v1, v5

    mul-float v5, p5, v3

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 311
    invoke-interface {p1, p2, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 313
    mul-float v0, p5, v4

    mul-float v1, p5, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 314
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v4, p5

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    mul-float/2addr v3, p5

    add-float/2addr v1, v3

    iget-object v2, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v2, p3}, Lorg/mapsforge/core/graphics/Paint;->getTextHeight(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 313
    invoke-interface {p1, p3, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 316
    goto/16 :goto_0

    .line 296
    :pswitch_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 297
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v5, p5, v4

    sub-float/2addr v0, v5

    mul-float v5, p5, v3

    sub-float/2addr v0, v5

    iget-object v5, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v5, p2}, Lorg/mapsforge/core/graphics/Paint;->getTextWidth(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 298
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v1, p5

    sub-float/2addr v5, v1

    mul-float/2addr v4, p5

    mul-float/2addr v4, v2

    sub-float/2addr v5, v4

    mul-float/2addr v3, p5

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 297
    invoke-interface {p1, p2, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    goto/16 :goto_0

    .line 300
    :cond_3
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, p5, v4

    sub-float/2addr v0, v1

    mul-float v1, p5, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v1, p2}, Lorg/mapsforge/core/graphics/Paint;->getTextWidth(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 301
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float v5, p5, v4

    mul-float/2addr v5, v2

    sub-float/2addr v1, v5

    mul-float v5, p5, v3

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 300
    invoke-interface {p1, p2, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 302
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, p5, v4

    sub-float/2addr v0, v1

    mul-float v1, p5, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v1, p3}, Lorg/mapsforge/core/graphics/Paint;->getTextWidth(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 303
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v4, p5

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    mul-float/2addr v3, p5

    add-float/2addr v1, v3

    iget-object v2, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v2, p3}, Lorg/mapsforge/core/graphics/Paint;->getTextHeight(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 302
    invoke-interface {p1, p3, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 305
    goto/16 :goto_0

    .line 285
    :pswitch_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 286
    mul-float v0, p5, v4

    mul-float v5, p5, v3

    add-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 287
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v1, p5

    sub-float/2addr v5, v1

    mul-float/2addr v4, p5

    mul-float/2addr v4, v2

    sub-float/2addr v5, v4

    mul-float/2addr v3, p5

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 286
    invoke-interface {p1, p2, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    goto/16 :goto_0

    .line 289
    :cond_4
    mul-float v0, p5, v4

    mul-float v1, p5, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 290
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float v5, p5, v4

    mul-float/2addr v5, v2

    sub-float/2addr v1, v5

    mul-float v5, p5, v3

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 289
    invoke-interface {p1, p2, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 291
    mul-float v0, p5, v4

    mul-float v1, p5, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 292
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v4, p5

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    mul-float/2addr v3, p5

    add-float/2addr v1, v3

    iget-object v2, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v2, p3}, Lorg/mapsforge/core/graphics/Paint;->getTextHeight(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 291
    invoke-interface {p1, p3, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 294
    goto :goto_0

    .line 274
    :pswitch_5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 275
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v5, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v5, p2}, Lorg/mapsforge/core/graphics/Paint;->getTextWidth(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 276
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v1, p5

    sub-float/2addr v5, v1

    mul-float/2addr v4, p5

    mul-float/2addr v4, v2

    sub-float/2addr v5, v4

    mul-float/2addr v3, p5

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 275
    invoke-interface {p1, p2, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    goto :goto_0

    .line 278
    :cond_5
    mul-float v0, p5, v4

    mul-float v1, p5, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 279
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float v5, p5, v4

    mul-float/2addr v5, v2

    sub-float/2addr v1, v5

    mul-float v5, p5, v3

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 278
    invoke-interface {p1, p2, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 280
    mul-float v0, p5, v4

    mul-float v1, p5, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 281
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v4, p5

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    mul-float/2addr v3, p5

    add-float/2addr v1, v3

    iget-object v2, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v2, p3}, Lorg/mapsforge/core/graphics/Paint;->getTextHeight(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 280
    invoke-interface {p1, p3, v0, v1, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 283
    nop

    .line 340
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getScaleBarMode()Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->scaleBarMode:Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;

    return-object v0
.end method

.method public getSecondaryDistanceUnitAdapter()Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->secondaryDistanceUnitAdapter:Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;

    return-object v0
.end method

.method protected redraw(Lorg/mapsforge/core/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;

    .line 129
    sget-object v0, Lorg/mapsforge/core/graphics/Color;->TRANSPARENT:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {p1, v0}, Lorg/mapsforge/core/graphics/Canvas;->fillColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 131
    invoke-virtual {p0}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->calculateScaleBarLengthAndValue()Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;

    move-result-object v0

    .line 134
    .local v0, "lengthAndValue":Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;
    iget-object v1, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->scaleBarMode:Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;

    sget-object v2, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;->BOTH:Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;

    if-ne v1, v2, :cond_0

    .line 135
    iget-object v1, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->secondaryDistanceUnitAdapter:Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;

    invoke-virtual {p0, v1}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->calculateScaleBarLengthAndValue(Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;)Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;

    move-result-object v1

    .local v1, "lengthAndValue2":Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;
    goto :goto_0

    .line 137
    .end local v1    # "lengthAndValue2":Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;
    :cond_0
    new-instance v1, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;-><init>(II)V

    .line 140
    .restart local v1    # "lengthAndValue2":Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;
    :goto_0
    iget v4, v0, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;->scaleBarLength:I

    iget v5, v1, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;->scaleBarLength:I

    iget-object v6, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleBarStroke:Lorg/mapsforge/core/graphics/Paint;

    iget v7, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->scale:F

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->drawScaleBar(Lorg/mapsforge/core/graphics/Canvas;IILorg/mapsforge/core/graphics/Paint;F)V

    .line 141
    iget v10, v0, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;->scaleBarLength:I

    iget v11, v1, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;->scaleBarLength:I

    iget-object v12, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleBar:Lorg/mapsforge/core/graphics/Paint;

    iget v13, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->scale:F

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v8 .. v13}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->drawScaleBar(Lorg/mapsforge/core/graphics/Canvas;IILorg/mapsforge/core/graphics/Paint;F)V

    .line 143
    iget-object v2, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->distanceUnitAdapter:Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;

    iget v3, v0, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;->scaleBarValue:I

    invoke-interface {v2, v3}, Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;->getScaleText(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "scaleText1":Ljava/lang/String;
    iget-object v3, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->scaleBarMode:Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;

    sget-object v4, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;->BOTH:Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->secondaryDistanceUnitAdapter:Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;

    iget v4, v1, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;->scaleBarValue:I

    invoke-interface {v3, v4}, Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;->getScaleText(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    move-object v7, v3

    .line 146
    .local v7, "scaleText2":Ljava/lang/String;
    iget-object v8, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleTextStroke:Lorg/mapsforge/core/graphics/Paint;

    iget v9, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->scale:F

    move-object v4, p0

    move-object v5, p1

    move-object v6, v2

    invoke-direct/range {v4 .. v9}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->drawScaleText(Lorg/mapsforge/core/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;Lorg/mapsforge/core/graphics/Paint;F)V

    .line 147
    iget-object v12, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->paintScaleText:Lorg/mapsforge/core/graphics/Paint;

    iget v13, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->scale:F

    move-object v8, p0

    move-object v9, p1

    move-object v10, v2

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->drawScaleText(Lorg/mapsforge/core/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;Lorg/mapsforge/core/graphics/Paint;F)V

    .line 148
    return-void
.end method

.method public setScaleBarMode(Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;)V
    .locals 1
    .param p1, "scaleBarMode"    # Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;

    .line 104
    iput-object p1, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->scaleBarMode:Lorg/mapsforge/map/scalebar/DefaultMapScaleBar$ScaleBarMode;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->redrawNeeded:Z

    .line 106
    return-void
.end method

.method public setSecondaryDistanceUnitAdapter(Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;)V
    .locals 2
    .param p1, "distanceUnitAdapter"    # Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;

    .line 92
    if-eqz p1, :cond_0

    .line 95
    iput-object p1, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->secondaryDistanceUnitAdapter:Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;->redrawNeeded:Z

    .line 97
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
