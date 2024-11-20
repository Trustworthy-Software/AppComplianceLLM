.class public final Lcom/google/firebase/firestore/local/SQLitePersistence;
.super Lcom/google/firebase/firestore/local/Persistence;
.source "SQLitePersistence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;,
        Lcom/google/firebase/firestore/local/SQLitePersistence$Query;,
        Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;
    }
.end annotation


# static fields
.field public static final MAX_ARGS:I = 0x384


# instance fields
.field private final bundleCache:Lcom/google/firebase/firestore/local/SQLiteBundleCache;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private final opener:Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;

.field private final referenceDelegate:Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

.field private final remoteDocumentCache:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

.field private final serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

.field private started:Z

.field private final targetCache:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

.field private final transactionListener:Landroid/database/sqlite/SQLiteTransactionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/local/LocalSerializer;Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "persistenceKey"    # Ljava/lang/String;
    .param p3, "databaseId"    # Lcom/google/firebase/firestore/model/DatabaseId;
    .param p4, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;
    .param p5, "params"    # Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    .line 117
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;

    .line 120
    invoke-static {p2, p3}, Lcom/google/firebase/firestore/local/SQLitePersistence;->databaseName(Ljava/lang/String;Lcom/google/firebase/firestore/model/DatabaseId;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, p4, v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;-><init>(Landroid/content/Context;Lcom/google/firebase/firestore/local/LocalSerializer;Ljava/lang/String;Lcom/google/firebase/firestore/local/SQLitePersistence$1;)V

    .line 117
    invoke-direct {p0, p4, p5, v0}, Lcom/google/firebase/firestore/local/SQLitePersistence;-><init>(Lcom/google/firebase/firestore/local/LocalSerializer;Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/local/LocalSerializer;Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;)V
    .locals 1
    .param p1, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;
    .param p2, "params"    # Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;
    .param p3, "openHelper"    # Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;

    .line 124
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/Persistence;-><init>()V

    .line 92
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/local/SQLitePersistence$1;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->transactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 125
    iput-object p3, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->opener:Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;

    .line 126
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 127
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->targetCache:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    .line 128
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteBundleCache;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/local/SQLiteBundleCache;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->bundleCache:Lcom/google/firebase/firestore/local/SQLiteBundleCache;

    .line 129
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->remoteDocumentCache:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    .line 130
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->referenceDelegate:Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/local/SQLitePersistence;)Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 57
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->referenceDelegate:Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

    return-object v0
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteProgram;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 57
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->bind(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V

    return-void
.end method

.method private static bind(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "program"    # Landroid/database/sqlite/SQLiteProgram;
    .param p1, "bindArgs"    # [Ljava/lang/Object;

    .line 702
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_6

    .line 703
    aget-object v1, p1, v0

    .line 704
    .local v1, "arg":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 705
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 706
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 707
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 708
    :cond_1
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 709
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    .line 710
    :cond_2
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 711
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    .line 712
    :cond_3
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_4

    .line 713
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    goto :goto_1

    .line 714
    :cond_4
    instance-of v2, v1, [B

    if-eqz v2, :cond_5

    .line 715
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    .line 702
    .end local v1    # "arg":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 717
    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Unknown argument %s of type %s"

    invoke-static {v3, v2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 720
    .end local v0    # "i":I
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_6
    return-void
.end method

.method public static clearPersistence(Landroid/content/Context;Lcom/google/firebase/firestore/model/DatabaseId;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "databaseId"    # Lcom/google/firebase/firestore/model/DatabaseId;
    .param p2, "persistenceKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/firestore/FirebaseFirestoreException;
        }
    .end annotation

    .line 240
    invoke-static {p2, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->databaseName(Ljava/lang/String;Lcom/google/firebase/firestore/model/DatabaseId;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "databaseName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "sqLitePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "journalPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-wal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "walPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v4, "sqLiteFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v5, "journalFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v6, "walFile":Ljava/io/File;
    :try_start_0
    invoke-static {v4}, Lcom/google/firebase/firestore/util/FileUtil;->delete(Ljava/io/File;)V

    .line 251
    invoke-static {v5}, Lcom/google/firebase/firestore/util/FileUtil;->delete(Ljava/io/File;)V

    .line 252
    invoke-static {v6}, Lcom/google/firebase/firestore/util/FileUtil;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    nop

    .line 256
    return-void

    .line 253
    :catch_0
    move-exception v7

    .line 254
    .local v7, "e":Ljava/io/IOException;
    new-instance v8, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to clear persistence."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->UNKNOWN:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {v8, v9, v10}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    throw v8
.end method

.method public static databaseName(Ljava/lang/String;Lcom/google/firebase/firestore/model/DatabaseId;)Ljava/lang/String;
    .locals 4
    .param p0, "persistenceKey"    # Ljava/lang/String;
    .param p1, "databaseId"    # Lcom/google/firebase/firestore/model/DatabaseId;

    .line 74
    const-string v0, "."

    const-string v1, "utf-8"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firestore."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 75
    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private getPageCount()J
    .locals 2

    .line 278
    const-string v0, "PRAGMA page_count"

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLitePersistence$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->firstValue(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getPageSize()J
    .locals 2

    .line 268
    const-string v0, "PRAGMA page_size"

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLitePersistence$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->firstValue(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$getPageCount$1(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2
    .param p0, "row"    # Landroid/database/Cursor;

    .line 278
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getPageSize$0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2
    .param p0, "row"    # Landroid/database/Cursor;

    .line 268
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method varargs execute(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)I
    .locals 1
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 393
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 394
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->bind(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V

    .line 395
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    return v0
.end method

.method varargs execute(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method getBundleCache()Lcom/google/firebase/firestore/local/BundleCache;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->bundleCache:Lcom/google/firebase/firestore/local/SQLiteBundleCache;

    return-object v0
.end method

.method getByteSize()J
    .locals 4

    .line 259
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getPageCount()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method getDocumentOverlayCache(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/firestore/local/DocumentOverlayCache;
    .locals 2
    .param p1, "user"    # Lcom/google/firebase/firestore/auth/User;

    .line 195
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;Lcom/google/firebase/firestore/auth/User;)V

    return-object v0
.end method

.method getIndexManager(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/firestore/local/IndexManager;
    .locals 2
    .param p1, "user"    # Lcom/google/firebase/firestore/auth/User;

    .line 185
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;Lcom/google/firebase/firestore/auth/User;)V

    return-object v0
.end method

.method getMutationQueue(Lcom/google/firebase/firestore/auth/User;Lcom/google/firebase/firestore/local/IndexManager;)Lcom/google/firebase/firestore/local/MutationQueue;
    .locals 2
    .param p1, "user"    # Lcom/google/firebase/firestore/auth/User;
    .param p2, "indexManager"    # Lcom/google/firebase/firestore/local/IndexManager;

    .line 175
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;Lcom/google/firebase/firestore/auth/User;Lcom/google/firebase/firestore/local/IndexManager;)V

    return-object v0
.end method

.method getOverlayMigrationManager()Lcom/google/firebase/firestore/local/OverlayMigrationManager;
    .locals 1

    .line 200
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;)V

    return-object v0
.end method

.method public bridge synthetic getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceDelegate()Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->referenceDelegate:Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

    return-object v0
.end method

.method getRemoteDocumentCache()Lcom/google/firebase/firestore/local/RemoteDocumentCache;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->remoteDocumentCache:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    return-object v0
.end method

.method getTargetCache()Lcom/google/firebase/firestore/local/SQLiteTargetCache;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->targetCache:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    return-object v0
.end method

.method bridge synthetic getTargetCache()Lcom/google/firebase/firestore/local/TargetCache;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getTargetCache()Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    move-result-object v0

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->started:Z

    return v0
.end method

.method prepare(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;

    .line 403
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-object v0
.end method

.method runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/util/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 224
    .local p2, "operation":Lcom/google/firebase/firestore/util/Supplier;, "Lcom/google/firebase/firestore/util/Supplier<TT;>;"
    sget-object v0, Lcom/google/firebase/firestore/local/SQLitePersistence;->TAG:Ljava/lang/String;

    const-string v1, "Starting transaction: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->transactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 228
    :try_start_0
    invoke-interface {p2}, Lcom/google/firebase/firestore/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 231
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 234
    nop

    .line 235
    return-object v0

    .line 233
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 234
    throw v1
.end method

.method runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/Runnable;

    .line 210
    sget-object v0, Lcom/google/firebase/firestore/local/SQLitePersistence;->TAG:Ljava/lang/String;

    const-string v1, "Starting transaction: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->transactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 213
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 216
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 219
    nop

    .line 220
    return-void

    .line 218
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 219
    throw v0
.end method

.method public shutdown()V
    .locals 4

    .line 157
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->started:Z

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SQLitePersistence shutdown without start!"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iput-boolean v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->started:Z

    .line 159
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 161
    return-void
.end method

.method public start()V
    .locals 4

    .line 135
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->started:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "SQLitePersistence double-started!"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iput-boolean v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->started:Z

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->opener:Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    nop

    .line 151
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->targetCache:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->start()V

    .line 152
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->referenceDelegate:Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence;->targetCache:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->getHighestListenSequenceNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->start(J)V

    .line 153
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/database/sqlite/SQLiteDatabaseLockedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to gain exclusive lock to the Cloud Firestore client\'s offline persistence. This generally means you are using Cloud Firestore from multiple processes in your app. Keep in mind that multi-process Android apps execute the code in your Application class in all processes, so you may need to avoid initializing Cloud Firestore in your Application class. If you are intentionally using Cloud Firestore from multiple processes, you can only enable offline persistence (that is, call setPersistenceEnabled(true)) in one of them."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
