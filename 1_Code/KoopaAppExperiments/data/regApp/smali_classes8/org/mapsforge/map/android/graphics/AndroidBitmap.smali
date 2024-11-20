.class public Lorg/mapsforge/map/android/graphics/AndroidBitmap;
.super Ljava/lang/Object;
.source "AndroidBitmap.java"

# interfaces
.implements Lorg/mapsforge/core/graphics/Bitmap;


# static fields
.field private static final BITMAP_INSTANCES:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final BITMAP_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/map/android/graphics/AndroidBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final REUSABLE_BITMAPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected bitmap:Landroid/graphics/Bitmap;

.field private refCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->LOGGER:Ljava/util/logging/Logger;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->REUSABLE_BITMAPS:Ljava/util/Set;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->BITMAP_LIST:Ljava/util/List;

    .line 51
    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->BITMAP_INSTANCES:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 75
    return-void
.end method

.method constructor <init>(IILandroid/graphics/Bitmap$Config;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 86
    invoke-direct {p0}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;-><init>()V

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->getBitmapFromReusableSet(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 88
    if-nez v0, :cond_0

    .line 89
    invoke-static {p1, p2, p3}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->createAndroidBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 91
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 78
    invoke-direct {p0}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iput-object p1, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 83
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is already recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static createAndroidBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .line 56
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected static final createBitmapFactoryOptions(Landroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "config"    # Landroid/graphics/Bitmap$Config;

    .line 60
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 61
    .local v0, "bitmapFactoryOptions":Landroid/graphics/BitmapFactory$Options;
    iput-object p0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 62
    return-object v0
.end method


# virtual methods
.method protected final canUseBitmap(Landroid/graphics/Bitmap;II)Z
    .locals 1
    .param p1, "candidate"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 165
    const/4 v0, 0x1

    return v0

    .line 167
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public compress(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->bitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to write bitmap to output stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decrementRefCount()V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->destroy()V

    .line 105
    :cond_0
    return-void
.end method

.method protected destroy()V
    .locals 0

    .line 182
    invoke-virtual {p0}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->destroyBitmap()V

    .line 183
    return-void
.end method

.method protected destroyBitmap()V
    .locals 3

    .line 187
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 188
    nop

    .line 189
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->REUSABLE_BITMAPS:Ljava/util/Set;

    monitor-enter v0

    .line 190
    :try_start_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 197
    :cond_0
    :goto_0
    return-void
.end method

.method protected final getBitmapFromReusableSet(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "result":Landroid/graphics/Bitmap;
    sget-object v1, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->REUSABLE_BITMAPS:Ljava/util/Set;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 203
    monitor-enter v1

    .line 204
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 207
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 209
    .local v3, "candidate":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    invoke-virtual {p0, v3, p1, p2}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->canUseBitmap(Landroid/graphics/Bitmap;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    move-object v0, v3

    .line 214
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 215
    goto :goto_1

    .line 219
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 222
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    .end local v3    # "candidate":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 224
    :cond_3
    :goto_2
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public incrementRefCount()V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 120
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public scaleTo(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 129
    invoke-virtual {p0}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    .local v0, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->destroy()V

    .line 138
    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 140
    .end local v0    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 144
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 150
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v0, " has alpha"

    .local v0, "info":Ljava/lang/String;
    goto :goto_0

    .line 154
    .end local v0    # "info":Ljava/lang/String;
    :cond_0
    const-string v0, " no alpha"

    .restart local v0    # "info":Ljava/lang/String;
    goto :goto_0

    .line 157
    .end local v0    # "info":Ljava/lang/String;
    :cond_1
    const-string v0, " is recycled"

    .line 159
    .restart local v0    # "info":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidBitmap;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
