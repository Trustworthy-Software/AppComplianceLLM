.class public Lorg/mapsforge/core/mapelements/WayTextContainer;
.super Lorg/mapsforge/core/mapelements/MapElementContainer;
.source "WayTextContainer.java"


# instance fields
.field private final end:Lorg/mapsforge/core/model/Point;

.field private final paintBack:Lorg/mapsforge/core/graphics/Paint;

.field private final paintFront:Lorg/mapsforge/core/graphics/Paint;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;D)V
    .locals 18
    .param p1, "point"    # Lorg/mapsforge/core/model/Point;
    .param p2, "end"    # Lorg/mapsforge/core/model/Point;
    .param p3, "display"    # Lorg/mapsforge/core/graphics/Display;
    .param p4, "priority"    # I
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "paintFront"    # Lorg/mapsforge/core/graphics/Paint;
    .param p7, "paintBack"    # Lorg/mapsforge/core/graphics/Paint;
    .param p8, "textHeight"    # D

    .line 35
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v3, v4}, Lorg/mapsforge/core/mapelements/MapElementContainer;-><init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;I)V

    .line 36
    move-object/from16 v5, p5

    iput-object v5, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->text:Ljava/lang/String;

    .line 37
    move-object/from16 v6, p6

    iput-object v6, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    .line 38
    move-object/from16 v7, p7

    iput-object v7, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    .line 39
    iput-object v2, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->end:Lorg/mapsforge/core/model/Point;

    .line 41
    const/4 v8, 0x0

    iput-object v8, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    .line 46
    new-instance v8, Lorg/mapsforge/core/model/Rectangle;

    iget-wide v9, v1, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v11, v2, Lorg/mapsforge/core/model/Point;->x:D

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    iget-wide v12, v1, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v14, v2, Lorg/mapsforge/core/model/Point;->y:D

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    iget-wide v14, v1, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v3, v2, Lorg/mapsforge/core/model/Point;->x:D

    .line 47
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    iget-wide v3, v1, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v5, v2, Lorg/mapsforge/core/model/Point;->y:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    move-object v9, v8

    invoke-direct/range {v9 .. v17}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    const-wide/16 v10, 0x0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v12, p8, v3

    const-wide/16 v14, 0x0

    div-double v16, p8, v3

    invoke-virtual/range {v9 .. v17}, Lorg/mapsforge/core/model/Rectangle;->enlarge(DDDD)Lorg/mapsforge/core/model/Rectangle;

    move-result-object v3

    iput-object v3, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->boundaryAbsolute:Lorg/mapsforge/core/model/Rectangle;

    .line 48
    return-void
.end method


# virtual methods
.method public draw(Lorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Matrix;Lorg/mapsforge/core/graphics/Filter;)V
    .locals 15
    .param p1, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p2, "origin"    # Lorg/mapsforge/core/model/Point;
    .param p3, "matrix"    # Lorg/mapsforge/core/graphics/Matrix;
    .param p4, "filter"    # Lorg/mapsforge/core/graphics/Filter;

    .line 52
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    iget-object v3, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->xy:Lorg/mapsforge/core/model/Point;

    iget-wide v4, v1, Lorg/mapsforge/core/model/Point;->x:D

    neg-double v4, v4

    iget-wide v6, v1, Lorg/mapsforge/core/model/Point;->y:D

    neg-double v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/mapsforge/core/model/Point;->offset(DD)Lorg/mapsforge/core/model/Point;

    move-result-object v3

    .line 53
    .local v3, "adjustedStart":Lorg/mapsforge/core/model/Point;
    iget-object v4, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->end:Lorg/mapsforge/core/model/Point;

    iget-wide v5, v1, Lorg/mapsforge/core/model/Point;->x:D

    neg-double v5, v5

    iget-wide v7, v1, Lorg/mapsforge/core/model/Point;->y:D

    neg-double v7, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/mapsforge/core/model/Point;->offset(DD)Lorg/mapsforge/core/model/Point;

    move-result-object v4

    .line 55
    .local v4, "adjustedEnd":Lorg/mapsforge/core/model/Point;
    iget-object v5, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    if-eqz v5, :cond_1

    .line 56
    invoke-interface {v5}, Lorg/mapsforge/core/graphics/Paint;->getColor()I

    move-result v5

    .line 57
    .local v5, "color":I
    sget-object v6, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-eq v2, v6, :cond_0

    .line 58
    iget-object v6, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-static {v5, v2}, Lorg/mapsforge/core/graphics/GraphicUtils;->filterColor(ILorg/mapsforge/core/graphics/Filter;)I

    move-result v7

    invoke-interface {v6, v7}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    .line 60
    :cond_0
    iget-object v9, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->text:Ljava/lang/String;

    iget-wide v6, v3, Lorg/mapsforge/core/model/Point;->x:D

    double-to-int v10, v6

    iget-wide v6, v3, Lorg/mapsforge/core/model/Point;->y:D

    double-to-int v11, v6

    iget-wide v6, v4, Lorg/mapsforge/core/model/Point;->x:D

    double-to-int v12, v6

    iget-wide v6, v4, Lorg/mapsforge/core/model/Point;->y:D

    double-to-int v13, v6

    iget-object v14, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v14}, Lorg/mapsforge/core/graphics/Canvas;->drawTextRotated(Ljava/lang/String;IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 64
    sget-object v6, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-eq v2, v6, :cond_1

    .line 65
    iget-object v6, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v6, v5}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    .line 68
    .end local v5    # "color":I
    :cond_1
    iget-object v5, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v5}, Lorg/mapsforge/core/graphics/Paint;->getColor()I

    move-result v5

    .line 69
    .restart local v5    # "color":I
    sget-object v6, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-eq v2, v6, :cond_2

    .line 70
    iget-object v6, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-static {v5, v2}, Lorg/mapsforge/core/graphics/GraphicUtils;->filterColor(ILorg/mapsforge/core/graphics/Filter;)I

    move-result v7

    invoke-interface {v6, v7}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    .line 72
    :cond_2
    iget-object v9, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->text:Ljava/lang/String;

    iget-wide v6, v3, Lorg/mapsforge/core/model/Point;->x:D

    double-to-int v10, v6

    iget-wide v6, v3, Lorg/mapsforge/core/model/Point;->y:D

    double-to-int v11, v6

    iget-wide v6, v4, Lorg/mapsforge/core/model/Point;->x:D

    double-to-int v12, v6

    iget-wide v6, v4, Lorg/mapsforge/core/model/Point;->y:D

    double-to-int v13, v6

    iget-object v14, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v14}, Lorg/mapsforge/core/graphics/Canvas;->drawTextRotated(Ljava/lang/String;IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 76
    sget-object v6, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-eq v2, v6, :cond_3

    .line 77
    iget-object v6, v0, Lorg/mapsforge/core/mapelements/WayTextContainer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v6, v5}, Lorg/mapsforge/core/graphics/Paint;->setColor(I)V

    .line 79
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lorg/mapsforge/core/mapelements/MapElementContainer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lorg/mapsforge/core/mapelements/WayTextContainer;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
