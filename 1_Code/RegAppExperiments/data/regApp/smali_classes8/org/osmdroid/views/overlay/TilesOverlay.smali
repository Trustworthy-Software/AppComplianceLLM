.class public Lorg/osmdroid/views/overlay/TilesOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "TilesOverlay.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/IOverlayMenuProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;
    }
.end annotation


# static fields
.field public static final INVERT_COLORS:Landroid/graphics/ColorFilter;

.field public static final MENU_MAP_MODE:I

.field public static final MENU_OFFLINE:I

.field public static final MENU_SNAPSHOT:I

.field public static final MENU_STATES:I

.field public static final MENU_TILE_SOURCE_STARTING_ID:I

.field static final negate:[F


# instance fields
.field private ctx:Landroid/content/Context;

.field private currentColorFilter:Landroid/graphics/ColorFilter;

.field private horizontalWrapEnabled:Z

.field private mCanvasRect:Landroid/graphics/Rect;

.field protected final mDebugPaint:Landroid/graphics/Paint;

.field private final mIntersectionRect:Landroid/graphics/Rect;

.field private mLoadingBackgroundColor:I

.field private mLoadingLineColor:I

.field private mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

.field private mOptionsMenuEnabled:Z

.field protected mProjection:Lorg/osmdroid/views/Projection;

.field private final mProtectedTiles:Landroid/graphics/Rect;

.field private final mTileLooper:Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

.field protected final mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

.field private final mTileRect:Landroid/graphics/Rect;

.field private final mTileStates:Lorg/osmdroid/tileprovider/TileStates;

.field protected final mViewPort:Lorg/osmdroid/util/RectL;

.field protected userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field private verticalWrapEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    invoke-static {}, Lorg/osmdroid/views/overlay/TilesOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_MAP_MODE:I

    .line 51
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 50
    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getSafeMenuIdSequence(I)I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_TILE_SOURCE_STARTING_ID:I

    .line 52
    invoke-static {}, Lorg/osmdroid/views/overlay/TilesOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_OFFLINE:I

    .line 56
    invoke-static {}, Lorg/osmdroid/views/overlay/TilesOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_SNAPSHOT:I

    .line 57
    invoke-static {}, Lorg/osmdroid/views/overlay/TilesOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_STATES:I

    .line 86
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/osmdroid/views/overlay/TilesOverlay;->negate:[F

    .line 95
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    sput-object v1, Lorg/osmdroid/views/overlay/TilesOverlay;->INVERT_COLORS:Landroid/graphics/ColorFilter;

    return-void

    nop

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

.method public constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;)V
    .locals 1
    .param p1, "aTileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p2, "aContext"    # Landroid/content/Context;

    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;ZZ)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;ZZ)V
    .locals 4
    .param p1, "aTileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "horizontalWrapEnabled"    # Z
    .param p4, "verticalWrapEnabled"    # Z

    .line 112
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileRect:Landroid/graphics/Rect;

    .line 69
    new-instance v1, Lorg/osmdroid/util/RectL;

    invoke-direct {v1}, Lorg/osmdroid/util/RectL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mViewPort:Lorg/osmdroid/util/RectL;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mOptionsMenuEnabled:Z

    .line 77
    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    .line 78
    const/16 v2, 0xd8

    const/16 v3, 0xd0

    invoke-static {v2, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    .line 79
    const/16 v2, 0xc8

    const/16 v3, 0xc0

    invoke-static {v2, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingLineColor:I

    .line 81
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->horizontalWrapEnabled:Z

    .line 82
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->verticalWrapEnabled:Z

    .line 85
    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->currentColorFilter:Landroid/graphics/ColorFilter;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProtectedTiles:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Lorg/osmdroid/tileprovider/TileStates;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/TileStates;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileStates:Lorg/osmdroid/tileprovider/TileStates;

    .line 301
    new-instance v0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;-><init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileLooper:Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

    .line 302
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mIntersectionRect:Landroid/graphics/Rect;

    .line 113
    iput-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->ctx:Landroid/content/Context;

    .line 114
    if-eqz p1, :cond_0

    .line 118
    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 119
    invoke-virtual {p0, p3}, Lorg/osmdroid/views/overlay/TilesOverlay;->setHorizontalWrapEnabled(Z)V

    .line 120
    invoke-virtual {p0, p4}, Lorg/osmdroid/views/overlay/TilesOverlay;->setVerticalWrapEnabled(Z)V

    .line 121
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid tile provider to the tiles overlay."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lorg/osmdroid/views/overlay/TilesOverlay;)Lorg/osmdroid/tileprovider/TileStates;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 46
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileStates:Lorg/osmdroid/tileprovider/TileStates;

    return-object v0
.end method

.method static synthetic access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 46
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getLoadingTile()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 46
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private clearLoadingTile()V
    .locals 2

    .line 497
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    .line 498
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    .line 499
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/osmdroid/tileprovider/BitmapPool;->asyncRecycle(Landroid/graphics/drawable/Drawable;)V

    .line 500
    return-void
.end method

.method private getLoadingTile()Landroid/graphics/drawable/Drawable;
    .locals 13

    .line 466
    const-string v0, "OsmDroid"

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 467
    return-object v1

    .line 468
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_3

    iget v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    if-eqz v1, :cond_3

    .line 470
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 471
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileSizePixels()I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x100

    .line 472
    .local v1, "tileSize":I
    :goto_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 474
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 475
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    move-object v10, v4

    .line 476
    .local v10, "paint":Landroid/graphics/Paint;
    iget v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 477
    iget v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingLineColor:I

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 478
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 479
    div-int/lit8 v4, v1, 0x10

    move v11, v4

    .line 480
    .local v11, "lineSize":I
    const/4 v4, 0x0

    move v12, v4

    .local v12, "a":I
    :goto_1
    if-ge v12, v1, :cond_2

    .line 481
    const/4 v5, 0x0

    int-to-float v6, v12

    int-to-float v7, v1

    int-to-float v8, v12

    move-object v4, v3

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 482
    int-to-float v5, v12

    const/4 v6, 0x0

    int-to-float v7, v12

    int-to-float v8, v1

    move-object v4, v3

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 480
    add-int/2addr v12, v11

    goto :goto_1

    .line 484
    .end local v12    # "a":I
    :cond_2
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "tileSize":I
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v11    # "lineSize":I
    goto :goto_2

    .line 488
    :catch_0
    move-exception v1

    .line 489
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "NullPointerException getting loading tile"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_3

    .line 485
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 486
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "OutOfMemoryError getting loading tile"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 491
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :goto_2
    nop

    .line 493
    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 199
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "OsmDroid"

    const-string v1, "onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->setViewPort(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v4

    iget-object v6, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mViewPort:Lorg/osmdroid/util/RectL;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/overlay/TilesOverlay;->drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;DLorg/osmdroid/util/RectL;)V

    .line 209
    return-void
.end method

.method public drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;DLorg/osmdroid/util/RectL;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "projection"    # Lorg/osmdroid/views/Projection;
    .param p3, "zoomLevel"    # D
    .param p5, "viewPort"    # Lorg/osmdroid/util/RectL;

    .line 218
    iput-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    .line 219
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileLooper:Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

    invoke-virtual {v0, p3, p4, p5, p1}, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->loop(DLorg/osmdroid/util/RectL;Landroid/graphics/Canvas;)V

    .line 220
    return-void
.end method

.method protected getCanvasRect()Landroid/graphics/Rect;
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mCanvasRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLoadingBackgroundColor()I
    .locals 1

    .line 438
    iget v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    return v0
.end method

.method public getLoadingLineColor()I
    .locals 1

    .line 455
    iget v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingLineColor:I

    return v0
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMaximumZoomLevel()I

    move-result v0

    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMinimumZoomLevel()I

    move-result v0

    return v0
.end method

.method protected getProjection()Lorg/osmdroid/views/Projection;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    return-object v0
.end method

.method public getTileStates()Lorg/osmdroid/tileprovider/TileStates;
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileStates:Lorg/osmdroid/tileprovider/TileStates;

    return-object v0
.end method

.method public isHorizontalWrapEnabled()Z
    .locals 1

    .line 517
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->horizontalWrapEnabled:Z

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mOptionsMenuEnabled:Z

    return v0
.end method

.method public isVerticalWrapEnabled()Z
    .locals 1

    .line 526
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->verticalWrapEnabled:Z

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 7
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 360
    sget v0, Lorg/osmdroid/library/R$string;->map_mode:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    sget v2, Lorg/osmdroid/library/R$drawable;->ic_menu_mapmode:I

    .line 361
    invoke-interface {v0, v2}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 363
    .local v0, "mapMenu":Landroid/view/SubMenu;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_0
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 364
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 365
    .local v3, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    sget v4, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_MAP_MODE:I

    add-int/2addr v4, p2

    sget v5, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_TILE_SOURCE_STARTING_ID:I

    add-int/2addr v5, v2

    add-int/2addr v5, p2

    .line 366
    invoke-interface {v3}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v6

    .line 365
    invoke-interface {v0, v4, v5, v1, v6}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 363
    .end local v3    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .end local v2    # "a":I
    :cond_0
    sget v2, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_MAP_MODE:I

    add-int/2addr v2, p2

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, v3}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 370
    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->ctx:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 371
    nop

    .line 372
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->useDataConnection()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lorg/osmdroid/library/R$string;->set_mode_offline:I

    goto :goto_1

    .line 373
    :cond_1
    sget v4, Lorg/osmdroid/library/R$string;->set_mode_online:I

    .line 371
    :goto_1
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/osmdroid/library/R$drawable;->ic_menu_offline:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 375
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    sget v5, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_OFFLINE:I

    add-int/2addr v5, p2

    invoke-interface {p1, v1, v5, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 376
    sget v5, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_SNAPSHOT:I

    add-int/2addr v5, p2

    sget v6, Lorg/osmdroid/library/R$string;->snapshot:I

    invoke-interface {p1, v1, v5, v1, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 377
    sget v5, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_STATES:I

    add-int/2addr v5, p2

    sget v6, Lorg/osmdroid/library/R$string;->states:I

    invoke-interface {p1, v1, v5, v1, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 379
    .end local v2    # "title":Ljava/lang/String;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    return v3
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 3
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 136
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->detach()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->ctx:Landroid/content/Context;

    .line 138
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Lorg/osmdroid/tileprovider/BitmapPool;->asyncRecycle(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    .line 140
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lorg/osmdroid/tileprovider/BitmapPool;->asyncRecycle(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "pItem"    # Landroid/view/MenuItem;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 402
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sub-int/2addr v0, p2

    .line 403
    .local v0, "menuId":I
    sget v1, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_TILE_SOURCE_STARTING_ID:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 405
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    if-ge v0, v3, :cond_0

    .line 406
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v3

    sub-int v1, v0, v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-virtual {p3, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 408
    return v2

    .line 409
    :cond_0
    sget v1, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_OFFLINE:I

    if-ne v0, v1, :cond_1

    .line 410
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->useDataConnection()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 411
    .local v1, "useDataConnection":Z
    invoke-virtual {p3, v1}, Lorg/osmdroid/views/MapView;->setUseDataConnection(Z)V

    .line 412
    return v2

    .line 413
    .end local v1    # "useDataConnection":Z
    :cond_1
    sget v1, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_STATES:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 414
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileStates:Lorg/osmdroid/tileprovider/TileStates;

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/TileStates;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 415
    return v2

    .line 416
    :cond_2
    sget v1, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_SNAPSHOT:I

    if-ne v0, v1, :cond_3

    .line 417
    new-instance v1, Lorg/osmdroid/views/drawing/MapSnapshot;

    new-instance v3, Lorg/osmdroid/views/overlay/TilesOverlay$1;

    invoke-direct {v3, p0}, Lorg/osmdroid/views/overlay/TilesOverlay$1;-><init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    invoke-direct {v1, v3, v2, p3}, Lorg/osmdroid/views/drawing/MapSnapshot;-><init>(Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;ILorg/osmdroid/views/MapView;)V

    .line 428
    .local v1, "mapSnapshot":Lorg/osmdroid/views/drawing/MapSnapshot;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 429
    .local v3, "t":Ljava/lang/Thread;
    const-string v4, "TilesOverlaySnapShotThread"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 431
    return v2

    .line 433
    .end local v1    # "mapSnapshot":Lorg/osmdroid/views/drawing/MapSnapshot;
    .end local v3    # "t":Ljava/lang/Thread;
    :cond_3
    return v3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 385
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v0

    .line 386
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    .line 385
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 387
    .local v0, "index":I
    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 388
    sget v2, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_TILE_SOURCE_STARTING_ID:I

    add-int/2addr v2, v0

    add-int/2addr v2, p2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 391
    :cond_0
    sget v2, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_OFFLINE:I

    add-int/2addr v2, p2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 392
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->useDataConnection()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lorg/osmdroid/library/R$string;->set_mode_offline:I

    goto :goto_0

    .line 393
    :cond_1
    sget v3, Lorg/osmdroid/library/R$string;->set_mode_online:I

    .line 391
    :goto_0
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 395
    return v1
.end method

.method protected onTileReadyToDraw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "currentMapTile"    # Landroid/graphics/drawable/Drawable;
    .param p3, "tileRect"    # Landroid/graphics/Rect;

    .line 324
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->currentColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 325
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 326
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 327
    .local v0, "canvasRect":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 329
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mIntersectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 333
    return-void

    .line 336
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 339
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mIntersectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 342
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 344
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 345
    return-void
.end method

.method public protectDisplayedTilesForCache(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 4
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 175
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->setViewPort(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mViewPort:Lorg/osmdroid/util/RectL;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v1}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/osmdroid/util/TileSystem;->getTileSize(D)D

    move-result-wide v1

    iget-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProtectedTiles:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(Lorg/osmdroid/util/RectL;DLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 179
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->getInputTileZoomLevel(D)I

    move-result v0

    .line 180
    .local v0, "tileZoomLevel":I
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTileArea()Lorg/osmdroid/util/MapTileArea;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProtectedTiles:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lorg/osmdroid/util/MapTileArea;->set(ILandroid/graphics/Rect;)Lorg/osmdroid/util/MapTileArea;

    .line 181
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileCache;->maintenance()V

    .line 182
    return-void
.end method

.method protected setCanvasRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "pCanvasRect"    # Landroid/graphics/Rect;

    .line 307
    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mCanvasRect:Landroid/graphics/Rect;

    .line 308
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .line 513
    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->currentColorFilter:Landroid/graphics/ColorFilter;

    .line 514
    return-void
.end method

.method public setHorizontalWrapEnabled(Z)V
    .locals 1
    .param p1, "horizontalWrapEnabled"    # Z

    .line 521
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->horizontalWrapEnabled:Z

    .line 522
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileLooper:Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->setHorizontalWrapEnabled(Z)V

    .line 523
    return-void
.end method

.method public setLoadingBackgroundColor(I)V
    .locals 1
    .param p1, "pLoadingBackgroundColor"    # I

    .line 448
    iget v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    if-eq v0, p1, :cond_0

    .line 449
    iput p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    .line 450
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->clearLoadingTile()V

    .line 452
    :cond_0
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 131
    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 132
    return-void
.end method

.method public setLoadingLineColor(I)V
    .locals 1
    .param p1, "pLoadingLineColor"    # I

    .line 459
    iget v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingLineColor:I

    if-eq v0, p1, :cond_0

    .line 460
    iput p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingLineColor:I

    .line 461
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->clearLoadingTile()V

    .line 463
    :cond_0
    return-void
.end method

.method public setOptionsMenuEnabled(Z)V
    .locals 0
    .param p1, "pOptionsMenuEnabled"    # Z

    .line 349
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mOptionsMenuEnabled:Z

    .line 350
    return-void
.end method

.method protected setProjection(Lorg/osmdroid/views/Projection;)V
    .locals 0
    .param p1, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 315
    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    .line 316
    return-void
.end method

.method public setUseDataConnection(Z)V
    .locals 1
    .param p1, "aMode"    # Z

    .line 166
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setUseDataConnection(Z)V

    .line 167
    return-void
.end method

.method public setVerticalWrapEnabled(Z)V
    .locals 1
    .param p1, "verticalWrapEnabled"    # Z

    .line 530
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->verticalWrapEnabled:Z

    .line 531
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileLooper:Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->setVerticalWrapEnabled(Z)V

    .line 532
    return-void
.end method

.method protected setViewPort(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)Z
    .locals 2
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 191
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->setProjection(Lorg/osmdroid/views/Projection;)V

    .line 192
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mViewPort:Lorg/osmdroid/util/RectL;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/Projection;->getMercatorViewPort(Lorg/osmdroid/util/RectL;)Lorg/osmdroid/util/RectL;

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public useDataConnection()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->useDataConnection()Z

    move-result v0

    return v0
.end method
