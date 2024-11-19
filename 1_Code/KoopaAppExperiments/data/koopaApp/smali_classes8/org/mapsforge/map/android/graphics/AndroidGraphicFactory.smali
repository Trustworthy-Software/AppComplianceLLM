.class public final Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;
.super Ljava/lang/Object;
.source "AndroidGraphicFactory.java"

# interfaces
.implements Lorg/mapsforge/core/graphics/GraphicFactory;


# static fields
.field public static final DEBUG_BITMAPS:Z = false

.field public static INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory; = null

.field public static final KEEP_RESOURCE_BITMAPS:Z = true

.field public static final MONO_ALPHA_BITMAP:Landroid/graphics/Bitmap$Config;

.field public static final NON_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap$Config;

.field public static final TRANSPARENT_BITMAP:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final application:Landroid/app/Application;

.field private svgCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;-><init>(Landroid/app/Application;)V

    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    .line 68
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->NON_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap$Config;

    .line 76
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->TRANSPARENT_BITMAP:Landroid/graphics/Bitmap$Config;

    .line 79
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->MONO_ALPHA_BITMAP:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->application:Landroid/app/Application;

    .line 182
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {v0}, Lorg/mapsforge/map/model/DisplayModel;->setDeviceScaleFactor(F)V

    .line 186
    :cond_0
    return-void
.end method

.method public static clearResourceFileCache()V
    .locals 0

    .line 189
    invoke-static {}, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore;->clear()V

    .line 190
    return-void
.end method

.method public static clearResourceMemoryCache()V
    .locals 0

    .line 193
    invoke-static {}, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;->clearResourceBitmaps()V

    .line 194
    return-void
.end method

.method public static convertToAndroidBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 83
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 84
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 86
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 87
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 88
    .local v1, "height":I
    sget-object v2, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->TRANSPARENT_BITMAP:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 89
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 92
    .local v4, "rect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object v0, v2

    .line 97
    .end local v1    # "height":I
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "rect":Landroid/graphics/Rect;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0
.end method

.method public static convertToBitmap(Landroid/graphics/drawable/Drawable;)Lorg/mapsforge/core/graphics/Bitmap;
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 101
    new-instance v0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;

    invoke-static {p0}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->convertToAndroidBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static convertToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)Lorg/mapsforge/core/graphics/Bitmap;
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 105
    invoke-static {p0}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->convertToAndroidBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .local v0, "immutable":Landroid/graphics/Bitmap;
    sget-object v1, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->TRANSPARENT_BITMAP:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 107
    .local v1, "mutable":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 111
    new-instance v3, Lorg/mapsforge/map/android/graphics/AndroidBitmap;

    invoke-direct {v3, v1}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;-><init>(Landroid/graphics/Bitmap;)V

    return-object v3
.end method

