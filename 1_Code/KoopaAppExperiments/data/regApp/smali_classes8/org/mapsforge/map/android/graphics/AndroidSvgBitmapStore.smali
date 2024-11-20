.class public Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore;
.super Ljava/lang/Object;
.source "AndroidSvgBitmapStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore$SvgStorer;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final SVG_PREFIX:Ljava/lang/String; = "svg-"

.field private static final SVG_SUFFIX:Ljava/lang/String; = ".png"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 44
    invoke-static {p0}, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore;->createFileName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .line 44
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static clear()V
    .locals 5

    .line 78
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->fileList()[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "files":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 80
    .local v3, "file":Ljava/lang/String;
    const-string v4, "svg-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    sget-object v4, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    invoke-virtual {v4, v3}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->deleteFile(Ljava/lang/String;)Z

    .line 79
    .end local v3    # "file":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method

.method private static createFileName(I)Ljava/lang/String;
    .locals 2
    .param p0, "hash"    # I

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "svg-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static get(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "hash"    # I

    .line 92
    invoke-static {p0}, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore;->createFileName(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 95
    .local v1, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    sget-object v2, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    invoke-virtual {v2, v0}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 96
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-static {v1}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 96
    return-object v2

    .line 100
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 101
    throw v2

    .line 97
    :catch_0
    move-exception v2

    .line 100
    invoke-static {v1}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 101
    nop

    .line 102
    const/4 v2, 0x0

    return-object v2
.end method

.method public static put(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "hash"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 107
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore$SvgStorer;

    invoke-direct {v1, p0, p1}, Lorg/mapsforge/map/android/graphics/AndroidSvgBitmapStore$SvgStorer;-><init>(ILandroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 108
    return-void
.end method
