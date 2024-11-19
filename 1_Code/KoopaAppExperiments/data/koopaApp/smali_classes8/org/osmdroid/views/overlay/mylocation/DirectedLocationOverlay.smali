.class public Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "DirectedLocationOverlay.java"


# instance fields
.field protected DIRECTION_ARROW:Landroid/graphics/Bitmap;

.field private DIRECTION_ARROW_CENTER_X:F

.field private DIRECTION_ARROW_CENTER_Y:F

.field private DIRECTION_ARROW_HEIGHT:I

.field private DIRECTION_ARROW_WIDTH:I

.field private final directionRotater:Landroid/graphics/Matrix;

.field private mAccuracy:I

.field protected mAccuracyPaint:Landroid/graphics/Paint;

.field protected mBearing:F

.field protected mLocation:Lorg/osmdroid/util/GeoPoint;

.field protected mPaint:Landroid/graphics/Paint;

.field private mShowAccuracy:Z

.field private final screenCoords:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    .line 41
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracy:I

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mShowAccuracy:Z

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/osmdroid/library/R$drawable;->twotone_navigation_black_48:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 60
    .local v1, "d":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->setDirectionArrow(Landroid/graphics/Bitmap;)V

    .line 62
    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pj"    # Lorg/osmdroid/views/Projection;

    .line 119
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    if-eqz v0, :cond_1

    .line 120
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    invoke-virtual {p2, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 122
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mShowAccuracy:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracy:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 123
    int-to-float v3, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v6

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/views/Projection;->metersToPixels(FDD)F

    move-result v0

    .line 125
    .local v0, "accuracyRadius":F
    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 127
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 129
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    .end local v0    # "accuracyRadius":F
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mBearing:F

    iget v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_X:F

    iget v3, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_Y:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 148
    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_WIDTH:I

    iget v8, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_HEIGHT:I

    iget-object v9, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    .local v0, "rotatedDirection":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mPaint:Landroid/graphics/Paint;

    .line 150
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 153
    .end local v0    # "rotatedDirection":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public getLocation()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "view"    # Lorg/osmdroid/views/MapView;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mPaint:Landroid/graphics/Paint;

    .line 114
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    .line 115
    return-void
.end method

.method public setAccuracy(I)V
    .locals 0
    .param p1, "pAccuracy"    # I

    .line 100
    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracy:I

    .line 101
    return-void
.end method

.method public setBearing(F)V
    .locals 0
    .param p1, "aHeading"    # F

    .line 104
    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mBearing:F

    .line 105
    return-void
.end method

.method public setDirectionArrow(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .line 77
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_X:F

    .line 79
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_Y:F

    .line 80
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_HEIGHT:I

    .line 81
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_WIDTH:I

    .line 82
    return-void
.end method

.method public setLocation(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0
    .param p1, "mp"    # Lorg/osmdroid/util/GeoPoint;

    .line 89
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    .line 90
    return-void
.end method

.method public setShowAccuracy(Z)V
    .locals 0
    .param p1, "pShowIt"    # Z

    .line 85
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mShowAccuracy:Z

    .line 86
    return-void
.end method
