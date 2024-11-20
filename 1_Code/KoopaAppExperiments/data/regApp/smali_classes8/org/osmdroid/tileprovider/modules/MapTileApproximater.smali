.class public Lorg/osmdroid/tileprovider/modules/MapTileApproximater;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
.source "MapTileApproximater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;
    }
.end annotation


# instance fields
.field private final mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;",
            ">;"
        }
    .end annotation
.end field

.field private minZoomLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    nop

    .line 40
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemThreads()S

    move-result v0

    .line 41
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemMaxQueueSize()S

    move-result v1

    .line 39
    invoke-direct {p0, v0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;-><init>(II)V

    .line 42
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "pThreadPoolSize"    # I
    .param p2, "pPendingQueueSize"    # I

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;-><init>(II)V

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->mProviders:Ljava/util/List;

    .line 49
    return-void
.end method

.method public static approximateTileFromLowerZoom(Landroid/graphics/drawable/BitmapDrawable;JI)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "pSrcDrawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p1, "pMapTileIndex"    # J
    .param p3, "pZoomDiff"    # I

    .line 207
    move-object v1, p0

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    .line 208
    return-object v0

    .line 210
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 211
    .local v2, "tileSizePixels":I
    invoke-static {v2}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->getTileBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 212
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 213
    .local v4, "canvas":Landroid/graphics/Canvas;
    instance-of v5, v1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    .line 214
    .local v5, "isReusable":Z
    if-eqz v5, :cond_1

    .line 215
    move-object v6, v1

    check-cast v6, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    goto :goto_0

    :cond_1
    move-object v6, v0

    .line 216
    .local v6, "reusableBitmapDrawable":Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
    :goto_0
    const/4 v7, 0x0

    .line 217
    .local v7, "success":Z
    if-eqz v5, :cond_2

    .line 218
    invoke-virtual {v6}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->beginUsingDrawable()V

    .line 221
    :cond_2
    if-eqz v5, :cond_3

    :try_start_0
    invoke-virtual {v6}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->isBitmapValid()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1

    .line 235
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 222
    :cond_3
    :goto_1
    shr-int v8, v2, p3

    .line 223
    .local v8, "srcSize":I
    if-nez v8, :cond_4

    .line 224
    const/4 v7, 0x0

    goto :goto_2

    .line 226
    :cond_4
    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v9

    const/4 v10, 0x1

    shl-int v11, v10, p3

    rem-int/2addr v9, v11

    mul-int/2addr v9, v8

    .line 227
    .local v9, "srcX":I
    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v11

    shl-int v10, v10, p3

    rem-int/2addr v11, v10

    mul-int/2addr v11, v8

    .line 228
    .local v11, "srcY":I
    new-instance v10, Landroid/graphics/Rect;

    add-int v12, v9, v8

    add-int v13, v11, v8

    invoke-direct {v10, v9, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 229
    .local v10, "srcRect":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    invoke-direct {v12, v13, v13, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 230
    .local v12, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v4, v13, v10, v12, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    const/4 v7, 0x1

    .line 235
    .end local v8    # "srcSize":I
    .end local v9    # "srcX":I
    .end local v10    # "srcRect":Landroid/graphics/Rect;
    .end local v11    # "srcY":I
    .end local v12    # "dstRect":Landroid/graphics/Rect;
    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    .line 236
    invoke-virtual {v6}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    .line 238
    :cond_6
    if-nez v7, :cond_7

    .line 239
    return-object v0

    .line 241
    :cond_7
    return-object v3

    .line 235
    :goto_3
    if-eqz v5, :cond_8

    .line 236
    invoke-virtual {v6}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    .line 237
    :cond_8
    throw v0
.end method

.method public static approximateTileFromLowerZoom(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;JI)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "pProvider"    # Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .param p1, "pMapTileIndex"    # J
    .param p3, "pZoomDiff"    # I

    .line 171
    const/4 v0, 0x0

    if-gtz p3, :cond_0

    .line 172
    return-object v0

    .line 174
    :cond_0
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v1

    sub-int/2addr v1, p3

    .line 175
    .local v1, "srcZoomLevel":I
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 176
    return-object v0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 179
    return-object v0

    .line 181
    :cond_2
    nop

    .line 182
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v2

    shr-int/2addr v2, p3

    .line 183
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v3

    shr-int/2addr v3, p3

    .line 181
    invoke-static {v1, v2, v3}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v2

    .line 185
    .local v2, "srcTile":J
    :try_start_0
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->loadTileIfReachable(J)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 186
    .local v4, "srcDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v5, :cond_3

    .line 187
    return-object v0

    .line 189
    :cond_3
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v5, p1, p2, p3}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->approximateTileFromLowerZoom(Landroid/graphics/drawable/BitmapDrawable;JI)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 190
    .end local v4    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    .line 191
    .local v4, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private computeZoomLevels()V
    .locals 5

    .line 60
    const/4 v0, 0x1

    .line 61
    .local v0, "first":Z
    const/4 v1, 0x0

    iput v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->minZoomLevel:I

    .line 62
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->mProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 63
    .local v2, "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v3

    .line 65
    .local v3, "otherMin":I
    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 67
    iput v3, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->minZoomLevel:I

    goto :goto_1

    .line 69
    :cond_0
    iget v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->minZoomLevel:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->minZoomLevel:I

    .line 71
    .end local v2    # "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .end local v3    # "otherMin":I
    :goto_1
    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method public static getTileBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "pTileSizePx"    # I

    .line 248
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lorg/osmdroid/tileprovider/BitmapPool;->obtainSizedBitmapFromPool(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 250
    nop

    .line 252
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 255
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 256
    return-object v0

    .line 258
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V
    .locals 1
    .param p1, "pProvider"    # Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 55
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->mProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->computeZoomLevels()V

    .line 57
    return-void
.end method

.method public approximateTileFromLowerZoom(J)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "pMapTileIndex"    # J

    .line 132
    const/4 v0, 0x1

    .local v0, "zoomDiff":I
    :goto_0
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v1

    sub-int/2addr v1, v0

    if-ltz v1, :cond_1

    .line 133
    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->approximateTileFromLowerZoom(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 134
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 135
    return-object v1

    .line 132
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "zoomDiff":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public approximateTileFromLowerZoom(JI)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "pMapTileIndex"    # J
    .param p3, "pZoomDiff"    # I

    .line 150
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 151
    .local v1, "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    invoke-static {v1, p1, p2, p3}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->approximateTileFromLowerZoom(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;JI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 152
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 153
    return-object v2

    .line 155
    .end local v1    # "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public detach()V
    .locals 1

    .line 266
    invoke-super {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->detach()V

    .line 267
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    return-void
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    .line 101
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getMaximumZoomLevel()I

    move-result v0

    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->minZoomLevel:I

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "Offline Tile Approximation Provider"

    return-object v0
.end method

.method protected getThreadGroupName()Ljava/lang/String;
    .locals 1

    .line 86
    const-string v0, "approximater"

    return-object v0
.end method

.method public getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;
    .locals 1

    .line 91
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileApproximater;)V

    return-object v0
.end method

.method public bridge synthetic getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;

    move-result-object v0

    return-object v0
.end method

.method public getUsesDataConnection()Z
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 0
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    return-void
.end method
