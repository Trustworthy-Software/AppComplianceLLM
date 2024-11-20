.class public Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;
.super Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
.source "MapTileFileArchiveProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;
    }
.end annotation


# instance fields
.field private final ignoreTileSource:Z

.field private final mArchiveFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/tileprovider/modules/IArchiveFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpecificArchivesProvided:Z

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
.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;[Lorg/osmdroid/tileprovider/modules/IArchiveFile;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;[Lorg/osmdroid/tileprovider/modules/IArchiveFile;)V
    .locals 1
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p3, "pArchives"    # [Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;[Lorg/osmdroid/tileprovider/modules/IArchiveFile;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;[Lorg/osmdroid/tileprovider/modules/IArchiveFile;Z)V
    .locals 3
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p3, "pArchives"    # [Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    .param p4, "ignoreTileSource"    # Z

    .line 71
    nop

    .line 72
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemThreads()S

    move-result v0

    .line 73
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemMaxQueueSize()S

    move-result v1

    .line 71
    invoke-direct {p0, p1, v0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;II)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    .line 75
    iput-boolean p4, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->ignoreTileSource:Z

    .line 76
    invoke-virtual {p0, p2}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 78
    if-nez p3, :cond_0

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mSpecificArchivesProvided:Z

    .line 80
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->findArchiveFiles()V

    goto :goto_1

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mSpecificArchivesProvided:Z

    .line 83
    array-length v1, p3

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 84
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    .line 28
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;JLorg/osmdroid/tileprovider/tilesource/ITileSource;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->getInputStream(JLorg/osmdroid/tileprovider/tilesource/ITileSource;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private clearArcives()V
    .locals 3

    .line 162
    nop

    :goto_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    .line 164
    .local v0, "t":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0}, Lorg/osmdroid/tileprovider/modules/IArchiveFile;->close()V

    .line 166
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    .end local v0    # "t":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    goto :goto_0

    .line 168
    :cond_1
    return-void
.end method

.method private findArchiveFiles()V
    .locals 7

    .line 175
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->clearArcives()V

    .line 178
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v0

    .line 179
    .local v0, "cachePaths":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 181
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 182
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 183
    .local v4, "file":Ljava/io/File;
    invoke-static {v4}, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->getArchiveFile(Ljava/io/File;)Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    move-result-object v5

    .line 184
    .local v5, "archiveFile":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    if-eqz v5, :cond_0

    .line 185
    iget-boolean v6, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->ignoreTileSource:Z

    invoke-interface {v5, v6}, Lorg/osmdroid/tileprovider/modules/IArchiveFile;->setIgnoreTileSource(Z)V

    .line 186
    iget-object v6, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "archiveFile":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "files":[Ljava/io/File;
    :cond_1
    return-void
.end method

.method private declared-synchronized getInputStream(JLorg/osmdroid/tileprovider/tilesource/ITileSource;)Ljava/io/InputStream;
    .locals 5
    .param p1, "pMapTileIndex"    # J
    .param p3, "tileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    .line 196
    .local v1, "archiveFile":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    if-eqz v1, :cond_1

    .line 197
    invoke-interface {v1, p3, p1, p2}, Lorg/osmdroid/tileprovider/modules/IArchiveFile;->getInputStream(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/InputStream;

    move-result-object v2

    .line 198
    .local v2, "in":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 199
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "OsmDroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found tile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .end local p0    # "this":Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;
    :cond_0
    monitor-exit p0

    return-object v2

    .line 205
    .end local v1    # "archiveFile":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_1
    goto :goto_0

    .line 207
    :cond_2
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 194
    .end local p1    # "pMapTileIndex":J
    .end local p3    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public detach()V
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->clearArcives()V

    .line 158
    invoke-super {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->detach()V

    .line 159
    return-void
.end method

.method public getMaximumZoomLevel()I
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 132
    .local v0, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getMaximumZoomLevel()I

    move-result v1

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getMaximumZoomLevel()I

    move-result v1

    .line 132
    :goto_0
    return v1
.end method

.method public getMinimumZoomLevel()I
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 126
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

    .line 110
    const-string v0, "File Archive Provider"

    return-object v0
.end method

.method protected getThreadGroupName()Ljava/lang/String;
    .locals 1

    .line 115
    const-string v0, "filearchive"

    return-object v0
.end method

.method public getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;
    .locals 1

    .line 120
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;)V

    return-object v0
.end method

.method public bridge synthetic getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;

    move-result-object v0

    return-object v0
.end method

.method public getUsesDataConnection()Z
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected onMediaMounted()V
    .locals 1

    .line 138
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mSpecificArchivesProvided:Z

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->findArchiveFiles()V

    .line 141
    :cond_0
    return-void
.end method

.method protected onMediaUnmounted()V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mSpecificArchivesProvided:Z

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->findArchiveFiles()V

    .line 148
    :cond_0
    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 152
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 153
    return-void
.end method
