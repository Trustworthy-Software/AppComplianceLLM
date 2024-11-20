.class public Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;
.super Lorg/mapsforge/core/mapelements/PointTextContainer;
.source "AndroidPointTextContainer.java"


# instance fields
.field private backLayout:Landroid/text/StaticLayout;

.field private frontLayout:Landroid/text/StaticLayout;


# direct methods
.method constructor <init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/mapelements/SymbolContainer;Lorg/mapsforge/core/graphics/Position;I)V
    .locals 30
    .param p1, "xy"    # Lorg/mapsforge/core/model/Point;
    .param p2, "display"    # Lorg/mapsforge/core/graphics/Display;
    .param p3, "priority"    # I
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "paintFront"    # Lorg/mapsforge/core/graphics/Paint;
    .param p6, "paintBack"    # Lorg/mapsforge/core/graphics/Paint;
    .param p7, "symbolContainer"    # Lorg/mapsforge/core/mapelements/SymbolContainer;
    .param p8, "position"    # Lorg/mapsforge/core/graphics/Position;
    .param p9, "maxTextWidth"    # I

    .line 40
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p9}, Lorg/mapsforge/core/mapelements/PointTextContainer;-><init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/mapelements/SymbolContainer;Lorg/mapsforge/core/graphics/Position;I)V

    .line 43
    iget v1, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->textWidth:I

    iget v2, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->maxTextWidth:I

    if-le v1, v2, :cond_7

    .line 54
    new-instance v1, Landroid/text/TextPaint;

    iget-object v2, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-static {v2}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getPaint(Lorg/mapsforge/core/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 55
    .local v1, "frontTextPaint":Landroid/text/TextPaint;
    const/4 v2, 0x0

    .line 56
    .local v2, "backTextPaint":Landroid/text/TextPaint;
    iget-object v3, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    if-eqz v3, :cond_0

    .line 57
    new-instance v3, Landroid/text/TextPaint;

    iget-object v4, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-static {v4}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getPaint(Lorg/mapsforge/core/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    move-object v2, v3

    .line 60
    :cond_0
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 61
    .local v3, "alignment":Landroid/text/Layout$Alignment;
    sget-object v4, Lorg/mapsforge/core/graphics/Position;->LEFT:Lorg/mapsforge/core/graphics/Position;

    iget-object v5, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->position:Lorg/mapsforge/core/graphics/Position;

    if-eq v4, v5, :cond_4

    sget-object v4, Lorg/mapsforge/core/graphics/Position;->BELOW_LEFT:Lorg/mapsforge/core/graphics/Position;

    iget-object v5, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->position:Lorg/mapsforge/core/graphics/Position;

    if-eq v4, v5, :cond_4

    sget-object v4, Lorg/mapsforge/core/graphics/Position;->ABOVE_LEFT:Lorg/mapsforge/core/graphics/Position;

    iget-object v5, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->position:Lorg/mapsforge/core/graphics/Position;

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    sget-object v4, Lorg/mapsforge/core/graphics/Position;->RIGHT:Lorg/mapsforge/core/graphics/Position;

    iget-object v5, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->position:Lorg/mapsforge/core/graphics/Position;

    if-eq v4, v5, :cond_3

    sget-object v4, Lorg/mapsforge/core/graphics/Position;->BELOW_RIGHT:Lorg/mapsforge/core/graphics/Position;

    iget-object v5, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->position:Lorg/mapsforge/core/graphics/Position;

    if-eq v4, v5, :cond_3

    sget-object v4, Lorg/mapsforge/core/graphics/Position;->ABOVE_RIGHT:Lorg/mapsforge/core/graphics/Position;

    iget-object v5, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->position:Lorg/mapsforge/core/graphics/Position;

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v11, v3

    goto :goto_2

    .line 68
    :cond_3
    :goto_0
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v11, v3

    goto :goto_2

    .line 64
    :cond_4
    :goto_1
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object v11, v3

    .line 73
    .end local v3    # "alignment":Landroid/text/Layout$Alignment;
    .local v11, "alignment":Landroid/text/Layout$Alignment;
    :goto_2
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 74
    iget-object v3, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    if-eqz v3, :cond_5

    .line 75
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 78
    :cond_5
    new-instance v12, Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->text:Ljava/lang/String;

    iget v6, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->maxTextWidth:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v12

    move-object v5, v1

    move-object v7, v11

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v12, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->frontLayout:Landroid/text/StaticLayout;

    .line 79
    const/4 v3, 0x0

    iput-object v3, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->backLayout:Landroid/text/StaticLayout;

    .line 80
    iget-object v3, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    if-eqz v3, :cond_6

    .line 81
    new-instance v12, Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->text:Ljava/lang/String;

    iget v6, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->maxTextWidth:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v12

    move-object v5, v2

    move-object v7, v11

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v12, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->backLayout:Landroid/text/StaticLayout;

    .line 84
    :cond_6
    iget-object v3, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->frontLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 85
    .local v3, "boxWidth":F
    iget-object v4, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->frontLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v1, v4

    .line 86
    .end local v2    # "backTextPaint":Landroid/text/TextPaint;
    .end local v11    # "alignment":Landroid/text/Layout$Alignment;
    .local v1, "boxHeight":F
    goto :goto_3

    .line 87
    .end local v1    # "boxHeight":F
    .end local v3    # "boxWidth":F
    :cond_7
    iget v1, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->textWidth:I

    int-to-float v3, v1

    .line 88
    .restart local v3    # "boxWidth":F
    iget v1, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->textHeight:I

    int-to-float v1, v1

    .line 91
    .restart local v1    # "boxHeight":F
    :goto_3
    sget-object v2, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer$1;->$SwitchMap$org$mapsforge$core$graphics$Position:[I

    iget-object v4, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->position:Lorg/mapsforge/core/graphics/Position;

    invoke-virtual {v4}, Lorg/mapsforge/core/graphics/Position;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 117
    :pswitch_0
    new-instance v2, Lorg/mapsforge/core/model/Rectangle;

    const-wide/16 v6, 0x0

    neg-float v5, v1

    div-float/2addr v5, v4

    float-to-double v8, v5

    float-to-double v10, v3

    div-float v4, v1, v4

    float-to-double v12, v4

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    iput-object v2, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    .line 118
    goto/16 :goto_4

    .line 114
    :pswitch_1
    new-instance v2, Lorg/mapsforge/core/model/Rectangle;

    neg-float v5, v3

    float-to-double v5, v5

    neg-float v7, v1

    div-float/2addr v7, v4

    float-to-double v7, v7

    const-wide/16 v19, 0x0

    div-float v4, v1, v4

    float-to-double v9, v4

    move-object v14, v2

    move-wide v15, v5

    move-wide/from16 v17, v7

    move-wide/from16 v21, v9

    invoke-direct/range {v14 .. v22}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    iput-object v2, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    .line 115
    goto/16 :goto_4

    .line 111
    :pswitch_2
    new-instance v2, Lorg/mapsforge/core/model/Rectangle;

    const-wide/16 v22, 0x0

    neg-float v4, v1

    float-to-double v4, v4

    float-to-double v6, v3

    const-wide/16 v28, 0x0

    move-object/from16 v21, v2

    move-wide/from16 v24, v4

    move-wide/from16 v26, v6

    invoke-direct/range {v21 .. v29}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    iput-object v2, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    .line 112
    goto/16 :goto_4

    .line 108
    :pswitch_3
    new-instance v2, Lorg/mapsforge/core/model/Rectangle;

    neg-float v4, v3

    float-to-double v9, v4

    neg-float v4, v1

    float-to-double v11, v4

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v16}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    iput-object v2, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    .line 109
    goto/16 :goto_4

    .line 105
    :pswitch_4
    new-instance v2, Lorg/mapsforge/core/model/Rectangle;

    neg-float v5, v3

    div-float/2addr v5, v4

    float-to-double v5, v5

    neg-float v7, v1

    float-to-double v7, v7

    div-float v4, v3, v4

    float-to-double v9, v4

    const-wide/16 v24, 0x0

    move-object/from16 v17, v2

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    invoke-direct/range {v17 .. v25}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    iput-object v2, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    .line 106
    goto :goto_4

    .line 102
    :pswitch_5
    new-instance v2, Lorg/mapsforge/core/model/Rectangle;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    float-to-double v4, v3

    float-to-double v6, v1

    move-object v11, v2

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    invoke-direct/range {v11 .. v19}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    iput-object v2, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    .line 103
    goto :goto_4

    .line 99
    :pswitch_6
    new-instance v2, Lorg/mapsforge/core/model/Rectangle;

    neg-float v4, v3

    float-to-double v4, v4

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    float-to-double v6, v1

    move-object/from16 v16, v2

    move-wide/from16 v17, v4

    move-wide/from16 v23, v6

    invoke-direct/range {v16 .. v24}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    iput-object v2, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    .line 100
    goto :goto_4

    .line 96
    :pswitch_7
    new-instance v2, Lorg/mapsforge/core/model/Rectangle;

    neg-float v5, v3

    div-float/2addr v5, v4

    float-to-double v9, v5

    const-wide/16 v11, 0x0

    div-float v4, v3, v4

    float-to-double v13, v4

    float-to-double v4, v1

    move-object v8, v2

    move-wide v15, v4

    invoke-direct/range {v8 .. v16}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    iput-object v2, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    .line 97
    goto :goto_4

    .line 93
    :pswitch_8
    new-instance v2, Lorg/mapsforge/core/model/Rectangle;

    neg-float v5, v3

    div-float/2addr v5, v4

    float-to-double v5, v5

    neg-float v7, v1

    div-float/2addr v7, v4

    float-to-double v7, v7

    div-float v9, v3, v4

    float-to-double v9, v9

    div-float v4, v1, v4

    float-to-double v11, v4

    move-object v15, v2

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    move-wide/from16 v22, v11

    invoke-direct/range {v15 .. v23}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    iput-object v2, v0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    .line 94
    nop

    .line 122
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Lorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Matrix;Lorg/mapsforge/core/graphics/Filter;)V
    .locals 7
    .param p1, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p2, "origin"    # Lorg/mapsforge/core/model/Point;
    .param p3, "matrix"    # Lorg/mapsforge/core/graphics/Matrix;
    .param p4, "filter"    # Lorg/mapsforge/core/graphics/Filter;

    .line 126
    iget-boolean v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->isVisible:Z

    if-nez v0, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getCanvas(Lorg/mapsforge/core/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 132
    .local v0, "androidCanvas":Landroid/graphics/Canvas;
    iget v1, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->textWidth:I

    iget v2, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->maxTextWidth:I

    if-le v1, v2, :cond_5

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 136
    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->xy:Lorg/mapsforge/core/model/Point;

    iget-wide v1, v1, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v3, p2, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v1, v3

    iget-object v3, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    iget-wide v3, v3, Lorg/mapsforge/core/model/Rectangle;->left:D

    add-double/2addr v1, v3

    double-to-float v1, v1

    iget-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->xy:Lorg/mapsforge/core/model/Point;

    iget-wide v2, v2, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v4, p2, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v2, v4

    iget-object v4, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    iget-wide v4, v4, Lorg/mapsforge/core/model/Rectangle;->top:D

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 138
    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->backLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_2

    .line 139
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    .line 140
    .local v1, "color":I
    sget-object v2, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-eq p4, v2, :cond_1

    .line 141
    iget-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->backLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, p4}, Lorg/mapsforge/core/graphics/GraphicUtils;->filterColor(ILorg/mapsforge/core/graphics/Filter;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 143
    :cond_1
    iget-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->backLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 144
    sget-object v2, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-eq p4, v2, :cond_2

    .line 145
    iget-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->backLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 148
    .end local v1    # "color":I
    :cond_2
    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->frontLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    .line 149
    .restart local v1    # "color":I
    sget-object v2, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-eq p4, v2, :cond_3

    .line 150
    iget-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->frontLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, p4}, Lorg/mapsforge/core/graphics/GraphicUtils;->filterColor(ILorg/mapsforge/core/graphics/Filter;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 152
    :cond_3
    iget-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->frontLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 153
    sget-object v2, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-eq p4, v2, :cond_4

    .line 154
    iget-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->frontLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 156
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 157
    .end local v1    # "color":I
    goto/16 :goto_1

    .line 160
    :cond_5
    const/4 v1, 0x0

    .line 161
    .local v1, "textOffset":F
    sget-object v2, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer$1;->$SwitchMap$org$mapsforge$core$graphics$Position:[I

    iget-object v3, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->position:Lorg/mapsforge/core/graphics/Position;

    invoke-virtual {v3}, Lorg/mapsforge/core/graphics/Position;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 170
    :pswitch_1
    iget v2, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->textHeight:I

    int-to-float v1, v2

    .line 171
    goto :goto_0

    .line 165
    :pswitch_2
    iget v2, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->textHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v1, v2, v3

    .line 166
    nop

    .line 176
    :goto_0
    iget-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->xy:Lorg/mapsforge/core/model/Point;

    iget-wide v2, v2, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v4, p2, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    .line 177
    .local v2, "adjustedX":F
    iget-object v3, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->xy:Lorg/mapsforge/core/model/Point;

    iget-wide v3, v3, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v5, p2, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v3, v5

    double-to-float v3, v3

    add-float/2addr v3, v1

    .line 179
    .local v3, "adjustedY":F
    iget-object v4, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    if-eqz v4, :cond_7

    .line 180
    iget-object v4, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v4}, Lorg/mapsforge/core/graphics/Paint;->getColor()I

    move-result v4

    .line 181
    .local v4, "color":I
    sget-object v5, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-eq p4, v5, :cond_6

    .line 182
    iget-object v5, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-static {v4, p4}, Lorg/mapsforge/core/graphics/GraphicUtils;->filterColor(ILorg/mapsforge/core/graphics/Filter;)I

    move-result v6

    invoke-interface {v5, v6}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    .line 184
    :cond_6
    iget-object v5, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->text:Ljava/lang/String;

    iget-object v6, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-static {v6}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getPaint(Lorg/mapsforge/core/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v0, v5, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 185
    sget-object v5, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-eq p4, v5, :cond_7

    .line 186
    iget-object v5, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v5, v4}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    .line 189
    .end local v4    # "color":I
    :cond_7
    iget-object v4, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v4}, Lorg/mapsforge/core/graphics/Paint;->getColor()I

    move-result v4

    .line 190
    .restart local v4    # "color":I
    sget-object v5, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-eq p4, v5, :cond_8

    .line 191
    iget-object v5, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-static {v4, p4}, Lorg/mapsforge/core/graphics/GraphicUtils;->filterColor(ILorg/mapsforge/core/graphics/Filter;)I

    move-result v6

    invoke-interface {v5, v6}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    .line 193
    :cond_8
    iget-object v5, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->text:Ljava/lang/String;

    iget-object v6, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-static {v6}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getPaint(Lorg/mapsforge/core/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v0, v5, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 194
    sget-object v5, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-eq p4, v5, :cond_9

    .line 195
    iget-object v5, p0, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v5, v4}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    .line 198
    .end local v1    # "textOffset":F
    .end local v2    # "adjustedX":F
    .end local v3    # "adjustedY":F
    .end local v4    # "color":I
    :cond_9
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
