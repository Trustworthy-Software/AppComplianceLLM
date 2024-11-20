.class public Lorg/osmdroid/mapsforge/MapsForgeTileProvider;
.super Lorg/osmdroid/tileprovider/MapTileProviderArray;
.source "MapsForgeTileProvider.java"


# instance fields
.field tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/mapsforge/MapsForgeTileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 5
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "pTileSource"    # Lorg/osmdroid/mapsforge/MapsForgeTileSource;
    .param p3, "cacheWriter"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 31
    invoke-direct {p0, p2, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;)V

    .line 33
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;

    invoke-direct {v0, p1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 35
    .local v0, "fileSystemProvider":Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;
    iget-object v1, p0, Lorg/osmdroid/mapsforge/MapsForgeTileProvider;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-direct {v1, p1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 39
    .local v1, "archiveProvider":Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;
    iget-object v2, p0, Lorg/osmdroid/mapsforge/MapsForgeTileProvider;->mTileProviderList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    if-eqz p3, :cond_0

    .line 43
    iput-object p3, p0, Lorg/osmdroid/mapsforge/MapsForgeTileProvider;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    goto :goto_0

    .line 45
    :cond_0
    new-instance v2, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-direct {v2}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;-><init>()V

    iput-object v2, p0, Lorg/osmdroid/mapsforge/MapsForgeTileProvider;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 50
    :goto_0
    new-instance v2, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;

    invoke-virtual {p0}, Lorg/osmdroid/mapsforge/MapsForgeTileProvider;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/mapsforge/MapsForgeTileSource;

    iget-object v4, p0, Lorg/osmdroid/mapsforge/MapsForgeTileProvider;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-direct {v2, p1, v3, v4}, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/mapsforge/MapsForgeTileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    .line 56
    .local v2, "moduleProvider":Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;
    iget-object v3, p0, Lorg/osmdroid/mapsforge/MapsForgeTileProvider;->mTileProviderList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v3, Lorg/osmdroid/mapsforge/MapsForgeTileProvider$1;

    invoke-direct {v3, p0}, Lorg/osmdroid/mapsforge/MapsForgeTileProvider$1;-><init>(Lorg/osmdroid/mapsforge/MapsForgeTileProvider;)V

    invoke-virtual {p2, v3}, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->addTileRefresher(Lorg/mapsforge/map/layer/renderer/DirectRenderer$TileRefresher;)V

    .line 66
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/osmdroid/mapsforge/MapsForgeTileProvider;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->onDetach()V

    .line 73
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/mapsforge/MapsForgeTileProvider;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 74
    invoke-super {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->detach()V

    .line 75
    return-void
.end method