.method public static createGraphicContext(Landroid/graphics/Canvas;)Lorg/mapsforge/core/graphics/Canvas;
    .locals 1
    .param p0, "canvas"    # Landroid/graphics/Canvas;

    .line 115
    new-instance v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;

    invoke-direct {v0, p0}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;-><init>(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static createInstance(Landroid/app/Application;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;

    .line 119
    new-instance v0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    invoke-direct {v0, p0}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;-><init>(Landroid/app/Application;)V

    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    .line 120
    return-void
.end method

.method public static getBitmap(Lorg/mapsforge/core/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Lorg/mapsforge/core/graphics/Bitmap;

    .line 147
    move-object v0, p0

    check-cast v0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;

    iget-object v0, v0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
    .locals 2
    .param p0, "config"    # Landroid/graphics/Bitmap$Config;

    .line 126
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_0

    .line 127
    const/4 v0, 0x4

    return v0

    .line 128
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x2

    if-ne p0, v0, :cond_1

    .line 129
    return v1

    .line 130
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_2

    .line 131
    return v1

    .line 132
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public static getCanvas(Lorg/mapsforge/core/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 1
    .param p0, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;

    .line 139
    move-object v0, p0

    check-cast v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;

    iget-object v0, v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static getColor(Lorg/mapsforge/core/graphics/Color;)I
    .locals 3
    .param p0, "color"    # Lorg/mapsforge/core/graphics/Color;

    .line 151
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory$1;->$SwitchMap$org$mapsforge$core$graphics$Color:[I

    invoke-virtual {p0}, Lorg/mapsforge/core/graphics/Color;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 161
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 159
    :pswitch_2
    const/high16 v0, -0x10000

    return v0

    .line 157
    :pswitch_3
    const v0, -0xff0100

    return v0

    .line 155
    :pswitch_4
    const v0, -0xffff01

    return v0

    .line 153
    :pswitch_5
    const/high16 v0, -0x1000000

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getMatrix(Lorg/mapsforge/core/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "matrix"    # Lorg/mapsforge/core/graphics/Matrix;

    .line 170
    move-object v0, p0

    check-cast v0, Lorg/mapsforge/map/android/graphics/AndroidMatrix;

    iget-object v0, v0, Lorg/mapsforge/map/android/graphics/AndroidMatrix;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static getPaint(Lorg/mapsforge/core/graphics/Paint;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "paint"    # Lorg/mapsforge/core/graphics/Paint;

    .line 143
    move-object v0, p0

    check-cast v0, Lorg/mapsforge/map/android/graphics/AndroidPaint;

    iget-object v0, v0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static getPath(Lorg/mapsforge/core/graphics/Path;)Landroid/graphics/Path;
    .locals 1
    .param p0, "path"    # Lorg/mapsforge/core/graphics/Path;

    .line 174
    move-object v0, p0

    check-cast v0, Lorg/mapsforge/map/android/graphics/AndroidPath;

    iget-object v0, v0, Lorg/mapsforge/map/android/graphics/AndroidPath;->path:Landroid/graphics/Path;

    return-object v0
.end method


# virtual methods
.method public createBitmap(II)Lorg/mapsforge/core/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 198
    new-instance v0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;

    sget-object v1, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->TRANSPARENT_BITMAP:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p1, p2, v1}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;-><init>(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method public createBitmap(IIZ)Lorg/mapsforge/core/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isTransparent"    # Z

    .line 203
    if-eqz p3, :cond_0

    .line 204
    new-instance v0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;

    sget-object v1, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->TRANSPARENT_BITMAP:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p1, p2, v1}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;-><init>(IILandroid/graphics/Bitmap$Config;)V

    return-object v0

    .line 206
    :cond_0
    new-instance v0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;

    sget-object v1, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->NON_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p1, p2, v1}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;-><init>(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method public createCanvas()Lorg/mapsforge/core/graphics/Canvas;
    .locals 1

    .line 211
    new-instance v0, Lorg/mapsforge/map/android/graphics/AndroidCanvas;

    invoke-direct {v0}, Lorg/mapsforge/map/android/graphics/AndroidCanvas;-><init>()V

    return-object v0
.end method

.method public createColor(IIII)I
    .locals 1
    .param p1, "alpha"    # I
    .param p2, "red"    # I
    .param p3, "green"    # I
    .param p4, "blue"    # I

    .line 221
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public createColor(Lorg/mapsforge/core/graphics/Color;)I
    .locals 1
    .param p1, "color"    # Lorg/mapsforge/core/graphics/Color;

    .line 216
    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getColor(Lorg/mapsforge/core/graphics/Color;)I

    move-result v0

    return v0
.end method

.method public createMatrix()Lorg/mapsforge/core/graphics/Matrix;
    .locals 1

    .line 226
    new-instance v0, Lorg/mapsforge/map/android/graphics/AndroidMatrix;

    invoke-direct {v0}, Lorg/mapsforge/map/android/graphics/AndroidMatrix;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createMonoBitmap(II[BILorg/mapsforge/core/model/BoundingBox;)Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .locals 0

    .line 55
    invoke-virtual/range {p0 .. p5}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->createMonoBitmap(II[BILorg/mapsforge/core/model/BoundingBox;)Lorg/mapsforge/map/android/graphics/AndroidHillshadingBitmap;

    move-result-object p1

    return-object p1
.end method

.method public createMonoBitmap(II[BILorg/mapsforge/core/model/BoundingBox;)Lorg/mapsforge/map/android/graphics/AndroidHillshadingBitmap;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "buffer"    # [B
    .param p4, "padding"    # I
    .param p5, "area"    # Lorg/mapsforge/core/model/BoundingBox;

    .line 231
    new-instance v0, Lorg/mapsforge/map/android/graphics/AndroidHillshadingBitmap;

    mul-int/lit8 v1, p4, 0x2

    add-int/2addr v1, p1

    mul-int/lit8 v2, p4, 0x2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v2, p4, p5}, Lorg/mapsforge/map/android/graphics/AndroidHillshadingBitmap;-><init>(IIILorg/mapsforge/core/model/BoundingBox;)V

    .line 232
    .local v0, "androidBitmap":Lorg/mapsforge/map/android/graphics/AndroidHillshadingBitmap;
    if-eqz p3, :cond_0

    .line 233
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 234
    .local v1, "b":Ljava/nio/Buffer;
    iget-object v2, v0, Lorg/mapsforge/map/android/graphics/AndroidHillshadingBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 236
    .end local v1    # "b":Ljava/nio/Buffer;
    :cond_0
    return-object v0
.end method

.method public createPaint()Lorg/mapsforge/core/graphics/Paint;
    .locals 1

    .line 241
    new-instance v0, Lorg/mapsforge/map/android/graphics/AndroidPaint;

    invoke-direct {v0}, Lorg/mapsforge/map/android/graphics/AndroidPaint;-><init>()V

    return-object v0
.end method

.method public createPaint(Lorg/mapsforge/core/graphics/Paint;)Lorg/mapsforge/core/graphics/Paint;
    .locals 1
    .param p1, "paint"    # Lorg/mapsforge/core/graphics/Paint;

    .line 246
    new-instance v0, Lorg/mapsforge/map/android/graphics/AndroidPaint;

    invoke-direct {v0, p1}, Lorg/mapsforge/map/android/graphics/AndroidPaint;-><init>(Lorg/mapsforge/core/graphics/Paint;)V

    return-object v0
.end method

.method public createPath()Lorg/mapsforge/core/graphics/Path;
    .locals 1

    .line 252
    new-instance v0, Lorg/mapsforge/map/android/graphics/AndroidPath;

    invoke-direct {v0}, Lorg/mapsforge/map/android/graphics/AndroidPath;-><init>()V

    return-object v0
.end method

.method public createPointTextContainer(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/mapelements/SymbolContainer;Lorg/mapsforge/core/graphics/Position;I)Lorg/mapsforge/core/mapelements/PointTextContainer;
    .locals 11
    .param p1, "xy"    # Lorg/mapsforge/core/model/Point;
    .param p2, "display"    # Lorg/mapsforge/core/graphics/Display;
    .param p3, "priority"    # I
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "paintFront"    # Lorg/mapsforge/core/graphics/Paint;
    .param p6, "paintBack"    # Lorg/mapsforge/core/graphics/Paint;
    .param p7, "symbolContainer"    # Lorg/mapsforge/core/mapelements/SymbolContainer;
    .param p8, "position"    # Lorg/mapsforge/core/graphics/Position;
    .param p9, "maxTextWidth"    # I

    .line 258
    new-instance v10, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lorg/mapsforge/map/android/graphics/AndroidPointTextContainer;-><init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/mapelements/SymbolContainer;Lorg/mapsforge/core/graphics/Position;I)V

    return-object v10
.end method

.method public createResourceBitmap(Ljava/io/InputStream;FIIII)Lorg/mapsforge/core/graphics/ResourceBitmap;
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "scaleFactor"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "percent"    # I
    .param p6, "hash"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    new-instance v7, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;-><init>(Ljava/io/InputStream;FIIII)V

    return-object v7
.end method

.method public createTileBitmap(IZ)Lorg/mapsforge/core/graphics/TileBitmap;
    .locals 1
    .param p1, "tileSize"    # I
    .param p2, "isTransparent"    # Z

    .line 273
    new-instance v0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;

    invoke-direct {v0, p1, p2}, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;-><init>(IZ)V

    return-object v0
.end method

.method public createTileBitmap(Ljava/io/InputStream;IZ)Lorg/mapsforge/core/graphics/TileBitmap;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "tileSize"    # I
    .param p3, "isTransparent"    # Z

    .line 268
    new-instance v0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;

    invoke-direct {v0, p1, p2, p3}, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;-><init>(Ljava/io/InputStream;IZ)V

    return-object v0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->svgCacheDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->svgCacheDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->application:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fileList()[Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->svgCacheDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->fileList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->svgCacheDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->svgCacheDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 304
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->application:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->svgCacheDir:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 312
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->svgCacheDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const v2, 0x8000

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0

    .line 314
    :cond_1
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->application:Landroid/app/Application;

    invoke-virtual {v0, p1, p2}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public platformSpecificSources(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "relativePathPrefix"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "pathName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public renderSvg(Ljava/io/InputStream;FIIII)Lorg/mapsforge/core/graphics/ResourceBitmap;
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "scaleFactor"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "percent"    # I
    .param p6, "hash"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    new-instance v7, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmap;

    move-object v0, v7

    move-object v1, p1

    move v2, p6

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmap;-><init>(Ljava/io/InputStream;IFIII)V

    return-object v7
.end method

.method public setSvgCacheDir(Ljava/io/File;)V
    .locals 0
    .param p1, "svgCacheDir"    # Ljava/io/File;

    .line 334
    iput-object p1, p0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->svgCacheDir:Ljava/io/File;

    .line 335
    return-void
.end method
