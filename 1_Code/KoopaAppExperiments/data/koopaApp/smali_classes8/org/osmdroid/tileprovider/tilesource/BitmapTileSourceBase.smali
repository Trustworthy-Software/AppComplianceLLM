.class public abstract Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;
.super Ljava/lang/Object;
.source "BitmapTileSourceBase.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/tilesource/ITileSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
    }
.end annotation


# static fields
.field private static globalOrdinal:I


# instance fields
.field protected mCopyright:Ljava/lang/String;

.field protected final mImageFilenameEnding:Ljava/lang/String;

.field private final mMaximumZoomLevel:I

.field private final mMinimumZoomLevel:I

.field protected mName:Ljava/lang/String;

.field private final mOrdinal:I

.field private final mTileSizePixels:I

.field protected final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput v0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->globalOrdinal:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aZoomMinLevel"    # I
    .param p3, "aZoomMaxLevel"    # I
    .param p4, "aTileSizePixels"    # I
    .param p5, "aImageFilenameEnding"    # Ljava/lang/String;

    .line 48
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aZoomMinLevel"    # I
    .param p3, "aZoomMaxLevel"    # I
    .param p4, "aTileSizePixels"    # I
    .param p5, "aImageFilenameEnding"    # Ljava/lang/String;
    .param p6, "aCopyrightNotice"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->random:Ljava/util/Random;

    .line 63
    sget v0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->globalOrdinal:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->globalOrdinal:I

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mOrdinal:I

    .line 64
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mName:Ljava/lang/String;

    .line 65
    iput p2, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mMinimumZoomLevel:I

    .line 66
    iput p3, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mMaximumZoomLevel:I

    .line 67
    iput p4, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mTileSizePixels:I

    .line 68
    iput-object p5, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mImageFilenameEnding:Ljava/lang/String;

    .line 69
    iput-object p6, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mCopyright:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public getCopyrightNotice()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mCopyright:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "aFileInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
        }
    .end annotation

    .line 183
    const-string v0, "OsmDroid"

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mTileSizePixels:I

    .line 184
    .local v2, "realSize":I
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    const/high16 v3, 0x100000

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 186
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 187
    .local v3, "optSize":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 188
    invoke-static {p1, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 189
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v2, v4

    .line 191
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 197
    .end local v3    # "optSize":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 198
    .local v3, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v2}, Lorg/osmdroid/tileprovider/BitmapPool;->applyReusableOptions(Landroid/graphics/BitmapFactory$Options;II)V

    .line 200
    invoke-static {p1, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 201
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    .line 202
    new-instance v5, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-direct {v5, v4}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 210
    .end local v2    # "realSize":I
    .end local v3    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    goto :goto_0

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#547 Error loading bitmap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->pathBase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 204
    :catch_1
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "OutOfMemoryError loading bitmap"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 207
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;

    invoke-direct {v0, v1}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "aFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
        }
    .end annotation

    .line 119
    const-string v0, "OsmDroid"

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 120
    .local v2, "optSize":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 121
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 122
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 126
    .local v3, "realSize":I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 127
    .local v4, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v3}, Lorg/osmdroid/tileprovider/BitmapPool;->applyReusableOptions(Landroid/graphics/BitmapFactory$Options;II)V

    .line 131
    nop

    .line 134
    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 135
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 136
    new-instance v6, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-direct {v6, v5}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v6

    .line 138
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v6, "bmp":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is an invalid image file, deleting..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    goto :goto_0

    .line 144
    :catchall_0
    move-exception v7

    .line 145
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error deleting invalid file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    nop

    .end local v7    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 148
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Request tile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 158
    .end local v2    # "optSize":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "realSize":I
    .end local v4    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bmp":Ljava/io/File;
    :goto_0
    goto :goto_1

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error loading bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    sget v0, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/2addr v0, v1

    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    .line 157
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 159
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 150
    :catch_1
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError loading bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 153
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;

    invoke-direct {v0, v1}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    .line 98
    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mMaximumZoomLevel:I

    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mMinimumZoomLevel:I

    return v0
.end method

.method public getTileRelativeFilenameString(J)Ljava/lang/String;
    .locals 3
    .param p1, "pMapTileIndex"    # J

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->pathBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->imageFilenameEnding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTileSizePixels()I
    .locals 1

    .line 103
    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mTileSizePixels:I

    return v0
.end method

.method public imageFilenameEnding()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mImageFilenameEnding:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public ordinal()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mOrdinal:I

    return v0
.end method

.method public pathBase()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
