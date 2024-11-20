.class public Lorg/osmdroid/tileprovider/modules/SqlTileWriter;
.super Ljava/lang/Object;
.source "SqlTileWriter.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
.implements Lorg/osmdroid/util/SplashScreenable;


# static fields
.field public static final COLUMN_EXPIRES:Ljava/lang/String; = "expires"

.field public static final COLUMN_EXPIRES_INDEX:Ljava/lang/String; = "expires_index"

.field public static final DATABASE_FILENAME:Ljava/lang/String; = "cache.db"

.field private static cleanOnStartup:Z = false

.field protected static db_file:Ljava/io/File; = null

.field private static final expireQueryColumn:[Ljava/lang/String;

.field static hasInited:Z = false

.field protected static mDb:Landroid/database/sqlite/SQLiteDatabase; = null

.field private static final mLock:Ljava/lang/Object;

.field private static final primaryKey:Ljava/lang/String; = "key=? and provider=?"

.field private static final queryColumns:[Ljava/lang/String;


# instance fields
.field private final garbageCollector:Lorg/osmdroid/util/GarbageCollector;

.field protected lastSizeCheck:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->cleanOnStartup:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->mLock:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->hasInited:Z

    .line 601
    const-string v0, "tile"

    const-string v1, "expires"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->queryColumns:[Ljava/lang/String;

    .line 608
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->expireQueryColumn:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->lastSizeCheck:J

    .line 74
    new-instance v0, Lorg/osmdroid/util/GarbageCollector;

    new-instance v1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter$1;

    invoke-direct {v1, p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter$1;-><init>(Lorg/osmdroid/tileprovider/modules/SqlTileWriter;)V

    invoke-direct {v0, v1}, Lorg/osmdroid/util/GarbageCollector;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->garbageCollector:Lorg/osmdroid/util/GarbageCollector;

    .line 85
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    .line 87
    sget-boolean v1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->hasInited:Z

    if-nez v1, :cond_0

    .line 88
    const/4 v1, 0x1

    sput-boolean v1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->hasInited:Z

    .line 90
    sget-boolean v1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->cleanOnStartup:Z

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0}, Lorg/osmdroid/util/GarbageCollector;->gc()Z

    .line 94
    :cond_0
    return-void
.end method

.method private createIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "pDb"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 814
    const-string v0, "CREATE INDEX IF NOT EXISTS expires_index ON tiles (expires);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 815
    return-void
.end method

.method protected static extractXFromKeyInSQL(I)Ljava/lang/String;
    .locals 2
    .param p0, "pZoom"    # I

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "((key>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    shl-int/2addr v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static extractYFromKeyInSQL(I)Ljava/lang/String;
    .locals 2
    .param p0, "pZoom"    # I

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(key%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    shl-int/2addr v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIndex(J)J
    .locals 7
    .param p0, "pMapTileIndex"    # J

    .line 534
    invoke-static {p0, p1}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v0

    int-to-long v1, v0

    invoke-static {p0, p1}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v0

    int-to-long v3, v0

    invoke-static {p0, p1}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v0

    int-to-long v5, v0

    invoke-static/range {v1 .. v6}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getIndex(JJJ)J
    .locals 3
    .param p0, "pX"    # J
    .param p2, "pY"    # J
    .param p4, "pZ"    # J

    .line 505
    long-to-int v0, p4

    shl-long v0, p4, v0

    add-long/2addr v0, p0

    long-to-int v2, p4

    shl-long/2addr v0, v2

    add-long/2addr v0, p2

    return-wide v0
.end method

.method public static getPrimaryKey()Ljava/lang/String;
    .locals 1

    .line 562
    const-string v0, "key=? and provider=?"

    return-object v0
.end method

.method public static getPrimaryKeyParameters(JLjava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "pIndex"    # J
    .param p2, "pTileSourceInfo"    # Ljava/lang/String;

    .line 582
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrimaryKeyParameters(JLorg/osmdroid/tileprovider/tilesource/ITileSource;)[Ljava/lang/String;
    .locals 1
    .param p0, "pIndex"    # J
    .param p2, "pTileSourceInfo"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 572
    invoke-interface {p2}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKeyParameters(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isFunctionalException(Landroid/database/sqlite/SQLiteException;)Z
    .locals 4
    .param p0, "pSQLiteException"    # Landroid/database/sqlite/SQLiteException;

    .line 786
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "SQLiteDatatypeMismatchException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "SQLiteDatabaseLockedException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "SQLiteConstraintException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "SQLiteBlobTooBigException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "SQLiteDiskIOException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "SQLiteAbortException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "SQLiteDoneException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "SQLiteMisuseException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_8
    const-string v1, "SQLiteCantOpenDatabaseException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_9
    const-string v1, "SQLiteTableLockedException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_a
    const-string v1, "SQLiteAccessPermException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_b
    const-string v1, "SQLiteDatabaseCorruptException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_c
    const-string v1, "SQLiteReadOnlyDatabaseException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_d
    const-string v1, "SQLiteBindOrColumnIndexOutOfRangeException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_e
    const-string v1, "SQLiteFullException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_f
    const-string v1, "SQLiteOutOfMemoryException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 806
    return v3

    .line 804
    :pswitch_0
    return v3

    .line 794
    :pswitch_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b6dcdeb -> :sswitch_f
        -0x692dba4c -> :sswitch_e
        -0x56ec7a99 -> :sswitch_d
        -0x427ceffa -> :sswitch_c
        -0x425f4757 -> :sswitch_b
        -0x28190791 -> :sswitch_a
        -0x27e39afd -> :sswitch_9
        -0x720f326 -> :sswitch_8
        0x1375893 -> :sswitch_7
        0x769a621 -> :sswitch_6
        0x1366424b -> :sswitch_5
        0x1fbb1a40 -> :sswitch_4
        0x27bb557a -> :sswitch_3
        0x3f3ff326 -> :sswitch_2
        0x537a3f9e -> :sswitch_1
        0x739889d1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setCleanupOnStart(Z)V
    .locals 0
    .param p0, "value"    # Z

    .line 67
    sput-boolean p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->cleanOnStartup:Z

    .line 68
    return-void
.end method


# virtual methods
.method protected catchException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "pException"    # Ljava/lang/Exception;

    .line 773
    instance-of v0, p1, Landroid/database/sqlite/SQLiteException;

    if-eqz v0, :cond_0

    .line 774
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteException;

    invoke-static {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->isFunctionalException(Landroid/database/sqlite/SQLiteException;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->refreshDb()V

    .line 778
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;ILjava/util/Collection;Ljava/util/Collection;)J
    .locals 4
    .param p1, "pTileSourceName"    # Ljava/lang/String;
    .param p2, "pZoom"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Collection<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/graphics/Rect;",
            ">;)J"
        }
    .end annotation

    .line 917
    .local p3, "pInclude":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Rect;>;"
    .local p4, "pExclude":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Rect;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 918
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 921
    :cond_0
    const-string v1, "tiles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 922
    invoke-virtual {p0, p2, p3, p4}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getWhereClause(ILjava/util/Collection;Ljava/util/Collection;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 923
    if-eqz p1, :cond_1

    const-string v3, " and provider=?"

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 924
    if-eqz p1, :cond_2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 921
    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v1, v1

    return-wide v1

    .line 919
    :cond_3
    :goto_2
    const-wide/16 v1, -0x1

    return-wide v1

    .line 925
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    .line 926
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->catchException(Ljava/lang/Exception;)V

    .line 927
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public exists(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "pTileSource"    # Ljava/lang/String;
    .param p2, "pMapTileIndex"    # J

    .line 187
    invoke-static {p2, p3}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKeyParameters(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "key=? and provider=?"

    invoke-virtual {p0, v1, v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getRowCount(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 197
    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->exists(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method protected getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .line 737
    sget-object v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 738
    return-object v0

    .line 740
    :cond_0
    sget-object v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 742
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cache.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db_file:Ljava/io/File;

    .line 743
    sget-object v2, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 745
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 746
    const-string v3, "CREATE TABLE IF NOT EXISTS tiles (key INTEGER , provider TEXT, tile BLOB, expires INTEGER, PRIMARY KEY (key, provider));"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 751
    goto :goto_0

    .line 747
    :catch_0
    move-exception v1

    .line 748
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "OsmDroid"

    const-string v4, "Unable to start the sqlite tile writer. Check external storage availability."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    invoke-virtual {p0, v1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->catchException(Ljava/lang/Exception;)V

    .line 750
    monitor-exit v0

    return-object v2

    .line 753
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 754
    sget-object v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 753
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getExpirationTimestamp(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/lang/Long;
    .locals 4
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 539
    const/4 v0, 0x0

    .line 541
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p2, p3}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(J)J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKeyParameters(JLorg/osmdroid/tileprovider/tilesource/ITileSource;)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->expireQueryColumn:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getTileCursor([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 542
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    if-eqz v0, :cond_0

    .line 550
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_0
    return-object v1

    .line 549
    :cond_1
    if-eqz v0, :cond_2

    .line 550
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 549
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 545
    :catch_0
    move-exception v1

    .line 546
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "OsmDroid"

    const-string v3, "error getting expiration date from the tile cache"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    invoke-virtual {p0, v1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->catchException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    .end local v1    # "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 550
    goto :goto_0

    .line 553
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 549
    :goto_2
    if-eqz v0, :cond_3

    .line 550
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 552
    :cond_3
    throw v1
.end method

.method public getFirstExpiry()J
    .locals 6

    .line 481
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 482
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 486
    :cond_0
    :try_start_0
    const-string v3, "select min(expires) from tiles"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 487
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 488
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 489
    .local v4, "time":J
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    return-wide v4

    .line 491
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "time":J
    :catch_0
    move-exception v3

    .line 492
    .local v3, "ex":Ljava/lang/Exception;
    const-string v4, "OsmDroid"

    const-string v5, "Unable to query for oldest tile"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    invoke-virtual {p0, v3}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->catchException(Ljava/lang/Exception;)V

    .line 495
    .end local v3    # "ex":Ljava/lang/Exception;
    return-wide v1

    .line 483
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public getRowCount(Ljava/lang/String;)J
    .locals 2
    .param p1, "tileSourceName"    # Ljava/lang/String;

    .line 416
    if-nez p1, :cond_0

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getRowCount(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 419
    :cond_0
    const-string v0, "provider=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getRowCount(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCount(Ljava/lang/String;ILjava/util/Collection;Ljava/util/Collection;)J
    .locals 2
    .param p1, "pTileSourceName"    # Ljava/lang/String;
    .param p2, "pZoom"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Collection<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/graphics/Rect;",
            ">;)J"
        }
    .end annotation

    .line 464
    .local p3, "pInclude":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Rect;>;"
    .local p4, "pExclude":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Rect;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    invoke-virtual {p0, p2, p3, p4}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getWhereClause(ILjava/util/Collection;Ljava/util/Collection;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 466
    if-eqz p1, :cond_0

    const-string v1, " and provider=?"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    if-eqz p1, :cond_1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 464
    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getRowCount(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getRowCount(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 7
    .param p1, "pWhereClause"    # Ljava/lang/String;
    .param p2, "pWhereClauseArgs"    # [Ljava/lang/String;

    .line 430
    const/4 v0, 0x0

    .line 432
    .local v0, "cursor":Landroid/database/Cursor;
    const-wide/16 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 433
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 436
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select count(*) from tiles"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 438
    if-nez p1, :cond_1

    const-string v5, ""

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " where "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-virtual {v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v0, v4

    .line 439
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 440
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    if-eqz v0, :cond_2

    .line 446
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_2
    return-wide v1

    .line 445
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    if-eqz v0, :cond_6

    .line 446
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 434
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    :goto_2
    nop

    .line 445
    if-eqz v0, :cond_5

    .line 446
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 434
    :cond_5
    return-wide v1

    .line 445
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 442
    :catch_0
    move-exception v3

    .line 443
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0, v3}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->catchException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    .end local v3    # "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_6

    .line 446
    goto :goto_1

    .line 449
    :cond_6
    :goto_3
    return-wide v1

    .line 445
    :goto_4
    if-eqz v0, :cond_7

    .line 446
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_7
    throw v1
.end method

.method public getSize()J
    .locals 2

    .line 474
    sget-object v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTileCursor([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "pPrimaryKeyParameters"    # [Ljava/lang/String;
    .param p2, "pColumns"    # [Ljava/lang/String;

    .line 592
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 593
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "tiles"

    const-string v3, "key=? and provider=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getWhereClause(ILandroid/graphics/Rect;)Ljava/lang/StringBuilder;
    .locals 21
    .param p1, "pZoom"    # I
    .param p2, "pRect"    # Landroid/graphics/Rect;

    .line 833
    move/from16 v0, p1

    move-object/from16 v1, p2

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    shl-int v2, v3, v2

    add-int/lit8 v2, v2, -0x1

    int-to-long v9, v2

    .line 834
    .local v9, "maxValueForZoom":J
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    int-to-long v6, v0

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(JJJ)J

    move-result-wide v11

    .line 835
    .local v11, "firstIndexForZoom":J
    int-to-long v7, v0

    move-wide v3, v9

    move-wide v5, v9

    invoke-static/range {v3 .. v8}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(JJJ)J

    move-result-wide v2

    .line 836
    .local v2, "lastIndexForZoom":J
    invoke-static/range {p1 .. p1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->extractXFromKeyInSQL(I)Ljava/lang/String;

    move-result-object v4

    .line 837
    .local v4, "xForZoom":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->extractYFromKeyInSQL(I)Ljava/lang/String;

    move-result-object v5

    .line 839
    .local v5, "yForZoom":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .local v6, "buffer":Ljava/lang/StringBuilder;
    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 841
    const-string v7, "key"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " between "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 842
    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 843
    if-eqz v1, :cond_4

    .line 844
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v13, v1, Landroid/graphics/Rect;->right:I

    const-string v14, ")"

    const-string v15, "<="

    const-string v16, " or "

    const-string v0, "="

    move-wide/from16 v17, v2

    .end local v2    # "lastIndexForZoom":J
    .local v17, "lastIndexForZoom":J
    const-string v2, ">="

    const-string v3, "("

    if-ne v7, v13, :cond_0

    .line 846
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-wide/from16 v19, v9

    goto :goto_1

    .line 848
    :cond_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 849
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 850
    iget v13, v1, Landroid/graphics/Rect;->left:I

    move-wide/from16 v19, v9

    .end local v9    # "maxValueForZoom":J
    .local v19, "maxValueForZoom":J
    iget v9, v1, Landroid/graphics/Rect;->right:I

    if-ge v13, v9, :cond_1

    move-object v9, v8

    goto :goto_0

    :cond_1
    move-object/from16 v9, v16

    :goto_0
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 851
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 852
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v7, v9, :cond_2

    .line 856
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 858
    :cond_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 859
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 860
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v8, v16

    :goto_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 861
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 862
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 843
    .end local v17    # "lastIndexForZoom":J
    .end local v19    # "maxValueForZoom":J
    .restart local v2    # "lastIndexForZoom":J
    .restart local v9    # "maxValueForZoom":J
    :cond_4
    move-wide/from16 v17, v2

    move-wide/from16 v19, v9

    .line 865
    .end local v2    # "lastIndexForZoom":J
    .end local v9    # "maxValueForZoom":J
    .restart local v17    # "lastIndexForZoom":J
    .restart local v19    # "maxValueForZoom":J
    :goto_3
    const/16 v0, 0x29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 866
    return-object v6
.end method

.method protected getWhereClause(ILjava/util/Collection;Ljava/util/Collection;)Ljava/lang/StringBuilder;
    .locals 9
    .param p1, "pZoom"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 879
    .local p2, "pInclude":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Rect;>;"
    .local p3, "pExclude":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Rect;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 881
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getWhereClause(ILandroid/graphics/Rect;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 882
    const-string v2, ")"

    const/16 v3, 0x29

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 883
    const-string v4, " and ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    const-string v4, ""

    .line 885
    .local v4, "coordinator":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 886
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1, v6}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getWhereClause(ILandroid/graphics/Rect;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 887
    const-string v4, " or "

    .line 888
    .end local v6    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 889
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    .end local v4    # "coordinator":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 892
    const-string v4, " and not("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const-string v4, ""

    .line 894
    .restart local v4    # "coordinator":Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 895
    .restart local v6    # "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1, v6}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getWhereClause(ILandroid/graphics/Rect;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 896
    const-string v4, " or "

    .line 897
    .end local v6    # "rect":Landroid/graphics/Rect;
    goto :goto_1

    .line 898
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    .end local v4    # "coordinator":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 901
    return-object v0
.end method

.method public importFromFileCache(Z)[I
    .locals 37
    .param p1, "removeFromFileSystem"    # Z

    .line 256
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 257
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v0

    move-object v4, v0

    .line 262
    .local v4, "ret":[I
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v5

    .line 263
    .local v5, "tilePathBase":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 264
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 265
    .local v6, "tileSources":[Ljava/io/File;
    if-eqz v6, :cond_15

    .line 266
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_14

    .line 267
    aget-object v0, v6, v7

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_12

    aget-object v0, v6, v7

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_12

    .line 269
    aget-object v0, v6, v7

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 270
    .local v8, "z":[Ljava/io/File;
    const-string v9, "Unable to delete directory from "

    const-string v11, "OsmDroid"

    if-eqz v8, :cond_11

    .line 271
    const/4 v0, 0x0

    move v13, v0

    .local v13, "zz":I
    :goto_1
    array-length v0, v8

    if-ge v13, v0, :cond_10

    .line 272
    aget-object v0, v8, v13

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    aget-object v0, v8, v13

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_e

    .line 273
    aget-object v0, v8, v13

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    .line 274
    .local v14, "x":[Ljava/io/File;
    if-eqz v14, :cond_d

    .line 275
    const/4 v0, 0x0

    move v15, v0

    .local v15, "xx":I
    :goto_2
    array-length v0, v14

    if-ge v15, v0, :cond_c

    .line 276
    aget-object v0, v14, v15

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    aget-object v0, v14, v15

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_a

    .line 277
    aget-object v0, v14, v15

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 278
    .local v10, "y":[Ljava/io/File;
    if-eqz v14, :cond_9

    .line 279
    const/4 v0, 0x0

    move v12, v0

    .local v12, "yy":I
    :goto_3
    array-length v0, v10

    if-ge v12, v0, :cond_8

    .line 280
    aget-object v0, v10, v12

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_7

    aget-object v0, v10, v12

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_7

    .line 283
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v18, v0

    .line 284
    .local v18, "cv":Landroid/content/ContentValues;
    aget-object v0, v14, v15

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v27, v19

    .line 285
    .local v27, "x1":J
    aget-object v0, v10, v12

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aget-object v19, v10, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-object/from16 v19, v5

    .end local v5    # "tilePathBase":Ljava/io/File;
    .local v19, "tilePathBase":Ljava/io/File;
    :try_start_2
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    :try_start_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v29, v21

    .line 286
    .local v29, "y1":J
    aget-object v0, v8, v13

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v31, v21

    .line 287
    .local v31, "z1":J
    move-wide/from16 v21, v27

    move-wide/from16 v23, v29

    move-wide/from16 v25, v31

    invoke-static/range {v21 .. v26}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(JJJ)J

    move-result-wide v21

    .line 288
    .local v21, "index":J
    const-string v0, "provider"

    aget-object v3, v6, v7

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v18

    .end local v18    # "cv":Landroid/content/ContentValues;
    .local v5, "cv":Landroid/content/ContentValues;
    invoke-virtual {v5, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    aget-object v0, v6, v7

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    move-object/from16 v23, v8

    move-object/from16 v18, v9

    move-wide/from16 v8, v31

    .end local v31    # "z1":J
    .local v8, "z1":J
    .local v23, "z":[Ljava/io/File;
    long-to-int v3, v8

    move/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v26, v15

    move-wide/from16 v13, v27

    .end local v14    # "x":[Ljava/io/File;
    .end local v15    # "xx":I
    .end local v27    # "x1":J
    .local v13, "x1":J
    .local v24, "zz":I
    .local v25, "x":[Ljava/io/File;
    .local v26, "xx":I
    long-to-int v15, v13

    move-wide/from16 v13, v29

    move-object/from16 v29, v4

    .end local v4    # "ret":[I
    .local v13, "y1":J
    .restart local v27    # "x1":J
    .local v29, "ret":[I
    long-to-int v4, v13

    :try_start_5
    invoke-static {v3, v15, v4}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->exists(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_5

    .line 291
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    aget-object v4, v10, v12

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    .line 293
    .local v3, "bis":Ljava/io/BufferedInputStream;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 295
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 296
    .local v0, "current":I
    :goto_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move/from16 v30, v15

    .end local v0    # "current":I
    .local v30, "current":I
    const/4 v0, -0x1

    if-eq v15, v0, :cond_0

    .line 297
    move/from16 v15, v30

    .end local v30    # "current":I
    .local v15, "current":I
    int-to-byte v0, v15

    :try_start_6
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move v0, v15

    goto :goto_4

    .line 327
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v8    # "z1":J
    .end local v13    # "y1":J
    .end local v15    # "current":I
    .end local v21    # "index":J
    .end local v27    # "x1":J
    :catch_0
    move-exception v0

    move-object/from16 v27, v10

    const/16 v20, 0x0

    goto/16 :goto_c

    .line 300
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "z1":J
    .restart local v13    # "y1":J
    .restart local v21    # "index":J
    .restart local v27    # "x1":J
    .restart local v30    # "current":I
    :cond_0
    move/from16 v15, v30

    .end local v30    # "current":I
    .restart local v15    # "current":I
    :try_start_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 301
    .local v30, "bits":[B
    const/4 v0, 0x0

    .local v0, "bi":I
    :goto_5
    move-object/from16 v31, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v31, "bis":Ljava/io/BufferedInputStream;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    if-ge v0, v3, :cond_1

    .line 302
    :try_start_8
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    move-object/from16 v32, v4

    move-object/from16 v4, v30

    .end local v30    # "bits":[B
    .local v4, "bits":[B
    .local v32, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    aput-byte v3, v4, v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 301
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v30, v4

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    goto :goto_5

    .end local v32    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v30    # "bits":[B
    :cond_1
    move-object/from16 v32, v4

    move-object/from16 v4, v30

    .line 304
    .end local v0    # "bi":I
    .end local v30    # "bits":[B
    .local v4, "bits":[B
    .restart local v32    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :try_start_9
    const-string v0, "key"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 305
    const-string v0, "tile"

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 307
    const-string v0, "tiles"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v33
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 308
    .local v33, "insert":J
    const-wide/16 v35, 0x0

    cmp-long v0, v33, v35

    const-string v3, "/"

    if-lez v0, :cond_4

    .line 309
    :try_start_a
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    if-eqz v0, :cond_2

    .line 310
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v4

    .end local v4    # "bits":[B
    .restart local v30    # "bits":[B
    const-string v4, "tile inserted "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v6, v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v35, v5

    move-wide/from16 v4, v27

    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v27    # "x1":J
    .local v4, "x1":J
    .local v35, "cv":Landroid/content/ContentValues;
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_6

    .line 309
    .end local v30    # "bits":[B
    .end local v35    # "cv":Landroid/content/ContentValues;
    .local v4, "bits":[B
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v27    # "x1":J
    :cond_2
    move-object/from16 v30, v4

    move-object/from16 v35, v5

    move-wide/from16 v4, v27

    .line 311
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v27    # "x1":J
    .local v4, "x1":J
    .restart local v30    # "bits":[B
    .restart local v35    # "cv":Landroid/content/ContentValues;
    :goto_6
    const/16 v20, 0x0

    :try_start_c
    aget v0, v29, v20

    const/4 v3, 0x1

    add-int/2addr v0, v3

    aput v0, v29, v20
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 312
    if-eqz p1, :cond_3

    .line 314
    :try_start_d
    aget-object v0, v10, v12

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 315
    const/4 v0, 0x2

    aget v3, v29, v0

    const/16 v17, 0x1

    add-int/lit8 v3, v3, 0x1

    aput v3, v29, v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_7

    .line 317
    :catch_1
    move-exception v0

    .line 318
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v3, 0x3

    :try_start_e
    aget v16, v29, v3

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    aput v16, v29, v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 320
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_7
    move-object/from16 v27, v10

    goto :goto_9

    .line 312
    :cond_3
    move-object/from16 v27, v10

    goto :goto_9

    .line 327
    .end local v4    # "x1":J
    .end local v8    # "z1":J
    .end local v13    # "y1":J
    .end local v15    # "current":I
    .end local v21    # "index":J
    .end local v30    # "bits":[B
    .end local v31    # "bis":Ljava/io/BufferedInputStream;
    .end local v32    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v33    # "insert":J
    .end local v35    # "cv":Landroid/content/ContentValues;
    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    const/16 v20, 0x0

    :goto_8
    move-object/from16 v27, v10

    goto/16 :goto_c

    .line 323
    .local v4, "bits":[B
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "z1":J
    .restart local v13    # "y1":J
    .restart local v15    # "current":I
    .restart local v21    # "index":J
    .restart local v27    # "x1":J
    .restart local v31    # "bis":Ljava/io/BufferedInputStream;
    .restart local v32    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v33    # "insert":J
    :cond_4
    move-object/from16 v30, v4

    move-object/from16 v35, v5

    move-wide/from16 v4, v27

    const/16 v20, 0x0

    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v27    # "x1":J
    .local v4, "x1":J
    .restart local v30    # "bits":[B
    .restart local v35    # "cv":Landroid/content/ContentValues;
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    move-object/from16 v27, v10

    .end local v10    # "y":[Ljava/io/File;
    .local v27, "y":[Ljava/io/File;
    :try_start_10
    const-string v10, "tile NOT inserted "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v10, v6, v7

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    goto :goto_9

    .line 327
    .end local v4    # "x1":J
    .end local v8    # "z1":J
    .end local v13    # "y1":J
    .end local v15    # "current":I
    .end local v21    # "index":J
    .end local v30    # "bits":[B
    .end local v31    # "bis":Ljava/io/BufferedInputStream;
    .end local v32    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v33    # "insert":J
    .end local v35    # "cv":Landroid/content/ContentValues;
    :catch_4
    move-exception v0

    goto/16 :goto_c

    .end local v27    # "y":[Ljava/io/File;
    .restart local v10    # "y":[Ljava/io/File;
    :catch_5
    move-exception v0

    move-object/from16 v27, v10

    goto :goto_a

    .line 289
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "z1":J
    .restart local v13    # "y1":J
    .restart local v21    # "index":J
    .local v27, "x1":J
    :cond_5
    move-object/from16 v35, v5

    move-wide/from16 v4, v27

    const/16 v20, 0x0

    move-object/from16 v27, v10

    .line 333
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v8    # "z1":J
    .end local v10    # "y":[Ljava/io/File;
    .end local v13    # "y1":J
    .end local v21    # "index":J
    .local v27, "y":[Ljava/io/File;
    :goto_9
    goto/16 :goto_e

    .line 327
    .end local v27    # "y":[Ljava/io/File;
    .restart local v10    # "y":[Ljava/io/File;
    :catch_6
    move-exception v0

    move-object/from16 v27, v10

    const/16 v20, 0x0

    .end local v10    # "y":[Ljava/io/File;
    .restart local v27    # "y":[Ljava/io/File;
    :goto_a
    goto :goto_c

    .end local v23    # "z":[Ljava/io/File;
    .end local v24    # "zz":I
    .end local v25    # "x":[Ljava/io/File;
    .end local v26    # "xx":I
    .end local v27    # "y":[Ljava/io/File;
    .end local v29    # "ret":[I
    .local v4, "ret":[I
    .local v8, "z":[Ljava/io/File;
    .restart local v10    # "y":[Ljava/io/File;
    .local v13, "zz":I
    .restart local v14    # "x":[Ljava/io/File;
    .local v15, "xx":I
    :catch_7
    move-exception v0

    move-object/from16 v29, v4

    move/from16 v20, v5

    move-object/from16 v23, v8

    move-object/from16 v18, v9

    move-object/from16 v27, v10

    move/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v26, v15

    goto :goto_b

    :catch_8
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v23, v8

    move-object/from16 v18, v9

    move-object/from16 v27, v10

    move/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v26, v15

    const/16 v20, 0x0

    .end local v4    # "ret":[I
    .end local v8    # "z":[Ljava/io/File;
    .end local v10    # "y":[Ljava/io/File;
    .end local v13    # "zz":I
    .end local v14    # "x":[Ljava/io/File;
    .end local v15    # "xx":I
    .restart local v23    # "z":[Ljava/io/File;
    .restart local v24    # "zz":I
    .restart local v25    # "x":[Ljava/io/File;
    .restart local v26    # "xx":I
    .restart local v27    # "y":[Ljava/io/File;
    .restart local v29    # "ret":[I
    :goto_b
    goto :goto_c

    .end local v19    # "tilePathBase":Ljava/io/File;
    .end local v23    # "z":[Ljava/io/File;
    .end local v24    # "zz":I
    .end local v25    # "x":[Ljava/io/File;
    .end local v26    # "xx":I
    .end local v27    # "y":[Ljava/io/File;
    .end local v29    # "ret":[I
    .restart local v4    # "ret":[I
    .local v5, "tilePathBase":Ljava/io/File;
    .restart local v8    # "z":[Ljava/io/File;
    .restart local v10    # "y":[Ljava/io/File;
    .restart local v13    # "zz":I
    .restart local v14    # "x":[Ljava/io/File;
    .restart local v15    # "xx":I
    :catch_9
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v19, v5

    move-object/from16 v23, v8

    move-object/from16 v18, v9

    move-object/from16 v27, v10

    move/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v26, v15

    const/16 v20, 0x0

    goto :goto_c

    :catch_a
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v29, v4

    move-object/from16 v19, v5

    move-object/from16 v23, v8

    move-object/from16 v18, v9

    move-object/from16 v27, v10

    move/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v26, v15

    .line 330
    .end local v4    # "ret":[I
    .end local v5    # "tilePathBase":Ljava/io/File;
    .end local v8    # "z":[Ljava/io/File;
    .end local v10    # "y":[Ljava/io/File;
    .end local v13    # "zz":I
    .end local v14    # "x":[Ljava/io/File;
    .end local v15    # "xx":I
    .restart local v0    # "ex":Ljava/lang/Exception;
    .restart local v19    # "tilePathBase":Ljava/io/File;
    .restart local v23    # "z":[Ljava/io/File;
    .restart local v24    # "zz":I
    .restart local v25    # "x":[Ljava/io/File;
    .restart local v26    # "xx":I
    .restart local v27    # "y":[Ljava/io/File;
    .restart local v29    # "ret":[I
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to store cached tile from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v6, v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " db is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v2, :cond_6

    const-string v4, "null"

    goto :goto_d

    :cond_6
    const-string v4, "not null"

    :goto_d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    const/4 v3, 0x1

    aget v4, v29, v3

    add-int/2addr v4, v3

    aput v4, v29, v3

    .line 332
    invoke-virtual {v1, v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->catchException(Ljava/lang/Exception;)V

    goto :goto_e

    .line 280
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v19    # "tilePathBase":Ljava/io/File;
    .end local v23    # "z":[Ljava/io/File;
    .end local v24    # "zz":I
    .end local v25    # "x":[Ljava/io/File;
    .end local v26    # "xx":I
    .end local v27    # "y":[Ljava/io/File;
    .end local v29    # "ret":[I
    .restart local v4    # "ret":[I
    .restart local v5    # "tilePathBase":Ljava/io/File;
    .restart local v8    # "z":[Ljava/io/File;
    .restart local v10    # "y":[Ljava/io/File;
    .restart local v13    # "zz":I
    .restart local v14    # "x":[Ljava/io/File;
    .restart local v15    # "xx":I
    :cond_7
    move/from16 v20, v3

    move-object/from16 v29, v4

    move-object/from16 v19, v5

    move-object/from16 v23, v8

    move-object/from16 v18, v9

    move-object/from16 v27, v10

    move/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v26, v15

    .line 279
    .end local v4    # "ret":[I
    .end local v5    # "tilePathBase":Ljava/io/File;
    .end local v8    # "z":[Ljava/io/File;
    .end local v10    # "y":[Ljava/io/File;
    .end local v13    # "zz":I
    .end local v14    # "x":[Ljava/io/File;
    .end local v15    # "xx":I
    .restart local v19    # "tilePathBase":Ljava/io/File;
    .restart local v23    # "z":[Ljava/io/File;
    .restart local v24    # "zz":I
    .restart local v25    # "x":[Ljava/io/File;
    .restart local v26    # "xx":I
    .restart local v27    # "y":[Ljava/io/File;
    .restart local v29    # "ret":[I
    :goto_e
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, v18

    move-object/from16 v5, v19

    move/from16 v3, v20

    move-object/from16 v8, v23

    move/from16 v13, v24

    move-object/from16 v14, v25

    move/from16 v15, v26

    move-object/from16 v10, v27

    move-object/from16 v4, v29

    goto/16 :goto_3

    .end local v19    # "tilePathBase":Ljava/io/File;
    .end local v23    # "z":[Ljava/io/File;
    .end local v24    # "zz":I
    .end local v25    # "x":[Ljava/io/File;
    .end local v26    # "xx":I
    .end local v27    # "y":[Ljava/io/File;
    .end local v29    # "ret":[I
    .restart local v4    # "ret":[I
    .restart local v5    # "tilePathBase":Ljava/io/File;
    .restart local v8    # "z":[Ljava/io/File;
    .restart local v10    # "y":[Ljava/io/File;
    .restart local v13    # "zz":I
    .restart local v14    # "x":[Ljava/io/File;
    .restart local v15    # "xx":I
    :cond_8
    move/from16 v20, v3

    move-object/from16 v29, v4

    move-object/from16 v19, v5

    move-object/from16 v23, v8

    move-object/from16 v18, v9

    move-object/from16 v27, v10

    move/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v26, v15

    .end local v4    # "ret":[I
    .end local v5    # "tilePathBase":Ljava/io/File;
    .end local v8    # "z":[Ljava/io/File;
    .end local v10    # "y":[Ljava/io/File;
    .end local v13    # "zz":I
    .end local v14    # "x":[Ljava/io/File;
    .end local v15    # "xx":I
    .restart local v19    # "tilePathBase":Ljava/io/File;
    .restart local v23    # "z":[Ljava/io/File;
    .restart local v24    # "zz":I
    .restart local v25    # "x":[Ljava/io/File;
    .restart local v26    # "xx":I
    .restart local v27    # "y":[Ljava/io/File;
    .restart local v29    # "ret":[I
    goto :goto_f

    .line 278
    .end local v12    # "yy":I
    .end local v19    # "tilePathBase":Ljava/io/File;
    .end local v23    # "z":[Ljava/io/File;
    .end local v24    # "zz":I
    .end local v25    # "x":[Ljava/io/File;
    .end local v26    # "xx":I
    .end local v27    # "y":[Ljava/io/File;
    .end local v29    # "ret":[I
    .restart local v4    # "ret":[I
    .restart local v5    # "tilePathBase":Ljava/io/File;
    .restart local v8    # "z":[Ljava/io/File;
    .restart local v10    # "y":[Ljava/io/File;
    .restart local v13    # "zz":I
    .restart local v14    # "x":[Ljava/io/File;
    .restart local v15    # "xx":I
    :cond_9
    move/from16 v20, v3

    move-object/from16 v29, v4

    move-object/from16 v19, v5

    move-object/from16 v23, v8

    move-object/from16 v18, v9

    move-object/from16 v27, v10

    move/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v26, v15

    .end local v4    # "ret":[I
    .end local v5    # "tilePathBase":Ljava/io/File;
    .end local v8    # "z":[Ljava/io/File;
    .end local v10    # "y":[Ljava/io/File;
    .end local v13    # "zz":I
    .end local v14    # "x":[Ljava/io/File;
    .end local v15    # "xx":I
    .restart local v19    # "tilePathBase":Ljava/io/File;
    .restart local v23    # "z":[Ljava/io/File;
    .restart local v24    # "zz":I
    .restart local v25    # "x":[Ljava/io/File;
    .restart local v26    # "xx":I
    .restart local v27    # "y":[Ljava/io/File;
    .restart local v29    # "ret":[I
    goto :goto_f

    .line 276
    .end local v19    # "tilePathBase":Ljava/io/File;
    .end local v23    # "z":[Ljava/io/File;
    .end local v24    # "zz":I
    .end local v25    # "x":[Ljava/io/File;
    .end local v26    # "xx":I
    .end local v27    # "y":[Ljava/io/File;
    .end local v29    # "ret":[I
    .restart local v4    # "ret":[I
    .restart local v5    # "tilePathBase":Ljava/io/File;
    .restart local v8    # "z":[Ljava/io/File;
    .restart local v13    # "zz":I
    .restart local v14    # "x":[Ljava/io/File;
    .restart local v15    # "xx":I
    :cond_a
    move/from16 v20, v3

    move-object/from16 v29, v4

    move-object/from16 v19, v5

    move-object/from16 v23, v8

    move-object/from16 v18, v9

    move/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v26, v15

    .line 337
    .end local v4    # "ret":[I
    .end local v5    # "tilePathBase":Ljava/io/File;
    .end local v8    # "z":[Ljava/io/File;
    .end local v13    # "zz":I
    .end local v14    # "x":[Ljava/io/File;
    .end local v15    # "xx":I
    .restart local v19    # "tilePathBase":Ljava/io/File;
    .restart local v23    # "z":[Ljava/io/File;
    .restart local v24    # "zz":I
    .restart local v25    # "x":[Ljava/io/File;
    .restart local v26    # "xx":I
    .restart local v29    # "ret":[I
    :goto_f
    if-eqz p1, :cond_b

    .line 340
    :try_start_11
    aget-object v0, v25, v26

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 344
    move-object/from16 v4, v18

    goto :goto_10

    .line 341
    :catch_b
    move-exception v0

    .line 342
    .restart local v0    # "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v25, v26

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    const/4 v3, 0x3

    aget v5, v29, v3

    const/4 v8, 0x1

    add-int/2addr v5, v8

    aput v5, v29, v3

    goto :goto_10

    .line 337
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_b
    move-object/from16 v4, v18

    .line 275
    :goto_10
    add-int/lit8 v15, v26, 0x1

    move-object v9, v4

    move-object/from16 v5, v19

    move/from16 v3, v20

    move-object/from16 v8, v23

    move/from16 v13, v24

    move-object/from16 v14, v25

    move-object/from16 v4, v29

    .end local v26    # "xx":I
    .restart local v15    # "xx":I
    goto/16 :goto_2

    .end local v19    # "tilePathBase":Ljava/io/File;
    .end local v23    # "z":[Ljava/io/File;
    .end local v24    # "zz":I
    .end local v25    # "x":[Ljava/io/File;
    .end local v29    # "ret":[I
    .restart local v4    # "ret":[I
    .restart local v5    # "tilePathBase":Ljava/io/File;
    .restart local v8    # "z":[Ljava/io/File;
    .restart local v13    # "zz":I
    .restart local v14    # "x":[Ljava/io/File;
    :cond_c
    move/from16 v20, v3

    move-object/from16 v29, v4

    move-object/from16 v19, v5

    move-object/from16 v23, v8

    move-object v4, v9

    move/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v26, v15

    .end local v4    # "ret":[I
    .end local v5    # "tilePathBase":Ljava/io/File;
    .end local v8    # "z":[Ljava/io/File;
    .end local v13    # "zz":I
    .end local v14    # "x":[Ljava/io/File;
    .end local v15    # "xx":I
    .restart local v19    # "tilePathBase":Ljava/io/File;
    .restart local v23    # "z":[Ljava/io/File;
    .restart local v24    # "zz":I
    .restart local v25    # "x":[Ljava/io/File;
    .restart local v26    # "xx":I
    .restart local v29    # "ret":[I
    goto :goto_11

    .line 274
    .end local v19    # "tilePathBase":Ljava/io/File;
    .end local v23    # "z":[Ljava/io/File;
    .end local v24    # "zz":I
    .end local v25    # "x":[Ljava/io/File;
    .end local v26    # "xx":I
    .end local v29    # "ret":[I
    .restart local v4    # "ret":[I
    .restart local v5    # "tilePathBase":Ljava/io/File;
    .restart local v8    # "z":[Ljava/io/File;
    .restart local v13    # "zz":I
    .restart local v14    # "x":[Ljava/io/File;
    :cond_d
    move/from16 v20, v3

    move-object/from16 v29, v4

    move-object/from16 v19, v5

    move-object/from16 v23, v8

    move-object v4, v9

    move/from16 v24, v13

    move-object/from16 v25, v14

    .end local v4    # "ret":[I
    .end local v5    # "tilePathBase":Ljava/io/File;
    .end local v8    # "z":[Ljava/io/File;
    .end local v13    # "zz":I
    .end local v14    # "x":[Ljava/io/File;
    .restart local v19    # "tilePathBase":Ljava/io/File;
    .restart local v23    # "z":[Ljava/io/File;
    .restart local v24    # "zz":I
    .restart local v25    # "x":[Ljava/io/File;
    .restart local v29    # "ret":[I
    goto :goto_11

    .line 272
    .end local v19    # "tilePathBase":Ljava/io/File;
    .end local v23    # "z":[Ljava/io/File;
    .end local v24    # "zz":I
    .end local v25    # "x":[Ljava/io/File;
    .end local v29    # "ret":[I
    .restart local v4    # "ret":[I
    .restart local v5    # "tilePathBase":Ljava/io/File;
    .restart local v8    # "z":[Ljava/io/File;
    .restart local v13    # "zz":I
    :cond_e
    move/from16 v20, v3

    move-object/from16 v29, v4

    move-object/from16 v19, v5

    move-object/from16 v23, v8

    move-object v4, v9

    move/from16 v24, v13

    .line 348
    .end local v4    # "ret":[I
    .end local v5    # "tilePathBase":Ljava/io/File;
    .end local v8    # "z":[Ljava/io/File;
    .end local v13    # "zz":I
    .restart local v19    # "tilePathBase":Ljava/io/File;
    .restart local v23    # "z":[Ljava/io/File;
    .restart local v24    # "zz":I
    .restart local v29    # "ret":[I
    :goto_11
    if-eqz p1, :cond_f

    .line 351
    :try_start_12
    aget-object v0, v23, v24

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    .line 355
    goto :goto_12

    .line 352
    :catch_c
    move-exception v0

    .line 353
    .restart local v0    # "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v23, v24

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    const/4 v3, 0x3

    aget v5, v29, v3

    const/4 v8, 0x1

    add-int/2addr v5, v8

    aput v5, v29, v3

    .line 271
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_f
    :goto_12
    add-int/lit8 v13, v24, 0x1

    move-object v9, v4

    move-object/from16 v5, v19

    move/from16 v3, v20

    move-object/from16 v8, v23

    move-object/from16 v4, v29

    .end local v24    # "zz":I
    .restart local v13    # "zz":I
    goto/16 :goto_1

    .end local v19    # "tilePathBase":Ljava/io/File;
    .end local v23    # "z":[Ljava/io/File;
    .end local v29    # "ret":[I
    .restart local v4    # "ret":[I
    .restart local v5    # "tilePathBase":Ljava/io/File;
    .restart local v8    # "z":[Ljava/io/File;
    :cond_10
    move/from16 v20, v3

    move-object/from16 v29, v4

    move-object/from16 v19, v5

    move-object/from16 v23, v8

    move-object v4, v9

    move/from16 v24, v13

    .end local v4    # "ret":[I
    .end local v5    # "tilePathBase":Ljava/io/File;
    .end local v8    # "z":[Ljava/io/File;
    .end local v13    # "zz":I
    .restart local v19    # "tilePathBase":Ljava/io/File;
    .restart local v23    # "z":[Ljava/io/File;
    .restart local v24    # "zz":I
    .restart local v29    # "ret":[I
    goto :goto_13

    .line 270
    .end local v19    # "tilePathBase":Ljava/io/File;
    .end local v23    # "z":[Ljava/io/File;
    .end local v24    # "zz":I
    .end local v29    # "ret":[I
    .restart local v4    # "ret":[I
    .restart local v5    # "tilePathBase":Ljava/io/File;
    .restart local v8    # "z":[Ljava/io/File;
    :cond_11
    move/from16 v20, v3

    move-object/from16 v29, v4

    move-object/from16 v19, v5

    move-object/from16 v23, v8

    move-object v4, v9

    .line 360
    .end local v4    # "ret":[I
    .end local v5    # "tilePathBase":Ljava/io/File;
    .end local v8    # "z":[Ljava/io/File;
    .restart local v19    # "tilePathBase":Ljava/io/File;
    .restart local v23    # "z":[Ljava/io/File;
    .restart local v29    # "ret":[I
    :goto_13
    if-eqz p1, :cond_13

    .line 363
    :try_start_13
    aget-object v0, v6, v7

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    .line 367
    goto :goto_14

    .line 364
    :catch_d
    move-exception v0

    .line 365
    .restart local v0    # "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v6, v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    const/4 v3, 0x3

    aget v4, v29, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    aput v4, v29, v3

    goto :goto_14

    .line 267
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v19    # "tilePathBase":Ljava/io/File;
    .end local v23    # "z":[Ljava/io/File;
    .end local v29    # "ret":[I
    .restart local v4    # "ret":[I
    .restart local v5    # "tilePathBase":Ljava/io/File;
    :cond_12
    move/from16 v20, v3

    move-object/from16 v29, v4

    move-object/from16 v19, v5

    .line 266
    .end local v4    # "ret":[I
    .end local v5    # "tilePathBase":Ljava/io/File;
    .restart local v19    # "tilePathBase":Ljava/io/File;
    .restart local v29    # "ret":[I
    :cond_13
    :goto_14
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v19

    move/from16 v3, v20

    move-object/from16 v4, v29

    goto/16 :goto_0

    .end local v19    # "tilePathBase":Ljava/io/File;
    .end local v29    # "ret":[I
    .restart local v4    # "ret":[I
    .restart local v5    # "tilePathBase":Ljava/io/File;
    :cond_14
    move-object/from16 v29, v4

    move-object/from16 v19, v5

    .end local v4    # "ret":[I
    .end local v5    # "tilePathBase":Ljava/io/File;
    .restart local v19    # "tilePathBase":Ljava/io/File;
    .restart local v29    # "ret":[I
    goto :goto_15

    .line 265
    .end local v7    # "i":I
    .end local v19    # "tilePathBase":Ljava/io/File;
    .end local v29    # "ret":[I
    .restart local v4    # "ret":[I
    .restart local v5    # "tilePathBase":Ljava/io/File;
    :cond_15
    move-object/from16 v29, v4

    move-object/from16 v19, v5

    .end local v4    # "ret":[I
    .end local v5    # "tilePathBase":Ljava/io/File;
    .restart local v19    # "tilePathBase":Ljava/io/File;
    .restart local v29    # "ret":[I
    goto :goto_15

    .line 263
    .end local v6    # "tileSources":[Ljava/io/File;
    .end local v19    # "tilePathBase":Ljava/io/File;
    .end local v29    # "ret":[I
    .restart local v4    # "ret":[I
    .restart local v5    # "tilePathBase":Ljava/io/File;
    :cond_16
    move-object/from16 v29, v4

    move-object/from16 v19, v5

    .line 377
    .end local v4    # "ret":[I
    .end local v5    # "tilePathBase":Ljava/io/File;
    .restart local v19    # "tilePathBase":Ljava/io/File;
    .restart local v29    # "ret":[I
    :goto_15
    return-object v29
.end method

.method public loadTile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, "bits":[B
    const-wide/16 v1, 0x0

    .line 614
    .local v1, "expirationTimestamp":J
    const/4 v3, 0x0

    .line 616
    .local v3, "cur":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p2, p3}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(J)J

    move-result-wide v4

    .line 617
    .local v4, "index":J
    invoke-static {v4, v5, p1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKeyParameters(JLorg/osmdroid/tileprovider/tilesource/ITileSource;)[Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->queryColumns:[Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getTileCursor([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v3, v6

    .line 618
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 619
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    move-object v0, v6

    .line 620
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v1, v9

    .line 622
    :cond_0
    const-string v6, "OsmDroid"

    if-nez v0, :cond_3

    .line 623
    :try_start_1
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 624
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

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 626
    :cond_1
    nop

    .line 632
    if-eqz v3, :cond_2

    .line 633
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 626
    :cond_2
    const/4 v6, 0x0

    return-object v6

    .line 632
    .end local v4    # "index":J
    :cond_3
    if-eqz v3, :cond_4

    .line 633
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_4
    const/4 v4, 0x0

    .line 639
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_2
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v5

    .line 640
    invoke-interface {p1, v4}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 642
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 643
    .local v9, "now":J
    cmp-long v11, v1, v9

    if-gez v11, :cond_5

    goto :goto_0

    :cond_5
    move v7, v8

    .line 645
    .local v7, "fileExpired":Z
    :goto_0
    if-eqz v7, :cond_7

    if-eqz v5, :cond_7

    .line 646
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v8

    invoke-interface {v8}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 647
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tile expired: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_6
    const/4 v6, -0x2

    invoke-static {v5, v6}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 651
    :cond_7
    nop

    .line 653
    nop

    .line 654
    invoke-static {v4}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 651
    return-object v5

    .line 653
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "fileExpired":Z
    .end local v9    # "now":J
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_8

    .line 654
    invoke-static {v4}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 656
    :cond_8
    throw v5

    .line 632
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    goto :goto_1

    .line 628
    :catch_0
    move-exception v4

    .line 629
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0, v4}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->catchException(Ljava/lang/Exception;)V

    .line 630
    nop

    .end local v0    # "bits":[B
    .end local v1    # "expirationTimestamp":J
    .end local v3    # "cur":Landroid/database/Cursor;
    .end local p1    # "pTileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .end local p2    # "pMapTileIndex":J
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 632
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v0    # "bits":[B
    .restart local v1    # "expirationTimestamp":J
    .restart local v3    # "cur":Landroid/database/Cursor;
    .restart local p1    # "pTileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .restart local p2    # "pMapTileIndex":J
    :goto_1
    if-eqz v3, :cond_9

    .line 633
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 635
    :cond_9
    throw v4
.end method

.method public onDetach()V
    .locals 0

    .line 205
    return-void
.end method

.method public purgeCache()Z
    .locals 4

    .line 214
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 215
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    :try_start_0
    const-string v1, "tiles"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    const/4 v1, 0x1

    return v1

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OsmDroid"

    const-string v3, "Error purging the db"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    invoke-virtual {p0, v1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->catchException(Ljava/lang/Exception;)V

    .line 224
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public purgeCache(Ljava/lang/String;)Z
    .locals 4
    .param p1, "mTileSourceName"    # Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 235
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    :try_start_0
    const-string v1, "tiles"

    const-string v2, "provider = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    const/4 v1, 0x1

    return v1

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OsmDroid"

    const-string v3, "Error purging the db"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    invoke-virtual {p0, v1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->catchException(Ljava/lang/Exception;)V

    .line 244
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public refreshDb()V
    .locals 2

    .line 761
    sget-object v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_0
    sget-object v1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 763
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 764
    const/4 v1, 0x0

    sput-object v1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 766
    :cond_0
    monitor-exit v0

    .line 767
    return-void

    .line 766
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z
    .locals 11
    .param p1, "pTileSourceInfo"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 388
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 389
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    const-string v2, " "

    const-string v3, "Unable to delete cached tile from "

    const-string v4, "OsmDroid"

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 395
    :cond_0
    :try_start_0
    invoke-static {p2, p3}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(J)J

    move-result-wide v6

    .line 396
    .local v6, "index":J
    const-string v8, "tiles"

    const-string v9, "key=? and provider=?"

    invoke-static {v6, v7, p1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKeyParameters(JLorg/osmdroid/tileprovider/tilesource/ITileSource;)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    return v5

    .line 398
    .end local v6    # "index":J
    :catch_0
    move-exception v6

    .line 401
    .local v6, "ex":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " db is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_1

    const-string v3, "null"

    goto :goto_0

    :cond_1
    const-string v3, "not null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    sget v2, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    add-int/2addr v2, v5

    sput v2, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    .line 403
    invoke-virtual {p0, v6}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->catchException(Ljava/lang/Exception;)V

    .line 405
    .end local v6    # "ex":Ljava/lang/Exception;
    return v1

    .line 390
    :cond_2
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", database not available."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget v2, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    add-int/2addr v2, v5

    sput v2, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    .line 392
    return v1
.end method

.method public runCleanupOperation()V
    .locals 12

    .line 103
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 104
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->createIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 115
    sget-object v1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 116
    .local v1, "dbLength":J
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 117
    return-void

    .line 120
    :cond_1
    nop

    .line 121
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheTrimBytes()J

    move-result-wide v3

    sub-long v6, v1, v3

    .line 122
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getTileGCBulkSize()I

    move-result v8

    .line 123
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getTileGCBulkPauseInMillis()J

    move-result-wide v9

    const/4 v11, 0x1

    .line 120
    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->runCleanupOperation(JIJZ)V

    .line 125
    return-void

    .line 105
    .end local v1    # "dbLength":J
    :cond_2
    :goto_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    const-string v1, "OsmDroid"

    const-string v2, "Finished init thread, aborted due to null database reference"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_3
    return-void
.end method

.method public runCleanupOperation(JIJZ)V
    .locals 20
    .param p1, "pToBeDeleted"    # J
    .param p3, "pBulkSize"    # I
    .param p4, "pPauseMillis"    # J
    .param p6, "pIncludeUnexpired"    # Z

    .line 668
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 669
    .local v2, "diff":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 671
    .local v4, "where":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 672
    .local v0, "first":Z
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-wide v6, v2

    move v2, v0

    .line 673
    .end local v0    # "first":Z
    .local v2, "first":Z
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v6, "diff":J
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_6

    .line 674
    if-eqz v2, :cond_0

    .line 675
    const/4 v0, 0x0

    move v2, v0

    .end local v2    # "first":Z
    .restart local v0    # "first":Z
    goto :goto_1

    .line 677
    .end local v0    # "first":Z
    .restart local v2    # "first":Z
    :cond_0
    cmp-long v0, p4, v8

    if-lez v0, :cond_1

    .line 679
    :try_start_0
    invoke-static/range {p4 .. p5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    goto :goto_1

    .line 680
    :catch_0
    move-exception v0

    .line 685
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 688
    .local v10, "now":J
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT key,LENGTH(HEX(tile))/2 FROM tiles WHERE expires IS NOT NULL "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 693
    const-string v3, ""

    if-eqz p6, :cond_2

    move-object v12, v3

    goto :goto_2

    :cond_2
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AND expires < "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "ORDER BY "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "expires"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " ASC LIMIT "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move/from16 v12, p3

    :try_start_3
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    const/4 v13, 0x0

    invoke-virtual {v5, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v14, v0

    .line 699
    .local v14, "cur":Landroid/database/Cursor;
    nop

    .line 700
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 701
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 702
    const-string v15, "key in ("

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const-string v15, ""

    .line 704
    .local v15, "sep":Ljava/lang/String;
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v16

    if-nez v16, :cond_4

    .line 705
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 706
    .local v8, "key":J
    const/4 v0, 0x1

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 707
    .local v18, "size":J
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 709
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 710
    const-string v15, ","

    .line 711
    sub-long v6, v6, v18

    .line 712
    const-wide/16 v16, 0x0

    cmp-long v0, v6, v16

    if-gtz v0, :cond_3

    .line 713
    goto :goto_4

    .line 715
    .end local v8    # "key":J
    .end local v18    # "size":J
    :cond_3
    move-wide/from16 v8, v16

    const/4 v0, 0x0

    goto :goto_3

    .line 716
    :cond_4
    :goto_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 717
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 718
    return-void

    .line 720
    :cond_5
    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 722
    :try_start_4
    const-string v0, "tiles"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 726
    :catch_1
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->catchException(Ljava/lang/Exception;)V

    .line 728
    return-void

    .line 723
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 724
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "OsmDroid"

    const-string v8, "SQLiteFullException while cleanup."

    invoke-static {v3, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    invoke-virtual {v1, v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->catchException(Ljava/lang/Exception;)V

    .line 729
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_5
    nop

    .line 730
    .end local v10    # "now":J
    .end local v14    # "cur":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 696
    .end local v15    # "sep":Ljava/lang/String;
    .restart local v10    # "now":J
    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move/from16 v12, p3

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v1, v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->catchException(Ljava/lang/Exception;)V

    .line 698
    return-void

    .line 731
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "now":J
    :cond_6
    move/from16 v12, p3

    return-void
.end method

.method public runDuringSplashScreen()V
    .locals 1

    .line 822
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 823
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->createIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 824
    return-void
.end method

.method public saveFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;JLjava/io/InputStream;Ljava/lang/Long;)Z
    .locals 22
    .param p1, "pTileSourceInfo"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J
    .param p4, "pStream"    # Ljava/io/InputStream;
    .param p5, "pExpirationTime"    # Ljava/lang/Long;

    .line 129
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 130
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, " "

    const-string v5, "Unable to store cached tile from "

    const/4 v6, 0x0

    const-string v7, "OsmDroid"

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v12, p4

    goto/16 :goto_9

    .line 135
    :cond_0
    const/4 v8, 0x0

    .line 137
    .local v8, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static/range {p2 .. p3}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(J)J

    move-result-wide v9

    .line 139
    .local v9, "index":J
    const-string v11, "provider"

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/16 v11, 0x200

    new-array v11, v11, [B

    .line 143
    .local v11, "buffer":[B
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v12

    .line 144
    :goto_0
    move-object/from16 v12, p4

    :try_start_1
    invoke-virtual {v12, v11}, Ljava/io/InputStream;->read([B)I

    move-result v13

    move v14, v13

    .local v14, "l":I
    const/4 v15, -0x1

    if-eq v13, v15, :cond_1

    .line 145
    invoke-virtual {v8, v11, v6, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 148
    .local v13, "bits":[B
    const-string v15, "key"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    const-string v6, "tile"

    invoke-virtual {v0, v6, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 150
    if-eqz v2, :cond_2

    .line 151
    const-string v6, "expires"

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    :cond_2
    const-string v6, "tiles"

    const/4 v15, 0x0

    invoke-virtual {v3, v6, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 153
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tile inserted "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v18, v9

    .end local v9    # "index":J
    .local v18, "index":J
    iget-wide v9, v1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->lastSizeCheck:J

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/osmdroid/config/IConfigurationProvider;->getTileGCFrequencyInMillis()J

    move-result-wide v20

    add-long v9, v9, v20

    cmp-long v6, v16, v9

    if-lez v6, :cond_4

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->lastSizeCheck:J

    .line 157
    iget-object v6, v1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->garbageCollector:Lorg/osmdroid/util/GarbageCollector;

    invoke-virtual {v6}, Lorg/osmdroid/util/GarbageCollector;->gc()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v11    # "buffer":[B
    .end local v13    # "bits":[B
    .end local v14    # "l":I
    .end local v18    # "index":J
    :cond_4
    :try_start_2
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    :goto_1
    goto :goto_6

    .line 174
    :catch_0
    move-exception v0

    .line 177
    goto :goto_6

    .line 165
    :catch_1
    move-exception v0

    goto :goto_3

    .line 159
    :catch_2
    move-exception v0

    goto :goto_5

    .line 172
    :catchall_0
    move-exception v0

    move-object/from16 v12, p4

    :goto_2
    move-object v4, v0

    goto :goto_7

    .line 165
    :catch_3
    move-exception v0

    move-object/from16 v12, p4

    .line 168
    .local v0, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " db is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_5

    const-string v5, "null"

    goto :goto_4

    :cond_5
    const-string v5, "not null"

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    sget v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    .line 170
    invoke-virtual {v1, v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->catchException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    .end local v0    # "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 159
    :catch_4
    move-exception v0

    move-object/from16 v12, p4

    .line 162
    .local v0, "ex":Landroid/database/sqlite/SQLiteFullException;
    :goto_5
    :try_start_5
    const-string v4, "SQLiteFullException while saving tile."

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    iget-object v4, v1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->garbageCollector:Lorg/osmdroid/util/GarbageCollector;

    invoke-virtual {v4}, Lorg/osmdroid/util/GarbageCollector;->gc()Z

    .line 164
    invoke-virtual {v1, v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->catchException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 173
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteFullException;
    :try_start_6
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 178
    :goto_6
    const/4 v4, 0x0

    return v4

    .line 172
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 173
    :goto_7
    :try_start_7
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 176
    goto :goto_8

    .line 174
    :catch_5
    move-exception v0

    .line 177
    :goto_8
    throw v4

    .line 130
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_6
    move-object/from16 v12, p4

    .line 131
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p2 .. p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", database not available."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    .line 133
    const/4 v4, 0x0

    return v4
.end method
