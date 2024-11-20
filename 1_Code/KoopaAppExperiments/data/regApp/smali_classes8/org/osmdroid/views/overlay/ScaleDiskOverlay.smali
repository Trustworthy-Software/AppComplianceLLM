.class public Lorg/osmdroid/views/overlay/ScaleDiskOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "ScaleDiskOverlay.java"


# instance fields
.field private mCirclePaint1:Landroid/graphics/Paint;

.field private mCirclePaint2:Landroid/graphics/Paint;

.field private mDisplaySizeMax:I

.field private mDisplaySizeMin:I

.field private final mGeoCenter:Lorg/osmdroid/util/GeoPoint;

.field private final mLabel:Ljava/lang/String;

.field private mLabelOffsetBottom:Ljava/lang/Integer;

.field private mLabelOffsetLeft:Ljava/lang/Integer;

.field private mLabelOffsetRight:Ljava/lang/Integer;

.field private mLabelOffsetTop:Ljava/lang/Integer;

.field private final mLabelRect:Landroid/graphics/Rect;

.field private final mMeters:D

.field private final mPixelCenter:Landroid/graphics/Point;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/util/GeoPoint;ILorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;)V
    .locals 4
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pGeoCenter"    # Lorg/osmdroid/util/GeoPoint;
    .param p3, "pValue"    # I
    .param p4, "pUnitOfMeasure"    # Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    .line 44
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mPixelCenter:Landroid/graphics/Point;

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelRect:Landroid/graphics/Rect;

    .line 45
    iput-object p2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mGeoCenter:Lorg/osmdroid/util/GeoPoint;

    .line 46
    int-to-double v0, p3

    invoke-virtual {p4}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->getConversionFactorToMeters()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mMeters:D

    .line 47
    nop

    .line 49
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {p1, v0, p4}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getScaleString(Landroid/content/Context;Ljava/lang/String;Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabel:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private getOffsetX()I
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getOffsetX(I)I
    .locals 1
    .param p1, "pOffsetX"    # I

    .line 170
    if-ltz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    :goto_0
    add-int/2addr v0, p1

    return v0
.end method

.method private getOffsetY()I
    .locals 1

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method private getOffsetY(I)I
    .locals 1
    .param p1, "pOffsetY"    # I

    .line 174
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelRect:Landroid/graphics/Rect;

    if-ltz p1, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 10
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 119
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mGeoCenter:Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mPixelCenter:Landroid/graphics/Point;

    invoke-virtual {p2, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 120
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mPixelCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 121
    .local v0, "x":I
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mPixelCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 122
    .local v1, "y":I
    iget-wide v2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mMeters:D

    double-to-float v5, v2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mGeoCenter:Lorg/osmdroid/util/GeoPoint;

    .line 123
    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v8

    .line 122
    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Lorg/osmdroid/views/Projection;->metersToPixels(FDD)F

    move-result v2

    float-to-int v2, v2

    .line 124
    .local v2, "radius":I
    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mDisplaySizeMin:I

    if-lez v3, :cond_0

    mul-int/lit8 v4, v2, 0x2

    if-ge v4, v3, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mDisplaySizeMax:I

    if-lez v3, :cond_1

    mul-int/lit8 v4, v2, 0x2

    if-le v4, v3, :cond_1

    .line 128
    return-void

    .line 130
    :cond_1
    iget-object v3, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mCirclePaint1:Landroid/graphics/Paint;

    if-eqz v3, :cond_2

    .line 131
    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {p1, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 133
    :cond_2
    iget-object v3, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mCirclePaint2:Landroid/graphics/Paint;

    if-eqz v3, :cond_3

    .line 134
    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {p1, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 136
    :cond_3
    iget-object v3, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_7

    .line 137
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabel:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 138
    iget-object v3, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetTop:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 139
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetX()I

    move-result v3

    .line 140
    .local v3, "offsetX":I
    neg-int v4, v2

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetTop:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetY(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 141
    .local v4, "offsetY":I
    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabel:Ljava/lang/String;

    add-int v6, v0, v3

    int-to-float v6, v6

    add-int v7, v1, v4

    int-to-float v7, v7

    iget-object v8, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 143
    .end local v3    # "offsetX":I
    .end local v4    # "offsetY":I
    :cond_4
    iget-object v3, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetLeft:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    .line 144
    neg-int v4, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetX(I)I

    move-result v3

    add-int/2addr v4, v3

    .line 145
    .local v4, "offsetX":I
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetY()I

    move-result v3

    .line 146
    .local v3, "offsetY":I
    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabel:Ljava/lang/String;

    add-int v6, v0, v4

    int-to-float v6, v6

    add-int v7, v1, v3

    int-to-float v7, v7

    iget-object v8, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 148
    .end local v3    # "offsetY":I
    .end local v4    # "offsetX":I
    :cond_5
    iget-object v3, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetBottom:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    .line 149
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetX()I

    move-result v3

    .line 150
    .local v3, "offsetX":I
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetBottom:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetY(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 151
    .local v4, "offsetY":I
    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabel:Ljava/lang/String;

    add-int v6, v0, v3

    int-to-float v6, v6

    add-int v7, v1, v4

    int-to-float v7, v7

    iget-object v8, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 153
    .end local v3    # "offsetX":I
    .end local v4    # "offsetY":I
    :cond_6
    iget-object v3, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetRight:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    .line 154
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetX(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 155
    .restart local v3    # "offsetX":I
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetY()I

    move-result v4

    .line 156
    .restart local v4    # "offsetY":I
    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabel:Ljava/lang/String;

    add-int v6, v0, v3

    int-to-float v6, v6

    add-int v7, v1, v4

    int-to-float v7, v7

    iget-object v8, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 159
    .end local v3    # "offsetX":I
    .end local v4    # "offsetY":I
    :cond_7
    return-void
.end method

.method public setCirclePaint1(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "pPaint"    # Landroid/graphics/Paint;

    .line 57
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mCirclePaint1:Landroid/graphics/Paint;

    .line 58
    return-void
.end method

.method public setCirclePaint2(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "pPaint"    # Landroid/graphics/Paint;

    .line 65
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mCirclePaint2:Landroid/graphics/Paint;

    .line 66
    return-void
.end method

.method public setDisplaySizeMax(I)V
    .locals 0
    .param p1, "pValue"    # I

    .line 114
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mDisplaySizeMax:I

    .line 115
    return-void
.end method

.method public setDisplaySizeMin(I)V
    .locals 0
    .param p1, "pValue"    # I

    .line 107
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mDisplaySizeMin:I

    .line 108
    return-void
.end method

.method public setLabelOffsetBottom(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "pValue"    # Ljava/lang/Integer;

    .line 86
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetBottom:Ljava/lang/Integer;

    .line 87
    return-void
.end method

.method public setLabelOffsetLeft(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "pValue"    # Ljava/lang/Integer;

    .line 93
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetLeft:Ljava/lang/Integer;

    .line 94
    return-void
.end method

.method public setLabelOffsetRight(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "pValue"    # Ljava/lang/Integer;

    .line 100
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetRight:Ljava/lang/Integer;

    .line 101
    return-void
.end method

.method public setLabelOffsetTop(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "pValue"    # Ljava/lang/Integer;

    .line 79
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetTop:Ljava/lang/Integer;

    .line 80
    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "pPaint"    # Landroid/graphics/Paint;

    .line 72
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mTextPaint:Landroid/graphics/Paint;

    .line 73
    return-void
.end method
