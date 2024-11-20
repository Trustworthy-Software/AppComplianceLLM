.class public Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;
.super Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
.source "MapsForgeTileModuleProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider$TileLoader;
    }
.end annotation


# instance fields
.field protected tileSource:Lorg/osmdroid/mapsforge/MapsForgeTileSource;

.field protected tilewriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/mapsforge/MapsForgeTileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 2
    .param p1, "receiverRegistrar"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "tileSource"    # Lorg/osmdroid/mapsforge/MapsForgeTileSource;
    .param p3, "tilewriter"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 41
    nop

    .line 42
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemThreads()S

    move-result v0

    .line 43
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemMaxQueueSize()S

    move-result v1

    .line 41
    invoke-direct {p0, p1, v0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;II)V

    .line 45
    iput-object p2, p0, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;->tileSource:Lorg/osmdroid/mapsforge/MapsForgeTileSource;

    .line 46
    iput-object p3, p0, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;->tilewriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 48
    return-void
.end method


# virtual methods
.method public getMaximumZoomLevel()I
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;->tileSource:Lorg/osmdroid/mapsforge/MapsForgeTileSource;

    invoke-virtual {v0}, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->getMaximumZoomLevel()I

    move-result v0

    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;->tileSource:Lorg/osmdroid/mapsforge/MapsForgeTileSource;

    invoke-virtual {v0}, Lorg/osmdroid/mapsforge/MapsForgeTileSource;->getMinimumZoomLevel()I

    move-result v0

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "MapsforgeTiles Provider"

    return-object v0
.end method

.method protected getThreadGroupName()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "mapsforgetilesprovider"

    return-object v0
.end method

.method public getTileLoader()Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider$TileLoader;
    .locals 2

    .line 62
    new-instance v0, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider$TileLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider$TileLoader;-><init>(Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider$1;)V

    return-object v0
.end method

.method public bridge synthetic getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;->getTileLoader()Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider$TileLoader;

    move-result-object v0

    return-object v0
.end method

.method public getUsesDataConnection()Z
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "tileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 83
    instance-of v0, p1, Lorg/osmdroid/mapsforge/MapsForgeTileSource;

    if-eqz v0, :cond_0

    .line 84
    move-object v0, p1

    check-cast v0, Lorg/osmdroid/mapsforge/MapsForgeTileSource;

    iput-object v0, p0, Lorg/osmdroid/mapsforge/MapsForgeTileModuleProvider;->tileSource:Lorg/osmdroid/mapsforge/MapsForgeTileSource;

    .line 86
    :cond_0
    return-void
.end method
