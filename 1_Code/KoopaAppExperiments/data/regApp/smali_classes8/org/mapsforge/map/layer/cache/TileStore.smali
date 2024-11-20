.class public Lorg/mapsforge/map/layer/cache/TileStore;
.super Ljava/lang/Object;
.source "TileStore.java"

# interfaces
.implements Lorg/mapsforge/map/layer/cache/TileCache;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

.field private final rootDirectory:Ljava/io/File;

.field private final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/mapsforge/map/layer/cache/TileStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/layer/cache/TileStore;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 2
    .param p1, "rootDirectory"    # Ljava/io/File;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/mapsforge/map/layer/cache/TileStore;->rootDirectory:Ljava/io/File;

    .line 53
    iput-object p3, p0, Lorg/mapsforge/map/layer/cache/TileStore;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 54
    iput-object p2, p0, Lorg/mapsforge/map/layer/cache/TileStore;->suffix:Ljava/lang/String;

    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Root directory must be readable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addObserver(Lorg/mapsforge/map/model/common/Observer;)V
    .locals 0
    .param p1, "observer"    # Lorg/mapsforge/map/model/common/Observer;

    .line 147
    return-void
.end method

.method public declared-synchronized containsKey(Lorg/mapsforge/map/layer/queue/Job;)Z
    .locals 1
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mapsforge/map/layer/cache/TileStore;->findFile(Lorg/mapsforge/map/layer/queue/Job;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 62
    .end local p0    # "this":Lorg/mapsforge/map/layer/cache/TileStore;
    .end local p1    # "key":Lorg/mapsforge/map/layer/queue/Job;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized destroy()V
    .locals 0

    monitor-enter p0

    .line 68
    monitor-exit p0

    return-void
.end method

.method protected findFile(Lorg/mapsforge/map/layer/queue/Job;)Ljava/io/File;
    .locals 7
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;

    .line 121
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/TileStore;->rootDirectory:Ljava/io/File;

    iget-object v2, p1, Lorg/mapsforge/map/layer/queue/Job;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v2, v2, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v0, "l1":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v2, "Failed to find directory "

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 126
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p1, Lorg/mapsforge/map/layer/queue/Job;->tile:Lorg/mapsforge/core/model/Tile;

    iget v4, v4, Lorg/mapsforge/core/model/Tile;->tileX:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .local v1, "l2":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 131
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lorg/mapsforge/map/layer/queue/Job;->tile:Lorg/mapsforge/core/model/Tile;

    iget v5, v5, Lorg/mapsforge/core/model/Tile;->tileY:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/mapsforge/map/layer/cache/TileStore;->suffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    .local v2, "l3":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 136
    :cond_2
    sget-object v3, Lorg/mapsforge/map/layer/cache/TileStore;->LOGGER:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 137
    return-object v2

    .line 133
    :cond_3
    :goto_0
    sget-object v4, Lorg/mapsforge/map/layer/cache/TileStore;->LOGGER:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 134
    return-object v3

    .line 128
    .end local v2    # "l3":Ljava/io/File;
    :cond_4
    :goto_1
    sget-object v4, Lorg/mapsforge/map/layer/cache/TileStore;->LOGGER:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 129
    return-object v3

    .line 123
    .end local v1    # "l2":Ljava/io/File;
    :cond_5
    :goto_2
    sget-object v1, Lorg/mapsforge/map/layer/cache/TileStore;->LOGGER:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 124
    return-object v3
.end method

.method public declared-synchronized get(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;
    .locals 6
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mapsforge/map/layer/cache/TileStore;->findFile(Lorg/mapsforge/map/layer/queue/Job;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    monitor-exit p0

    return-object v1

    .line 78
    :cond_0
    const/4 v2, 0x0

    .line 80
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 81
    iget-object v3, p0, Lorg/mapsforge/map/layer/cache/TileStore;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v4, p1, Lorg/mapsforge/map/layer/queue/Job;->tile:Lorg/mapsforge/core/model/Tile;

    iget v4, v4, Lorg/mapsforge/core/model/Tile;->tileSize:I

    iget-boolean v5, p1, Lorg/mapsforge/map/layer/queue/Job;->hasAlpha:Z

    invoke-interface {v3, v2, v4, v5}, Lorg/mapsforge/core/graphics/GraphicFactory;->createTileBitmap(Ljava/io/InputStream;IZ)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v1
    :try_end_1
    .catch Lorg/mapsforge/core/graphics/CorruptedInputStreamException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :try_start_2
    invoke-static {v2}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    monitor-exit p0

    return-object v1

    .line 90
    .end local p0    # "this":Lorg/mapsforge/map/layer/cache/TileStore;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v2}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    throw v1

    .line 87
    :catch_0
    move-exception v3

    .line 88
    .local v3, "e":Ljava/io/IOException;
    nop

    .line 90
    invoke-static {v2}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    monitor-exit p0

    return-object v1

    .line 82
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 86
    .local v3, "e":Lorg/mapsforge/core/graphics/CorruptedInputStreamException;
    nop

    .line 90
    :try_start_4
    invoke-static {v2}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 86
    monitor-exit p0

    return-object v1

    .line 71
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "e":Lorg/mapsforge/core/graphics/CorruptedInputStreamException;
    .end local p1    # "key":Lorg/mapsforge/map/layer/queue/Job;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCapacity()I
    .locals 1

    monitor-enter p0

    .line 96
    monitor-exit p0

    const v0, 0x7fffffff

    return v0
.end method

.method public declared-synchronized getCapacityFirstLevel()I
    .locals 1

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/cache/TileStore;->getCapacity()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 101
    .end local p0    # "this":Lorg/mapsforge/map/layer/cache/TileStore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImmediately(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;
    .locals 1
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;

    .line 106
    invoke-virtual {p0, p1}, Lorg/mapsforge/map/layer/cache/TileStore;->get(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized purge()V
    .locals 0

    monitor-enter p0

    .line 112
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized put(Lorg/mapsforge/map/layer/queue/Job;Lorg/mapsforge/core/graphics/TileBitmap;)V
    .locals 0
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;
    .param p2, "bitmap"    # Lorg/mapsforge/core/graphics/TileBitmap;

    monitor-enter p0

    .line 117
    monitor-exit p0

    return-void
.end method

.method public removeObserver(Lorg/mapsforge/map/model/common/Observer;)V
    .locals 0
    .param p1, "observer"    # Lorg/mapsforge/map/model/common/Observer;

    .line 151
    return-void
.end method

.method public setWorkingSet(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/mapsforge/map/layer/queue/Job;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p1, "key":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/map/layer/queue/Job;>;"
    return-void
.end method
