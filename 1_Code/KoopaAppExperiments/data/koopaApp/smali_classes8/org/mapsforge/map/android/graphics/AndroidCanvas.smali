.class Lorg/mapsforge/map/android/graphics/AndroidCanvas;
.super Ljava/lang/Object;
.source "AndroidCanvas.java"

# interfaces
.implements Lorg/mapsforge/core/graphics/Canvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;
    }
.end annotation


# static fields
.field private static final INVERT_MATRIX:[F


# instance fields
.field private final bitmapPaint:Landroid/graphics/Paint;

.field canvas:Landroid/graphics/Canvas;

.field private grayscaleFilter:Landroid/graphics/ColorFilter;

.field private grayscaleInvertFilter:Landroid/graphics/ColorFilter;

.field private hillshadingTemps:Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;

.field private invertFilter:Landroid/graphics/ColorFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->INVERT_MATRIX:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->hillshadingTemps:Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;

    .line 57
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 62
    invoke-direct {p0}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->createFilters()V

    .line 63
    return-void
.end method

.method constructor <init>(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->hillshadingTemps:Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;

    .line 66
    iput-object p1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    .line 68
    invoke-direct {p0}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->createFilters()V

    .line 69
    return-void
.end method

.method private applyFilter(Lorg/mapsforge/core/graphics/Filter;)V
    .locals 2
    .param p1, "filter"    # Lorg/mapsforge/core/graphics/Filter;

    .line 72
    sget-object v0, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-ne p1, v0, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas$1;->$SwitchMap$org$mapsforge$core$graphics$Filter:[I

    invoke-virtual {p1}, Lorg/mapsforge/core/graphics/Filter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->invertFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->grayscaleInvertFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 81
    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 78
    nop

    .line 86
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createFilters()V
    .locals 4

    .line 89
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 90
    .local v0, "grayscaleMatrix":Landroid/graphics/ColorMatrix;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 91
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->grayscaleFilter:Landroid/graphics/ColorFilter;

    .line 93
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 94
    .local v2, "grayscaleInvertMatrix":Landroid/graphics/ColorMatrix;
    invoke-virtual {v2, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 95
    new-instance v1, Landroid/graphics/ColorMatrix;

    sget-object v3, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->INVERT_MATRIX:[F

    invoke-direct {v1, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {v2, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 96
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->grayscaleInvertFilter:Landroid/graphics/ColorFilter;

    .line 98
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->invertFilter:Landroid/graphics/ColorFilter;

    .line 99
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    .line 104
    return-void
.end method

.method public drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;II)V
    .locals 5
    .param p1, "bitmap"    # Lorg/mapsforge/core/graphics/Bitmap;
    .param p2, "left"    # I
    .param p3, "top"    # I

    .line 108
    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getBitmap(Lorg/mapsforge/core/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, "androidBitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->MONO_ALPHA_BITMAP:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 113
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p2

    int-to-float v3, p3

    iget-object v4, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 114
    return-void
.end method

.method public drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;IIIIIIII)V
    .locals 5
    .param p1, "bitmap"    # Lorg/mapsforge/core/graphics/Bitmap;
    .param p2, "srcLeft"    # I
    .param p3, "srcTop"    # I
    .param p4, "srcRight"    # I
    .param p5, "srcBottom"    # I
    .param p6, "dstLeft"    # I
    .param p7, "dstTop"    # I
    .param p8, "dstRight"    # I
    .param p9, "dstBottom"    # I

    .line 142
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getBitmap(Lorg/mapsforge/core/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 146
    return-void
.end method

.method public drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;IIIIIIIILorg/mapsforge/core/graphics/Filter;)V
    .locals 5
    .param p1, "bitmap"    # Lorg/mapsforge/core/graphics/Bitmap;
    .param p2, "srcLeft"    # I
    .param p3, "srcTop"    # I
    .param p4, "srcRight"    # I
    .param p5, "srcBottom"    # I
    .param p6, "dstLeft"    # I
    .param p7, "dstTop"    # I
    .param p8, "dstRight"    # I
    .param p9, "dstBottom"    # I
    .param p10, "filter"    # Lorg/mapsforge/core/graphics/Filter;

    .line 151
    invoke-direct {p0, p10}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->applyFilter(Lorg/mapsforge/core/graphics/Filter;)V

    .line 153
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getBitmap(Lorg/mapsforge/core/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 158
    sget-object v0, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-eq p10, v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 161
    :cond_0
    return-void
.end method

.method public drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;IILorg/mapsforge/core/graphics/Filter;)V
    .locals 5
    .param p1, "bitmap"    # Lorg/mapsforge/core/graphics/Bitmap;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "filter"    # Lorg/mapsforge/core/graphics/Filter;

    .line 118
    invoke-direct {p0, p4}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->applyFilter(Lorg/mapsforge/core/graphics/Filter;)V

    .line 119
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getBitmap(Lorg/mapsforge/core/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    int-to-float v2, p2

    int-to-float v3, p3

    iget-object v4, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    sget-object v0, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-eq p4, v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 123
    :cond_0
    return-void
.end method

.method public drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/core/graphics/Matrix;)V
    .locals 4
    .param p1, "bitmap"    # Lorg/mapsforge/core/graphics/Bitmap;
    .param p2, "matrix"    # Lorg/mapsforge/core/graphics/Matrix;

    .line 127
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getBitmap(Lorg/mapsforge/core/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p2}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getMatrix(Lorg/mapsforge/core/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 128
    return-void
.end method

.method public drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/core/graphics/Matrix;Lorg/mapsforge/core/graphics/Filter;)V
    .locals 4
    .param p1, "bitmap"    # Lorg/mapsforge/core/graphics/Bitmap;
    .param p2, "matrix"    # Lorg/mapsforge/core/graphics/Matrix;
    .param p3, "filter"    # Lorg/mapsforge/core/graphics/Filter;

    .line 132
    invoke-direct {p0, p3}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->applyFilter(Lorg/mapsforge/core/graphics/Filter;)V

    .line 133
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getBitmap(Lorg/mapsforge/core/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p2}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getMatrix(Lorg/mapsforge/core/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 134
    sget-object v0, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    if-eq p3, v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 137
    :cond_0
    return-void
.end method

.method public drawCircle(IIILorg/mapsforge/core/graphics/Paint;)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "radius"    # I
    .param p4, "paint"    # Lorg/mapsforge/core/graphics/Paint;

    .line 165
    invoke-interface {p4}, Lorg/mapsforge/core/graphics/Paint;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-static {p4}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getPaint(Lorg/mapsforge/core/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 169
    return-void
.end method

.method public drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V
    .locals 7
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "paint"    # Lorg/mapsforge/core/graphics/Paint;

    .line 173
    invoke-interface {p5}, Lorg/mapsforge/core/graphics/Paint;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-static {p5}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getPaint(Lorg/mapsforge/core/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 178
    return-void
.end method

.method public drawPath(Lorg/mapsforge/core/graphics/Path;Lorg/mapsforge/core/graphics/Paint;)V
    .locals 3
    .param p1, "path"    # Lorg/mapsforge/core/graphics/Path;
    .param p2, "paint"    # Lorg/mapsforge/core/graphics/Paint;

    .line 182
    invoke-interface {p2}, Lorg/mapsforge/core/graphics/Paint;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getPath(Lorg/mapsforge/core/graphics/Path;)Landroid/graphics/Path;

    move-result-object v1

    invoke-static {p2}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getPaint(Lorg/mapsforge/core/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 186
    return-void
.end method

.method public drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "paint"    # Lorg/mapsforge/core/graphics/Paint;

    .line 190
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-interface {p4}, Lorg/mapsforge/core/graphics/Paint;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-static {p4}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getPaint(Lorg/mapsforge/core/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 197
    return-void

    .line 191
    :cond_2
    :goto_0
    return-void
.end method

.method public drawTextRotated(Ljava/lang/String;IIIILorg/mapsforge/core/graphics/Paint;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I
    .param p6, "paint"    # Lorg/mapsforge/core/graphics/Paint;

    .line 201
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-interface {p6}, Lorg/mapsforge/core/graphics/Paint;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    return-void

    .line 208
    :cond_1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 209
    .local v0, "path":Landroid/graphics/Path;
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 210
    int-to-float v1, p4

    int-to-float v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 211
    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {p6}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getPaint(Lorg/mapsforge/core/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v6

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 212
    return-void

    .line 202
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_2
    :goto_0
    return-void
.end method

.method public fillColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 221
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 222
    .local v0, "alpha":I
    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-virtual {v1, p1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 223
    return-void
.end method

.method public fillColor(Lorg/mapsforge/core/graphics/Color;)V
    .locals 1
    .param p1, "color"    # Lorg/mapsforge/core/graphics/Color;

    .line 216
    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getColor(Lorg/mapsforge/core/graphics/Color;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->fillColor(I)V

    .line 217
    return-void
.end method

.method public getDimension()Lorg/mapsforge/core/model/Dimension;
    .locals 3

    .line 227
    new-instance v0, Lorg/mapsforge/core/model/Dimension;

    invoke-virtual {p0}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/core/model/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    return v0
.end method

.method public isAntiAlias()Z
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v0

    return v0
.end method

.method public isFilterBitmap()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v0

    return v0
.end method

.method public resetClip()V
    .locals 7

    .line 252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 254
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 255
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 257
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->getHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 259
    :goto_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z

    .line 263
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 264
    return-void
.end method

.method public setBitmap(Lorg/mapsforge/core/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Lorg/mapsforge/core/graphics/Bitmap;

    .line 268
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getBitmap(Lorg/mapsforge/core/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    return-void
.end method

.method public setClip(IIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 275
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 276
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 278
    :cond_0
    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->setClipInternal(IIIILandroid/graphics/Region$Op;)V

    .line 280
    :goto_0
    return-void
.end method

.method public setClipDifference(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 284
    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->setClipInternal(IIIILandroid/graphics/Region$Op;)V

    .line 285
    return-void
.end method

.method public setClipInternal(IIIILandroid/graphics/Region$Op;)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "op"    # Landroid/graphics/Region$Op;

    .line 288
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 289
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .line 293
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 294
    return-void
.end method

.method public shadeBitmap(Lorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/core/model/Rectangle;Lorg/mapsforge/core/model/Rectangle;F)V
    .locals 54
    .param p1, "bitmap"    # Lorg/mapsforge/core/graphics/Bitmap;
    .param p2, "hillRect"    # Lorg/mapsforge/core/model/Rectangle;
    .param p3, "tileRect"    # Lorg/mapsforge/core/model/Rectangle;
    .param p4, "magnitude"    # F

    .line 298
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 300
    iget-object v3, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->hillshadingTemps:Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 301
    new-instance v3, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;

    invoke-direct {v3, v4}, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;-><init>(Lorg/mapsforge/map/android/graphics/AndroidCanvas$1;)V

    iput-object v3, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->hillshadingTemps:Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;

    .line 303
    :cond_0
    iget-object v3, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->hillshadingTemps:Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;

    .line 305
    .local v3, "temps":Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;
    iget-object v5, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->hillshadingTemps:Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v6, v6, p4

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->useAlphaPaint(I)Landroid/graphics/Paint;

    move-result-object v5

    .line 307
    .local v5, "shadePaint":Landroid/graphics/Paint;
    const/16 v6, 0x1a

    const/4 v7, 0x0

    if-nez p1, :cond_3

    .line 308
    if-eqz v2, :cond_2

    .line 309
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_1

    .line 310
    iget-object v4, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 311
    iget-object v4, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    iget-wide v8, v2, Lorg/mapsforge/core/model/Rectangle;->left:D

    double-to-float v6, v8

    iget-wide v8, v2, Lorg/mapsforge/core/model/Rectangle;->top:D

    double-to-float v8, v8

    iget-wide v9, v2, Lorg/mapsforge/core/model/Rectangle;->right:D

    double-to-float v9, v9

    iget-wide v10, v2, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    double-to-float v10, v10

    invoke-virtual {v4, v6, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 312
    iget-object v4, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 314
    :cond_1
    iget-object v8, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    iget-wide v9, v2, Lorg/mapsforge/core/model/Rectangle;->left:D

    double-to-float v9, v9

    iget-wide v10, v2, Lorg/mapsforge/core/model/Rectangle;->top:D

    double-to-float v10, v10

    iget-wide v11, v2, Lorg/mapsforge/core/model/Rectangle;->right:D

    double-to-float v11, v11

    iget-wide v12, v2, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    double-to-float v12, v12

    sget-object v13, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 318
    :cond_2
    :goto_0
    iget-object v4, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    iget-object v6, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->hillshadingTemps:Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;

    invoke-virtual {v6}, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->useNeutralShadingPixel()Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v8, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->hillshadingTemps:Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;

    const/4 v9, 0x1

    invoke-virtual {v8, v7, v7, v9, v9}, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->useAsr(IIII)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->hillshadingTemps:Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;

    iget-object v10, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v10}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    iget-object v11, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v11}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    invoke-virtual {v9, v7, v7, v10, v11}, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->useAdr(IIII)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v6, v8, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 320
    iget-object v4, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 321
    return-void

    .line 324
    :cond_3
    invoke-static/range {p1 .. p1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getBitmap(Lorg/mapsforge/core/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 325
    .local v8, "hillsBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Lorg/mapsforge/core/model/Rectangle;->getWidth()D

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Lorg/mapsforge/core/model/Rectangle;->getWidth()D

    move-result-wide v11

    div-double/2addr v9, v11

    .line 326
    .local v9, "horizontalScale":D
    invoke-virtual/range {p3 .. p3}, Lorg/mapsforge/core/model/Rectangle;->getHeight()D

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lorg/mapsforge/core/model/Rectangle;->getHeight()D

    move-result-wide v13

    div-double/2addr v11, v13

    .line 328
    .local v11, "verticalScale":D
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v15, v9, v13

    if-gez v15, :cond_5

    cmpg-double v15, v11, v13

    if-gez v15, :cond_5

    .line 330
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_4

    .line 331
    iget-object v4, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 332
    iget-object v4, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    iget-wide v6, v2, Lorg/mapsforge/core/model/Rectangle;->left:D

    double-to-float v6, v6

    iget-wide v13, v2, Lorg/mapsforge/core/model/Rectangle;->top:D

    double-to-float v7, v13

    iget-wide v13, v2, Lorg/mapsforge/core/model/Rectangle;->right:D

    double-to-float v13, v13

    iget-wide v14, v2, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    double-to-float v14, v14

    invoke-virtual {v4, v6, v7, v13, v14}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 333
    iget-object v4, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 335
    :cond_4
    iget-object v13, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    iget-wide v6, v2, Lorg/mapsforge/core/model/Rectangle;->left:D

    double-to-float v14, v6

    iget-wide v6, v2, Lorg/mapsforge/core/model/Rectangle;->top:D

    double-to-float v15, v6

    iget-wide v6, v2, Lorg/mapsforge/core/model/Rectangle;->right:D

    double-to-float v4, v6

    iget-wide v6, v2, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    double-to-float v6, v6

    sget-object v18, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move/from16 v16, v4

    move/from16 v17, v6

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 337
    :goto_1
    invoke-virtual {v3}, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->useMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 338
    .local v4, "transform":Landroid/graphics/Matrix;
    iget-wide v6, v2, Lorg/mapsforge/core/model/Rectangle;->left:D

    double-to-float v6, v6

    iget-wide v13, v2, Lorg/mapsforge/core/model/Rectangle;->top:D

    double-to-float v7, v13

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 339
    double-to-float v6, v9

    double-to-float v7, v11

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 340
    iget-wide v6, v1, Lorg/mapsforge/core/model/Rectangle;->left:D

    neg-double v6, v6

    double-to-float v6, v6

    iget-wide v13, v1, Lorg/mapsforge/core/model/Rectangle;->top:D

    neg-double v13, v13

    double-to-float v7, v13

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 341
    iget-object v6, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v8, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 342
    .end local v4    # "transform":Landroid/graphics/Matrix;
    move-object/from16 v26, v3

    move-object v7, v5

    move-object/from16 v16, v8

    move-wide/from16 v33, v9

    goto/16 :goto_3

    .line 344
    :cond_5
    move-object v6, v5

    .end local v5    # "shadePaint":Landroid/graphics/Paint;
    .local v6, "shadePaint":Landroid/graphics/Paint;
    iget-wide v4, v1, Lorg/mapsforge/core/model/Rectangle;->left:D

    move-object/from16 v16, v8

    .end local v8    # "hillsBitmap":Landroid/graphics/Bitmap;
    .local v16, "hillsBitmap":Landroid/graphics/Bitmap;
    iget-wide v7, v1, Lorg/mapsforge/core/model/Rectangle;->left:D

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    sub-double/2addr v4, v7

    add-double/2addr v4, v13

    .line 345
    .local v4, "leftRestUnlimited":D
    iget-wide v7, v1, Lorg/mapsforge/core/model/Rectangle;->left:D

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 346
    .local v7, "leftRest":D
    mul-double v18, v9, v7

    .line 348
    .local v18, "leftExtra":D
    iget-wide v13, v1, Lorg/mapsforge/core/model/Rectangle;->right:D

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    add-double v13, v13, v22

    move-wide/from16 v24, v4

    .end local v4    # "leftRestUnlimited":D
    .local v24, "leftRestUnlimited":D
    iget-wide v4, v1, Lorg/mapsforge/core/model/Rectangle;->right:D

    sub-double/2addr v13, v4

    .line 349
    .local v13, "rightRestUnlimited":D
    invoke-interface/range {p1 .. p1}, Lorg/mapsforge/core/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    move-object/from16 v26, v3

    .end local v3    # "temps":Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;
    .local v26, "temps":Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;
    iget-wide v2, v1, Lorg/mapsforge/core/model/Rectangle;->right:D

    sub-double/2addr v4, v2

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 350
    .local v2, "rightRest":D
    mul-double v4, v9, v2

    .line 352
    .local v4, "rightExtra":D
    add-double v27, v4, v18

    move-wide/from16 v29, v4

    .end local v4    # "rightExtra":D
    .local v29, "rightExtra":D
    iget-wide v4, v1, Lorg/mapsforge/core/model/Rectangle;->right:D

    move-wide/from16 v31, v13

    .end local v13    # "rightRestUnlimited":D
    .local v31, "rightRestUnlimited":D
    iget-wide v13, v1, Lorg/mapsforge/core/model/Rectangle;->left:D

    sub-double/2addr v4, v13

    mul-double/2addr v4, v9

    add-double v27, v27, v4

    .line 353
    .local v27, "tempWidthDouble":D
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 356
    .local v4, "tempWidth":I
    iget-wide v13, v1, Lorg/mapsforge/core/model/Rectangle;->top:D

    move-wide/from16 v33, v9

    .end local v9    # "horizontalScale":D
    .local v33, "horizontalScale":D
    iget-wide v9, v1, Lorg/mapsforge/core/model/Rectangle;->top:D

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    sub-double/2addr v13, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v13, v9

    .line 357
    .local v13, "topRestUnlimited":D
    iget-wide v9, v1, Lorg/mapsforge/core/model/Rectangle;->top:D

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    .line 358
    .local v9, "topRest":D
    mul-double v20, v11, v9

    .line 360
    .local v20, "topExtra":D
    move-wide/from16 v35, v13

    .end local v13    # "topRestUnlimited":D
    .local v35, "topRestUnlimited":D
    iget-wide v13, v1, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    add-double v13, v13, v22

    move-object/from16 v22, v6

    .end local v6    # "shadePaint":Landroid/graphics/Paint;
    .local v22, "shadePaint":Landroid/graphics/Paint;
    iget-wide v5, v1, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    sub-double/2addr v13, v5

    .line 361
    .local v13, "bottomRestUnlimited":D
    invoke-interface/range {p1 .. p1}, Lorg/mapsforge/core/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v5, v5

    move-wide/from16 v37, v2

    .end local v2    # "rightRest":D
    .local v37, "rightRest":D
    iget-wide v2, v1, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    sub-double/2addr v5, v2

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 362
    .local v2, "bottomRest":D
    mul-double v5, v11, v2

    .line 364
    .local v5, "bottomExtra":D
    add-double v39, v5, v20

    move-wide/from16 v41, v5

    .end local v5    # "bottomExtra":D
    .local v41, "bottomExtra":D
    iget-wide v5, v1, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    move-wide/from16 v43, v13

    .end local v13    # "bottomRestUnlimited":D
    .local v43, "bottomRestUnlimited":D
    iget-wide v13, v1, Lorg/mapsforge/core/model/Rectangle;->top:D

    sub-double/2addr v5, v13

    mul-double/2addr v5, v11

    add-double v39, v39, v5

    .line 365
    .local v39, "tempHeightDouble":D
    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 367
    .local v5, "tempHeight":I
    iget-wide v13, v1, Lorg/mapsforge/core/model/Rectangle;->left:D

    sub-double/2addr v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v6, v13

    .line 368
    .local v6, "srcLeft":I
    iget-wide v13, v1, Lorg/mapsforge/core/model/Rectangle;->top:D

    sub-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v13, v13

    .line 369
    .local v13, "srcTop":I
    move-wide/from16 v45, v7

    .end local v7    # "leftRest":D
    .local v45, "leftRest":D
    iget-wide v7, v1, Lorg/mapsforge/core/model/Rectangle;->right:D

    add-double v7, v7, v37

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    .line 370
    .local v7, "srcRight":I
    move-wide/from16 v47, v9

    .end local v9    # "topRest":D
    .local v47, "topRest":D
    iget-wide v8, v1, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    add-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    .line 372
    .local v8, "srcBottom":I
    invoke-virtual/range {v26 .. v26}, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->useCanvas()Landroid/graphics/Canvas;

    move-result-object v9

    .line 375
    .local v9, "tempCanvas":Landroid/graphics/Canvas;
    if-nez v6, :cond_6

    if-nez v13, :cond_6

    .line 379
    add-int/lit8 v10, v7, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    invoke-static {v10, v8, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 380
    .local v10, "shiftedTemp":Landroid/graphics/Bitmap;
    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 381
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move-wide/from16 v49, v2

    move-object/from16 v1, v16

    const/4 v2, 0x0

    .end local v2    # "bottomRest":D
    .end local v16    # "hillsBitmap":Landroid/graphics/Bitmap;
    .local v1, "hillsBitmap":Landroid/graphics/Bitmap;
    .local v49, "bottomRest":D
    invoke-virtual {v9, v1, v14, v15, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 384
    move-object v2, v10

    .line 386
    .local v2, "sourceImage":Landroid/graphics/Bitmap;
    add-int/lit8 v6, v6, 0x1

    .line 387
    nop

    .end local v10    # "shiftedTemp":Landroid/graphics/Bitmap;
    add-int/lit8 v7, v7, 0x1

    .line 388
    goto :goto_2

    .line 375
    .end local v1    # "hillsBitmap":Landroid/graphics/Bitmap;
    .end local v49    # "bottomRest":D
    .local v2, "bottomRest":D
    .restart local v16    # "hillsBitmap":Landroid/graphics/Bitmap;
    :cond_6
    move-wide/from16 v49, v2

    move-object/from16 v1, v16

    .line 389
    .end local v2    # "bottomRest":D
    .end local v16    # "hillsBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "hillsBitmap":Landroid/graphics/Bitmap;
    .restart local v49    # "bottomRest":D
    move-object v2, v1

    .line 393
    .local v2, "sourceImage":Landroid/graphics/Bitmap;
    :goto_2
    move-object/from16 v3, v26

    .end local v26    # "temps":Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;
    .restart local v3    # "temps":Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;
    invoke-virtual {v3, v6, v13, v7, v8}, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->useAsr(IIII)Landroid/graphics/Rect;

    move-result-object v10

    .line 399
    .local v10, "asr":Landroid/graphics/Rect;
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v14, v4, v5}, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->useAdr(IIII)Landroid/graphics/Rect;

    move-result-object v14

    .line 406
    .local v14, "adr":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    invoke-virtual {v3, v4, v5, v15}, Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;->useScaleBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 407
    .local v15, "scaleTemp":Landroid/graphics/Bitmap;
    invoke-virtual {v9, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 408
    move-object/from16 v16, v1

    .end local v1    # "hillsBitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "hillsBitmap":Landroid/graphics/Bitmap;
    iget-object v1, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v10, v14, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 411
    iget-object v1, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v17, v2

    move/from16 v23, v4

    move-object/from16 v2, p3

    .end local v2    # "sourceImage":Landroid/graphics/Bitmap;
    .end local v3    # "temps":Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;
    .end local v4    # "tempWidth":I
    .local v17, "sourceImage":Landroid/graphics/Bitmap;
    .local v23, "tempWidth":I
    .restart local v26    # "temps":Lorg/mapsforge/map/android/graphics/AndroidCanvas$HilshadingTemps;
    iget-wide v3, v2, Lorg/mapsforge/core/model/Rectangle;->left:D

    double-to-float v3, v3

    move/from16 v51, v5

    .end local v5    # "tempHeight":I
    .local v51, "tempHeight":I
    iget-wide v4, v2, Lorg/mapsforge/core/model/Rectangle;->top:D

    double-to-float v4, v4

    move/from16 v52, v6

    .end local v6    # "srcLeft":I
    .local v52, "srcLeft":I
    iget-wide v5, v2, Lorg/mapsforge/core/model/Rectangle;->right:D

    double-to-float v5, v5

    move/from16 v53, v7

    .end local v7    # "srcRight":I
    .local v53, "srcRight":I
    iget-wide v6, v2, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    double-to-float v6, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 412
    iget-wide v3, v2, Lorg/mapsforge/core/model/Rectangle;->left:D

    sub-double v3, v3, v18

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v1, v3

    .line 413
    .local v1, "drawOffsetLeft":I
    iget-wide v3, v2, Lorg/mapsforge/core/model/Rectangle;->top:D

    sub-double v3, v3, v20

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    .line 415
    .local v3, "drawOffsetTop":I
    iget-object v4, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    int-to-float v5, v1

    int-to-float v6, v3

    move-object/from16 v7, v22

    .end local v22    # "shadePaint":Landroid/graphics/Paint;
    .local v7, "shadePaint":Landroid/graphics/Paint;
    invoke-virtual {v4, v15, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 417
    .end local v1    # "drawOffsetLeft":I
    .end local v3    # "drawOffsetTop":I
    .end local v8    # "srcBottom":I
    .end local v9    # "tempCanvas":Landroid/graphics/Canvas;
    .end local v10    # "asr":Landroid/graphics/Rect;
    .end local v13    # "srcTop":I
    .end local v14    # "adr":Landroid/graphics/Rect;
    .end local v15    # "scaleTemp":Landroid/graphics/Bitmap;
    .end local v17    # "sourceImage":Landroid/graphics/Bitmap;
    .end local v18    # "leftExtra":D
    .end local v20    # "topExtra":D
    .end local v23    # "tempWidth":I
    .end local v24    # "leftRestUnlimited":D
    .end local v27    # "tempWidthDouble":D
    .end local v29    # "rightExtra":D
    .end local v31    # "rightRestUnlimited":D
    .end local v35    # "topRestUnlimited":D
    .end local v37    # "rightRest":D
    .end local v39    # "tempHeightDouble":D
    .end local v41    # "bottomExtra":D
    .end local v43    # "bottomRestUnlimited":D
    .end local v45    # "leftRest":D
    .end local v47    # "topRest":D
    .end local v49    # "bottomRest":D
    .end local v51    # "tempHeight":I
    .end local v52    # "srcLeft":I
    .end local v53    # "srcRight":I
    :goto_3
    iget-object v1, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 418
    return-void
.end method
