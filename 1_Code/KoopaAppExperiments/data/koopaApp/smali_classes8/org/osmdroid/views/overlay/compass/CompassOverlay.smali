.class public Lorg/osmdroid/views/overlay/compass/CompassOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "CompassOverlay.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
.implements Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;


# static fields
.field public static final MENU_COMPASS:I


# instance fields
.field private mAzimuth:F

.field private mAzimuthOffset:F

.field private mAzimuthPrecision:F

.field private mCompassCenterX:F

.field private mCompassCenterY:F

.field protected mCompassFrameBitmap:Landroid/graphics/Bitmap;

.field protected final mCompassFrameCenterX:F

.field protected final mCompassFrameCenterY:F

.field private final mCompassMatrix:Landroid/graphics/Matrix;

.field private final mCompassRadius:F

.field protected mCompassRoseBitmap:Landroid/graphics/Bitmap;

.field protected final mCompassRoseCenterX:F

.field protected final mCompassRoseCenterY:F

.field private final mDisplay:Landroid/view/Display;

.field private mInCenter:Z

.field private mIsCompassEnabled:Z

.field protected mLastRender:J

.field private mLastRenderLag:I

.field protected mMapView:Lorg/osmdroid/views/MapView;

.field private mMode:I

.field private mOptionsMenuEnabled:Z

.field public mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

.field protected final mScale:F

.field private sSmoothPaint:Landroid/graphics/Paint;

