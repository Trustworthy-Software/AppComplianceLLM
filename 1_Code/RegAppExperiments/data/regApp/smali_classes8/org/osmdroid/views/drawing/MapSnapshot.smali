.class public Lorg/osmdroid/views/drawing/MapSnapshot;
.super Ljava/lang/Object;
.source "MapSnapshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/drawing/MapSnapshot$Status;,
        Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;
    }
.end annotation


# static fields
.field public static final INCLUDE_FLAGS_ALL:I = 0xf

.field public static final INCLUDE_FLAG_EXPIRED:I = 0x2

.field public static final INCLUDE_FLAG_NOTFOUND:I = 0x8

.field public static final INCLUDE_FLAG_SCALED:I = 0x4

.field public static final INCLUDE_FLAG_UPTODATE:I = 0x1


# instance fields
.field private mAlreadyFinished:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCurrentlyRunning:Z

.field private mHandler:Lorg/osmdroid/views/drawing/MapSnapshotHandler;

.field private final mIncludeFlags:I

.field private mIsDetached:Z

.field private mMapSnapshotable:Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;

.field private mOneMoreTime:Z

.field private mOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private mProjection:Lorg/osmdroid/views/Projection;

.field private mStatus:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

.field private mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

.field private mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

.field private final mViewPort:Lorg/osmdroid/util/RectL;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;ILorg/osmdroid/tileprovider/MapTileProviderBase;Ljava/util/List;Lorg/osmdroid/views/Projection;)V
    .locals 3
    .param p1, "pMapSnapshotable"    # Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;
    .param p2, "pIncludeFlags"    # I
    .param p3, "pTileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p5, "pProjection"    # Lorg/osmdroid/views/Projection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;",
            "I",
            "Lorg/osmdroid/tileprovider/MapTileProviderBase;",
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;",
            "Lorg/osmdroid/views/Projection;",
            ")V"
        }
    .end annotation

    .line 94
    .local p4, "pOverlays":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/views/overlay/Overlay;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/osmdroid/util/RectL;

    invoke-direct {v0}, Lorg/osmdroid/util/RectL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mViewPort:Lorg/osmdroid/util/RectL;

    .line 76
    sget-object v1, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->NOTHING:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    iput-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mStatus:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    .line 95
    iput-object p1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mMapSnapshotable:Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;

    .line 96
    iput p2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIncludeFlags:I

    .line 97
    iput-object p3, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 98
    iput-object p4, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOverlays:Ljava/util/List;

    .line 99
    iput-object p5, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    .line 100
    invoke-virtual {p5, v0}, Lorg/osmdroid/views/Projection;->getMercatorViewPort(Lorg/osmdroid/util/RectL;)Lorg/osmdroid/util/RectL;

    .line 101
    new-instance v0, Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 102
    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v1}, Lorg/osmdroid/views/Projection;->isHorizontalWrapEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->setHorizontalWrapEnabled(Z)V

    .line 103
    iget-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v1}, Lorg/osmdroid/views/Projection;->isVerticalWrapEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->setVerticalWrapEnabled(Z)V

    .line 104
    new-instance v0, Lorg/osmdroid/views/drawing/MapSnapshotHandler;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/drawing/MapSnapshotHandler;-><init>(Lorg/osmdroid/views/drawing/MapSnapshot;)V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mHandler:Lorg/osmdroid/views/drawing/MapSnapshotHandler;

    .line 105
    iget-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileRequestCompleteHandlers()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mHandler:Lorg/osmdroid/views/drawing/MapSnapshotHandler;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;ILorg/osmdroid/views/MapView;)V
    .locals 6
    .param p1, "pMapSnapshotable"    # Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;
    .param p2, "pIncludeFlags"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 83
    nop

    .line 84
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v3

    .line 85
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v4

    .line 86
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v5

    .line 83
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/drawing/MapSnapshot;-><init>(Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;ILorg/osmdroid/tileprovider/MapTileProviderBase;Ljava/util/List;Lorg/osmdroid/views/Projection;)V

    .line 88
    return-void
.end method

