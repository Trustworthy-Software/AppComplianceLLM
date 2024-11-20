.class public Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;
.super Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
.source "MapTileAssetsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;
    }
.end annotation


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mTileSource:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/osmdroid/tileprovider/tilesource/ITileSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Landroid/content/res/AssetManager;)V
    .locals 1
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "pAssets"    # Landroid/content/res/AssetManager;

    .line 49
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Landroid/content/res/AssetManager;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Landroid/content/res/AssetManager;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 7
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "pAssets"    # Landroid/content/res/AssetManager;
    .param p3, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 55
    nop

    .line 56
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileDownloadThreads()S

    move-result v5

    .line 57
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileDownloadMaxQueueSize()S

    move-result v6

    .line 55
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Landroid/content/res/AssetManager;Lorg/osmdroid/tileprovider/tilesource/ITileSource;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Landroid/content/res/AssetManager;Lorg/osmdroid/tileprovider/tilesource/ITileSource;II)V
    .locals 1
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "pAssets"    # Landroid/content/res/AssetManager;
    .param p3, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p4, "pThreadPoolSize"    # I
    .param p5, "pPendingQueueSize"    # I

    .line 65
    invoke-direct {p0, p1, p4, p5}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;II)V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    invoke-virtual {p0, p3}, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 68
    iput-object p2, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;->mAssets:Landroid/content/res/AssetManager;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;

    .line 30
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method public getMaximumZoomLevel()I
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 107
    .local v0, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getMaximumZoomLevel()I

    move-result v1

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getMaximumZoomLevel()I

    move-result v1

    .line 107
    :goto_0
    return v1
.end method

.method public getMinimumZoomLevel()I
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 101
    .local v0, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getMinimumZoomLevel()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .line 85
    const-string v0, "Assets Cache Provider"

    return-object v0
.end method

.method protected getThreadGroupName()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "assets"

    return-object v0
.end method

.method public getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;
    .locals 2

    .line 95
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;->mAssets:Landroid/content/res/AssetManager;

    invoke-direct {v0, p0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;Landroid/content/res/AssetManager;)V

    return-object v0
.end method

.method public bridge synthetic getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;->getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;

    move-result-object v0

    return-object v0
.end method

.method public getUsesDataConnection()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 113
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 114
    return-void
.end method