.field private wasEnabledOnPause:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    invoke-static {}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->MENU_COMPASS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 98
    new-instance v0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;

    invoke-direct {v0, p1}, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;-><init>(Landroid/content/Context;Lorg/osmdroid/views/overlay/compass/IOrientationProvider;Lorg/osmdroid/views/MapView;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/views/overlay/compass/IOrientationProvider;Lorg/osmdroid/views/MapView;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientationProvider"    # Lorg/osmdroid/views/overlay/compass/IOrientationProvider;
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 104
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->sSmoothPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->wasEnabledOnPause:Z

    .line 52
    const/4 v1, 0x1

    iput v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMode:I

    .line 57
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    .line 58
    const/4 v2, 0x0

    iput v2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuthOffset:F

    .line 63
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mInCenter:Z

    .line 64
    const/high16 v0, 0x420c0000    # 35.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterX:F

    .line 65
    iput v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterY:F

    .line 66
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRadius:F

    .line 72
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mLastRender:J

    .line 75
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOptionsMenuEnabled:Z

    .line 84
    const/16 v0, 0x1f4

    iput v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mLastRenderLag:I

    .line 91
    iput v2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuthPrecision:F

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    .line 107
    iput-object p3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 108
    nop

    .line 109
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 110
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mDisplay:Landroid/view/Display;

    .line 112
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->createCompassFramePicture()V

    .line 113
    iget v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMode:I

    if-lez v1, :cond_0

    .line 114
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->createCompassRosePicture()V

    goto :goto_0

    .line 116
    :cond_0
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->createPointerPicture()V

    .line 118
    :goto_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v1, v3

    iput v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterX:F

    .line 119
    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    iput v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterY:F

    .line 120
    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    iput v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterX:F

    .line 121
    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    iput v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterY:F

    .line 123
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->setOrientationProvider(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)V

    .line 124
    return-void
.end method

.method private calculatePointOnCircle(FFFF)Landroid/graphics/Point;
    .locals 7
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F
    .param p4, "degrees"    # F

    .line 455
    neg-float v0, p4

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 457
    .local v0, "dblRadians":D
    float-to-double v2, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 458
    .local v2, "intX":I
    float-to-double v3, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 460
    .local v3, "intY":I
    new-instance v4, Landroid/graphics/Point;

    float-to-int v5, p1

    add-int/2addr v5, v2

    float-to-int v6, p2

    sub-int/2addr v6, v3

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    return-object v4
.end method

.method private createCompassFramePicture()V
    .locals 13

    .line 493
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 494
    .local v0, "innerPaint":Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 495
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 496
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 497
    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 500
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 501
    .local v3, "outerPaint":Landroid/graphics/Paint;
    const v4, -0x777778

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 503
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 504
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 505
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 507
    const/high16 v1, 0x42480000    # 50.0f

    iget v2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 508
    .local v1, "picBorderWidthAndHeight":I
    div-int/lit8 v2, v1, 0x2

    .line 509
    .local v2, "center":I
    iget-object v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 510
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 511
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    .line 513
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v11, v4

    .line 516
    .local v11, "canvas":Landroid/graphics/Canvas;
    int-to-float v4, v2

    int-to-float v5, v2

    iget v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    const/high16 v12, 0x41a00000    # 20.0f

    mul-float/2addr v6, v12

    invoke-virtual {v11, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 517
    int-to-float v4, v2

    int-to-float v5, v2

    iget v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v6, v12

    invoke-virtual {v11, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 522
    int-to-float v6, v2

    int-to-float v7, v2

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v8, v4, v12

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v11

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 523
    int-to-float v6, v2

    int-to-float v7, v2

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v8, v4, v12

    const/high16 v9, 0x42b40000    # 90.0f

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 524
    int-to-float v6, v2

    int-to-float v7, v2

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v8, v4, v12

    const/high16 v9, 0x43340000    # 180.0f

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 525
    int-to-float v6, v2

    int-to-float v7, v2

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v8, v4, v12

    const/high16 v9, 0x43870000    # 270.0f

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 526
    return-void
.end method

.method private createCompassRosePicture()V
    .locals 13

    .line 533
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 534
    .local v0, "northPaint":Landroid/graphics/Paint;
    const/high16 v1, -0x600000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 535
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 536
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 537
    const/16 v2, 0xdc

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 540
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 541
    .local v3, "southPaint":Landroid/graphics/Paint;
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 542
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 543
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 544
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 547
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 548
    .local v4, "centerPaint":Landroid/graphics/Paint;
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 550
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 551
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 553
    const/high16 v1, 0x42480000    # 50.0f

    iget v2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 554
    .local v1, "picBorderWidthAndHeight":I
    div-int/lit8 v2, v1, 0x2

    .line 556
    .local v2, "center":I
    iget-object v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 557
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 558
    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    .line 560
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 563
    .local v5, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 564
    .local v6, "pathNorth":Landroid/graphics/Path;
    int-to-float v7, v2

    int-to-float v8, v2

    iget v9, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    const/high16 v10, 0x41880000    # 17.0f

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 565
    int-to-float v7, v2

    iget v8, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    int-to-float v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 566
    int-to-float v7, v2

    iget v8, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    int-to-float v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 567
    int-to-float v7, v2

    int-to-float v8, v2

    iget v11, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v11, v10

    sub-float/2addr v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 568
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 569
    invoke-virtual {v5, v6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 572
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 573
    .local v7, "pathSouth":Landroid/graphics/Path;
    int-to-float v8, v2

    int-to-float v11, v2

    iget v12, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v12, v10

    add-float/2addr v11, v12

    invoke-virtual {v7, v8, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 574
    int-to-float v8, v2

    iget v11, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v11, v9

    add-float/2addr v8, v11

    int-to-float v11, v2

    invoke-virtual {v7, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 575
    int-to-float v8, v2

    iget v11, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v11, v9

    sub-float/2addr v8, v11

    int-to-float v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 576
    int-to-float v8, v2

    int-to-float v9, v2

    iget v11, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v11, v10

    add-float/2addr v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 577
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 578
    invoke-virtual {v5, v7, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 581
    int-to-float v8, v2

    int-to-float v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v5, v8, v9, v10, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 582
    return-void
.end method

.method private createPointerPicture()V
    .locals 12

    .line 588
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 589
    .local v0, "arrowPaint":Landroid/graphics/Paint;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 590
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 591
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 592
    const/16 v2, 0xdc

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 595
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 596
    .local v3, "centerPaint":Landroid/graphics/Paint;
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 597
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 598
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 599
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 601
    const/high16 v1, 0x42480000    # 50.0f

    iget v2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 602
    .local v1, "picBorderWidthAndHeight":I
    div-int/lit8 v2, v1, 0x2

    .line 604
    .local v2, "center":I
    iget-object v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 605
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 606
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    .line 608
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 611
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 612
    .local v5, "pathArrow":Landroid/graphics/Path;
    int-to-float v6, v2

    int-to-float v7, v2

    iget v8, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    const/high16 v9, 0x41880000    # 17.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 613
    int-to-float v6, v2

    iget v7, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    const/high16 v8, 0x40800000    # 4.0f

    mul-float v10, v7, v8

    add-float/2addr v6, v10

    int-to-float v10, v2

    mul-float/2addr v7, v9

    add-float/2addr v10, v7

    invoke-virtual {v5, v6, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 614
    int-to-float v6, v2

    int-to-float v7, v2

    const/high16 v10, 0x41080000    # 8.5f

    iget v11, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v11, v10

    add-float/2addr v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 615
    int-to-float v6, v2

    iget v7, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v8, v7

    sub-float/2addr v6, v8

    int-to-float v8, v2

    mul-float/2addr v7, v9

    add-float/2addr v8, v7

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 616
    int-to-float v6, v2

    int-to-float v7, v2

    iget v8, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 617
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 618
    invoke-virtual {v4, v5, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 621
    int-to-float v6, v2

    int-to-float v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v4, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 622
    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "radius"    # F
    .param p5, "degrees"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 465
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 466
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->calculatePointOnCircle(FFFF)Landroid/graphics/Point;

    move-result-object v0

    .line 467
    .local v0, "point":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, p5, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 468
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 469
    .local v1, "p":Landroid/graphics/Path;
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 470
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 471
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 472
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 473
    invoke-virtual {p1, v1, p6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 475
    return-void
.end method

.method private getDisplayOrientation()I
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 487
    const/4 v0, 0x0

    return v0

    .line 484
    :pswitch_0
    const/16 v0, 0x10e

    return v0

    .line 482
    :pswitch_1
    const/16 v0, 0xb4

    return v0

    .line 480
    :pswitch_2
    const/16 v0, 0x5a

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private invalidateCompass()V
    .locals 10

    .line 171
    iget-wide v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mLastRender:J

    iget v2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mLastRenderLag:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 172
    return-void

    .line 173
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mLastRender:J

    .line 174
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 179
    .local v0, "screenRect":Landroid/graphics/Rect;
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mInCenter:Z

    if-eqz v1, :cond_1

    .line 180
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 181
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterX:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v1, v2

    .line 182
    .local v1, "frameLeft":I
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 183
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterY:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    .line 184
    .local v2, "frameTop":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 185
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterX:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    .line 186
    .local v3, "frameRight":I
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 187
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    iget v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterY:F

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v4, v5

    .local v4, "frameBottom":I
    goto :goto_0

    .line 189
    .end local v1    # "frameLeft":I
    .end local v2    # "frameTop":I
    .end local v3    # "frameRight":I
    .end local v4    # "frameBottom":I
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterX:F

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterX:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    .line 190
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v1, v2

    .line 191
    .restart local v1    # "frameLeft":I
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterY:F

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterY:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    .line 192
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    .line 193
    .restart local v2    # "frameTop":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterX:F

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v4, v5

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterX:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    .line 194
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    .line 195
    .restart local v3    # "frameRight":I
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterY:F

    iget v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v5, v6

    iget v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterY:F

    add-float/2addr v5, v6

    float-to-double v5, v5

    .line 196
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v4, v5

    .line 200
    .restart local v4    # "frameBottom":I
    :goto_0
    iget-object v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    add-int/lit8 v6, v1, -0x2

    add-int/lit8 v7, v2, -0x2

    add-int/lit8 v8, v3, 0x2

    add-int/lit8 v9, v4, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/osmdroid/views/MapView;->postInvalidateMapCoordinates(IIII)V

    .line 202
    return-void
.end method


# virtual methods
.method public disableCompass()V
    .locals 1

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mIsCompassEnabled:Z

    .line 392
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    if-eqz v0, :cond_0

    .line 393
    invoke-interface {v0}, Lorg/osmdroid/views/overlay/compass/IOrientationProvider;->stopOrientationProvider()V

    .line 397
    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    .line 400
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_1

    .line 401
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->invalidateCompass()V

    .line 403
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 289
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMode:I

    int-to-float v0, v0

    iget v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    iget v2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuthOffset:F

    add-float/2addr v1, v2

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->getDisplayOrientation()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 291
    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 290
    invoke-virtual {p0, p1, v0, v1}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->drawCompass(Landroid/graphics/Canvas;FLandroid/graphics/Rect;)V

    .line 293
    :cond_0
    return-void
.end method

.method protected drawCompass(Landroid/graphics/Canvas;FLandroid/graphics/Rect;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bearing"    # F
    .param p3, "screenRect"    # Landroid/graphics/Rect;

    .line 252
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 256
    .local v0, "proj":Lorg/osmdroid/views/Projection;
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mInCenter:Z

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 258
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    .line 259
    .local v2, "centerX":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .line 260
    .local v1, "centerY":F
    goto :goto_0

    .line 261
    .end local v1    # "centerY":F
    .end local v2    # "centerX":F
    :cond_0
    iget v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterX:F

    iget v2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v1, v2

    .line 262
    .local v1, "centerX":F
    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterY:F

    mul-float/2addr v2, v3

    move v10, v2

    move v2, v1

    move v1, v10

    .line 265
    .local v1, "centerY":F
    .restart local v2    # "centerX":F
    :goto_0
    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterX:F

    neg-float v4, v4

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterY:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 266
    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 268
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v3, v4}, Lorg/osmdroid/views/Projection;->save(Landroid/graphics/Canvas;ZZ)V

    .line 269
    iget-object v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 270
    iget-object v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->sSmoothPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 271
    invoke-virtual {v0, p1, v4}, Lorg/osmdroid/views/Projection;->restore(Landroid/graphics/Canvas;Z)V

    .line 273
    iget-object v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    neg-float v6, p2

    iget v8, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterX:F

    iget v9, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterY:F

    invoke-virtual {v5, v6, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 274
    iget-object v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterX:F

    neg-float v6, v6

    iget v8, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterY:F

    neg-float v8, v8

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 275
    iget-object v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 277
    invoke-virtual {v0, p1, v3, v4}, Lorg/osmdroid/views/Projection;->save(Landroid/graphics/Canvas;ZZ)V

    .line 278
    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 279
    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->sSmoothPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 280
    invoke-virtual {v0, p1, v4}, Lorg/osmdroid/views/Projection;->restore(Landroid/graphics/Canvas;Z)V

    .line 281
    return-void
.end method

.method public enableCompass()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)Z

    move-result v0

    return v0
.end method

.method public enableCompass(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)Z
    .locals 2
    .param p1, "orientationProvider"    # Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    .line 358
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->setOrientationProvider(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)V

    .line 360
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    invoke-interface {v0, p0}, Lorg/osmdroid/views/overlay/compass/IOrientationProvider;->startOrientationProvider(Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;)Z

    move-result v0

    .line 361
    .local v0, "success":Z
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mIsCompassEnabled:Z

    .line 364
    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v1, :cond_0

    .line 365
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->invalidateCompass()V

    .line 368
    :cond_0
    return v0
.end method

.method public getAzimuthOffset()F
    .locals 1

    .line 233
    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuthOffset:F

    return v0
.end method

.method public getOrientation()F
    .locals 1

    .line 415
    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    return v0
.end method

.method public getOrientationProvider()Lorg/osmdroid/views/overlay/compass/IOrientationProvider;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    return-object v0
.end method

.method public isCompassEnabled()Z
    .locals 1

    .line 411
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mIsCompassEnabled:Z

    return v0
.end method

.method public isCompassInCenter()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mInCenter:Z

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOptionsMenuEnabled:Z

    return v0
.end method

.method public isPointerMode()Z
    .locals 1

    .line 444
    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMode:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 312
    sget v0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->MENU_COMPASS:I

    add-int/2addr v0, p2

    .line 313
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/osmdroid/library/R$string;->compass:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 315
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/osmdroid/library/R$drawable;->ic_menu_compass:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 316
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 318
    return v1
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 146
    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->sSmoothPaint:Landroid/graphics/Paint;

    .line 147
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->disableCompass()V

    .line 148
    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    .line 149
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 152
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "pItem"    # Landroid/view/MenuItem;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 331
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sub-int/2addr v0, p2

    .line 332
    .local v0, "menuId":I
    sget v1, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->MENU_COMPASS:I

    if-ne v0, v1, :cond_1

    .line 333
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->disableCompass()V

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass()Z

    .line 338
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 340
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onOrientationChanged(FLorg/osmdroid/views/overlay/compass/IOrientationProvider;)V
    .locals 2
    .param p1, "orientation"    # F
    .param p2, "source"    # Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    .line 350
    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuthPrecision:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 351
    :cond_0
    iput p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    .line 352
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->invalidateCompass()V

    .line 354
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 128
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mIsCompassEnabled:Z

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->wasEnabledOnPause:Z

    .line 129
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Lorg/osmdroid/views/overlay/compass/IOrientationProvider;->stopOrientationProvider()V

    .line 132
    :cond_0
    invoke-super {p0}, Lorg/osmdroid/views/overlay/Overlay;->onPause()V

    .line 133
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 324
    sget v0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->MENU_COMPASS:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .line 137
    invoke-super {p0}, Lorg/osmdroid/views/overlay/Overlay;->onResume()V

    .line 138
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->wasEnabledOnPause:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass()Z

    .line 141
    :cond_0
    return-void
.end method

.method public setAzimuthOffset(F)V
    .locals 0
    .param p1, "f"    # F

    .line 229
    iput p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuthOffset:F

    .line 230
    return-void
.end method

.method public setAzimuthPrecision(F)V
    .locals 0
    .param p1, "pAzimuthPrecision"    # F

    .line 167
    iput p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuthPrecision:F

    .line 168
    return-void
.end method

.method public setCompassCenter(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 209
    iput p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterX:F

    .line 210
    iput p2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterY:F

    .line 211
    return-void
.end method

.method public setCompassInCenter(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 217
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mInCenter:Z

    .line 218
    return-void
.end method

.method public setLastRenderLag(I)V
    .locals 0
    .param p1, "pLastRenderLag"    # I

    .line 159
    iput p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mLastRenderLag:I

    .line 160
    return-void
.end method

.method public setOptionsMenuEnabled(Z)V
    .locals 0
    .param p1, "pOptionsMenuEnabled"    # Z

    .line 301
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOptionsMenuEnabled:Z

    .line 302
    return-void
.end method

.method public setOrientationProvider(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)V
    .locals 2
    .param p1, "orientationProvider"    # Lorg/osmdroid/views/overlay/compass/IOrientationProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 241
    if-eqz p1, :cond_1

    .line 245
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/compass/IOrientationProvider;->stopOrientationProvider()V

    .line 248
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    .line 249
    return-void

    .line 242
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must pass an IOrientationProvider to setOrientationProvider()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPointerMode(Z)V
    .locals 1
    .param p1, "usePointArrow"    # Z

    .line 430
    if-eqz p1, :cond_0

    .line 431
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMode:I

    .line 432
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->createPointerPicture()V

    goto :goto_0

    .line 434
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMode:I

    .line 435
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->createCompassRosePicture()V

    .line 437
    :goto_0
    return-void
.end method
