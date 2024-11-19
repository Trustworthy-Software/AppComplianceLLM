.class final Lorg/mapsforge/map/layer/renderer/WayDecorator;
.super Ljava/lang/Object;
.source "WayDecorator.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static renderSymbol(Lorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/core/graphics/Display;IFZZFFZ[[Lorg/mapsforge/core/model/Point;Ljava/util/List;)V
    .locals 32
    .param p0, "symbolBitmap"    # Lorg/mapsforge/core/graphics/Bitmap;
    .param p1, "display"    # Lorg/mapsforge/core/graphics/Display;
    .param p2, "priority"    # I
    .param p3, "dy"    # F
    .param p4, "alignCenter"    # Z
    .param p5, "repeatSymbol"    # Z
    .param p6, "repeatGap"    # F
    .param p7, "repeatStart"    # F
    .param p8, "rotate"    # Z
    .param p9, "coordinates"    # [[Lorg/mapsforge/core/model/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/core/graphics/Bitmap;",
            "Lorg/mapsforge/core/graphics/Display;",
            "IFZZFFZ[[",
            "Lorg/mapsforge/core/model/Point;",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/mapelements/MapElementContainer;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p10, "currentItems":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    move/from16 v0, p3

    move/from16 v1, p7

    float-to-int v2, v1

    .line 39
    .local v2, "skipPixels":I
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 40
    aget-object v3, p9, v4

    .local v3, "c":[Lorg/mapsforge/core/model/Point;
    goto :goto_0

    .line 42
    .end local v3    # "c":[Lorg/mapsforge/core/model/Point;
    :cond_0
    aget-object v3, p9, v4

    float-to-double v5, v0

    invoke-static {v3, v5, v6}, Lorg/mapsforge/map/layer/renderer/RendererUtils;->parallelPath([Lorg/mapsforge/core/model/Point;D)[Lorg/mapsforge/core/model/Point;

    move-result-object v3

    .line 46
    .restart local v3    # "c":[Lorg/mapsforge/core/model/Point;
    :goto_0
    aget-object v5, v3, v4

    iget-wide v5, v5, Lorg/mapsforge/core/model/Point;->x:D

    .line 47
    .local v5, "previousX":D
    aget-object v4, v3, v4

    iget-wide v7, v4, Lorg/mapsforge/core/model/Point;->y:D

    .line 52
    .local v7, "previousY":D
    const/4 v4, 0x0

    .line 55
    .local v4, "theta":F
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_1
    array-length v10, v3

    if-ge v9, v10, :cond_5

    .line 57
    aget-object v10, v3, v9

    iget-wide v10, v10, Lorg/mapsforge/core/model/Point;->x:D

    .line 58
    .local v10, "currentX":D
    aget-object v12, v3, v9

    iget-wide v12, v12, Lorg/mapsforge/core/model/Point;->y:D

    .line 61
    .local v12, "currentY":D
    sub-double v14, v10, v5

    .line 62
    .local v14, "diffX":D
    sub-double v16, v12, v7

    .line 63
    .local v16, "diffY":D
    mul-double v18, v14, v14

    mul-double v20, v16, v16

    add-double v18, v18, v20

    move/from16 v21, v2

    move-object/from16 v20, v3

    .end local v2    # "skipPixels":I
    .end local v3    # "c":[Lorg/mapsforge/core/model/Point;
    .local v20, "c":[Lorg/mapsforge/core/model/Point;
    .local v21, "skipPixels":I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 64
    .local v2, "segmentLengthInPixel":D
    double-to-float v0, v2

    move-wide/from16 v18, v16

    move-wide/from16 v16, v14

    move-wide v14, v7

    move-wide v6, v5

    move v5, v4

    move/from16 v4, v21

    .line 66
    .end local v7    # "previousY":D
    .end local v21    # "skipPixels":I
    .local v0, "segmentLengthRemaining":F
    .local v4, "skipPixels":I
    .local v5, "theta":F
    .local v6, "previousX":D
    .local v14, "previousY":D
    .local v16, "diffX":D
    .local v18, "diffY":D
    :goto_2
    int-to-float v8, v4

    sub-float v8, v0, v8

    cmpl-float v8, v8, v1

    if-lez v8, :cond_3

    .line 68
    int-to-float v8, v4

    div-float/2addr v8, v0

    .line 71
    .local v8, "segmentSkipPercentage":F
    move-wide/from16 v22, v2

    .end local v2    # "segmentLengthInPixel":D
    .local v22, "segmentLengthInPixel":D
    float-to-double v2, v8

    mul-double v2, v2, v16

    add-double/2addr v6, v2

    .line 72
    float-to-double v2, v8

    mul-double v2, v2, v18

    add-double/2addr v14, v2

    .line 73
    if-eqz p8, :cond_1

    .line 75
    sub-double v2, v12, v14

    move/from16 v21, v8

    move/from16 v24, v9

    .end local v8    # "segmentSkipPercentage":F
    .end local v9    # "i":I
    .local v21, "segmentSkipPercentage":F
    .local v24, "i":I
    sub-double v8, v10, v6

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v5, v2

    goto :goto_3

    .line 73
    .end local v21    # "segmentSkipPercentage":F
    .end local v24    # "i":I
    .restart local v8    # "segmentSkipPercentage":F
    .restart local v9    # "i":I
    :cond_1
    move/from16 v21, v8

    move/from16 v24, v9

    .line 78
    .end local v8    # "segmentSkipPercentage":F
    .end local v9    # "i":I
    .restart local v21    # "segmentSkipPercentage":F
    .restart local v24    # "i":I
    :goto_3
    new-instance v2, Lorg/mapsforge/core/model/Point;

    invoke-direct {v2, v6, v7, v14, v15}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    move-object/from16 v26, v2

    .line 80
    .local v26, "point":Lorg/mapsforge/core/model/Point;
    new-instance v2, Lorg/mapsforge/core/mapelements/SymbolContainer;

    move-object/from16 v25, v2

    move-object/from16 v27, p1

    move/from16 v28, p2

    move-object/from16 v29, p0

    move/from16 v30, v5

    move/from16 v31, p4

    invoke-direct/range {v25 .. v31}, Lorg/mapsforge/core/mapelements/SymbolContainer;-><init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILorg/mapsforge/core/graphics/Bitmap;FZ)V

    move-object/from16 v3, p10

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    if-nez p5, :cond_2

    .line 84
    return-void

    .line 88
    :cond_2
    sub-double v16, v10, v6

    .line 89
    sub-double v18, v12, v14

    .line 92
    int-to-float v2, v4

    sub-float/2addr v0, v2

    .line 95
    move/from16 v2, p6

    float-to-int v4, v2

    .line 96
    .end local v26    # "point":Lorg/mapsforge/core/model/Point;
    move-wide/from16 v2, v22

    move/from16 v9, v24

    goto :goto_2

    .line 98
    .end local v21    # "segmentSkipPercentage":F
    .end local v22    # "segmentLengthInPixel":D
    .end local v24    # "i":I
    .restart local v2    # "segmentLengthInPixel":D
    .restart local v9    # "i":I
    :cond_3
    move-wide/from16 v22, v2

    move/from16 v24, v9

    move/from16 v2, p6

    move-object/from16 v3, p10

    .end local v2    # "segmentLengthInPixel":D
    .end local v9    # "i":I
    .restart local v22    # "segmentLengthInPixel":D
    .restart local v24    # "i":I
    int-to-float v8, v4

    sub-float/2addr v8, v0

    float-to-int v4, v8

    .line 99
    int-to-float v8, v4

    cmpg-float v8, v8, v1

    if-gez v8, :cond_4

    .line 100
    float-to-int v4, v1

    .line 104
    :cond_4
    move-wide v6, v10

    .line 105
    move-wide v8, v12

    .line 55
    .end local v10    # "currentX":D
    .end local v12    # "currentY":D
    .end local v14    # "previousY":D
    .end local v16    # "diffX":D
    .end local v18    # "diffY":D
    .end local v22    # "segmentLengthInPixel":D
    .local v8, "previousY":D
    add-int/lit8 v10, v24, 0x1

    move/from16 v0, p3

    move v2, v4

    move v4, v5

    move-wide v5, v6

    move-wide v7, v8

    move v9, v10

    move-object/from16 v3, v20

    .end local v24    # "i":I
    .local v10, "i":I
    goto/16 :goto_1

    .line 107
    .end local v0    # "segmentLengthRemaining":F
    .end local v6    # "previousX":D
    .end local v8    # "previousY":D
    .end local v10    # "i":I
    .end local v20    # "c":[Lorg/mapsforge/core/model/Point;
    .local v2, "skipPixels":I
    .restart local v3    # "c":[Lorg/mapsforge/core/model/Point;
    .local v4, "theta":F
    .local v5, "previousX":D
    .restart local v7    # "previousY":D
    :cond_5
    return-void
.end method

.method static renderText(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Ljava/lang/String;Lorg/mapsforge/core/graphics/Display;IFLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;ZFFZ[[Lorg/mapsforge/core/model/Point;Ljava/util/List;)V
    .locals 33
    .param p0, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p1, "lowerRight"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "display"    # Lorg/mapsforge/core/graphics/Display;
    .param p4, "priority"    # I
    .param p5, "dy"    # F
    .param p6, "fill"    # Lorg/mapsforge/core/graphics/Paint;
    .param p7, "stroke"    # Lorg/mapsforge/core/graphics/Paint;
    .param p8, "repeat"    # Z
    .param p9, "repeatGap"    # F
    .param p10, "repeatStart"    # F
    .param p11, "rotate"    # Z
    .param p12, "coordinates"    # [[Lorg/mapsforge/core/model/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/core/model/Tile;",
            "Lorg/mapsforge/core/model/Tile;",
            "Ljava/lang/String;",
            "Lorg/mapsforge/core/graphics/Display;",
            "IF",
            "Lorg/mapsforge/core/graphics/Paint;",
            "Lorg/mapsforge/core/graphics/Paint;",
            "ZFFZ[[",
            "Lorg/mapsforge/core/model/Point;",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/mapelements/MapElementContainer;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p13, "currentLabels":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    move-object/from16 v15, p2

    move/from16 v14, p5

    move-object/from16 v13, p6

    move-object/from16 v12, p7

    move/from16 v11, p10

    move-object/from16 v10, p13

    if-nez v12, :cond_0

    invoke-interface {v13, v15}, Lorg/mapsforge/core/graphics/Paint;->getTextWidth(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {v12, v15}, Lorg/mapsforge/core/graphics/Paint;->getTextWidth(Ljava/lang/String;)I

    move-result v0

    :goto_0
    float-to-int v1, v11

    add-int/2addr v0, v1

    move v7, v0

    .line 132
    .local v7, "wayNameWidth":I
    if-nez v12, :cond_1

    invoke-interface {v13, v15}, Lorg/mapsforge/core/graphics/Paint;->getTextHeight(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-interface {v12, v15}, Lorg/mapsforge/core/graphics/Paint;->getTextHeight(Ljava/lang/String;)I

    move-result v0

    :goto_1
    int-to-double v0, v0

    move-wide v8, v0

    .line 133
    .local v8, "textHeight":D
    invoke-static/range {p0 .. p1}, Lorg/mapsforge/core/model/Tile;->getBoundaryAbsolute(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/core/model/Rectangle;

    move-result-object v6

    .line 135
    .local v6, "tileBoundary":Lorg/mapsforge/core/model/Rectangle;
    const/4 v0, 0x0

    .line 138
    .local v0, "skipPixels":I
    const/4 v1, 0x0

    cmpl-float v1, v14, v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 139
    aget-object v1, p12, v2

    move-object v5, v1

    .local v1, "c":[Lorg/mapsforge/core/model/Point;
    goto :goto_2

    .line 141
    .end local v1    # "c":[Lorg/mapsforge/core/model/Point;
    :cond_2
    aget-object v1, p12, v2

    float-to-double v2, v14

    invoke-static {v1, v2, v3}, Lorg/mapsforge/map/layer/renderer/RendererUtils;->parallelPath([Lorg/mapsforge/core/model/Point;D)[Lorg/mapsforge/core/model/Point;

    move-result-object v1

    move-object v5, v1

    .line 145
    .local v5, "c":[Lorg/mapsforge/core/model/Point;
    :goto_2
    const/4 v1, 0x1

    move v4, v1

    .local v4, "i":I
    :goto_3
    array-length v1, v5

    if-ge v4, v1, :cond_9

    .line 147
    new-instance v1, Lorg/mapsforge/core/model/LineSegment;

    add-int/lit8 v2, v4, -0x1

    aget-object v2, v5, v2

    aget-object v3, v5, v4

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/core/model/LineSegment;-><init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)V

    move-object v3, v1

    .line 148
    .local v3, "currentSegment":Lorg/mapsforge/core/model/LineSegment;
    invoke-virtual {v3}, Lorg/mapsforge/core/model/LineSegment;->length()D

    move-result-wide v20

    .line 150
    .local v20, "currentLength":D
    int-to-double v1, v0

    sub-double v1, v1, v20

    double-to-int v2, v1

    .line 152
    .end local v0    # "skipPixels":I
    .local v2, "skipPixels":I
    if-lez v2, :cond_3

    .line 156
    move/from16 v17, v2

    goto :goto_4

    .line 159
    :cond_3
    int-to-double v0, v7

    cmpg-double v0, v20, v0

    if-gez v0, :cond_4

    .line 161
    move/from16 v17, v2

    goto :goto_4

    .line 166
    :cond_4
    invoke-virtual {v3, v6}, Lorg/mapsforge/core/model/LineSegment;->clipToRectangle(Lorg/mapsforge/core/model/Rectangle;)Lorg/mapsforge/core/model/LineSegment;

    move-result-object v1

    .line 168
    .local v1, "drawableSegment":Lorg/mapsforge/core/model/LineSegment;
    if-nez v1, :cond_5

    .line 170
    move/from16 v17, v2

    goto :goto_4

    .line 173
    :cond_5
    invoke-virtual {v1}, Lorg/mapsforge/core/model/LineSegment;->length()D

    move-result-wide v22

    .line 174
    .local v22, "segmentLengthInPixel":D
    move/from16 v17, v2

    move-object/from16 v16, v3

    .end local v2    # "skipPixels":I
    .end local v3    # "currentSegment":Lorg/mapsforge/core/model/LineSegment;
    .local v16, "currentSegment":Lorg/mapsforge/core/model/LineSegment;
    .local v17, "skipPixels":I
    int-to-double v2, v7

    cmpg-double v0, v22, v2

    if-gez v0, :cond_6

    .line 176
    nop

    .line 145
    .end local v1    # "drawableSegment":Lorg/mapsforge/core/model/LineSegment;
    .end local v16    # "currentSegment":Lorg/mapsforge/core/model/LineSegment;
    .end local v17    # "skipPixels":I
    .end local v20    # "currentLength":D
    .end local v22    # "segmentLengthInPixel":D
    .restart local v2    # "skipPixels":I
    :goto_4
    move/from16 v3, p9

    move/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move/from16 v32, v7

    move-object v2, v10

    move/from16 v0, v17

    .end local v2    # "skipPixels":I
    .restart local v17    # "skipPixels":I
    goto/16 :goto_6

    .line 180
    .restart local v1    # "drawableSegment":Lorg/mapsforge/core/model/LineSegment;
    .restart local v16    # "currentSegment":Lorg/mapsforge/core/model/LineSegment;
    .restart local v20    # "currentLength":D
    .restart local v22    # "segmentLengthInPixel":D
    :cond_6
    int-to-double v2, v7

    sub-double v2, v22, v2

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v24, v2, v18

    .line 183
    .local v24, "offset":D
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v11, v0

    float-to-double v2, v0

    add-double v2, v24, v2

    int-to-float v0, v7

    sub-float/2addr v0, v11

    move/from16 v19, v4

    move-object/from16 v18, v5

    .end local v4    # "i":I
    .end local v5    # "c":[Lorg/mapsforge/core/model/Point;
    .local v18, "c":[Lorg/mapsforge/core/model/Point;
    .local v19, "i":I
    float-to-double v4, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/mapsforge/core/model/LineSegment;->subSegment(DD)Lorg/mapsforge/core/model/LineSegment;

    move-result-object v5

    .line 185
    .local v5, "actuallyUsedSegment":Lorg/mapsforge/core/model/LineSegment;
    iget-object v0, v5, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    iget-wide v2, v0, Lorg/mapsforge/core/model/Point;->x:D

    iget-object v0, v5, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    move-object v4, v1

    .end local v1    # "drawableSegment":Lorg/mapsforge/core/model/LineSegment;
    .local v4, "drawableSegment":Lorg/mapsforge/core/model/LineSegment;
    iget-wide v0, v0, Lorg/mapsforge/core/model/Point;->x:D

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_7

    .line 186
    new-instance v3, Lorg/mapsforge/core/mapelements/WayTextContainer;

    iget-object v1, v5, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    iget-object v2, v5, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    move-object v0, v3

    move-object/from16 v26, v4

    .end local v4    # "drawableSegment":Lorg/mapsforge/core/model/LineSegment;
    .local v26, "drawableSegment":Lorg/mapsforge/core/model/LineSegment;
    move/from16 v27, v17

    .end local v17    # "skipPixels":I
    .local v27, "skipPixels":I
    move-object v4, v3

    move-object/from16 v28, v16

    .end local v16    # "currentSegment":Lorg/mapsforge/core/model/LineSegment;
    .local v28, "currentSegment":Lorg/mapsforge/core/model/LineSegment;
    move-object/from16 v3, p3

    move-object v11, v4

    move/from16 v29, v19

    .end local v19    # "i":I
    .local v29, "i":I
    move/from16 v4, p4

    move-object v15, v5

    move-object/from16 v30, v18

    .end local v5    # "actuallyUsedSegment":Lorg/mapsforge/core/model/LineSegment;
    .end local v18    # "c":[Lorg/mapsforge/core/model/Point;
    .local v15, "actuallyUsedSegment":Lorg/mapsforge/core/model/LineSegment;
    .local v30, "c":[Lorg/mapsforge/core/model/Point;
    move-object/from16 v5, p2

    move-object/from16 v31, v6

    .end local v6    # "tileBoundary":Lorg/mapsforge/core/model/Rectangle;
    .local v31, "tileBoundary":Lorg/mapsforge/core/model/Rectangle;
    move-object/from16 v6, p6

    move/from16 v32, v7

    .end local v7    # "wayNameWidth":I
    .local v32, "wayNameWidth":I
    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lorg/mapsforge/core/mapelements/WayTextContainer;-><init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;D)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v10

    move-object v1, v15

    goto :goto_5

    .line 188
    .end local v15    # "actuallyUsedSegment":Lorg/mapsforge/core/model/LineSegment;
    .end local v26    # "drawableSegment":Lorg/mapsforge/core/model/LineSegment;
    .end local v27    # "skipPixels":I
    .end local v28    # "currentSegment":Lorg/mapsforge/core/model/LineSegment;
    .end local v29    # "i":I
    .end local v30    # "c":[Lorg/mapsforge/core/model/Point;
    .end local v31    # "tileBoundary":Lorg/mapsforge/core/model/Rectangle;
    .end local v32    # "wayNameWidth":I
    .restart local v4    # "drawableSegment":Lorg/mapsforge/core/model/LineSegment;
    .restart local v5    # "actuallyUsedSegment":Lorg/mapsforge/core/model/LineSegment;
    .restart local v6    # "tileBoundary":Lorg/mapsforge/core/model/Rectangle;
    .restart local v7    # "wayNameWidth":I
    .restart local v16    # "currentSegment":Lorg/mapsforge/core/model/LineSegment;
    .restart local v17    # "skipPixels":I
    .restart local v18    # "c":[Lorg/mapsforge/core/model/Point;
    .restart local v19    # "i":I
    :cond_7
    move-object/from16 v26, v4

    move-object v15, v5

    move-object/from16 v31, v6

    move/from16 v32, v7

    move-object/from16 v28, v16

    move/from16 v27, v17

    move-object/from16 v30, v18

    move/from16 v29, v19

    .end local v4    # "drawableSegment":Lorg/mapsforge/core/model/LineSegment;
    .end local v5    # "actuallyUsedSegment":Lorg/mapsforge/core/model/LineSegment;
    .end local v6    # "tileBoundary":Lorg/mapsforge/core/model/Rectangle;
    .end local v7    # "wayNameWidth":I
    .end local v16    # "currentSegment":Lorg/mapsforge/core/model/LineSegment;
    .end local v17    # "skipPixels":I
    .end local v18    # "c":[Lorg/mapsforge/core/model/Point;
    .end local v19    # "i":I
    .restart local v15    # "actuallyUsedSegment":Lorg/mapsforge/core/model/LineSegment;
    .restart local v26    # "drawableSegment":Lorg/mapsforge/core/model/LineSegment;
    .restart local v27    # "skipPixels":I
    .restart local v28    # "currentSegment":Lorg/mapsforge/core/model/LineSegment;
    .restart local v29    # "i":I
    .restart local v30    # "c":[Lorg/mapsforge/core/model/Point;
    .restart local v31    # "tileBoundary":Lorg/mapsforge/core/model/Rectangle;
    .restart local v32    # "wayNameWidth":I
    new-instance v0, Lorg/mapsforge/core/mapelements/WayTextContainer;

    iget-object v11, v15, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    iget-object v1, v15, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    move-object v2, v10

    move-object v10, v0

    move-object v12, v1

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object v1, v15

    .end local v15    # "actuallyUsedSegment":Lorg/mapsforge/core/model/LineSegment;
    .local v1, "actuallyUsedSegment":Lorg/mapsforge/core/model/LineSegment;
    move-object/from16 v15, p2

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-wide/from16 v18, v8

    invoke-direct/range {v10 .. v19}, Lorg/mapsforge/core/mapelements/WayTextContainer;-><init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;D)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :goto_5
    if-nez p8, :cond_8

    .line 191
    move/from16 v3, p9

    move/from16 v0, v27

    goto :goto_7

    .line 194
    :cond_8
    move/from16 v3, p9

    float-to-int v0, v3

    .line 145
    .end local v1    # "actuallyUsedSegment":Lorg/mapsforge/core/model/LineSegment;
    .end local v20    # "currentLength":D
    .end local v22    # "segmentLengthInPixel":D
    .end local v24    # "offset":D
    .end local v26    # "drawableSegment":Lorg/mapsforge/core/model/LineSegment;
    .end local v27    # "skipPixels":I
    .end local v28    # "currentSegment":Lorg/mapsforge/core/model/LineSegment;
    .restart local v0    # "skipPixels":I
    :goto_6
    add-int/lit8 v4, v29, 0x1

    move-object/from16 v15, p2

    move/from16 v14, p5

    move-object/from16 v13, p6

    move-object/from16 v12, p7

    move/from16 v11, p10

    move-object v10, v2

    move-object/from16 v5, v30

    move-object/from16 v6, v31

    move/from16 v7, v32

    .end local v29    # "i":I
    .local v4, "i":I
    goto/16 :goto_3

    .end local v30    # "c":[Lorg/mapsforge/core/model/Point;
    .end local v31    # "tileBoundary":Lorg/mapsforge/core/model/Rectangle;
    .end local v32    # "wayNameWidth":I
    .local v5, "c":[Lorg/mapsforge/core/model/Point;
    .restart local v6    # "tileBoundary":Lorg/mapsforge/core/model/Rectangle;
    .restart local v7    # "wayNameWidth":I
    :cond_9
    move/from16 v3, p9

    move/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move/from16 v32, v7

    move-object v2, v10

    .line 196
    .end local v4    # "i":I
    .end local v5    # "c":[Lorg/mapsforge/core/model/Point;
    .end local v6    # "tileBoundary":Lorg/mapsforge/core/model/Rectangle;
    .end local v7    # "wayNameWidth":I
    .restart local v30    # "c":[Lorg/mapsforge/core/model/Point;
    .restart local v31    # "tileBoundary":Lorg/mapsforge/core/model/Rectangle;
    .restart local v32    # "wayNameWidth":I
    :goto_7
    return-void
.end method
