.class public Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;
.super Lorg/mapsforge/map/android/graphics/AndroidBitmap;
.source "AndroidResourceBitmap.java"

# interfaces
.implements Lorg/mapsforge/core/graphics/ResourceBitmap;


# static fields
.field protected static final LOGGER:Ljava/util/logging/Logger;

.field protected static final RESOURCE_BITMAPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static rBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static rInstances:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;->LOGGER:Ljava/util/logging/Logger;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;->RESOURCE_BITMAPS:Ljava/util/Map;

    .line 49
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "hash"    # I

    .line 143
    invoke-direct {p0}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;-><init>()V

    .line 144
    iput p1, p0, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;->hash:I

    .line 145
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;FIIII)V
    .locals 1
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

    .line 148
    invoke-direct {p0, p6}, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;-><init>(I)V

    .line 149
    invoke-static/range {p1 .. p6}, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;->getResourceBitmap(Ljava/io/InputStream;FIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 150
    return-void
.end method

.method public static clearResourceBitmaps()V
    .locals 4

    .line 59
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;->RESOURCE_BITMAPS:Ljava/util/Map;

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 61
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 69
    :cond_0
    sget-object v1, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;->RESOURCE_BITMAPS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getResourceBitmap(Ljava/io/InputStream;FIIII)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "scaleFactor"    # F
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "percent"    # I
    .param p5, "hash"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    sget-object v1, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;->RESOURCE_BITMAPS:Ljava/util/Map;

    monitor-enter v1

    .line 75
    :try_start_0
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 76
    .local v0, "data":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 77
    new-instance v3, Landroid/util/Pair;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 78
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    .line 79
    .local v2, "updated":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    monitor-exit v1

    return-object v3

    .line 82
    .end local v2    # "updated":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    :cond_0
    sget-object v3, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->TRANSPARENT_BITMAP:Landroid/graphics/Bitmap$Config;

    .line 83
    invoke-static {v3}, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;->createBitmapFactoryOptions(Landroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    const/4 v4, 0x0

    move-object v5, p0

    :try_start_1
    invoke-static {p0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 84
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    .line 87
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v6, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v7, v4

    move v8, p1

    move v9, p2

    move v10, p3

    move/from16 v11, p4

    invoke-static/range {v6 .. v11}, Lorg/mapsforge/core/graphics/GraphicUtils;->imageSize(FFFIII)[F

    move-result-object v4

    .line 88
    .local v4, "newSize":[F
    const/4 v6, 0x0

    aget v7, v4, v6

    float-to-int v7, v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v7, v8, :cond_1

    aget v7, v4, v2

    float-to-int v7, v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 89
    :cond_1
    aget v6, v4, v6

    float-to-int v6, v6

    aget v7, v4, v2

    float-to-int v7, v7

    invoke-static {v3, v6, v7, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v3, v6

    .line 90
    :cond_2
    new-instance v6, Landroid/util/Pair;

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v6, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v6

    .line 92
    .restart local v2    # "updated":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    monitor-exit v1

    return-object v3

    .line 85
    .end local v2    # "updated":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    .end local v4    # "newSize":[F
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v4, "BitmapFactory failed to decodeStream"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "scaleFactor":F
    .end local p2    # "width":I
    .end local p3    # "height":I
    .end local p4    # "percent":I
    .end local p5    # "hash":I
    throw v2

    .line 104
    .end local v0    # "data":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "scaleFactor":F
    .restart local p2    # "width":I
    .restart local p3    # "height":I
    .restart local p4    # "percent":I
    .restart local p5    # "hash":I
    :catchall_0
    move-exception v0

    move-object v5, p0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private static removeBitmap(I)Z
    .locals 1
    .param p0, "hash"    # I

    .line 109
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected destroyBitmap()V
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 158
    iget v0, p0, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;->hash:I

    invoke-static {v0}, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;->removeBitmap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidResourceBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 163
    :cond_1
    return-void
.end method
