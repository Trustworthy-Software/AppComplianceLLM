.class public Lorg/mapsforge/map/android/graphics/AndroidSvgBitmap;
.super Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;
.source "AndroidSvgBitmap.java"


# static fields
.field public static DEFAULT_SIZE:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/high16 v0, 0x43c80000    # 400.0f

    sput v0, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmap;->DEFAULT_SIZE:F

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IFIII)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "hash"    # I
    .param p3, "scaleFactor"    # F
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "percent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-direct {p0, p2}, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;-><init>(I)V

    .line 94
    invoke-static/range {p1 .. p6}, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmap;->getResourceBitmapImpl(Ljava/io/InputStream;IFIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 95
    return-void
.end method

.method public static getResourceBitmap(Ljava/io/InputStream;FFIII)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "scaleFactor"    # F
    .param p2, "defaultSize"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "percent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    :try_start_0
    invoke-static {p0}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v0

    .line 43
    .local v0, "svg":Lcom/caverock/androidsvg/SVG;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    .local v1, "picture":Landroid/graphics/Picture;
    move v2, p1

    float-to-double v3, v2

    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Picture;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, p2

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    .line 47
    .local v3, "scale":D
    invoke-virtual {v1}, Landroid/graphics/Picture;->getWidth()I

    move-result v5

    int-to-float v6, v5

    invoke-virtual {v1}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v7, v5

    double-to-float v8, v3

    move v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-static/range {v6 .. v11}, Lorg/mapsforge/core/graphics/GraphicUtils;->imageSize(FFFIII)[F

    move-result-object v5

    .line 49
    .local v5, "bmpSize":[F
    const/4 v6, 0x0

    aget v7, v5, v6

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    const/4 v8, 0x1

    aget v9, v5, v8

    float-to-double v9, v9

    .line 50
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    sget-object v10, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->TRANSPARENT_BITMAP:Landroid/graphics/Bitmap$Config;

    .line 49
    invoke-static {v7, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 51
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    .local v9, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/RectF;

    aget v6, v5, v6

    aget v8, v5, v8

    const/4 v11, 0x0

    invoke-direct {v10, v11, v11, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v9, v1, v10}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    return-object v7

    .line 55
    .end local v0    # "svg":Lcom/caverock/androidsvg/SVG;
    .end local v1    # "picture":Landroid/graphics/Picture;
    .end local v3    # "scale":D
    .end local v5    # "bmpSize":[F
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v2, p1

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getResourceBitmapImpl(Ljava/io/InputStream;IFIII)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "hash"    # I
    .param p2, "scaleFactor"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "percent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmap;->RESOURCE_BITMAPS:Ljava/util/Map;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmap;->RESOURCE_BITMAPS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 63
    .local v1, "data":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 64
    new-instance v3, Landroid/util/Pair;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    .line 65
    .local v2, "updated":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    sget-object v3, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmap;->RESOURCE_BITMAPS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object v3

    .line 69
    .end local v2    # "updated":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    :cond_0
    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore;->get(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 71
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 72
    sget v6, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmap;->DEFAULT_SIZE:F

    move-object v4, p0

    move v5, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-static/range {v4 .. v9}, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmap;->getResourceBitmap(Ljava/io/InputStream;FFIII)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v3, v4

    .line 75
    invoke-static {p1, v3}, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore;->put(ILandroid/graphics/Bitmap;)V

    .line 79
    :cond_1
    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v4

    .line 80
    .restart local v2    # "updated":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    sget-object v4, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmap;->RESOURCE_BITMAPS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    monitor-exit v0

    return-object v3

    .line 89
    .end local v1    # "data":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    .end local v2    # "updated":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
