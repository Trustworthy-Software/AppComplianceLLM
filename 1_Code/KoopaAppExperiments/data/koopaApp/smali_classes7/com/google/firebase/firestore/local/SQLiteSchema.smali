.class Lcom/google/firebase/firestore/local/SQLiteSchema;
.super Ljava/lang/Object;
.source "SQLiteSchema.java"


# static fields
.field static final MIGRATION_BATCH_SIZE:I = 0x64

.field static final VERSION:I = 0x10


# instance fields
.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private final serializer:Lcom/google/firebase/firestore/local/LocalSerializer;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/firebase/firestore/local/LocalSerializer;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 69
    return-void
.end method

.method private addPathLength()V
    .locals 2

    .line 441
    const-string v0, "remote_documents"

    const-string v1, "path_length"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE remote_documents ADD COLUMN path_length INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 445
    :cond_0
    return-void
.end method

.method private addPendingDataMigration(Ljava/lang/String;)V
    .locals 3
    .param p1, "migration"    # Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT OR IGNORE INTO data_migrations (migration_name) VALUES (?)"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    return-void
.end method

.method private addReadTime()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE remote_documents ADD COLUMN read_time_seconds INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE remote_documents ADD COLUMN read_time_nanos INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method private addSequenceNumber()V
    .locals 2

    .line 435
    const-string v0, "target_documents"

    const-string v1, "sequence_number"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE target_documents ADD COLUMN sequence_number INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 438
    :cond_0
    return-void
.end method

.method private addTargetCount()V
    .locals 6

    .line 424
    const-string v0, "target_globals"

    const-string v1, "target_count"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ALTER TABLE target_globals ADD COLUMN target_count INTEGER"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "targets"

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 429
    .local v2, "count":J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 430
    .local v4, "cv":Landroid/content/ContentValues;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 431
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method private createBundleCache()V
    .locals 2

    .line 658
    const-string v0, "bundles"

    const-string v1, "named_queries"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda16;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 677
    return-void
.end method

.method private createDataMigrationTable()V
    .locals 2

    .line 699
    const-string v0, "data_migrations"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda11;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 707
    return-void
.end method

.method private createFieldIndex()V
    .locals 3

    .line 372
    const-string v0, "index_state"

    const-string v1, "index_entries"

    const-string v2, "index_configuration"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda13;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 409
    return-void
.end method

.method private createOverlays()V
    .locals 2

    .line 680
    const-string v0, "document_overlays"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda12;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 696
    return-void
.end method

.method private createV1MutationQueue()V
    .locals 3

    .line 236
    const-string v0, "mutations"

    const-string v1, "document_mutations"

    const-string v2, "mutation_queues"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method

.method private createV1RemoteDocumentCache()V
    .locals 2

    .line 351
    const-string v0, "remote_documents"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda14;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 357
    return-void
.end method

.method private createV1TargetCache()V
    .locals 3

    .line 300
    const-string v0, "target_globals"

    const-string v1, "target_documents"

    const-string v2, "targets"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda9;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method private createV8CollectionParentsIndex()V
    .locals 7

    .line 526
    const-string v0, "collection_parents"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 541
    new-instance v0, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;-><init>()V

    .line 543
    .local v0, "cache":Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 544
    const-string v2, "INSERT OR REPLACE INTO collection_parents (collection_id, parent) VALUES (?, ?)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 546
    .local v1, "addIndexEntry":Landroid/database/sqlite/SQLiteStatement;
    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;Landroid/database/sqlite/SQLiteStatement;)V

    .line 559
    .local v2, "addEntry":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    new-instance v3, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT path FROM remote_documents"

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 561
    .local v3, "remoteDocumentsQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    new-instance v4, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda6;

    invoke-direct {v4, v2}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda6;-><init>(Lcom/google/firebase/firestore/util/Consumer;)V

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 568
    new-instance v4, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v5, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT path FROM document_mutations"

    invoke-direct {v4, v5, v6}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 570
    .local v4, "documentMutationsQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    new-instance v5, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda7;

    invoke-direct {v5, v2}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda7;-><init>(Lcom/google/firebase/firestore/util/Consumer;)V

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 575
    return-void
.end method

