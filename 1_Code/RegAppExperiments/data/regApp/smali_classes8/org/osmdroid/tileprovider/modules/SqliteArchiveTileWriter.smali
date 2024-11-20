.class public Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;
.super Ljava/lang/Object;
.source "SqliteArchiveTileWriter.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/modules/IFilesystemCache;


# static fields
.field static hasInited:Z

.field private static final queryColumns:[Ljava/lang/String;


# instance fields
.field final db_file:Ljava/io/File;

.field final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field final questimate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->hasInited:Z

    .line 134
    const-string v0, "tile"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->queryColumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "outputFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x1f40

    iput v0, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->questimate:I

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->db_file:Ljava/io/File;

    .line 43
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    nop

    .line 49
    :try_start_1
    const-string v1, "CREATE TABLE IF NOT EXISTS tiles (key INTEGER , provider TEXT, tile BLOB, PRIMARY KEY (key, provider));"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    const-string v1, "OsmDroid"

    const-string v2, "error setting db schema, it probably exists already"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trouble creating database file at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z
    .locals 5
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 100
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, p3}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(J)J

    move-result-wide v1

    .line 101
    .local v1, "index":J
    invoke-static {v1, v2, p1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKeyParameters(JLorg/osmdroid/tileprovider/tilesource/ITileSource;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->getTileCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 103
    .local v3, "cur":Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v0

    .line 104
    .local v4, "result":Z
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    return v4

    .line 106
    .end local v1    # "index":J
    .end local v3    # "cur":Landroid/database/Cursor;
    .end local v4    # "result":Z
    :catchall_0
    move-exception v1

    .line 107
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to store cached tile from "

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

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .end local v1    # "ex":Ljava/lang/Throwable;
    return v0
.end method

.method public getExpirationTimestamp(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/lang/Long;
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTileCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "pPrimaryKeyParameters"    # [Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tiles"

    sget-object v3, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->queryColumns:[Ljava/lang/String;

    invoke-static {}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKey()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 143
    :cond_1
    :goto_0
    const-string v0, "OsmDroid"

    const-string v1, "Skipping SqlArchiveTileWriter getTileCursor, database is closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

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

    .line 154
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "OsmDroid"

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 160
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p2, p3}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(J)J

    move-result-wide v3

    .line 161
    .local v3, "index":J
    invoke-static {v3, v4, p1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKeyParameters(JLorg/osmdroid/tileprovider/tilesource/ITileSource;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->getTileCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .local v5, "cur":Landroid/database/Cursor;
    if-nez v5, :cond_2

    .line 163
    nop

    .line 179
    if-eqz v0, :cond_1

    .line 180
    invoke-static {v0}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 163
    :cond_1
    return-object v2

    .line 164
    :cond_2
    const/4 v6, 0x0

    .line 166
    .local v6, "bits":[B
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 167
    const-string v7, "tile"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    move-object v6, v7

    .line 169
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 170
    if-nez v6, :cond_6

    .line 171
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SqlCache - Tile doesn\'t exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :cond_4
    nop

    .line 179
    if-eqz v0, :cond_5

    .line 180
    invoke-static {v0}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 174
    :cond_5
    return-object v2

    .line 176
    :cond_6
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    .line 177
    invoke-interface {p1, v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    nop

    .line 180
    invoke-static {v0}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 177
    return-object v1

    .line 179
    .end local v3    # "index":J
    .end local v5    # "cur":Landroid/database/Cursor;
    .end local v6    # "bits":[B
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_7

    .line 180
    invoke-static {v0}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 182
    :cond_7
    throw v1

    .line 155
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_8
    :goto_0
    const-string v0, "Skipping SqlArchiveTileWriter loadTile, database is closed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-object v2
.end method

.method public onDetach()V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 116
    :cond_0
    return-void
.end method

.method public remove(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z
    .locals 1
    .param p1, "tileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public saveFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;JLjava/io/InputStream;Ljava/lang/Long;)Z
    .locals 14
    .param p1, "pTileSourceInfo"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J
    .param p4, "pStream"    # Ljava/io/InputStream;
    .param p5, "pExpirationTime"    # Ljava/lang/Long;

    .line 60
    move-object v1, p0

    iget-object v0, v1, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const-string v3, "OsmDroid"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v9, p4

    goto/16 :goto_5

    .line 64
    :cond_0
    const/4 v4, 0x0

    .line 65
    .local v4, "returnValue":Z
    const/4 v5, 0x0

    .line 67
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static/range {p2 .. p3}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(J)J

    move-result-wide v6

    .line 69
    .local v6, "index":J
    const-string v8, "provider"

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/16 v8, 0x200

    new-array v8, v8, [B

    .line 73
    .local v8, "buffer":[B
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v9

    .line 74
    :goto_0
    move-object/from16 v9, p4

    :try_start_1
    invoke-virtual {v9, v8}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v11, v10

    .local v11, "l":I
    const/4 v12, -0x1

    if-eq v10, v12, :cond_1

    .line 75
    invoke-virtual {v5, v8, v2, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 78
    .local v2, "bits":[B
    const-string v10, "key"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    const-string v10, "tile"

    invoke-virtual {v0, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 80
    iget-object v10, v1, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "tiles"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 81
    const/4 v4, 0x1

    .line 82
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v10

    invoke-interface {v10}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 83
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tile inserted "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p2 .. p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "bits":[B
    .end local v6    # "index":J
    .end local v8    # "buffer":[B
    .end local v11    # "l":I
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :goto_1
    goto :goto_3

    .line 89
    :catch_0
    move-exception v0

    .line 92
    goto :goto_3

    .line 84
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v9, p4

    .line 85
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to store cached tile from "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p2 .. p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 88
    .end local v0    # "ex":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 93
    :goto_3
    return v4

    .line 87
    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 88
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 91
    goto :goto_4

    .line 89
    :catch_1
    move-exception v0

    .line 92
    :goto_4
    throw v2

    .line 60
    .end local v4    # "returnValue":Z
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_3
    move-object/from16 v9, p4

    .line 61
    :goto_5
    const-string v0, "Skipping SqlArchiveTileWriter saveFile, database is closed"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v2
.end method
