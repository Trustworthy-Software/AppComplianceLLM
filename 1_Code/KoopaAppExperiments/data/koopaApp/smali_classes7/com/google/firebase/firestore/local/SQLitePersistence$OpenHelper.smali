.class Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLitePersistence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/SQLitePersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OpenHelper"
.end annotation


# instance fields
.field private configured:Z

.field private final serializer:Lcom/google/firebase/firestore/local/LocalSerializer;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/firebase/firestore/local/LocalSerializer;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;
    .param p3, "databaseName"    # Ljava/lang/String;

    .line 306
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;-><init>(Landroid/content/Context;Lcom/google/firebase/firestore/local/LocalSerializer;Ljava/lang/String;I)V

    .line 307
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/firestore/local/LocalSerializer;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;
    .param p3, "databaseName"    # Ljava/lang/String;
    .param p4, "schemaVersion"    # I

    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 313
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 314
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/firebase/firestore/local/LocalSerializer;Ljava/lang/String;Lcom/google/firebase/firestore/local/SQLitePersistence$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/google/firebase/firestore/local/LocalSerializer;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/google/firebase/firestore/local/SQLitePersistence$1;

    .line 300
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;-><init>(Landroid/content/Context;Lcom/google/firebase/firestore/local/LocalSerializer;Ljava/lang/String;)V

    return-void
.end method

.method private ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 331
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->configured:Z

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 334
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->configured:Z

    .line 321
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PRAGMA locking_mode = EXCLUSIVE"

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 322
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 323
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 338
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 339
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteSchema;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/firebase/firestore/local/LocalSerializer;)V

    .line 340
    .local v0, "schema":Lcom/google/firebase/firestore/local/SQLiteSchema;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->runSchemaUpgrades(I)V

    .line 341
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 352
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 365
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 369
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 370
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 345
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 346
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteSchema;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/firebase/firestore/local/LocalSerializer;)V

    .line 347
    .local v0, "schema":Lcom/google/firebase/firestore/local/SQLiteSchema;
    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/local/SQLiteSchema;->runSchemaUpgrades(I)V

    .line 348
    return-void
.end method
