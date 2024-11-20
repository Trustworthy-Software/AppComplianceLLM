.class public Lorg/osmdroid/tileprovider/MapTileProviderArray;
.super Lorg/osmdroid/tileprovider/MapTileProviderBase;
.source "MapTileProviderArray.java"

# interfaces
.implements Lorg/osmdroid/util/MapTileContainer;


# static fields
.field private static final WORKING_STATUS_FOUND:I = 0x1

.field private static final WORKING_STATUS_STARTED:I


# instance fields
.field private mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

.field protected final mTileProviderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorking:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;

    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "aRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p3, "pTileProviderArray"    # [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 64
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    .line 66
    iput-object p2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    .line 68
    invoke-static {v0, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method private remove(J)V
    .locals 3
    .param p1, "pMapTileIndex"    # J

    .line 144
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private runAsyncNextProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 5
    .param p1, "pState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;

    .line 220
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object v0

    .line 221
    .local v0, "nextProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->loadMapTileAsync(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    .line 223
    return-void

    .line 226
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 228
    .local v2, "status":Ljava/lang/Integer;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 230
    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    .line 232
    :cond_1
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->remove(J)V

    .line 233
    return-void

    .line 228
    .end local v2    # "status":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public contains(J)Z
    .locals 3
    .param p1, "pTileIndex"    # J

    .line 94
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public detach()V
    .locals 3

    .line 73
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 75
    .local v2, "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->detach()V

    .line 77
    .end local v2    # "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    goto :goto_0

    .line 78
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    monitor-enter v1

    .line 80
    :try_start_1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 81
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    if-eqz v0, :cond_1

    .line 83
    invoke-interface {v0}, Lorg/osmdroid/tileprovider/IRegisterReceiver;->destroy()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    .line 86
    :cond_1
    invoke-super {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->detach()V

    .line 87
    return-void

    .line 81
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 78
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method protected findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .locals 9
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;

    .line 195
    const/4 v0, 0x0

    .local v0, "providerDoesntExist":Z
    const/4 v1, 0x0

    .local v1, "providerCantGetDataConnection":Z
    const/4 v2, 0x0

    .line 200
    .local v2, "providerCantServiceZoomlevel":Z
    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getNextProvider()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object v3

    .line 203
    .local v3, "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    if-eqz v3, :cond_4

    .line 204
    invoke-virtual {p0, v3}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->getProviderExists(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    move v0, v4

    .line 205
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->useDataConnection()Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 206
    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getUsesDataConnection()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    move v1, v4

    .line 207
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v4

    .line 208
    .local v4, "zoomLevel":I
    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v7

    if-gt v4, v7, :cond_3

    .line 209
    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v7

    if-ge v4, v7, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    :goto_1
    nop

    :goto_2
    move v2, v5

    .line 211
    .end local v4    # "zoomLevel":I
    :cond_4
    if-eqz v3, :cond_5

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 213
    :cond_5
    return-object v3
.end method

.method public getMapTile(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pMapTileIndex"    # J

    .line 117
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    .local v0, "tile":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 119
    invoke-static {v0}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 120
    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->isDowngradedMode(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    return-object v0

    .line 127
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    monitor-exit v1

    return-object v0

    .line 131
    :cond_2
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    new-instance v1, Lorg/osmdroid/tileprovider/MapTileRequestState;

    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-direct {v1, p1, p2, v2, p0}, Lorg/osmdroid/tileprovider/MapTileRequestState;-><init>(JLjava/util/List;Lorg/osmdroid/tileprovider/IMapTileProviderCallback;)V

    .line 135
    .local v1, "state":Lorg/osmdroid/tileprovider/MapTileRequestState;
    invoke-direct {p0, v1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->runAsyncNextProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    .line 137
    return-object v0

    .line 132
    .end local v1    # "state":Lorg/osmdroid/tileprovider/MapTileRequestState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getMaximumZoomLevel()I
    .locals 5

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "result":I
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 257
    .local v3, "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v4

    if-le v4, v0, :cond_0

    .line 258
    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v4

    move v0, v4

    .line 260
    .end local v3    # "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    :cond_0
    goto :goto_0

    .line 261
    :cond_1
    monitor-exit v1

    .line 262
    return v0

    .line 261
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getMinimumZoomLevel()I
    .locals 5

    .line 241
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getMaximumZoomLevel()I

    move-result v0

    .line 242
    .local v0, "result":I
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 244
    .local v3, "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 245
    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v4

    move v0, v4

    .line 247
    .end local v3    # "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    :cond_0
    goto :goto_0

    .line 248
    :cond_1
    monitor-exit v1

    .line 249
    return v0

    .line 248
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getProviderExists(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)Z
    .locals 1
    .param p1, "provider"    # Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 236
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getQueueSize()J
    .locals 3

    .line 184
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    int-to-long v1, v1

    monitor-exit v0

    return-wide v1

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTileWriter()Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .locals 1

    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isDowngradedMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected isDowngradedMode(J)Z
    .locals 1
    .param p1, "pMapTileIndex"    # J

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;
    .param p2, "aDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 151
    invoke-super {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->remove(J)V

    .line 153
    return-void
.end method

.method public mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;
    .param p2, "aDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 168
    invoke-super {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->runAsyncNextProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    .line 175
    return-void

    .line 171
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 0
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;

    .line 157
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->runAsyncNextProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    .line 158
    return-void
.end method

.method public mapTileRequestFailedExceedsMaxQueueSize(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 2
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;

    .line 162
    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    .line 163
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->remove(J)V

    .line 164
    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 3
    .param p1, "aTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 267
    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 269
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 271
    .local v2, "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    invoke-virtual {v2, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 272
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->clearTileCache()V

    .line 273
    .end local v2    # "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    goto :goto_0

    .line 274
    :cond_0
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
