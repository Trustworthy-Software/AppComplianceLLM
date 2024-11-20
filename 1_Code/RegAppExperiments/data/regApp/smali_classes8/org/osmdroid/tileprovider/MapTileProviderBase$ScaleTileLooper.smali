.class abstract Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
.super Lorg/osmdroid/util/TileLooper;
.source "MapTileProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/MapTileProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ScaleTileLooper"
.end annotation


# instance fields
.field private isWorth:Z

.field protected mDebugPaint:Landroid/graphics/Paint;

.field protected mDestRect:Landroid/graphics/Rect;

.field protected mDiff:I

.field protected final mNewTiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mOldTileZoomLevel:I

.field protected mSrcRect:Landroid/graphics/Rect;

.field protected mTileSize:I

.field protected mTileSize_2:I

.field final synthetic this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;


# direct methods
.method private constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-direct {p0}, Lorg/osmdroid/util/TileLooper;-><init>()V

    .line 356
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mNewTiles:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p2, "x1"    # Lorg/osmdroid/tileprovider/MapTileProviderBase$1;

    .line 349
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    return-void
.end method


# virtual methods
.method protected abstract computeTile(JII)V
.end method

.method public finaliseLoop()V
    .locals 4

    .line 407
    nop

    :goto_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mNewTiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mNewTiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 409
    .local v0, "index":J
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mNewTiles:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 410
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->putScaledTileIntoCache(JLandroid/graphics/Bitmap;)V

    .line 411
    .end local v0    # "index":J
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 412
    :cond_0
    return-void
.end method

.method public handleTile(JII)V
    .locals 4
    .param p1, "pMapTileIndex"    # J
    .param p3, "pX"    # I
    .param p4, "pY"    # I

    .line 386
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->isWorth:Z

    if-nez v0, :cond_0

    .line 387
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMapTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 395
    .local v0, "requestedTile":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 397
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->computeTile(JII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    goto :goto_0

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "OsmDroid"

    const-string v3, "OutOfMemoryError rescaling cache"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1
    :goto_0
    return-void
.end method

.method public initialiseLoop()V
    .locals 2

    .line 378
    invoke-super {p0}, Lorg/osmdroid/util/TileLooper;->initialiseLoop()V

    .line 379
    iget v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mTileZoomLevel:I

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mOldTileZoomLevel:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mDiff:I

    .line 380
    iget v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mTileSize:I

    shr-int/2addr v1, v0

    iput v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mTileSize_2:I

    .line 381
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->isWorth:Z

    .line 382
    return-void
.end method

.method public loop(DLorg/osmdroid/util/RectL;DI)V
    .locals 1
    .param p1, "pZoomLevel"    # D
    .param p3, "pViewPortMercator"    # Lorg/osmdroid/util/RectL;
    .param p4, "pOldZoomLevel"    # D
    .param p6, "pTileSize"    # I

    .line 368
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mSrcRect:Landroid/graphics/Rect;

    .line 369
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mDestRect:Landroid/graphics/Rect;

    .line 370
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mDebugPaint:Landroid/graphics/Paint;

    .line 371
    invoke-static {p4, p5}, Lorg/osmdroid/util/TileSystem;->getInputTileZoomLevel(D)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mOldTileZoomLevel:I

    .line 372
    iput p6, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mTileSize:I

    .line 373
    invoke-virtual {p0, p1, p2, p3}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->loop(DLorg/osmdroid/util/RectL;)V

    .line 374
    return-void
.end method

.method protected putScaledTileIntoCache(JLandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "pMapTileIndex"    # J
    .param p3, "pBitmap"    # Landroid/graphics/Bitmap;

    .line 420
    new-instance v0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-direct {v0, p3}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 421
    .local v0, "drawable":Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    const/4 v2, -0x3

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->putTileIntoCache(JLandroid/graphics/drawable/Drawable;I)V

    .line 422
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created scaled tile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OsmDroid"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 425
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 426
    .local v1, "canvas":Landroid/graphics/Canvas;
    const-string v2, "scaled"

    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 428
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    return-void
.end method
