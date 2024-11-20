.class public Lorg/osmdroid/views/overlay/GroundOverlay4;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "GroundOverlay4.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mBearing:F

.field private mBottomLeft:Lorg/osmdroid/util/GeoPoint;

.field private mBottomRight:Lorg/osmdroid/util/GeoPoint;

.field private mImage:Landroid/graphics/Bitmap;

.field private mMatrix:Landroid/graphics/Matrix;

.field private final mMatrixDst:[F

.field private final mMatrixSrc:[F

.field private final mPaint:Landroid/graphics/Paint;

.field private mTopLeft:Lorg/osmdroid/util/GeoPoint;

.field private mTopRight:Lorg/osmdroid/util/GeoPoint;

.field protected mTransparency:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mPaint:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrix:Landroid/graphics/Matrix;

    .line 74
    const/16 v0, 0x8

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrixSrc:[F

    .line 75
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrixDst:[F

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBearing:F

    .line 33
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->setTransparency(F)V

    .line 34
    return-void
.end method


# virtual methods
.method protected computeMatrix(Lorg/osmdroid/views/Projection;)V
    .locals 26
    .param p1, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v2

    .line 109
    .local v2, "topLeftCornerX":J
    iget-object v4, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v4

    .line 110
    .local v4, "topLeftCornerY":J
    iget-object v6, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v6

    .line 111
    .local v6, "topRightCornerX":J
    iget-object v8, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v8

    .line 112
    .local v8, "topRightCornerY":J
    iget-object v10, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v10

    .line 113
    .local v10, "bottomRightCornerX":J
    iget-object v12, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v12

    .line 114
    .local v12, "bottomRightCornerY":J
    iget-object v14, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v14

    .line 115
    .local v14, "bottomLeftCornerX":J
    move-wide/from16 v16, v14

    .end local v14    # "bottomLeftCornerX":J
    .local v16, "bottomLeftCornerX":J
    iget-object v14, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v14

    .line 117
    .local v14, "bottomLeftCornerY":J
    iget-object v1, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrixDst:[F

    const/16 v18, 0x0

    long-to-float v0, v2

    aput v0, v1, v18

    .line 118
    const/4 v0, 0x1

    move-wide/from16 v18, v2

    .end local v2    # "topLeftCornerX":J
    .local v18, "topLeftCornerX":J
    long-to-float v2, v4

    aput v2, v1, v0

    .line 119
    const/4 v0, 0x2

    long-to-float v2, v6

    aput v2, v1, v0

    .line 120
    const/4 v0, 0x3

    long-to-float v2, v8

    aput v2, v1, v0

    .line 121
    const/4 v0, 0x4

    long-to-float v2, v10

    aput v2, v1, v0

    .line 122
    const/4 v0, 0x5

    long-to-float v2, v12

    aput v2, v1, v0

    .line 123
    const/4 v0, 0x6

    move-wide/from16 v2, v16

    move-wide/from16 v16, v4

    .end local v4    # "topLeftCornerY":J
    .local v2, "bottomLeftCornerX":J
    .local v16, "topLeftCornerY":J
    long-to-float v4, v2

    aput v4, v1, v0

    .line 124
    const/4 v0, 0x7

    long-to-float v4, v14

    aput v4, v1, v0

    .line 126
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrixSrc:[F

    const/16 v22, 0x0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrixDst:[F

    const/16 v24, 0x0

    const/16 v25, 0x4

    move-object/from16 v21, v1

    move-object/from16 v23, v4

    invoke-virtual/range {v20 .. v25}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 127
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 3
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 67
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/GroundOverlay4;->computeMatrix(Lorg/osmdroid/views/Projection;)V

    .line 71
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 72
    return-void
.end method

.method public getBearing()F
    .locals 1

    .line 49
    iget v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBearing:F

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    .line 62
    iget v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTransparency:F

    return v0
.end method

.method public setBearing(F)V
    .locals 0
    .param p1, "pBearing"    # F

    .line 53
    iput p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBearing:F

    .line 54
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "pImage"    # Landroid/graphics/Bitmap;

    .line 83
    iput-object p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mImage:Landroid/graphics/Bitmap;

    .line 84
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 88
    .local v0, "width":I
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 89
    .local v1, "height":I
    iget-object v2, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrixSrc:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 90
    const/4 v3, 0x1

    aput v4, v2, v3

    .line 91
    const/4 v3, 0x2

    int-to-float v5, v0

    aput v5, v2, v3

    .line 92
    const/4 v3, 0x3

    aput v4, v2, v3

    .line 93
    const/4 v3, 0x4

    int-to-float v5, v0

    aput v5, v2, v3

    .line 94
    const/4 v3, 0x5

    int-to-float v5, v1

    aput v5, v2, v3

    .line 95
    const/4 v3, 0x6

    aput v4, v2, v3

    .line 96
    const/4 v3, 0x7

    int-to-float v4, v1

    aput v4, v2, v3

    .line 97
    return-void
.end method

.method public setPosition(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)V
    .locals 1
    .param p1, "pTopLeft"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "pTopRight"    # Lorg/osmdroid/util/GeoPoint;
    .param p3, "pBottomRight"    # Lorg/osmdroid/util/GeoPoint;
    .param p4, "pBottomLeft"    # Lorg/osmdroid/util/GeoPoint;

    .line 101
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    .line 102
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p2}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    .line 103
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p3}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    .line 104
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    .line 105
    return-void
.end method

.method public setTransparency(F)V
    .locals 2
    .param p1, "pTransparency"    # F

    .line 57
    iput p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTransparency:F

    .line 58
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    return-void
.end method
