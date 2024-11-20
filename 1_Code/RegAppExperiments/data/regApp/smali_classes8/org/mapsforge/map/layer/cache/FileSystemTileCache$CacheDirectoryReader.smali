.class Lorg/mapsforge/map/layer/cache/FileSystemTileCache$CacheDirectoryReader;
.super Ljava/lang/Object;
.source "FileSystemTileCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/layer/cache/FileSystemTileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheDirectoryReader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapsforge/map/layer/cache/FileSystemTileCache;


# direct methods
.method private constructor <init>(Lorg/mapsforge/map/layer/cache/FileSystemTileCache;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/mapsforge/map/layer/cache/FileSystemTileCache$CacheDirectoryReader;->this$0:Lorg/mapsforge/map/layer/cache/FileSystemTileCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mapsforge/map/layer/cache/FileSystemTileCache;Lorg/mapsforge/map/layer/cache/FileSystemTileCache$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mapsforge/map/layer/cache/FileSystemTileCache;
    .param p2, "x1"    # Lorg/mapsforge/map/layer/cache/FileSystemTileCache$1;

    .line 64
    invoke-direct {p0, p1}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache$CacheDirectoryReader;-><init>(Lorg/mapsforge/map/layer/cache/FileSystemTileCache;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 67
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/mapsforge/map/layer/cache/FileSystemTileCache$CacheDirectoryReader;->this$0:Lorg/mapsforge/map/layer/cache/FileSystemTileCache;

    invoke-static {v0}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->access$000(Lorg/mapsforge/map/layer/cache/FileSystemTileCache;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 68
    .local v2, "zFiles":[Ljava/io/File;
    if-eqz v2, :cond_7

    .line 69
    array-length v0, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_6

    aget-object v5, v2, v4

    .line 70
    .local v5, "z":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 71
    .local v6, "xFiles":[Ljava/io/File;
    if-eqz v6, :cond_5

    .line 72
    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 73
    .local v9, "x":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 74
    .local v10, "yFiles":[Ljava/io/File;
    if-eqz v10, :cond_3

    .line 75
    array-length v11, v10

    move v12, v3

    :goto_2
    if-ge v12, v11, :cond_2

    aget-object v13, v10, v12

    .line 76
    .local v13, "y":Ljava/io/File;
    invoke-static {v13}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->access$100(Ljava/io/File;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".tile"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 77
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 78
    .local v14, "index":I
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v0

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v2

    .end local v2    # "zFiles":[Ljava/io/File;
    .local v17, "zFiles":[Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v0, v2}, Lorg/mapsforge/map/layer/queue/Job;->composeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    iget-object v0, v1, Lorg/mapsforge/map/layer/cache/FileSystemTileCache$CacheDirectoryReader;->this$0:Lorg/mapsforge/map/layer/cache/FileSystemTileCache;

    invoke-static {v0}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->access$200(Lorg/mapsforge/map/layer/cache/FileSystemTileCache;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 81
    iget-object v0, v1, Lorg/mapsforge/map/layer/cache/FileSystemTileCache$CacheDirectoryReader;->this$0:Lorg/mapsforge/map/layer/cache/FileSystemTileCache;

    invoke-static {v0}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->access$300(Lorg/mapsforge/map/layer/cache/FileSystemTileCache;)Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;

    move-result-object v0

    invoke-virtual {v0, v2, v13}, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->access$400()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "overwriting cached entry: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    iget-object v0, v1, Lorg/mapsforge/map/layer/cache/FileSystemTileCache$CacheDirectoryReader;->this$0:Lorg/mapsforge/map/layer/cache/FileSystemTileCache;

    invoke-static {v0}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->access$200(Lorg/mapsforge/map/layer/cache/FileSystemTileCache;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 86
    goto :goto_3

    .line 85
    :catchall_0
    move-exception v0

    iget-object v3, v1, Lorg/mapsforge/map/layer/cache/FileSystemTileCache$CacheDirectoryReader;->this$0:Lorg/mapsforge/map/layer/cache/FileSystemTileCache;

    invoke-static {v3}, Lorg/mapsforge/map/layer/cache/FileSystemTileCache;->access$200(Lorg/mapsforge/map/layer/cache/FileSystemTileCache;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 86
    throw v0

    .line 76
    .end local v14    # "index":I
    .end local v17    # "zFiles":[Ljava/io/File;
    .local v2, "zFiles":[Ljava/io/File;
    :cond_1
    move/from16 v16, v0

    move-object/from16 v17, v2

    .line 75
    .end local v2    # "zFiles":[Ljava/io/File;
    .end local v13    # "y":Ljava/io/File;
    .restart local v17    # "zFiles":[Ljava/io/File;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v16

    move-object/from16 v2, v17

    const/4 v3, 0x0

    goto/16 :goto_2

    .end local v17    # "zFiles":[Ljava/io/File;
    .restart local v2    # "zFiles":[Ljava/io/File;
    :cond_2
    move/from16 v16, v0

    move-object/from16 v17, v2

    .end local v2    # "zFiles":[Ljava/io/File;
    .restart local v17    # "zFiles":[Ljava/io/File;
    goto :goto_4

    .line 74
    .end local v17    # "zFiles":[Ljava/io/File;
    .restart local v2    # "zFiles":[Ljava/io/File;
    :cond_3
    move/from16 v16, v0

    move-object/from16 v17, v2

    .line 72
    .end local v2    # "zFiles":[Ljava/io/File;
    .end local v9    # "x":Ljava/io/File;
    .end local v10    # "yFiles":[Ljava/io/File;
    .restart local v17    # "zFiles":[Ljava/io/File;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v16

    move-object/from16 v2, v17

    const/4 v3, 0x0

    goto/16 :goto_1

    .end local v17    # "zFiles":[Ljava/io/File;
    .restart local v2    # "zFiles":[Ljava/io/File;
    :cond_4
    move/from16 v16, v0

    move-object/from16 v17, v2

    .end local v2    # "zFiles":[Ljava/io/File;
    .restart local v17    # "zFiles":[Ljava/io/File;
    goto :goto_5

    .line 71
    .end local v17    # "zFiles":[Ljava/io/File;
    .restart local v2    # "zFiles":[Ljava/io/File;
    :cond_5
    move/from16 v16, v0

    move-object/from16 v17, v2

    .line 69
    .end local v2    # "zFiles":[Ljava/io/File;
    .end local v5    # "z":Ljava/io/File;
    .end local v6    # "xFiles":[Ljava/io/File;
    .restart local v17    # "zFiles":[Ljava/io/File;
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v16

    move-object/from16 v2, v17

    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v17    # "zFiles":[Ljava/io/File;
    .restart local v2    # "zFiles":[Ljava/io/File;
    :cond_6
    move-object/from16 v17, v2

    .end local v2    # "zFiles":[Ljava/io/File;
    .restart local v17    # "zFiles":[Ljava/io/File;
    goto :goto_6

    .line 68
    .end local v17    # "zFiles":[Ljava/io/File;
    .restart local v2    # "zFiles":[Ljava/io/File;
    :cond_7
    move-object/from16 v17, v2

    .line 94
    .end local v2    # "zFiles":[Ljava/io/File;
    .restart local v17    # "zFiles":[Ljava/io/File;
    :goto_6
    return-void
.end method
