.class public Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;
.super Ljava/lang/Object;
.source "SQLiteOverlayMigrationManager.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/OverlayMigrationManager;


# instance fields
.field private final db:Lcom/google/firebase/firestore/local/SQLitePersistence;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;)V
    .locals 0
    .param p1, "persistence"    # Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 38
    return-void
.end method

.method private buildOverlays()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;)V

    const-string v2, "build overlays"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method private getAllUserIds()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 83
    .local v0, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "SELECT DISTINCT uid FROM mutation_queues"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 84
    return-object v0
.end method

.method static synthetic lambda$getAllUserIds$1(Ljava/util/Set;Landroid/database/Cursor;)V
    .locals 1
    .param p0, "uids"    # Ljava/util/Set;
    .param p1, "row"    # Landroid/database/Cursor;

    .line 83
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$hasPendingOverlayMigration$2([Ljava/lang/Boolean;Landroid/database/Cursor;)V
    .locals 3
    .param p0, "result"    # [Ljava/lang/Boolean;
    .param p1, "row"    # Landroid/database/Cursor;

    .line 94
    :try_start_0
    sget-object v0, Lcom/google/firebase/firestore/local/Persistence;->DATA_MIGRATION_BUILD_OVERLAYS:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p0, v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-void

    .line 100
    :cond_0
    nop

    .line 101
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SQLitePersistence.DataMigration failed to parse: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method private removePendingOverlayMigrations()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    sget-object v1, Lcom/google/firebase/firestore/local/Persistence;->DATA_MIGRATION_BUILD_OVERLAYS:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "DELETE FROM data_migrations WHERE migration_name = ?"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return-void
.end method


# virtual methods
.method hasPendingOverlayMigration()Z
    .locals 4

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 90
    .local v0, "result":[Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v3, "SELECT migration_name FROM data_migrations"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager$$ExternalSyntheticLambda1;-><init>([Ljava/lang/Boolean;)V

    .line 91
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 102
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method synthetic lambda$buildOverlays$0$com-google-firebase-firestore-local-SQLiteOverlayMigrationManager()V
    .locals 11

    .line 49
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->hasPendingOverlayMigration()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    return-void

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->getAllUserIds()Ljava/util/Set;

    move-result-object v0

    .line 54
    .local v0, "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getRemoteDocumentCache()Lcom/google/firebase/firestore/local/RemoteDocumentCache;

    move-result-object v1

    .line 55
    .local v1, "remoteDocumentCache":Lcom/google/firebase/firestore/local/RemoteDocumentCache;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 56
    .local v3, "uid":Ljava/lang/String;
    new-instance v4, Lcom/google/firebase/firestore/auth/User;

    invoke-direct {v4, v3}, Lcom/google/firebase/firestore/auth/User;-><init>(Ljava/lang/String;)V

    .line 57
    .local v4, "user":Lcom/google/firebase/firestore/auth/User;
    iget-object v5, p0, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v5, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getIndexManager(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/firestore/local/IndexManager;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getMutationQueue(Lcom/google/firebase/firestore/auth/User;Lcom/google/firebase/firestore/local/IndexManager;)Lcom/google/firebase/firestore/local/MutationQueue;

    move-result-object v5

    .line 60
    .local v5, "mutationQueue":Lcom/google/firebase/firestore/local/MutationQueue;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 61
    .local v6, "allDocumentKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-interface {v5}, Lcom/google/firebase/firestore/local/MutationQueue;->getAllMutationBatches()Ljava/util/List;

    move-result-object v7

    .line 62
    .local v7, "batches":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationBatch;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 63
    .local v9, "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    invoke-virtual {v9}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getKeys()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 64
    .end local v9    # "batch":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    goto :goto_1

    .line 67
    :cond_1
    iget-object v8, p0, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v8, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getDocumentOverlayCache(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/firestore/local/DocumentOverlayCache;

    move-result-object v8

    .line 68
    .local v8, "documentOverlayCache":Lcom/google/firebase/firestore/local/DocumentOverlayCache;
    new-instance v9, Lcom/google/firebase/firestore/local/LocalDocumentsView;

    iget-object v10, p0, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 73
    invoke-virtual {v10, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getIndexManager(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/firestore/local/IndexManager;

    move-result-object v10

    invoke-direct {v9, v1, v5, v8, v10}, Lcom/google/firebase/firestore/local/LocalDocumentsView;-><init>(Lcom/google/firebase/firestore/local/RemoteDocumentCache;Lcom/google/firebase/firestore/local/MutationQueue;Lcom/google/firebase/firestore/local/DocumentOverlayCache;Lcom/google/firebase/firestore/local/IndexManager;)V

    .line 74
    .local v9, "localView":Lcom/google/firebase/firestore/local/LocalDocumentsView;
    invoke-virtual {v9, v6}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->recalculateAndSaveOverlays(Ljava/util/Set;)V

    .line 75
    .end local v3    # "uid":Ljava/lang/String;
    .end local v4    # "user":Lcom/google/firebase/firestore/auth/User;
    .end local v5    # "mutationQueue":Lcom/google/firebase/firestore/local/MutationQueue;
    .end local v6    # "allDocumentKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    .end local v7    # "batches":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationBatch;>;"
    .end local v8    # "documentOverlayCache":Lcom/google/firebase/firestore/local/DocumentOverlayCache;
    .end local v9    # "localView":Lcom/google/firebase/firestore/local/LocalDocumentsView;
    goto :goto_0

    .line 77
    :cond_2
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->removePendingOverlayMigrations()V

    .line 78
    return-void
.end method

.method public run()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->buildOverlays()V

    .line 43
    return-void
.end method
