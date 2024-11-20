.class public Lorg/osmdroid/views/overlay/GroundOverlay2;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "GroundOverlay2.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mBearing:F

.field private mImage:Landroid/graphics/Bitmap;

.field private mLatD:F

.field private mLatU:F

.field private mLonL:F

.field private mLonR:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private final mPaint:Landroid/graphics/Paint;

.field protected mTransparency:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mPaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mMatrix:Landroid/graphics/Matrix;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mBearing:F

    .line 32
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->setTransparency(F)V

    .line 33
    return-void
.end method


# virtual methods
.method protected computeMatrix(Lorg/osmdroid/views/Projection;)V
    .locals 16
    .param p1, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 94
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLonL:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v2

    .line 95
    .local v2, "x0":J
    iget v4, v0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLatU:F

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v4

    .line 96
    .local v4, "y0":J
    iget v6, v0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLonR:F

    float-to-double v6, v6

    invoke-virtual {v1, v6, v7}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v6

    .line 97
    .local v6, "x1":J
    iget v8, v0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLatD:F

    float-to-double v8, v8

    invoke-virtual {v1, v8, v9}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v8

    .line 99
    .local v8, "y1":J
    sub-long v10, v6, v2

    long-to-float v10, v10

    .line 100
    .local v10, "widthOnTheMap":F
    sub-long v11, v8, v4

    long-to-float v11, v11

    .line 102
    .local v11, "heightOnTheMap":F
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->getImage()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v10, v12

    .line 103
    .local v12, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->getImage()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v13, v11, v13

    .line 105
    .local v13, "scaleY":F
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v14

    long-to-float v15, v2

    long-to-float v0, v4

    invoke-virtual {v14, v15, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 107
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 3
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 70
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/GroundOverlay2;->computeMatrix(Lorg/osmdroid/views/Projection;)V

    .line 74
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 75
    return-void
.end method

.method public getBearing()F
    .locals 1

    .line 48
    iget v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mBearing:F

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    .line 61
    iget v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mTransparency:F

    return v0
.end method

.method public setBearing(F)V
    .locals 0
    .param p1, "pBearing"    # F

    .line 52
    iput p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mBearing:F

    .line 53
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "pImage"    # Landroid/graphics/Bitmap;

    .line 65
    iput-object p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mImage:Landroid/graphics/Bitmap;

    .line 66
    return-void
.end method

.method public setPosition(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)V
    .locals 2
    .param p1, "UL"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "RD"    # Lorg/osmdroid/util/GeoPoint;

    .line 87
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLatU:F

    .line 88
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLonL:F

    .line 89
    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLatD:F

    .line 90
    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLonR:F

    .line 91
    return-void
.end method

.method public setTransparency(F)V
    .locals 2
    .param p1, "pTransparency"    # F

    .line 56
    iput p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mTransparency:F

    .line 57
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    return-void
.end method