.method private dropLastLimboFreeSnapshotVersion()V
    .locals 3

    .line 464
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT target_id, target_proto FROM targets"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda17;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    .line 465
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 480
    return-void
.end method

.method private dropV1TargetCache()V
    .locals 2

    .line 339
    const-string v0, "targets"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE targets"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    :cond_0
    const-string v0, "target_globals"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE target_globals"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 345
    :cond_1
    const-string v0, "target_documents"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE target_documents"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    :cond_2
    return-void
.end method

.method private ensurePathLength()V
    .locals 5

    .line 624
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT path FROM remote_documents WHERE path_length IS NULL LIMIT ?"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 627
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    .line 628
    .local v0, "documentsToMigrate":Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 629
    const-string v2, "UPDATE remote_documents SET path_length = ? WHERE path = ?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 631
    .local v1, "insertKey":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    new-array v2, v2, [Z

    .line 634
    .local v2, "resultsRemaining":[Z
    :cond_0
    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    .line 636
    new-instance v4, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda8;

    invoke-direct {v4, v2, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda8;-><init>([ZLandroid/database/sqlite/SQLiteStatement;)V

    invoke-virtual {v0, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 648
    aget-boolean v3, v2, v3

    if-nez v3, :cond_0

    .line 649
    return-void
.end method

.method private ensureReadTime()V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE remote_documents SET read_time_seconds = 0, read_time_nanos = 0 WHERE read_time_seconds IS NULL"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method private ensureSequenceNumbers()V
    .locals 10

    .line 489
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT highest_listen_sequence_number FROM target_globals LIMIT 1"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 492
    .local v0, "sequenceNumberQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->firstValue(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 493
    .local v1, "boxedSequenceNumber":Ljava/lang/Long;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Missing highest sequence number"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 495
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 496
    .local v4, "sequenceNumber":J
    iget-object v6, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 497
    const-string v7, "INSERT INTO target_documents (target_id, path, sequence_number) VALUES (0, ?, ?)"

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 500
    .local v6, "tagDocument":Landroid/database/sqlite/SQLiteStatement;
    new-instance v7, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v8, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "SELECT RD.path FROM remote_documents AS RD WHERE NOT EXISTS (SELECT TD.path FROM target_documents AS TD WHERE RD.path = TD.path AND TD.target_id = 0) LIMIT ?"

    invoke-direct {v7, v8, v9}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 507
    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v7

    .line 509
    .local v7, "untaggedDocumentsQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    new-array v2, v2, [Z

    .line 512
    .local v2, "resultsRemaining":[Z
    :cond_1
    aput-boolean v3, v2, v3

    .line 514
    new-instance v8, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda2;

    invoke-direct {v8, v2, v6, v4, v5}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda2;-><init>([ZLandroid/database/sqlite/SQLiteStatement;J)V

    invoke-virtual {v7, v8}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 522
    aget-boolean v8, v2, v3

    if-nez v8, :cond_1

    .line 523
    return-void
.end method

.method private ensureTargetGlobal()V
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "target_globals"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 414
    .local v0, "targetGlobalExists":Z
    :goto_0
    if-nez v0, :cond_1

    .line 415
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "INSERT INTO target_globals (highest_target_id, highest_listen_sequence_number, last_remote_snapshot_version_seconds, last_remote_snapshot_version_nanos) VALUES (?, ?, ?, ?)"

    const-string v3, "0"

    filled-new-array {v3, v3, v3, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    :cond_1
    return-void
.end method

.method private hasReadTime()Z
    .locals 7

    .line 448
    const-string v0, "read_time_seconds"

    const-string v1, "remote_documents"

    invoke-direct {p0, v1, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 449
    .local v0, "hasReadTimeSeconds":Z
    const-string v2, "read_time_nanos"

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 451
    .local v1, "hasReadTimeNanos":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Table contained just one of read_time_seconds or read_time_nanos"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 455
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method private ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "tables"    # [Ljava/lang/String;
    .param p2, "fn"    # Ljava/lang/Runnable;

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "tablesFound":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "allTables":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    .line 213
    aget-object v3, p1, v2

    .line 214
    .local v3, "table":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/local/SQLiteSchema;->tableExists(Ljava/lang/String;)Z

    move-result v5

    .line 215
    .local v5, "tableFound":Z
    if-nez v2, :cond_0

    .line 216
    move v0, v5

    goto :goto_2

    .line 217
    :cond_0
    if-eq v5, v0, :cond_2

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected all of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to either exist or not, but "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, "msg":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 220
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v4, p1, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " exists and "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " does not"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v6    # "msg":Ljava/lang/String;
    .local v4, "msg":Ljava/lang/String;
    goto :goto_1

    .line 222
    .end local v4    # "msg":Ljava/lang/String;
    .restart local v6    # "msg":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v4, p1, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " does not exist and "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " does"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 224
    .end local v6    # "msg":Ljava/lang/String;
    .restart local v4    # "msg":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 212
    .end local v3    # "table":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "tableFound":Z
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v2    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 228
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 230
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping migration because all of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "SQLiteSchema"

    invoke-static {v4, v2, v3}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    :goto_3
    return-void
.end method

.method static synthetic lambda$createV8CollectionParentsIndex$10(Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;Landroid/database/sqlite/SQLiteStatement;Lcom/google/firebase/firestore/model/ResourcePath;)V
    .locals 4
    .param p0, "cache"    # Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;
    .param p1, "addIndexEntry"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "collectionPath"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 548
    invoke-virtual {p0, p2}, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;->add(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/ResourcePath;->getLastSegment()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "collectionId":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/ResourcePath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 551
    .local v1, "parentPath":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 552
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 553
    const/4 v2, 0x2

    invoke-static {v1}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 554
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 556
    .end local v0    # "collectionId":Ljava/lang/String;
    .end local v1    # "parentPath":Lcom/google/firebase/firestore/model/ResourcePath;
    :cond_0
    return-void
.end method

.method static synthetic lambda$createV8CollectionParentsIndex$11(Lcom/google/firebase/firestore/util/Consumer;Landroid/database/Cursor;)V
    .locals 2
    .param p0, "addEntry"    # Lcom/google/firebase/firestore/util/Consumer;
    .param p1, "row"    # Landroid/database/Cursor;

    .line 563
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->decodeResourcePath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 564
    .local v0, "path":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-interface {p0, v1}, Lcom/google/firebase/firestore/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 565
    return-void
.end method

.method static synthetic lambda$createV8CollectionParentsIndex$12(Lcom/google/firebase/firestore/util/Consumer;Landroid/database/Cursor;)V
    .locals 2
    .param p0, "addEntry"    # Lcom/google/firebase/firestore/util/Consumer;
    .param p1, "row"    # Landroid/database/Cursor;

    .line 572
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->decodeResourcePath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 573
    .local v0, "path":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-interface {p0, v1}, Lcom/google/firebase/firestore/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 574
    return-void
.end method

.method static synthetic lambda$ensurePathLength$14([ZLandroid/database/sqlite/SQLiteStatement;Landroid/database/Cursor;)V
    .locals 6
    .param p0, "resultsRemaining"    # [Z
    .param p1, "insertKey"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "row"    # Landroid/database/Cursor;

    .line 638
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    .line 640
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 641
    .local v2, "encodedPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/firebase/firestore/local/EncodedPath;->decodeResourcePath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v3

    .line 643
    .local v3, "decodedPath":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 644
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v1, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 645
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 646
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v4, "Failed to update document path"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v4, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 647
    return-void
.end method

.method static synthetic lambda$ensureSequenceNumbers$7(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;

    .line 492
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$ensureSequenceNumbers$8([ZLandroid/database/sqlite/SQLiteStatement;JLandroid/database/Cursor;)V
    .locals 6
    .param p0, "resultsRemaining"    # [Z
    .param p1, "tagDocument"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "sequenceNumber"    # J
    .param p4, "row"    # Landroid/database/Cursor;

    .line 516
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    .line 517
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 518
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 519
    const/4 v2, 0x2

    invoke-virtual {p1, v2, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 520
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Failed to insert a sentinel row"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 521
    return-void
.end method

.method private removeAcknowledgedMutations()V
    .locals 3

    .line 268
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT uid, last_acknowledged_batch_id FROM mutation_queues"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 272
    .local v0, "mutationQueuesQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda15;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 283
    return-void
.end method

.method private removeMutationBatch(Ljava/lang/String;I)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "batchId"    # I

    .line 286
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 287
    const-string v1, "DELETE FROM mutations WHERE uid = ? AND batch_id = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 288
    .local v0, "mutationDeleter":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 289
    const/4 v2, 0x2

    int-to-long v3, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 290
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 291
    .local v2, "deleted":I
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Mutation batch (%s, %d) did not exist"

    invoke-static {v1, v4, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 294
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 296
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 294
    const-string v4, "DELETE FROM document_mutations WHERE uid = ? AND batch_id = ?"

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    return-void
.end method

.method private rewriteCanonicalIds()V
    .locals 3

    .line 603
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT target_id, target_proto FROM targets"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda10;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    .line 604
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 620
    return-void
.end method

.method private tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;

    .line 578
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->getTableColumns(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 579
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private tableExists(Ljava/lang/String;)Z
    .locals 3
    .param p1, "table"    # Ljava/lang/String;

    .line 716
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT 1=1 FROM sqlite_master WHERE tbl_name = ?"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 717
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    .line 718
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->isEmpty()Z

    move-result v0

    .line 716
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method getTableColumns(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, "c":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v1, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRAGMA table_info("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 590
    const-string v2, "name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 591
    .local v2, "nameIndex":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 592
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 595
    .end local v2    # "nameIndex":I
    :cond_0
    if-eqz v0, :cond_1

    .line 596
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_1
    return-object v1

    .line 595
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 596
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 598
    :cond_2
    throw v2
.end method

.method synthetic lambda$createBundleCache$15$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE bundles (bundle_id TEXT PRIMARY KEY, create_time_seconds INTEGER, create_time_nanos INTEGER, schema_version INTEGER, total_documents INTEGER, total_bytes INTEGER)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE named_queries (name TEXT PRIMARY KEY, read_time_seconds INTEGER, read_time_nanos INTEGER, bundled_query_proto BLOB)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method synthetic lambda$createDataMigrationTable$17$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 702
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE data_migrations (migration_name TEXT, PRIMARY KEY (migration_name))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method synthetic lambda$createFieldIndex$5$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE index_configuration (index_id INTEGER, collection_group TEXT, index_proto BLOB, PRIMARY KEY (index_id))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE index_state (index_id INTEGER, uid TEXT, sequence_number INTEGER, read_time_seconds INTEGER, read_time_nanos INTEGER, document_key TEXT, largest_batch_id INTEGER, PRIMARY KEY (index_id, uid))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE index_entries (index_id INTEGER, uid TEXT, array_value BLOB, directional_value BLOB, document_key TEXT, PRIMARY KEY (index_id, uid, array_value, directional_value, document_key))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX read_time ON remote_documents(read_time_seconds, read_time_nanos)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method synthetic lambda$createOverlays$16$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE document_overlays (uid TEXT, collection_path TEXT, document_id TEXT, collection_group TEXT, largest_batch_id INTEGER, overlay_mutation BLOB, PRIMARY KEY (uid, collection_path, document_id))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX batch_id_overlay ON document_overlays (uid, largest_batch_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX collection_group_overlay ON document_overlays (uid, collection_group)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method synthetic lambda$createV1MutationQueue$0$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE mutation_queues (uid TEXT PRIMARY KEY, last_acknowledged_batch_id INTEGER, last_stream_token BLOB)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE mutations (uid TEXT, batch_id INTEGER, mutations BLOB, PRIMARY KEY (uid, batch_id))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE document_mutations (uid TEXT, path TEXT, batch_id INTEGER, PRIMARY KEY (uid, path, batch_id))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method synthetic lambda$createV1RemoteDocumentCache$4$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE remote_documents (path TEXT PRIMARY KEY, contents BLOB)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method synthetic lambda$createV1TargetCache$3$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE targets (target_id INTEGER PRIMARY KEY, canonical_id TEXT, snapshot_version_seconds INTEGER, snapshot_version_nanos INTEGER, resume_token BLOB, last_listen_sequence_number INTEGER,target_proto BLOB)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX query_targets ON targets (canonical_id, target_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE target_globals (highest_target_id INTEGER, highest_listen_sequence_number INTEGER, last_remote_snapshot_version_seconds INTEGER, last_remote_snapshot_version_nanos INTEGER)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE target_documents (target_id INTEGER, path TEXT, PRIMARY KEY (target_id, path))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX document_targets ON target_documents (path, target_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method synthetic lambda$createV8CollectionParentsIndex$9$com-google-firebase-firestore-local-SQLiteSchema()V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE collection_parents (collection_id TEXT, parent TEXT, PRIMARY KEY(collection_id, parent))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method synthetic lambda$dropLastLimboFreeSnapshotVersion$6$com-google-firebase-firestore-local-SQLiteSchema(Landroid/database/Cursor;)V
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 467
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 468
    .local v1, "targetId":I
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 471
    .local v3, "targetProtoBytes":[B
    :try_start_0
    invoke-static {v3}, Lcom/google/firebase/firestore/proto/Target;->parseFrom([B)Lcom/google/firebase/firestore/proto/Target;

    move-result-object v4

    .line 472
    .local v4, "targetProto":Lcom/google/firebase/firestore/proto/Target;
    invoke-virtual {v4}, Lcom/google/firebase/firestore/proto/Target;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/proto/Target$Builder;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/proto/Target$Builder;->clearLastLimboFreeSnapshotVersion()Lcom/google/firebase/firestore/proto/Target$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/firestore/proto/Target$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/proto/Target;

    move-object v4, v5

    .line 473
    iget-object v5, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "UPDATE targets SET target_proto = ? WHERE target_id = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 475
    invoke-virtual {v4}, Lcom/google/firebase/firestore/proto/Target;->toByteArray()[B

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    .line 473
    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v4    # "targetProto":Lcom/google/firebase/firestore/proto/Target;
    nop

    .line 479
    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Failed to decode Query data for target %s"

    invoke-static {v4, v2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2
.end method

.method synthetic lambda$removeAcknowledgedMutations$1$com-google-firebase-firestore-local-SQLiteSchema(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/database/Cursor;

    .line 281
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->removeMutationBatch(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$removeAcknowledgedMutations$2$com-google-firebase-firestore-local-SQLiteSchema(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "mutationQueueEntry"    # Landroid/database/Cursor;

    .line 274
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "uid":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 277
    .local v1, "lastAcknowledgedBatchId":J
    new-instance v3, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT batch_id FROM mutations WHERE uid = ? AND batch_id <= ?"

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 280
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v3

    .line 281
    .local v3, "mutationsQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    new-instance v4, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/SQLiteSchema;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 282
    return-void
.end method

.method synthetic lambda$rewriteCanonicalIds$13$com-google-firebase-firestore-local-SQLiteSchema(Landroid/database/Cursor;)V
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 606
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 607
    .local v1, "targetId":I
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 610
    .local v3, "targetProtoBytes":[B
    :try_start_0
    invoke-static {v3}, Lcom/google/firebase/firestore/proto/Target;->parseFrom([B)Lcom/google/firebase/firestore/proto/Target;

    move-result-object v4

    .line 611
    .local v4, "targetProto":Lcom/google/firebase/firestore/proto/Target;
    iget-object v5, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-virtual {v5, v4}, Lcom/google/firebase/firestore/local/LocalSerializer;->decodeTargetData(Lcom/google/firebase/firestore/proto/Target;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v5

    .line 612
    .local v5, "targetData":Lcom/google/firebase/firestore/local/TargetData;
    invoke-virtual {v5}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/Target;->getCanonicalId()Ljava/lang/String;

    move-result-object v6

    .line 613
    .local v6, "updatedCanonicalId":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/firebase/firestore/local/SQLiteSchema;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "UPDATE targets SET canonical_id  = ? WHERE target_id = ?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v0

    .line 615
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v2

    .line 613
    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    .end local v4    # "targetProto":Lcom/google/firebase/firestore/proto/Target;
    .end local v5    # "targetData":Lcom/google/firebase/firestore/local/TargetData;
    .end local v6    # "updatedCanonicalId":Ljava/lang/String;
    nop

    .line 619
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Failed to decode Query data for target %s"

    invoke-static {v4, v2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2
.end method

.method runSchemaUpgrades()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->runSchemaUpgrades(I)V

    .line 73
    return-void
.end method

.method runSchemaUpgrades(I)V
    .locals 1
    .param p1, "fromVersion"    # I

    .line 76
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->runSchemaUpgrades(II)V

    .line 77
    return-void
.end method

.method runSchemaUpgrades(II)V
    .locals 6
    .param p1, "fromVersion"    # I
    .param p2, "toVersion"    # I

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    .local v0, "startTime":J
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    if-lt p2, v2, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createV1MutationQueue()V

    .line 97
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createV1TargetCache()V

    .line 98
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createV1RemoteDocumentCache()V

    .line 104
    :cond_0
    const/4 v2, 0x3

    if-ge p1, v2, :cond_1

    if-lt p2, v2, :cond_1

    .line 107
    if-eqz p1, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->dropV1TargetCache()V

    .line 109
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createV1TargetCache()V

    .line 113
    :cond_1
    const/4 v2, 0x4

    if-ge p1, v2, :cond_2

    if-lt p2, v2, :cond_2

    .line 114
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ensureTargetGlobal()V

    .line 115
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->addTargetCount()V

    .line 118
    :cond_2
    const/4 v2, 0x5

    if-ge p1, v2, :cond_3

    if-lt p2, v2, :cond_3

    .line 119
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->addSequenceNumber()V

    .line 122
    :cond_3
    const/4 v2, 0x6

    if-ge p1, v2, :cond_4

    if-lt p2, v2, :cond_4

    .line 123
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->removeAcknowledgedMutations()V

    .line 126
    :cond_4
    const/4 v2, 0x7

    if-ge p1, v2, :cond_5

    if-lt p2, v2, :cond_5

    .line 127
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ensureSequenceNumbers()V

    .line 130
    :cond_5
    const/16 v2, 0x8

    if-ge p1, v2, :cond_6

    if-lt p2, v2, :cond_6

    .line 131
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createV8CollectionParentsIndex()V

    .line 134
    :cond_6
    const/16 v2, 0x9

    if-ge p1, v2, :cond_8

    if-lt p2, v2, :cond_8

    .line 135
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->hasReadTime()Z

    move-result v3

    if-nez v3, :cond_7

    .line 136
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->addReadTime()V

    goto :goto_0

    .line 143
    :cond_7
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->dropLastLimboFreeSnapshotVersion()V

    .line 147
    :cond_8
    :goto_0
    if-ne p1, v2, :cond_9

    const/16 v2, 0xa

    if-lt p2, v2, :cond_9

    .line 151
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->dropLastLimboFreeSnapshotVersion()V

    .line 154
    :cond_9
    const/16 v2, 0xb

    if-ge p1, v2, :cond_a

    if-lt p2, v2, :cond_a

    .line 156
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->rewriteCanonicalIds()V

    .line 159
    :cond_a
    const/16 v2, 0xc

    if-ge p1, v2, :cond_b

    if-lt p2, v2, :cond_b

    .line 160
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createBundleCache()V

    .line 163
    :cond_b
    const/16 v2, 0xd

    if-ge p1, v2, :cond_c

    if-lt p2, v2, :cond_c

    .line 164
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->addPathLength()V

    .line 165
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ensurePathLength()V

    .line 168
    :cond_c
    const/16 v2, 0xe

    if-ge p1, v2, :cond_d

    if-lt p2, v2, :cond_d

    .line 169
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createOverlays()V

    .line 170
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createDataMigrationTable()V

    .line 171
    sget-object v2, Lcom/google/firebase/firestore/local/Persistence;->DATA_MIGRATION_BUILD_OVERLAYS:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/local/SQLiteSchema;->addPendingDataMigration(Ljava/lang/String;)V

    .line 174
    :cond_d
    const/16 v2, 0xf

    if-ge p1, v2, :cond_e

    if-lt p2, v2, :cond_e

    .line 175
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->ensureReadTime()V

    .line 178
    :cond_e
    const/16 v2, 0x10

    if-ge p1, v2, :cond_f

    if-lt p2, v2, :cond_f

    .line 179
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->createFieldIndex()V

    .line 195
    :cond_f
    nop

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 199
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 195
    const-string v3, "SQLiteSchema"

    const-string v4, "Migration from version %s to %s took %s milliseconds"

    invoke-static {v3, v4, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    return-void
.end method
