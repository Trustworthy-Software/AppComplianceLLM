.class public Lorg/osmdroid/tileprovider/modules/MapTileDownloader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
.source "MapTileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;
    }
.end annotation


# instance fields
.field private final mFilesystemCache:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

.field private final mNetworkAvailablityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

.field private mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

.field private final mTileLoader:Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;

.field private final mTileSource:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrlBackoff:Lorg/osmdroid/util/UrlBackoff;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pFilesystemCache"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;)V
    .locals 7
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pFilesystemCache"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .param p3, "pNetworkAvailablityCheck"    # Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    .line 66
    nop

    .line 67
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileDownloadThreads()S

    move-result v5

    .line 68
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileDownloadMaxQueueSize()S

    move-result v6

    .line 66
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;II)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pFilesystemCache"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .param p3, "pNetworkAvailablityCheck"    # Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;
    .param p4, "pThreadPoolSize"    # I
    .param p5, "pPendingQueueSize"    # I

    .line 75
    invoke-direct {p0, p4, p5}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;-><init>(II)V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileLoader:Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;

    .line 47
    new-instance v0, Lorg/osmdroid/util/UrlBackoff;

    invoke-direct {v0}, Lorg/osmdroid/util/UrlBackoff;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mUrlBackoff:Lorg/osmdroid/util/UrlBackoff;

    .line 49
    new-instance v0, Lorg/osmdroid/tileprovider/modules/TileDownloader;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/modules/TileDownloader;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

    .line 77
    iput-object p2, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mFilesystemCache:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 78
    iput-object p3, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mNetworkAvailablityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    .line 79
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    .line 26
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    .line 26
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mFilesystemCache:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    return-object v0
.end method

.method static synthetic access$200(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/tileprovider/modules/TileDownloader;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    .line 26
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

    return-object v0
.end method

.method static synthetic access$300(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    .line 26
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mNetworkAvailablityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    return-object v0
.end method

.method static synthetic access$400(Lorg/osmdroid/tileprovider/modules/MapTileDownloader;)Lorg/osmdroid/util/UrlBackoff;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    .line 26
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mUrlBackoff:Lorg/osmdroid/util/UrlBackoff;

    return-object v0
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 116
    invoke-super {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->detach()V

    .line 117
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mFilesystemCache:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->onDetach()V

    .line 119
    :cond_0
    return-void
.end method

.method public getMaximumZoomLevel()I
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 130
    .local v0, "tileSource":Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getMaximumZoomLevel()I

    move-result v1

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getMaximumZoomLevel()I

    move-result v1

    .line 130
    :goto_0
    return v1
.end method

.method public getMinimumZoomLevel()I
    .locals 2

    .line 123
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 124
    .local v0, "tileSource":Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getMinimumZoomLevel()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .line 101
    const-string v0, "Online Tile Download Provider"

    return-object v0
.end method

.method protected getThreadGroupName()Ljava/lang/String;
    .locals 1

    .line 106
    const-string v0, "downloader"

    return-object v0
.end method

.method public getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileLoader:Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;

    return-object v0
.end method

.method public bridge synthetic getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileDownloader$TileLoader;

    move-result-object v0

    return-object v0
.end method

.method public getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    return-object v0
.end method

.method public getUsesDataConnection()Z
    .locals 1

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public setTileDownloader(Lorg/osmdroid/tileprovider/modules/TileDownloader;)V
    .locals 0
    .param p1, "pTileDownloader"    # Lorg/osmdroid/tileprovider/modules/TileDownloader;

    .line 224
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileDownloader:Lorg/osmdroid/tileprovider/modules/TileDownloader;

    .line 225
    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 2
    .param p1, "tileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 137
    instance-of v0, p1, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v1, p1

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 143
    :goto_0
    return-void
.end method
