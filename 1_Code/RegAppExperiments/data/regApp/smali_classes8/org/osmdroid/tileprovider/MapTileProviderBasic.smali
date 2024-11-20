.class public Lorg/osmdroid/tileprovider/MapTileProviderBasic;
.super Lorg/osmdroid/tileprovider/MapTileProviderArray;
.source "MapTileProviderBasic.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/IMapTileProviderCallback;


# instance fields
.field private final mApproximationProvider:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

.field private final mDownloaderProvider:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

.field private final mNetworkAvailabilityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

.field protected tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;

    .line 55
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 6
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p3, "cacheWriter"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 69
    new-instance v1, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;

    invoke-direct {v1, p1}, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;

    invoke-direct {v2, p1}, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/content/Context;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/content/Context;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 7
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "aNetworkAvailablityCheck"    # Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;
    .param p3, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p4, "pContext"    # Landroid/content/Context;
    .param p5, "cacheWriter"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 79
    invoke-direct {p0, p3, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;)V

    .line 81
    iput-object p2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mNetworkAvailabilityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    .line 83
    if-eqz p5, :cond_0

    .line 84
    iput-object p5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    goto :goto_0

    .line 86
    :cond_0
    nop

    .line 89
    new-instance v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 92
    :goto_0
    nop

    .line 93
    invoke-virtual {p0, p1, p3, p4}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->createAssetsProvider(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/content/Context;)Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;

    move-result-object v0

    .line 94
    .local v0, "assetsProvider":Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 97
    invoke-static {p1, p3, v1}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getMapTileFileStorageProviderBase(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;

    move-result-object v1

    .line 98
    .local v1, "cacheProvider":Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    nop

    .line 101
    invoke-virtual {p0, p1, p3}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->createArchiveProvider(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;

    move-result-object v2

    .line 102
    .local v2, "archiveProvider":Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    nop

    .line 105
    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->createApproximater(Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;)Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    move-result-object v3

    iput-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mApproximationProvider:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    .line 106
    iget-object v4, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    nop

    .line 109
    invoke-virtual {p0, p2, p3}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->createDownloaderProvider(Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    move-result-object v3

    iput-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mDownloaderProvider:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    .line 110
    iget-object v4, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object v4

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/MapTileCache;->getProtectedTileComputers()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/osmdroid/util/MapTileAreaZoomComputer;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lorg/osmdroid/util/MapTileAreaZoomComputer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object v4

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/MapTileCache;->getProtectedTileComputers()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/osmdroid/util/MapTileAreaBorderComputer;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/osmdroid/util/MapTileAreaBorderComputer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/osmdroid/tileprovider/MapTileCache;->setAutoEnsureCapacity(Z)V

    .line 116
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/osmdroid/tileprovider/MapTileCache;->setStressedMemory(Z)V

    .line 119
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object v4

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/MapTileCache;->getPreCache()Lorg/osmdroid/tileprovider/MapTilePreCache;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/osmdroid/tileprovider/MapTilePreCache;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 120
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object v4

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/MapTileCache;->getPreCache()Lorg/osmdroid/tileprovider/MapTilePreCache;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/osmdroid/tileprovider/MapTilePreCache;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 121
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object v4

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/MapTileCache;->getPreCache()Lorg/osmdroid/tileprovider/MapTilePreCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/osmdroid/tileprovider/MapTilePreCache;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 122
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object v4

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/MapTileCache;->getPreCache()Lorg/osmdroid/tileprovider/MapTilePreCache;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/osmdroid/tileprovider/MapTilePreCache;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 125
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object v3

    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/MapTileCache;->getProtectedTileContainers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0, v6}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->setOfflineFirst(Z)Z

    .line 128
    return-void
.end method

.method public static getMapTileFileStorageProviderBase(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
    .locals 1
    .param p0, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTileWriter"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 211
    instance-of v0, p2, Lorg/osmdroid/tileprovider/modules/TileWriter;

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;

    invoke-direct {v0, p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-object v0

    .line 214
    :cond_0
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;

    invoke-direct {v0, p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-object v0
.end method


# virtual methods
.method protected createApproximater(Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;)Lorg/osmdroid/tileprovider/modules/MapTileApproximater;
    .locals 1
    .param p1, "assetsProvider"    # Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
    .param p2, "cacheProvider"    # Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
    .param p3, "archiveProvider"    # Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;

    .line 131
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;-><init>()V

    .line 132
    .local v0, "approximationProvider":Lorg/osmdroid/tileprovider/modules/MapTileApproximater;
    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 133
    invoke-virtual {v0, p2}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 134
    invoke-virtual {v0, p3}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 135
    return-object v0
.end method

.method protected createArchiveProvider(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
    .locals 1
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 139
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-direct {v0, p1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-object v0
.end method

.method protected createAssetsProvider(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/content/Context;)Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
    .locals 2
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p3, "pContext"    # Landroid/content/Context;

    .line 144
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;

    .line 145
    invoke-virtual {p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Landroid/content/res/AssetManager;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 144
    return-object v0
.end method

.method protected createDownloaderProvider(Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)Lorg/osmdroid/tileprovider/modules/MapTileDownloader;
    .locals 2
    .param p1, "aNetworkAvailablityCheck"    # Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;
    .param p2, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 158
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-direct {v0, p2, v1, p1}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;)V

    return-object v0
.end method

.method public detach()V
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->onDetach()V

    .line 167
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 168
    invoke-super {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->detach()V

    .line 169
    return-void
.end method

.method public getTileWriter()Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    return-object v0
.end method

.method protected isDowngradedMode(J)Z
    .locals 7
    .param p1, "pMapTileIndex"    # J

    .line 176
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mNetworkAvailabilityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;->getNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->useDataConnection()Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    :cond_1
    return v1

    .line 180
    :cond_2
    const/4 v0, -0x1

    .line 181
    .local v0, "zoomMin":I
    const/4 v2, -0x1

    .line 182
    .local v2, "zoomMax":I
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 183
    .local v4, "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getUsesDataConnection()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 185
    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v6

    .line 186
    .local v6, "tmp":I
    if-eq v0, v5, :cond_3

    if-le v0, v6, :cond_4

    .line 187
    :cond_3
    move v0, v6

    .line 189
    :cond_4
    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v6

    .line 190
    if-eq v2, v5, :cond_5

    if-ge v2, v6, :cond_6

    .line 191
    :cond_5
    move v2, v6

    .line 194
    .end local v4    # "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .end local v6    # "tmp":I
    :cond_6
    goto :goto_0

    .line 195
    :cond_7
    if-eq v0, v5, :cond_b

    if-ne v2, v5, :cond_8

    goto :goto_2

    .line 198
    :cond_8
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v3

    .line 199
    .local v3, "zoom":I
    if-lt v3, v0, :cond_a

    if-le v3, v2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_1
    return v1

    .line 196
    .end local v3    # "zoom":I
    :cond_b
    :goto_2
    return v1
.end method

.method public setOfflineFirst(Z)Z
    .locals 7
    .param p1, "pOfflineFirst"    # Z

    .line 222
    const/4 v0, -0x1

    .line 223
    .local v0, "downloaderIndex":I
    const/4 v1, -0x1

    .line 224
    .local v1, "approximationIndex":I
    const/4 v2, 0x0

    .line 225
    .local v2, "i":I
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 226
    .local v4, "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    if-ne v0, v5, :cond_0

    iget-object v6, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mDownloaderProvider:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    if-ne v4, v6, :cond_0

    .line 227
    move v0, v2

    .line 229
    :cond_0
    if-ne v1, v5, :cond_1

    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mApproximationProvider:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    if-ne v4, v5, :cond_1

    .line 230
    move v1, v2

    .line 232
    :cond_1
    nop

    .end local v4    # "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    add-int/lit8 v2, v2, 0x1

    .line 233
    goto :goto_0

    .line 234
    :cond_2
    if-eq v0, v5, :cond_6

    if-ne v1, v5, :cond_3

    goto :goto_1

    .line 237
    :cond_3
    const/4 v3, 0x1

    if-ge v1, v0, :cond_4

    if-eqz p1, :cond_4

    .line 238
    return v3

    .line 240
    :cond_4
    if-le v1, v0, :cond_5

    if-nez p1, :cond_5

    .line 241
    return v3

    .line 243
    :cond_5
    iget-object v4, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mApproximationProvider:Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    invoke-interface {v4, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v4, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mDownloaderProvider:Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-interface {v4, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 245
    return v3

    .line 235
    :cond_6
    :goto_1
    const/4 v3, 0x0

    return v3
.end method
