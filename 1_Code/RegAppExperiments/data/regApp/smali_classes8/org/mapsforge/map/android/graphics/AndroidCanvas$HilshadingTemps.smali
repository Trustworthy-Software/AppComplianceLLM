.class Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;
.super Ljava/lang/Object;
.source "AndroidCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/android/graphics/AndroidCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HilshadingTemps"
.end annotation


# instance fields
.field private final adr:Landroid/graphics/Rect;

.field private final asr:Landroid/graphics/Rect;

.field private neutralShadingPixel:Landroid/graphics/Bitmap;

.field private scaleTemp:Landroid/graphics/Bitmap;

.field private final shadePaint:Landroid/graphics/Paint;

.field private shiftTemp:Landroid/graphics/Bitmap;

.field private final tmpCanvas:Landroid/graphics/Canvas;

.field private tmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method private constructor <init>()V
    .locals 8

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->asr:Landroid/graphics/Rect;

    .line 422
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->adr:Landroid/graphics/Rect;

    .line 423
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->tmpCanvas:Landroid/graphics/Canvas;

    .line 428
    sget-object v2, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v0, 0x1

    new-array v5, v0, [B

    const/16 v6, 0x7f

    aput-byte v6, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->createMonoBitmap(II[BILorg/mapsforge/core/model/BoundingBox;)Lorg/mapsforge/map/android/graphics/AndroidHillshadingBitmap;

    move-result-object v1

    iget-object v1, v1, Lorg/mapsforge/map/android/graphics/AndroidHillshadingBitmap;->bitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->neutralShadingPixel:Landroid/graphics/Bitmap;

    .line 432
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->shadePaint:Landroid/graphics/Paint;

    .line 434
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 435
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 436
    return-void
.end method

.method synthetic constructor <init>(Lorg/mapsforge/map/android/graphics/AndroidCanvas$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mapsforge/map/android/graphics/AndroidCanvas$1;

    .line 420
    invoke-direct {p0}, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;-><init>()V

    return-void
.end method

.method private internalUseBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "tmpBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tempWidth"    # I
    .param p3, "tempHeight"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .line 480
    if-nez p1, :cond_0

    .line 481
    invoke-static {p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 482
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 484
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v0, p3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 489
    :cond_1
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 490
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->tmpCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 485
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 486
    invoke-static {p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 487
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 493
    :goto_1
    return-object p1
.end method


# virtual methods
.method useAdr(IIII)Landroid/graphics/Rect;
    .locals 1
    .param p1, "destLeft"    # I
    .param p2, "destTop"    # I
    .param p3, "destRight"    # I
    .param p4, "destBottom"    # I

    .line 447
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->adr:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 448
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->adr:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 449
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->adr:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 450
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->adr:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 451
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->adr:Landroid/graphics/Rect;

    return-object v0
.end method

.method public useAlphaPaint(I)Landroid/graphics/Paint;
    .locals 1
    .param p1, "alpha"    # I

    .line 497
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->shadePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 498
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->shadePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method useAsr(IIII)Landroid/graphics/Rect;
    .locals 1
    .param p1, "srcLeft"    # I
    .param p2, "srcTop"    # I
    .param p3, "srcRight"    # I
    .param p4, "srcBottom"    # I

    .line 439
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->asr:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 440
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->asr:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 441
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->asr:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 442
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->asr:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 443
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->asr:Landroid/graphics/Rect;

    return-object v0
.end method

.method useCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 458
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->tmpCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public useMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 506
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->tmpMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->tmpMatrix:Landroid/graphics/Matrix;

    .line 509
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 510
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->tmpMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public useNeutralShadingPixel()Landroid/graphics/Bitmap;
    .locals 1

    .line 502
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->neutralShadingPixel:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method useScaleBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "tempWidth"    # I
    .param p2, "tempHeight"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 466
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->scaleTemp:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->internalUseBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->scaleTemp:Landroid/graphics/Bitmap;

    .line 467
    return-object v0
.end method

.method useShiftBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "tempWidth"    # I
    .param p2, "tempHeight"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 475
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->shiftTemp:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->internalUseBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->shiftTemp:Landroid/graphics/Bitmap;

    .line 476
    return-object v0
.end method
