.class public Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;
.super Ljava/lang/Object;
.source "DatabaseFileArchive.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/modules/IArchiveFile;


# static fields
.field public static final COLUMN_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_PROVIDER:Ljava/lang/String; = "provider"

.field public static final COLUMN_TILE:Ljava/lang/String; = "tile"

.field public static final TABLE:Ljava/lang/String; = "tiles"

.field static final tile_column:[Ljava/lang/String;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mIgnoreTileSource:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "tile"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;->tile_column:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;->mIgnoreTileSource:Z

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "pDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;->mIgnoreTileSource:Z

    .line 41
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    return-void
.end method

.method public static getDatabaseFileArchive(Ljava/io/File;)Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;
    .locals 4
    .param p0, "pFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 133
    return-void
.end method

.method public getImage(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)[B
    .locals 34
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 78
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "OsmDroid"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 85
    .local v0, "bits":[B
    const/4 v4, 0x1

    :try_start_0
    new-array v7, v4, [Ljava/lang/String;

    const-string v5, "tile"

    const/4 v13, 0x0

    aput-object v5, v7, v13

    .line 86
    .local v7, "tile":[Ljava/lang/String;
    invoke-static/range {p2 .. p3}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v5

    int-to-long v14, v5

    .line 87
    .local v14, "x":J
    invoke-static/range {p2 .. p3}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v5

    int-to-long v11, v5

    .line 88
    .local v11, "y":J
    invoke-static/range {p2 .. p3}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v5

    int-to-long v9, v5

    .line 89
    .local v9, "z":J
    long-to-int v5, v9

    shl-long v5, v9, v5

    add-long/2addr v5, v14

    long-to-int v8, v9

    shl-long/2addr v5, v8

    add-long/2addr v5, v11

    .line 92
    .local v5, "index":J
    iget-boolean v8, v1, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;->mIgnoreTileSource:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "key = "

    if-nez v8, :cond_1

    .line 93
    :try_start_1
    iget-object v8, v1, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v16, "tiles"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " and "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "provider"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " = ?"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    .line 94
    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x0

    aput-object v13, v4, v17

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 93
    move-wide/from16 v20, v5

    .end local v5    # "index":J
    .local v20, "index":J
    move-object v5, v8

    move-object/from16 v6, v16

    move-object v8, v3

    move-wide/from16 v22, v9

    .end local v9    # "z":J
    .local v22, "z":J
    move-object v9, v4

    move-object v10, v13

    move-wide/from16 v24, v11

    .end local v11    # "y":J
    .local v24, "y":J
    move-object/from16 v11, v18

    move-object/from16 v12, v19

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-wide/from16 v5, v20

    .local v3, "cur":Landroid/database/Cursor;
    goto :goto_0

    .line 96
    .end local v3    # "cur":Landroid/database/Cursor;
    .end local v20    # "index":J
    .end local v22    # "z":J
    .end local v24    # "y":J
    .restart local v5    # "index":J
    .restart local v9    # "z":J
    .restart local v11    # "y":J
    :cond_1
    move-wide/from16 v20, v5

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    .end local v5    # "index":J
    .end local v9    # "z":J
    .end local v11    # "y":J
    .restart local v20    # "index":J
    .restart local v22    # "z":J
    .restart local v24    # "y":J
    iget-object v4, v1, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v27, "tiles"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v5, v20

    .end local v20    # "index":J
    .restart local v5    # "index":J
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v26, v4

    move-object/from16 v28, v7

    invoke-virtual/range {v26 .. v33}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 99
    .restart local v3    # "cur":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 101
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    move-object v0, v4

    .line 103
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    return-object v0

    .line 109
    .end local v0    # "bits":[B
    .end local v3    # "cur":Landroid/database/Cursor;
    .end local v5    # "index":J
    .end local v7    # "tile":[Ljava/lang/String;
    .end local v14    # "x":J
    .end local v22    # "z":J
    .end local v24    # "y":J
    :cond_3
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting db stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 79
    :cond_4
    :goto_2
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    const-string v0, "Skipping DatabaseFileArchive lookup, database is closed"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method public getInputStream(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/InputStream;
    .locals 3
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "ret":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;->getImage(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)[B

    move-result-object v1

    .line 119
    .local v1, "bits":[B
    if-eqz v1, :cond_0

    .line 120
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 121
    :cond_0
    if-eqz v0, :cond_1

    .line 122
    return-object v0

    .line 126
    .end local v0    # "ret":Ljava/io/InputStream;
    .end local v1    # "bits":[B
    :cond_1
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting db stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OsmDroid"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTileSources()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 60
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT distinct provider FROM tiles"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 61
    .local v1, "cur":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "cur":Landroid/database/Cursor;
    goto :goto_1

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OsmDroid"

    const-string v3, "Error getting tile sources: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public init(Ljava/io/File;)V
    .locals 3
    .param p1, "pFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    return-void
.end method

.method public setIgnoreTileSource(Z)V
    .locals 0
    .param p1, "pIgnoreTileSource"    # Z

    .line 54
    iput-boolean p1, p0, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;->mIgnoreTileSource:Z

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DatabaseFileArchive [mDatabase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
