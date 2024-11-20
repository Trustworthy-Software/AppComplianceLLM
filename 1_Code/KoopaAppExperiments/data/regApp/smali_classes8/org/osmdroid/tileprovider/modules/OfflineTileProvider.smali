.class public Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;
.super Lorg/osmdroid/tileprovider/MapTileProviderArray;
.source "OfflineTileProvider.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/IMapTileProviderCallback;


# instance fields
.field private archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;[Ljava/io/File;)V
    .locals 7
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "source"    # [Ljava/io/File;

    .line 31
    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/osmdroid/tileprovider/tilesource/FileBasedTileSource;->getSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;)V

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/modules/IArchiveFile;>;"
    array-length v2, p2

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p2, v0

    .line 35
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->getArchiveFile(Ljava/io/File;)Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    move-result-object v4

    .line 36
    .local v4, "temp":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    if-eqz v4, :cond_0

    .line 37
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 39
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", no tile provider is registered to handle the file extension"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OsmDroid"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "temp":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    .line 43
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    .line 44
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v2

    iget-object v3, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    invoke-direct {v0, p1, v2, v3}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;[Lorg/osmdroid/tileprovider/modules/IArchiveFile;)V

    .line 45
    .local v0, "mapTileFileArchiveProvider":Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->mTileProviderList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v2, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    invoke-direct {v2}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;-><init>()V

    .line 48
    .local v2, "approximationProvider":Lorg/osmdroid/tileprovider/modules/MapTileApproximater;
    iget-object v3, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->mTileProviderList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v2, v0}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 51
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 4

    .line 58
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    if-eqz v0, :cond_0

    .line 59
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 60
    .local v3, "file":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    invoke-interface {v3}, Lorg/osmdroid/tileprovider/modules/IArchiveFile;->close()V

    .line 59
    .end local v3    # "file":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-super {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->detach()V

    .line 64
    return-void
.end method

.method public getArchives()[Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    return-object v0
.end method

.method protected isDowngradedMode(J)Z
    .locals 1
    .param p1, "pMapTileIndex"    # J

    .line 68
    const/4 v0, 0x1

    return v0
.end method
