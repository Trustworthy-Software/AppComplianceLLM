.class public Lorg/osmdroid/views/overlay/LineDrawer;
.super Lorg/osmdroid/util/LineBuilder;
.source "LineDrawer.java"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

.field private mPaintList:Lorg/osmdroid/views/overlay/PaintList;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "pMaxSize"    # I

    .line 23
    invoke-direct {p0, p1}, Lorg/osmdroid/util/LineBuilder;-><init>(I)V

    .line 24
    return-void
.end method

.method private additionalFlush()V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lorg/osmdroid/util/IntegerAccepter;->flush()V

    .line 77
    :cond_0
    return-void
.end method

.method private static compact([FI)I
    .locals 7
    .param p0, "pLines"    # [F
    .param p1, "pSize"    # I

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "dstIndex":I
    const/4 v1, 0x0

    .local v1, "srcIndex":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 90
    aget v2, p0, v1

    .line 91
    .local v2, "x0":F
    add-int/lit8 v3, v1, 0x1

    aget v3, p0, v3

    .line 92
    .local v3, "y0":F
    add-int/lit8 v4, v1, 0x2

    aget v4, p0, v4

    .line 93
    .local v4, "x1":F
    add-int/lit8 v5, v1, 0x3

    aget v5, p0, v5

    .line 94
    .local v5, "y1":F
    cmpl-float v6, v2, v4

    if-nez v6, :cond_0

    cmpl-float v6, v3, v5

    if-nez v6, :cond_0

    .line 95
    goto :goto_1

    .line 97
    :cond_0
    if-eq v1, v0, :cond_1

    .line 98
    const/4 v6, 0x4

    invoke-static {p0, v1, p0, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    :cond_1
    add-int/lit8 v0, v0, 0x4

    .line 89
    .end local v2    # "x0":F
    .end local v3    # "y0":F
    .end local v4    # "x1":F
    .end local v5    # "y1":F
    :goto_1
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 102
    .end local v1    # "srcIndex":I
    :cond_2
    return v0
.end method


# virtual methods
.method public flush()V
    .locals 17

    .line 44
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/LineDrawer;->getSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .line 45
    .local v1, "nbSegments":I
    if-nez v1, :cond_0

    .line 46
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/overlay/LineDrawer;->additionalFlush()V

    .line 47
    return-void

    .line 49
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/LineDrawer;->getLines()[F

    move-result-object v2

    .line 50
    .local v2, "lines":[F
    iget-object v3, v0, Lorg/osmdroid/views/overlay/LineDrawer;->mPaintList:Lorg/osmdroid/views/overlay/PaintList;

    invoke-interface {v3}, Lorg/osmdroid/views/overlay/PaintList;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 51
    .local v3, "paint":Landroid/graphics/Paint;
    if-eqz v3, :cond_2

    .line 52
    mul-int/lit8 v4, v1, 0x4

    invoke-static {v2, v4}, Lorg/osmdroid/views/overlay/LineDrawer;->compact([FI)I

    move-result v4

    .line 53
    .local v4, "size":I
    if-lez v4, :cond_1

    .line 54
    iget-object v5, v0, Lorg/osmdroid/views/overlay/LineDrawer;->mCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v4, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 56
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/overlay/LineDrawer;->additionalFlush()V

    .line 57
    return-void

    .line 59
    .end local v4    # "size":I
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    mul-int/lit8 v5, v1, 0x4

    if-ge v4, v5, :cond_4

    .line 60
    aget v5, v2, v4

    .line 61
    .local v5, "x0":F
    add-int/lit8 v6, v4, 0x1

    aget v12, v2, v6

    .line 62
    .local v12, "y0":F
    add-int/lit8 v6, v4, 0x2

    aget v13, v2, v6

    .line 63
    .local v13, "x1":F
    add-int/lit8 v6, v4, 0x3

    aget v14, v2, v6

    .line 64
    .local v14, "y1":F
    cmpl-float v6, v5, v13

    if-nez v6, :cond_3

    cmpl-float v6, v12, v14

    if-nez v6, :cond_3

    .line 65
    goto :goto_1

    .line 67
    :cond_3
    iget-object v6, v0, Lorg/osmdroid/views/overlay/LineDrawer;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    div-int/lit8 v7, v4, 0x2

    invoke-virtual {v6, v7}, Lorg/osmdroid/util/IntegerAccepter;->getValue(I)I

    move-result v15

    .line 68
    .local v15, "segmentIndex":I
    iget-object v11, v0, Lorg/osmdroid/views/overlay/LineDrawer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, v0, Lorg/osmdroid/views/overlay/LineDrawer;->mPaintList:Lorg/osmdroid/views/overlay/PaintList;

    move v7, v15

    move v8, v5

    move v9, v12

    move v10, v13

    move-object/from16 v16, v11

    move v11, v14

    invoke-interface/range {v6 .. v11}, Lorg/osmdroid/views/overlay/PaintList;->getPaint(IFFFF)Landroid/graphics/Paint;

    move-result-object v11

    move-object/from16 v6, v16

    move v7, v5

    move v8, v12

    move v9, v13

    move v10, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 59
    .end local v5    # "x0":F
    .end local v12    # "y0":F
    .end local v13    # "x1":F
    .end local v14    # "y1":F
    .end local v15    # "segmentIndex":I
    :goto_1
    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 70
    .end local v4    # "i":I
    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/overlay/LineDrawer;->additionalFlush()V

    .line 71
    return-void
.end method

.method public setCanvas(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;

    .line 27
    iput-object p1, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mCanvas:Landroid/graphics/Canvas;

    .line 28
    return-void
.end method

.method public setIntegerAccepter(Lorg/osmdroid/util/IntegerAccepter;)V
    .locals 0
    .param p1, "pIntegerAccepter"    # Lorg/osmdroid/util/IntegerAccepter;

    .line 39
    iput-object p1, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    .line 40
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "pPaint"    # Landroid/graphics/Paint;

    .line 31
    new-instance v0, Lorg/osmdroid/views/overlay/advancedpolyline/MonochromaticPaintList;

    invoke-direct {v0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/MonochromaticPaintList;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/LineDrawer;->setPaint(Lorg/osmdroid/views/overlay/PaintList;)V

    .line 32
    return-void
.end method

.method public setPaint(Lorg/osmdroid/views/overlay/PaintList;)V
    .locals 0
    .param p1, "pPaintList"    # Lorg/osmdroid/views/overlay/PaintList;

    .line 35
    iput-object p1, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mPaintList:Lorg/osmdroid/views/overlay/PaintList;

    .line 36
    return-void
.end method
