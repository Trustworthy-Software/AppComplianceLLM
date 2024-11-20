.class Lorg/mapsforge/map/reader/IndexCache;
.super Ljava/lang/Object;
.source "IndexCache.java"


# static fields
.field private static final INDEX_ENTRIES_PER_BLOCK:I = 0x80

.field private static final SIZE_OF_INDEX_BLOCK:I = 0x280


# instance fields
.field private final fileChannel:Ljava/nio/channels/FileChannel;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/mapsforge/map/reader/IndexCacheEntryKey;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;I)V
    .locals 1
    .param p1, "inputChannel"    # Ljava/nio/channels/FileChannel;
    .param p2, "capacity"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/mapsforge/map/reader/IndexCache;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 52
    new-instance v0, Lorg/mapsforge/core/util/LRUCache;

    invoke-direct {v0, p2}, Lorg/mapsforge/core/util/LRUCache;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/map/reader/IndexCache;->map:Ljava/util/Map;

    .line 53
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/mapsforge/map/reader/IndexCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 60
    return-void
.end method

.method getIndexEntry(Lorg/mapsforge/map/reader/header/SubFileParameter;J)J
    .locals 16
    .param p1, "subFileParameter"    # Lorg/mapsforge/map/reader/header/SubFileParameter;
    .param p2, "blockNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    iget-wide v5, v2, Lorg/mapsforge/map/reader/header/SubFileParameter;->numberOfBlocks:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 78
    const-wide/16 v5, 0x80

    div-long v7, v3, v5

    .line 81
    .local v7, "indexBlockNumber":J
    new-instance v0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;

    invoke-direct {v0, v2, v7, v8}, Lorg/mapsforge/map/reader/IndexCacheEntryKey;-><init>(Lorg/mapsforge/map/reader/header/SubFileParameter;J)V

    move-object v9, v0

    .line 84
    .local v9, "indexCacheEntryKey":Lorg/mapsforge/map/reader/IndexCacheEntryKey;
    iget-object v0, v1, Lorg/mapsforge/map/reader/IndexCache;->map:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 85
    .local v0, "indexBlock":[B
    if-nez v0, :cond_1

    .line 87
    iget-wide v10, v2, Lorg/mapsforge/map/reader/header/SubFileParameter;->indexStartAddress:J

    const-wide/16 v12, 0x280

    mul-long/2addr v12, v7

    add-long/2addr v10, v12

    .line 89
    .local v10, "indexBlockPosition":J
    iget-wide v12, v2, Lorg/mapsforge/map/reader/header/SubFileParameter;->indexEndAddress:J

    sub-long/2addr v12, v10

    long-to-int v12, v12

    .line 90
    .local v12, "remainingIndexSize":I
    const/16 v13, 0x280

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 91
    .local v13, "indexBlockSize":I
    new-array v14, v13, [B

    .line 92
    .end local v0    # "indexBlock":[B
    .local v14, "indexBlock":[B
    const/4 v0, 0x0

    invoke-static {v14, v0, v13}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 94
    .local v15, "indexBlockWrapper":Ljava/nio/ByteBuffer;
    iget-object v5, v1, Lorg/mapsforge/map/reader/IndexCache;->fileChannel:Ljava/nio/channels/FileChannel;

    monitor-enter v5

    .line 95
    :try_start_0
    iget-object v0, v1, Lorg/mapsforge/map/reader/IndexCache;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v10, v11}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 96
    iget-object v0, v1, Lorg/mapsforge/map/reader/IndexCache;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v15}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-ne v0, v13, :cond_0

    .line 99
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, v1, Lorg/mapsforge/map/reader/IndexCache;->map:Ljava/util/Map;

    invoke-interface {v0, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v14

    goto :goto_0

    .line 97
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not read index block with size: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "indexBlockNumber":J
    .end local v9    # "indexCacheEntryKey":Lorg/mapsforge/map/reader/IndexCacheEntryKey;
    .end local v10    # "indexBlockPosition":J
    .end local v12    # "remainingIndexSize":I
    .end local v13    # "indexBlockSize":I
    .end local v14    # "indexBlock":[B
    .end local v15    # "indexBlockWrapper":Ljava/nio/ByteBuffer;
    .end local p1    # "subFileParameter":Lorg/mapsforge/map/reader/header/SubFileParameter;
    .end local p2    # "blockNumber":J
    throw v0

    .line 99
    .restart local v7    # "indexBlockNumber":J
    .restart local v9    # "indexCacheEntryKey":Lorg/mapsforge/map/reader/IndexCacheEntryKey;
    .restart local v10    # "indexBlockPosition":J
    .restart local v12    # "remainingIndexSize":I
    .restart local v13    # "indexBlockSize":I
    .restart local v14    # "indexBlock":[B
    .restart local v15    # "indexBlockWrapper":Ljava/nio/ByteBuffer;
    .restart local p1    # "subFileParameter":Lorg/mapsforge/map/reader/header/SubFileParameter;
    .restart local p2    # "blockNumber":J
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 106
    .end local v10    # "indexBlockPosition":J
    .end local v12    # "remainingIndexSize":I
    .end local v13    # "indexBlockSize":I
    .end local v14    # "indexBlock":[B
    .end local v15    # "indexBlockWrapper":Ljava/nio/ByteBuffer;
    .restart local v0    # "indexBlock":[B
    :cond_1
    :goto_0
    const-wide/16 v5, 0x80

    rem-long v5, v3, v5

    .line 107
    .local v5, "indexEntryInBlock":J
    const-wide/16 v10, 0x5

    mul-long/2addr v10, v5

    long-to-int v1, v10

    .line 110
    .local v1, "addressInIndexBlock":I
    invoke-static {v0, v1}, Lorg/mapsforge/map/reader/Deserializer;->getFiveBytesLong([BI)J

    move-result-wide v10

    return-wide v10

    .line 74
    .end local v0    # "indexBlock":[B
    .end local v1    # "addressInIndexBlock":I
    .end local v5    # "indexEntryInBlock":J
    .end local v7    # "indexBlockNumber":J
    .end local v9    # "indexCacheEntryKey":Lorg/mapsforge/map/reader/IndexCacheEntryKey;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid block number: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
