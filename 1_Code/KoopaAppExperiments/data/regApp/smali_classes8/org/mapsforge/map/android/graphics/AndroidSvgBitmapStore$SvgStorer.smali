.class Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore$SvgStorer;
.super Ljava/lang/Object;
.source "AndroidSvgBitmapStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvgStorer"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private hash:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "hash"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore$SvgStorer;->hash:I

    .line 55
    iput-object p2, p0, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore$SvgStorer;->bitmap:Landroid/graphics/Bitmap;

    .line 56
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 60
    iget v0, p0, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore$SvgStorer;->hash:I

    invoke-static {v0}, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore;->access$000(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 63
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v2, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 64
    iget-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore$SvgStorer;->bitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v4, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-static {}, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SVG Failed to write svg bitmap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    :goto_0
    invoke-static {v1}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
    goto :goto_1

    .line 72
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-static {}, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore;->access$100()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SVG Failed to create file for svg bitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 67
    :catch_1
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-static {}, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore;->access$100()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SVG Failed to stream bitmap to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 74
    :goto_1
    return-void

    .line 72
    :goto_2
    invoke-static {v1}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
    throw v2
.end method