.method private draw()V
    .locals 9

    .line 141
    iget-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v1}, Lorg/osmdroid/views/Projection;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mBitmap:Landroid/graphics/Bitmap;

    .line 142
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 143
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    const/4 v2, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v0, v2, v8}, Lorg/osmdroid/views/Projection;->save(Landroid/graphics/Canvas;ZZ)V

    .line 144
    iget-object v2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v4, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v4}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v5

    iget-object v7, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mViewPort:Lorg/osmdroid/util/RectL;

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/views/overlay/TilesOverlay;->drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;DLorg/osmdroid/util/RectL;)V

    .line 145
    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOverlays:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Overlay;

    .line 147
    .local v2, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Overlay;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v2, v0, v3}, Lorg/osmdroid/views/overlay/Overlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 150
    .end local v2    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    goto :goto_0

    .line 152
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v1, v0, v8}, Lorg/osmdroid/views/Projection;->restore(Landroid/graphics/Canvas;Z)V

    .line 153
    return-void
.end method

.method public static isUIThread()Z
    .locals 2

    .line 65
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private refresh()V
    .locals 7

    .line 159
    invoke-direct {p0}, Lorg/osmdroid/views/drawing/MapSnapshot;->refreshCheckStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getTileStates()Lorg/osmdroid/tileprovider/TileStates;

    move-result-object v0

    .line 164
    .local v0, "tileStates":Lorg/osmdroid/tileprovider/TileStates;
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v3}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v4

    iget-object v6, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mViewPort:Lorg/osmdroid/util/RectL;

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/overlay/TilesOverlay;->drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;DLorg/osmdroid/util/RectL;)V

    .line 165
    const/4 v1, 0x1

    .line 166
    .local v1, "ready":Z
    iget v2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIncludeFlags:I

    if-eqz v2, :cond_5

    const/16 v3, 0xf

    if-eq v2, v3, :cond_5

    .line 167
    if-eqz v1, :cond_2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/TileStates;->getUpToDate()I

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    const/4 v1, 0x0

    .line 170
    :cond_2
    if-eqz v1, :cond_3

    iget v2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIncludeFlags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/TileStates;->getExpired()I

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    const/4 v1, 0x0

    .line 173
    :cond_3
    if-eqz v1, :cond_4

    iget v2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIncludeFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/TileStates;->getScaled()I

    move-result v2

    if-eqz v2, :cond_4

    .line 174
    const/4 v1, 0x0

    .line 176
    :cond_4
    if-eqz v1, :cond_5

    iget v2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIncludeFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/TileStates;->getNotFound()I

    move-result v2

    if-eqz v2, :cond_5

    .line 177
    const/4 v1, 0x0

    .line 180
    :cond_5
    if-eqz v1, :cond_a

    .line 181
    iget-object v2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mStatus:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    sget-object v3, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->CANVAS_OK:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mStatus:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    sget-object v3, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->PAINTING:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    if-ne v2, v3, :cond_6

    goto :goto_0

    .line 184
    :cond_6
    invoke-direct {p0}, Lorg/osmdroid/views/drawing/MapSnapshot;->refreshCheckFinish()Z

    move-result v2

    if-nez v2, :cond_7

    .line 185
    return-void

    .line 187
    :cond_7
    sget-object v2, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->PAINTING:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    iput-object v2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mStatus:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    .line 188
    iget-boolean v2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIsDetached:Z

    if-eqz v2, :cond_8

    .line 189
    return-void

    .line 191
    :cond_8
    invoke-direct {p0}, Lorg/osmdroid/views/drawing/MapSnapshot;->draw()V

    .line 192
    sget-object v2, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->CANVAS_OK:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    iput-object v2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mStatus:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    .line 193
    iget-object v2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mMapSnapshotable:Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;

    .line 194
    .local v2, "mapSnapshotable":Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;
    if-eqz v2, :cond_a

    .line 195
    invoke-interface {v2, p0}, Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;->callback(Lorg/osmdroid/views/drawing/MapSnapshot;)V

    goto :goto_1

    .line 182
    .end local v2    # "mapSnapshotable":Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;
    :cond_9
    :goto_0
    return-void

    .line 198
    .end local v1    # "ready":Z
    :cond_a
    :goto_1
    invoke-direct {p0}, Lorg/osmdroid/views/drawing/MapSnapshot;->refreshCheckEnd()Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    return-void
.end method

