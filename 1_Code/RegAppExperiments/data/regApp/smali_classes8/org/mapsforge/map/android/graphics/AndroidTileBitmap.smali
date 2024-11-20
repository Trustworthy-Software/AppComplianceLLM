.class public Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;
.super Lorg/mapsforge/map/android/graphics/AndroidBitmap;
.source "AndroidTileBitmap.java"

# interfaces
.implements Lorg/mapsforge/core/graphics/TileBitmap;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static reusableTileBitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static tileInstances:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private expiration:J

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->LOGGER:Ljava/util/logging/Logger;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->reusableTileBitmaps:Ljava/util/Map;

    .line 60
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 2
    .param p1, "tileSize"    # I
    .param p2, "isTransparent"    # Z

    .line 136
    invoke-direct {p0}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;-><init>()V

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->expiration:J

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->timestamp:J

    .line 137
    nop

    .line 138
    invoke-static {p1, p2}, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->getTileBitmapFromReusableSet(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 140
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 141
    if-eqz p2, :cond_0

    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->TRANSPARENT_BITMAP:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->NON_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap$Config;

    .line 143
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {p1, p1, v0}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->createAndroidBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 148
    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    :cond_1
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "tileSize"    # I
    .param p3, "isTransparent"    # Z

    .line 109
    invoke-direct {p0}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;-><init>()V

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->expiration:J

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->timestamp:J

    .line 114
    nop

    .line 115
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->createTileBitmapFactoryOptions(IZ)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 114
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 121
    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    nop

    .line 132
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TILEBITMAP ERROR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 127
    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 128
    invoke-static {p1}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 129
    invoke-virtual {p0}, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->destroy()V

    .line 130
    new-instance v0, Lorg/mapsforge/core/graphics/CorruptedInputStreamException;

    const-string v2, "Corrupted bitmap input stream"

    invoke-direct {v0, v2, v1}, Lorg/mapsforge/core/graphics/CorruptedInputStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static composeHash(IZ)I
    .locals 1
    .param p0, "tileSize"    # I
    .param p1, "isTransparent"    # Z

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const/high16 v0, 0x10000000

    add-int/2addr v0, p0

    return v0

    .line 66
    :cond_0
    return p0
.end method

.method private createTileBitmapFactoryOptions(IZ)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p1, "tileSize"    # I
    .param p2, "isTransparent"    # Z

    .line 208
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 209
    .local v0, "bitmapFactoryOptions":Landroid/graphics/BitmapFactory$Options;
    if-eqz p2, :cond_0

    .line 210
    sget-object v1, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->TRANSPARENT_BITMAP:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 212
    :cond_0
    sget-object v1, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->NON_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 214
    :goto_0
    nop

    .line 215
    invoke-static {p1, p2}, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->getTileBitmapFromReusableSet(IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 216
    .local v1, "reusableBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 217
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 218
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 220
    invoke-static {p1, p2}, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->getTileBitmapFromReusableSet(IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 223
    .end local v1    # "reusableBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v0
.end method

.method private static getTileBitmapFromReusableSet(IZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "tileSize"    # I
    .param p1, "isTransparent"    # Z

    .line 70
    invoke-static {p0, p1}, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->composeHash(IZ)I

    move-result v0

    .line 72
    .local v0, "hash":I
    sget-object v1, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->reusableTileBitmaps:Ljava/util/Map;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v2, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->reusableTileBitmaps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 74
    .local v2, "subSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    if-nez v2, :cond_0

    .line 75
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    .line 77
    :cond_0
    const/4 v3, 0x0

    .line 78
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 80
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 82
    .local v5, "candidate":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 83
    move-object v3, v5

    .line 84
    if-eqz p1, :cond_1

    .line 85
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 88
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 89
    goto :goto_1

    .line 92
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 95
    .end local v5    # "candidate":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    monitor-exit v1

    return-object v3

    .line 96
    .end local v2    # "subSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method protected destroy()V
    .locals 0

    .line 174
    invoke-super {p0}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->destroy()V

    .line 179
    return-void
.end method

.method protected destroyBitmap()V
    .locals 6

    .line 184
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 186
    nop

    .line 187
    invoke-virtual {p0}, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->getHeight()I

    move-result v0

    .line 188
    .local v0, "tileSize":I
    sget-object v1, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->reusableTileBitmaps:Ljava/util/Map;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    invoke-static {v0, v2}, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->composeHash(IZ)I

    move-result v2

    .line 190
    .local v2, "hash":I
    sget-object v3, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->reusableTileBitmaps:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    sget-object v3, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->reusableTileBitmaps:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    sget-object v3, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->reusableTileBitmaps:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 197
    .local v3, "sizeSpecificSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    new-instance v4, Ljava/lang/ref/SoftReference;

    iget-object v5, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    nop

    .end local v2    # "hash":I
    .end local v3    # "sizeSpecificSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v0    # "tileSize":I
    nop

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 198
    .restart local v0    # "tileSize":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 204
    .end local v0    # "tileSize":I
    :cond_1
    :goto_0
    return-void
.end method

.method public getTimestamp()J
    .locals 2

    .line 152
    iget-wide v0, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->timestamp:J

    return-wide v0
.end method

.method public isExpired()Z
    .locals 6

    .line 157
    iget-wide v0, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->expiration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 158
    return v3

    .line 159
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public setExpiration(J)V
    .locals 0
    .param p1, "expiration"    # J

    .line 164
    iput-wide p1, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->expiration:J

    .line 165
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 169
    iput-wide p1, p0, Lorg/mapsforge/map/android/graphics/AndroidTileBitmap;->timestamp:J

    .line 170
    return-void
.end method
