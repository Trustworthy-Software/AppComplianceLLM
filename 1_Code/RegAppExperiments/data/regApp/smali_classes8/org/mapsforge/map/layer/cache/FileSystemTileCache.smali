.class public Lorg/mapsforge/map/layer/cache/FileSystemTileCache;
.super Ljava/lang/Object;
.source "FileSystemTileCache.java"

# interfaces
.implements Lorg/mapsforge/map/layer/cache/TileCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/layer/cache/FileSystemTileCache$CacheDirectoryReader;
    }
.end annotation


# static fields
.field static final FILE_EXTENSION:Ljava/lang/String; = ".tile"

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final cacheDirectory:Ljava/io/File;

.field private final graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

.field private final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private lruCache:Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapsforge/map/layer/cache/FileWorkingSetCache<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final observable:Lorg/mapsforge/map/model/common/Observable;

.field private final persistent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(ILjava/io/File;Lorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "cacheDirectory"    # Ljava/io/File;
    .param p3, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;-><init>(ILjava/io/File;Lorg/mapsforge/core/graphics/GraphicFactory;Z)V

    .line 168
    return-void
.end method

.method public constructor <init>(ILjava/io/File;Lorg/mapsforge/core/graphics/GraphicFactory;Z)V
    .locals 3
    .param p1, "capacity"    # I
    .param p2, "cacheDirectory"    # Ljava/io/File;
    .param p3, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p4, "persistent"    # Z

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Lorg/mapsforge/map/model/common/Observable;

    invoke-direct {v0}, Lorg/mapsforge/map/model/common/Observable;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->observable:Lorg/mapsforge/map/model/common/Observable;

    .line 188
    iput-boolean p4, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->persistent:Z

    .line 189
    new-instance v0, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;

    invoke-direct {v0, p1}, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;

    .line 190
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 191
    invoke-static {p2}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->isValidCacheDirectory(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 192
    iput-object p2, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->cacheDirectory:Ljava/io/File;

    .line 193
    if-eqz p4, :cond_1

    .line 197
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lorg/mapsforge/map/layer/cache/FileSystemTileCache$CacheDirectoryReader;

    invoke-direct {v2, p0, v1}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache$CacheDirectoryReader;-><init>(Lorg/mapsforge/map/layer/cache/FileSystemTileCache;Lorg/mapsforge/map/layer/cache/FileSystemTileCache$1;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 201
    :cond_0
    iput-object v1, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->cacheDirectory:Ljava/io/File;

    .line 203
    :cond_1
    :goto_0
    iput-object p3, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 204
    return-void
.end method

.method static synthetic access$000(Lorg/mapsforge/map/layer/cache/FileSystemTileCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/cache/FileSystemTileCache;

    .line 53
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->cacheDirectory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Ljava/io/File;

    .line 53
    invoke-static {p0}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->isValidFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/mapsforge/map/layer/cache/FileSystemTileCache;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/cache/FileSystemTileCache;

    .line 53
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$300(Lorg/mapsforge/map/layer/cache/FileSystemTileCache;)Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/layer/cache/FileSystemTileCache;

    .line 53
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .locals 1

    .line 53
    sget-object v0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static deleteDirectory(Ljava/io/File;)Z
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    .line 132
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 133
    return v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "children":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 139
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 140
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->deleteDirectory(Ljava/io/File;)Z

    move-result v3

    .line 141
    .local v3, "success":Z
    if-nez v3, :cond_1

    .line 142
    return v0

    .line 139
    .end local v3    # "success":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "children":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private getOutputFile(Lorg/mapsforge/map/layer/queue/Job;)Ljava/io/File;
    .locals 5
    .param p1, "job"    # Lorg/mapsforge/map/layer/queue/Job;

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->cacheDirectory:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mapsforge/map/layer/queue/Job;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "file":Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "dir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->isValidCacheDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 368
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static isValidCacheDirectory(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 106
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0
.end method

.method private static isValidFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 120
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private remove(Lorg/mapsforge/map/layer/queue/Job;)V
    .locals 2
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;

    .line 373
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 374
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;

    invoke-virtual {p1}, Lorg/mapsforge/map/layer/queue/Job;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 377
    nop

    .line 379
    return-void

    .line 376
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 377
    throw v0
.end method

.method private storeData(Lorg/mapsforge/map/layer/queue/Job;Lorg/mapsforge/core/graphics/TileBitmap;)V
    .locals 5
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;
    .param p2, "bitmap"    # Lorg/mapsforge/core/graphics/TileBitmap;

    .line 388
    const/4 v0, 0x0

    .line 390
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->getOutputFile(Lorg/mapsforge/map/layer/queue/Job;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 391
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_0

    .line 422
    invoke-static {v0}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 393
    return-void

    .line 395
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 396
    invoke-interface {p2, v0}, Lorg/mapsforge/core/graphics/TileBitmap;->compress(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 398
    :try_start_2
    iget-object v2, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 399
    iget-object v2, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;

    invoke-virtual {p1}, Lorg/mapsforge/map/layer/queue/Job;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 400
    sget-object v2, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overwriting cached entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/mapsforge/map/layer/queue/Job;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    :cond_1
    :try_start_3
    iget-object v2, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 404
    nop

    .line 422
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    invoke-static {v0}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 423
    goto :goto_1

    .line 403
    .restart local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 404
    nop

    .end local v0    # "outputStream":Ljava/io/OutputStream;
    .end local p1    # "key":Lorg/mapsforge/map/layer/queue/Job;
    .end local p2    # "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 422
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    .restart local p1    # "key":Lorg/mapsforge/map/layer/queue/Job;
    .restart local p2    # "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 405
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v2, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Disabling filesystem cache"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->destroy()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 416
    :try_start_6
    iget-object v2, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 417
    new-instance v2, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;-><init>(I)V

    iput-object v2, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 419
    :try_start_7
    iget-object v2, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 420
    goto :goto_0

    .line 425
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 419
    .restart local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 420
    nop

    .end local v0    # "outputStream":Ljava/io/OutputStream;
    .end local p1    # "key":Lorg/mapsforge/map/layer/queue/Job;
    .end local p2    # "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 422
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    .restart local p1    # "key":Lorg/mapsforge/map/layer/queue/Job;
    .restart local p2    # "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    :goto_2
    invoke-static {v0}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 423
    throw v1
.end method


# virtual methods
.method public addObserver(Lorg/mapsforge/map/model/common/Observer;)V
    .locals 1
    .param p1, "observer"    # Lorg/mapsforge/map/model/common/Observer;

    .line 353
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->observable:Lorg/mapsforge/map/model/common/Observable;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/model/common/Observable;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 354
    return-void
.end method

.method public containsKey(Lorg/mapsforge/map/layer/queue/Job;)Z
    .locals 2
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;

    .line 209
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 212
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;

    invoke-virtual {p1}, Lorg/mapsforge/map/layer/queue/Job;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 212
    return v0

    .line 214
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 215
    throw v0
.end method

.method public destroy()V
    .locals 1

    .line 233
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->persistent:Z

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->purge()V

    .line 235
    :cond_0
    return-void
.end method

.method public get(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;
    .locals 9
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;

    .line 242
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 243
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;

    invoke-virtual {p1}, Lorg/mapsforge/map/layer/queue/Job;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 246
    nop

    .line 247
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 248
    return-object v1

    .line 251
    :cond_0
    const/4 v2, 0x0

    .line 253
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 254
    iget-object v3, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v4, p1, Lorg/mapsforge/map/layer/queue/Job;->tile:Lorg/mapsforge/core/model/Tile;

    iget v4, v4, Lorg/mapsforge/core/model/Tile;->tileSize:I

    iget-boolean v5, p1, Lorg/mapsforge/map/layer/queue/Job;->hasAlpha:Z

    invoke-interface {v3, v2, v4, v5}, Lorg/mapsforge/core/graphics/GraphicFactory;->createTileBitmap(Ljava/io/InputStream;IZ)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v3

    .line 255
    .local v3, "result":Lorg/mapsforge/core/graphics/TileBitmap;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/mapsforge/core/graphics/TileBitmap;->setTimestamp(J)V
    :try_end_1
    .catch Lorg/mapsforge/core/graphics/CorruptedInputStreamException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    nop

    .line 269
    invoke-static {v2}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 256
    return-object v3

    .line 269
    .end local v3    # "result":Lorg/mapsforge/core/graphics/TileBitmap;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v3

    .line 265
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    invoke-direct {p0, p1}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->remove(Lorg/mapsforge/map/layer/queue/Job;)V

    .line 266
    sget-object v4, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    nop

    .line 269
    invoke-static {v2}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 267
    return-object v1

    .line 257
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 261
    .local v3, "e":Lorg/mapsforge/core/graphics/CorruptedInputStreamException;
    :try_start_3
    invoke-direct {p0, p1}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->remove(Lorg/mapsforge/map/layer/queue/Job;)V

    .line 262
    sget-object v4, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "input stream from file system cache invalid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/mapsforge/map/layer/queue/Job;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    nop

    .line 269
    invoke-static {v2}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 263
    return-object v1

    .line 269
    .end local v3    # "e":Lorg/mapsforge/core/graphics/CorruptedInputStreamException;
    :goto_0
    invoke-static {v2}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 270
    throw v1

    .line 245
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 246
    throw v0
.end method

.method public getCapacity()I
    .locals 2

    .line 276
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 277
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;

    iget v0, v0, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 277
    return v0

    .line 279
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 280
    throw v0
.end method

.method public getCapacityFirstLevel()I
    .locals 1

    .line 285
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->getCapacity()I

    move-result v0

    return v0
.end method

.method public getImmediately(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;
    .locals 1
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;

    .line 290
    invoke-virtual {p0, p1}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->get(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v0

    return-object v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->persistent:Z

    return v0
.end method

.method public purge()V
    .locals 2

    .line 315
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 316
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 319
    nop

    .line 321
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->cacheDirectory:Ljava/io/File;

    invoke-static {v0}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->deleteDirectory(Ljava/io/File;)Z

    .line 322
    return-void

    .line 318
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 319
    throw v0
.end method

.method public put(Lorg/mapsforge/map/layer/queue/Job;Lorg/mapsforge/core/graphics/TileBitmap;)V
    .locals 2
    .param p1, "key"    # Lorg/mapsforge/map/layer/queue/Job;
    .param p2, "bitmap"    # Lorg/mapsforge/core/graphics/TileBitmap;

    .line 326
    if-eqz p1, :cond_2

    .line 328
    if-eqz p2, :cond_1

    .line 332
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->getCapacity()I

    move-result v0

    if-nez v0, :cond_0

    .line 333
    return-void

    .line 336
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->storeData(Lorg/mapsforge/map/layer/queue/Job;Lorg/mapsforge/core/graphics/TileBitmap;)V

    .line 337
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->observable:Lorg/mapsforge/map/model/common/Observable;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/common/Observable;->notifyObservers()V

    .line 338
    return-void

    .line 329
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeObserver(Lorg/mapsforge/map/model/common/Observer;)V
    .locals 1
    .param p1, "observer"    # Lorg/mapsforge/map/model/common/Observer;

    .line 358
    iget-object v0, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->observable:Lorg/mapsforge/map/model/common/Observable;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/model/common/Observable;->removeObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 359
    return-void
.end method

.method public setWorkingSet(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/mapsforge/map/layer/queue/Job;",
            ">;)V"
        }
    .end annotation

    .line 342
    .local p1, "workingSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/map/layer/queue/Job;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 343
    .local v0, "workingSetInteger":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p1

    .line 344
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/layer/queue/Job;

    .line 345
    .local v2, "job":Lorg/mapsforge/map/layer/queue/Job;
    invoke-virtual {v2}, Lorg/mapsforge/map/layer/queue/Job;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    nop

    .end local v2    # "job":Lorg/mapsforge/map/layer/queue/Job;
    goto :goto_0

    .line 347
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    iget-object v1, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->lruCache:Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;

    invoke-virtual {v1, v0}, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;->setWorkingSet(Ljava/util/Set;)V

    .line 349
    return-void

    .line 347
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
