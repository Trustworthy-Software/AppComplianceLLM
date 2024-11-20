.class public abstract Lorg/osmdroid/tileprovider/MapTileProviderBase;
.super Ljava/lang/Object;
.source "MapTileProviderBase.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/IMapTileProviderCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;,
        Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;,
        Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
    }
.end annotation


# static fields
.field public static final MAPTILE_FAIL_ID:I = 0x1

.field public static final MAPTILE_SUCCESS_ID:I

.field private static sApproximationBackgroundColor:I


# instance fields
.field protected final mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

.field protected mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

.field private final mTileRequestCompleteHandlers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

.field protected mUseDataConnection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const v0, -0x333334

    sput v0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->sApproximationBackgroundColor:I

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/os/Handler;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/os/Handler;)V
    .locals 2
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pDownloadFinishedListener"    # Landroid/os/Handler;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandlers:Ljava/util/Collection;

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mUseDataConnection:Z

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    .line 148
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->createTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    .line 149
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 150
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 151
    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .line 45
    sget v0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->sApproximationBackgroundColor:I

    return v0
.end method

.method private sendMessage(I)V
    .locals 2
    .param p1, "pMessageId"    # I

    .line 525
    const/4 v0, 0x0

    .local v0, "attempt":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 526
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->sendMessageFailFast(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    return-void

    .line 525
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 530
    .end local v0    # "attempt":I
    :cond_1
    return-void
.end method

.method private sendMessageFailFast(I)Z
    .locals 3
    .param p1, "pMessageId"    # I

    .line 541
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandlers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Handler;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .local v1, "handler":Landroid/os/Handler;
    nop

    .line 548
    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 551
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    goto :goto_0

    .line 545
    :catch_0
    move-exception v1

    .line 546
    .local v1, "cme":Ljava/util/ConcurrentModificationException;
    const/4 v2, 0x0

    return v2

    .line 552
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Handler;>;"
    .end local v1    # "cme":Ljava/util/ConcurrentModificationException;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static setApproximationBackgroundColor(I)V
    .locals 0
    .param p0, "pColor"    # I

    .line 99
    sput p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->sApproximationBackgroundColor:I

    .line 100
    return-void
.end method


# virtual methods
.method public clearTileCache()V
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileCache;->clear()V

    .line 295
    return-void
.end method

.method public createTileCache()Lorg/osmdroid/tileprovider/MapTileCache;
    .locals 1

    .line 139
    new-instance v0, Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/MapTileCache;-><init>()V

    return-object v0
.end method

.method public detach()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->clearTileCache()V

    .line 76
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 78
    nop

    .line 86
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/BitmapPool;->returnDrawableToPool(Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;)V

    .line 89
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    .line 90
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->clearTileCache()V

    .line 91
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1
    .param p1, "pCapacity"    # I

    .line 280
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileCache;->ensureCapacity(I)Z

    .line 281
    return-void
.end method

.method public expireInMemoryCache(J)V
    .locals 2
    .param p1, "pMapTileIndex"    # J

    .line 511
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 512
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 513
    const/4 v1, -0x2

    invoke-static {v0, v1}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    .line 515
    :cond_0
    return-void
.end method

.method public abstract getMapTile(J)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getMaximumZoomLevel()I
.end method

.method public abstract getMinimumZoomLevel()I
.end method

.method public abstract getQueueSize()J
.end method

.method public getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    return-object v0
.end method

.method public getTileRequestCompleteHandlers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandlers:Ljava/util/Collection;

    return-object v0
.end method

.method public getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    return-object v0
.end method

.method public abstract getTileWriter()Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
.end method

.method public mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "pState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;
    .param p2, "pDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 176
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, p2, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->putTileIntoCache(JLandroid/graphics/drawable/Drawable;I)V

    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->sendMessage(I)V

    .line 181
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapTileProviderBase.mapTileRequestCompleted(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OsmDroid"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    return-void
.end method

.method public mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "pState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;
    .param p2, "pDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 227
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    invoke-static {p2}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    invoke-virtual {p0, v0, v1, p2, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->putTileIntoCache(JLandroid/graphics/drawable/Drawable;I)V

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->sendMessage(I)V

    .line 232
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapTileProviderBase.mapTileRequestExpiredTile(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OsmDroid"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    return-void
.end method

.method public mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 4
    .param p1, "pState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;

    .line 195
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    const/4 v3, -0x4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->putTileIntoCache(JLandroid/graphics/drawable/Drawable;I)V

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->sendMessage(I)V

    goto :goto_0

    .line 199
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->sendMessage(I)V

    .line 201
    :goto_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapTileProviderBase.mapTileRequestFailed(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OsmDroid"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    return-void
.end method

.method public mapTileRequestFailedExceedsMaxQueueSize(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 0
    .param p1, "pState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;

    .line 214
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    .line 215
    return-void
.end method

.method protected putExpiredTileIntoCache(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "pState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;
    .param p2, "pDrawable"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, p2, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->putTileIntoCache(JLandroid/graphics/drawable/Drawable;I)V

    .line 261
    return-void
.end method

.method protected putTileIntoCache(JLandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "pMapTileIndex"    # J
    .param p3, "pDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pState"    # I

    .line 241
    if-nez p3, :cond_0

    .line 242
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 245
    .local v0, "before":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 246
    invoke-static {v0}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 247
    .local v1, "stateBefore":I
    if-le v1, p4, :cond_1

    .line 248
    return-void

    .line 251
    .end local v1    # "stateBefore":I
    :cond_1
    invoke-static {p3, p4}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    .line 252
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/tileprovider/MapTileCache;->putTile(JLandroid/graphics/drawable/Drawable;)V

    .line 253
    return-void
.end method

.method public rescaleCache(Lorg/osmdroid/views/Projection;DDLandroid/graphics/Rect;)V
    .locals 28
    .param p1, "pProjection"    # Lorg/osmdroid/views/Projection;
    .param p2, "pNewZoomLevel"    # D
    .param p4, "pOldZoomLevel"    # D
    .param p6, "pViewPort"    # Landroid/graphics/Rect;

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-object/from16 v13, p6

    invoke-static/range {p2 .. p3}, Lorg/osmdroid/util/TileSystem;->getInputTileZoomLevel(D)I

    move-result v2

    invoke-static/range {p4 .. p5}, Lorg/osmdroid/util/TileSystem;->getInputTileZoomLevel(D)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 326
    return-void

    .line 329
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 330
    .local v14, "startMs":J
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v2

    const-string v8, "OsmDroid"

    if-eqz v2, :cond_1

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescale tile cache from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_1
    iget v2, v13, Landroid/graphics/Rect;->left:I

    iget v3, v13, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object v6

    .line 334
    .local v6, "topLeftMercator":Lorg/osmdroid/util/PointL;
    iget v2, v13, Landroid/graphics/Rect;->right:I

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object v7

    .line 336
    .local v7, "bottomRightMercator":Lorg/osmdroid/util/PointL;
    new-instance v5, Lorg/osmdroid/util/RectL;

    iget-wide v2, v6, Lorg/osmdroid/util/PointL;->x:J

    move-object/from16 v25, v5

    iget-wide v4, v6, Lorg/osmdroid/util/PointL;->y:J

    move-wide/from16 v26, v14

    .end local v14    # "startMs":J
    .local v26, "startMs":J
    iget-wide v13, v7, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v0, v7, Lorg/osmdroid/util/PointL;->y:J

    move-object/from16 v16, v25

    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v13

    move-wide/from16 v23, v0

    invoke-direct/range {v16 .. v24}, Lorg/osmdroid/util/RectL;-><init>(JJJJ)V

    move-object/from16 v5, v25

    .line 339
    .local v5, "viewPortMercator":Lorg/osmdroid/util/RectL;
    cmpl-double v0, v9, v11

    if-lez v0, :cond_2

    .line 340
    new-instance v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V

    move-object v2, v0

    goto :goto_0

    .line 341
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v1, p0

    new-instance v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V

    move-object v2, v0

    :goto_0
    nop

    .line 342
    .local v2, "tileLooper":Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileSizePixels()I

    move-result v0

    move-wide/from16 v3, p2

    move-object v13, v6

    move-object v14, v7

    .end local v6    # "topLeftMercator":Lorg/osmdroid/util/PointL;
    .end local v7    # "bottomRightMercator":Lorg/osmdroid/util/PointL;
    .local v13, "topLeftMercator":Lorg/osmdroid/util/PointL;
    .local v14, "bottomRightMercator":Lorg/osmdroid/util/PointL;
    move-wide/from16 v6, p4

    move-object v15, v8

    move v8, v0

    invoke-virtual/range {v2 .. v8}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->loop(DLorg/osmdroid/util/RectL;DI)V

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 345
    .local v3, "endMs":J
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished rescale in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v6, v3, v26

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "ms"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_3
    return-void
.end method

.method public setTileLoadFailureImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 163
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    .line 164
    return-void
.end method

.method public setTileRequestCompleteHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandlers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 269
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandlers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 0
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 122
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 123
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->clearTileCache()V

    .line 124
    return-void
.end method

.method public setUseDataConnection(Z)V
    .locals 0
    .param p1, "pMode"    # Z

    .line 312
    iput-boolean p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mUseDataConnection:Z

    .line 313
    return-void
.end method

.method public useDataConnection()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mUseDataConnection:Z

    return v0
.end method