.method private declared-synchronized refreshAgain()Z
    .locals 2

    monitor-enter p0

    .line 241
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOneMoreTime:Z

    .line 242
    iget-boolean v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mCurrentlyRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 240
    .end local p0    # "this":Lorg/osmdroid/views/drawing/MapSnapshot;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized refreshCheckEnd()Z
    .locals 2

    monitor-enter p0

    .line 220
    :try_start_0
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIsDetached:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 221
    monitor-exit p0

    return v1

    .line 223
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mAlreadyFinished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 224
    monitor-exit p0

    return v1

    .line 226
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOneMoreTime:Z

    if-nez v0, :cond_2

    .line 227
    iput-boolean v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mCurrentlyRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    monitor-exit p0

    return v1

    .line 230
    .end local p0    # "this":Lorg/osmdroid/views/drawing/MapSnapshot;
    :cond_2
    :try_start_3
    iput-boolean v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOneMoreTime:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized refreshCheckFinish()Z
    .locals 2

    monitor-enter p0

    .line 235
    :try_start_0
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mAlreadyFinished:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 236
    .local v0, "result":Z
    :goto_0
    iput-boolean v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mAlreadyFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return v0

    .line 234
    .end local v0    # "result":Z
    .end local p0    # "this":Lorg/osmdroid/views/drawing/MapSnapshot;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized refreshCheckStart()Z
    .locals 2

    monitor-enter p0

    .line 202
    :try_start_0
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIsDetached:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 203
    monitor-exit p0

    return v1

    .line 205
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mAlreadyFinished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 206
    monitor-exit p0

    return v1

    .line 208
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOneMoreTime:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 209
    monitor-exit p0

    return v1

    .line 211
    :cond_2
    :try_start_3
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mCurrentlyRunning:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 212
    monitor-exit p0

    return v1

    .line 214
    :cond_3
    :try_start_4
    iput-boolean v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOneMoreTime:Z

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mCurrentlyRunning:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 216
    monitor-exit p0

    return v0

    .line 201
    .end local p0    # "this":Lorg/osmdroid/views/drawing/MapSnapshot;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static save(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 3
    .param p0, "pBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "pFile"    # Ljava/io/File;

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 259
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    nop

    .line 265
    nop

    .line 266
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    goto :goto_0

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 264
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 261
    :catch_1
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 266
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 268
    :catch_2
    move-exception v1

    .line 269
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 270
    :cond_0
    :goto_1
    nop

    .line 272
    :goto_2
    const/4 v1, 0x0

    return v1

    .line 265
    :goto_3
    if-eqz v0, :cond_1

    .line 266
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 268
    :catch_3
    move-exception v2

    .line 269
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 270
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    nop

    .line 271
    :goto_5
    throw v1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getStatus()Lorg/osmdroid/views/drawing/MapSnapshot$Status;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mStatus:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    return-object v0
.end method

.method public onDetach()V
    .locals 3

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIsDetached:Z

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    .line 129
    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileRequestCompleteHandlers()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mHandler:Lorg/osmdroid/views/drawing/MapSnapshotHandler;

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->detach()V

    .line 131
    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 132
    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mHandler:Lorg/osmdroid/views/drawing/MapSnapshotHandler;

    invoke-virtual {v1}, Lorg/osmdroid/views/drawing/MapSnapshotHandler;->destroy()V

    .line 133
    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mHandler:Lorg/osmdroid/views/drawing/MapSnapshotHandler;

    .line 134
    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mMapSnapshotable:Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;

    .line 135
    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 136
    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOverlays:Ljava/util/List;

    .line 137
    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mBitmap:Landroid/graphics/Bitmap;

    .line 138
    return-void
.end method

.method public refreshASAP()V
    .locals 1

    .line 246
    invoke-direct {p0}, Lorg/osmdroid/views/drawing/MapSnapshot;->refreshAgain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lorg/osmdroid/views/drawing/MapSnapshot;->refresh()V

    .line 249
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 110
    sget-object v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->STARTED:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mStatus:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    .line 111
    invoke-virtual {p0}, Lorg/osmdroid/views/drawing/MapSnapshot;->refreshASAP()V

    .line 112
    return-void
.end method

.method public save(Ljava/io/File;)Z
    .locals 1
    .param p1, "pFile"    # Ljava/io/File;

    .line 123
    iget-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lorg/osmdroid/views/drawing/MapSnapshot;->save(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v0

    return v0
.end method
