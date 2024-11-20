.class public Lorg/osmdroid/tileprovider/modules/MBTilesFileArchive;
.super Ljava/lang/Object;
.source "MBTilesFileArchive.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/modules/IArchiveFile;


# static fields
.field public static final COL_TILES_TILE_COLUMN:Ljava/lang/String; = "tile_column"

.field public static final COL_TILES_TILE_DATA:Ljava/lang/String; = "tile_data"

.field public static final COL_TILES_TILE_ROW:Ljava/lang/String; = "tile_row"

.field public static final COL_TILES_ZOOM_LEVEL:Ljava/lang/String; = "zoom_level"

.field public static final TABLE_TILES:Ljava/lang/String; = "tiles"


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "pDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MBTilesFileArchive;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    return-void
.end method

.method public static getDatabaseFileArchive(Ljava/io/File;)Lorg/osmdroid/tileprovider/modules/MBTilesFileArchive;
    .locals 4
    .param p0, "pFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MBTilesFileArchive;

    .line 46
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 45
    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/osmdroid/tileprovider/modules/MBTilesFileArchive;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MBTilesFileArchive;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 100
    return-void
.end method

.method public getInputStream(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/InputStream;
    .locals 11
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "ret":Ljava/io/InputStream;
    const/4 v1, 0x1

    :try_start_0
    new-array v4, v1, [Ljava/lang/String;

    const-string v2, "tile_data"

    const/4 v10, 0x0

    aput-object v2, v4, v10

    .line 64
    .local v4, "tile":[Ljava/lang/String;
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    .line 65
    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v10

    .line 66
    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v5

    int-to-double v7, v5

    sub-double/2addr v2, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 67
    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v6, v2

    .line 70
    .local v6, "xyz":[Ljava/lang/String;
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MBTilesFileArchive;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "tiles"

    const-string v5, "tile_column=? and tile_row=? and zoom_level=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 72
    .local v1, "cur":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 74
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v2

    .line 76
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    return-object v0

    .line 82
    .end local v0    # "ret":Ljava/io/InputStream;
    .end local v1    # "cur":Landroid/database/Cursor;
    .end local v4    # "tile":[Ljava/lang/String;
    .end local v6    # "xyz":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
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

    .line 84
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTileSources()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

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

    .line 53
    nop

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 53
    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MBTilesFileArchive;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    return-void
.end method

.method public setIgnoreTileSource(Z)V
    .locals 0
    .param p1, "pIgnoreTileSource"    # Z

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DatabaseFileArchive [mDatabase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MBTilesFileArchive;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

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
