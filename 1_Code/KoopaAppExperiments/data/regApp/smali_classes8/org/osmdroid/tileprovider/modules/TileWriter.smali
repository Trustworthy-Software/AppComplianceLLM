.class public Lorg/osmdroid/tileprovider/modules/TileWriter;
.super Ljava/lang/Object;
.source "TileWriter.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/modules/IFilesystemCache;


# static fields
.field static hasInited:Z

.field private static mUsedCacheSpace:J


# instance fields
.field initThread:Ljava/lang/Thread;

.field private mMaximumCachedFileAge:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->hasInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    .line 58
    sget-boolean v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->hasInited:Z

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->hasInited:Z

    .line 61
    new-instance v1, Lorg/osmdroid/tileprovider/modules/TileWriter$1;

    invoke-direct {v1, p0}, Lorg/osmdroid/tileprovider/modules/TileWriter$1;-><init>(Lorg/osmdroid/tileprovider/modules/TileWriter;)V

    iput-object v1, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    .line 76
    const-string v2, "TileWriter#init"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 78
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    :cond_0
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 33
    sget-wide v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .locals 0
    .param p0, "x0"    # J

    .line 33
    sput-wide p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    return-wide p0
.end method

.method static synthetic access$100(Lorg/osmdroid/tileprovider/modules/TileWriter;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/TileWriter;
    .param p1, "x1"    # Ljava/io/File;

    .line 33
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/TileWriter;->calculateDirectorySize(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lorg/osmdroid/tileprovider/modules/TileWriter;)V
    .locals 0
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/TileWriter;

    .line 33
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/TileWriter;->cutCurrentCache()V

    return-void
.end method

.method private calculateDirectorySize(Ljava/io/File;)V
    .locals 8
    .param p1, "pDirectory"    # Ljava/io/File;

    .line 210
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 211
    .local v0, "z":[Ljava/io/File;
    if-eqz v0, :cond_2

    .line 212
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 213
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    sget-wide v4, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    sput-wide v4, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    .line 216
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v3}, Lorg/osmdroid/tileprovider/modules/TileWriter;->isSymbolicDirectoryLink(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 217
    invoke-direct {p0, v3}, Lorg/osmdroid/tileprovider/modules/TileWriter;->calculateDirectorySize(Ljava/io/File;)V

    .line 212
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_2
    return-void
.end method

.method private createFolderAndCheckIfExists(Ljava/io/File;)Z
    .locals 5
    .param p1, "pFile"    # Ljava/io/File;

    .line 183
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 184
    return v1

    .line 186
    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    const-string v2, "OsmDroid"

    if-eqz v0, :cond_1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - wait and check again"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 196
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Seems like another thread created "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_2
    return v1

    .line 202
    :cond_3
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File still doesn\'t exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private cutCurrentCache()V
    .locals 11

    .line 270
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v0

    .line 271
    .local v0, "lock":Ljava/io/File;
    monitor-enter v0

    .line 273
    :try_start_0
    sget-wide v1, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheTrimBytes()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 275
    const-string v1, "OsmDroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trimming tile cache from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 276
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheTrimBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getDirectoryFileList(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 281
    .local v1, "z":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/io/File;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/io/File;

    .line 282
    .local v3, "files":[Ljava/io/File;
    new-instance v4, Lorg/osmdroid/tileprovider/modules/TileWriter$2;

    invoke-direct {v4, p0}, Lorg/osmdroid/tileprovider/modules/TileWriter$2;-><init>(Lorg/osmdroid/tileprovider/modules/TileWriter;)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 289
    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 290
    .local v5, "file":Ljava/io/File;
    sget-wide v6, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v8

    invoke-interface {v8}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheTrimBytes()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 291
    goto :goto_1

    .line 294
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 295
    .local v6, "length":J
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 296
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v8

    invoke-interface {v8}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 297
    const-string v8, "OsmDroid"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cache trim deleting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_1
    sget-wide v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    sub-long/2addr v8, v6

    sput-wide v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    .line 289
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":J
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_3
    :goto_1
    const-string v2, "OsmDroid"

    const-string v4, "Finished trimming tile cache"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v1    # "z":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v3    # "files":[Ljava/io/File;
    :cond_4
    monitor-exit v0

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDirectoryFileList(Ljava/io/File;)Ljava/util/List;
    .locals 6
    .param p1, "aDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 250
    .local v1, "z":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 251
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 252
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 256
    invoke-direct {p0, v4}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getDirectoryFileList(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    :cond_2
    return-object v0
.end method

.method public static getUsedCacheSpace()J
    .locals 2

    .line 93
    sget-wide v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    return-wide v0
.end method

.method private isSymbolicDirectoryLink(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p1, "pParentDirectory"    # Ljava/io/File;
    .param p2, "pDirectory"    # Ljava/io/File;

    .line 233
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "canonicalParentPath1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "canonicalParentPath2":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v3

    return v0

    .line 238
    .end local v1    # "canonicalParentPath1":Ljava/lang/String;
    .end local v2    # "canonicalParentPath2":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/util/NoSuchElementException;
    return v0

    .line 236
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v1

    .line 237
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method


# virtual methods
.method public exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 175
    invoke-virtual {p0, p1, p2, p3}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getExpirationTimestamp(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/lang/Long;
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/File;
    .locals 4
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 169
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p2, p3}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileRelativeFilenameString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public loadTile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 317
    invoke-virtual {p0, p1, p2, p3}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/File;

    move-result-object v0

    .line 318
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    const/4 v1, 0x0

    return-object v1

    .line 322
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 325
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 326
    .local v2, "now":J
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 327
    .local v4, "lastModified":J
    iget-wide v6, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mMaximumCachedFileAge:J

    sub-long v6, v2, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 329
    .local v6, "fileExpired":Z
    :goto_0
    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    .line 330
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 331
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tile expired: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OsmDroid"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_2
    const/4 v7, -0x2

    invoke-static {v1, v7}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    .line 336
    :cond_3
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    .line 148
    :cond_0
    :goto_0
    return-void
.end method

.method public remove(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z
    .locals 4
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 152
    invoke-virtual {p0, p1, p2, p3}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/File;

    move-result-object v0

    .line 154
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 157
    :catch_0
    move-exception v1

    .line 159
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete cached tile from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OsmDroid"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public saveFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;JLjava/io/InputStream;Ljava/lang/Long;)Z
    .locals 14
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J
    .param p4, "pStream"    # Ljava/io/InputStream;
    .param p5, "pExpirationTime"    # Ljava/lang/Long;

    .line 108
    invoke-virtual/range {p0 .. p3}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/File;

    move-result-object v1

    .line 110
    .local v1, "file":Ljava/io/File;
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TileWrite "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OsmDroid"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 114
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v4, p0

    invoke-direct {p0, v2}, Lorg/osmdroid/tileprovider/modules/TileWriter;->createFolderAndCheckIfExists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    return v3

    .line 114
    :cond_1
    move-object v4, p0

    .line 118
    :cond_2
    const/4 v5, 0x0

    .line 120
    .local v5, "outputStream":Ljava/io/BufferedOutputStream;
    const/4 v6, 0x1

    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x2000

    invoke-direct {v0, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    .line 122
    move-object/from16 v7, p4

    :try_start_1
    invoke-static {v7, v5}, Lorg/osmdroid/tileprovider/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v8

    .line 124
    .local v8, "length":J
    sget-wide v10, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    add-long/2addr v10, v8

    sput-wide v10, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    .line 125
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-lez v0, :cond_3

    .line 126
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/TileWriter;->cutCurrentCache()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    .end local v8    # "length":J
    :cond_3
    nop

    .line 133
    invoke-static {v5}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 136
    return v6

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    move-object/from16 v7, p4

    goto :goto_1

    .line 128
    :catch_1
    move-exception v0

    move-object/from16 v7, p4

    .line 129
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    sget v8, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    add-int/2addr v8, v6

    sput v8, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    nop

    .line 132
    if-eqz v5, :cond_4

    .line 133
    invoke-static {v5}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 130
    :cond_4
    return v3

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v5, :cond_5

    .line 133
    invoke-static {v5}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 135
    :cond_5
    throw v0
.end method

.method public setMaximumCachedFileAge(J)V
    .locals 0
    .param p1, "mMaximumCachedFileAge"    # J

    .line 97
    iput-wide p1, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mMaximumCachedFileAge:J

    .line 98
    return-void
.end method
