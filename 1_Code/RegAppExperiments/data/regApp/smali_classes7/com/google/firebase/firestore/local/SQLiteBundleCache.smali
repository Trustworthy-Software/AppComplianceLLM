.class Lcom/google/firebase/firestore/local/SQLiteBundleCache;
.super Ljava/lang/Object;
.source "SQLiteBundleCache.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/BundleCache;


# instance fields
.field private final db:Lcom/google/firebase/firestore/local/SQLitePersistence;

.field private final serializer:Lcom/google/firebase/firestore/local/LocalSerializer;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;)V
    .locals 0
    .param p1, "persistence"    # Lcom/google/firebase/firestore/local/SQLitePersistence;
    .param p2, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteBundleCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 33
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteBundleCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 34
    return-void
.end method

.method static synthetic lambda$getBundleMetadata$0(Ljava/lang/String;Landroid/database/Cursor;)Lcom/google/firebase/firestore/bundle/BundleMetadata;
    .locals 8
    .param p0, "bundleId"    # Ljava/lang/String;
    .param p1, "row"    # Landroid/database/Cursor;

    .line 45
    if-nez p1, :cond_0

    .line 46
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/bundle/BundleMetadata;

    .line 49
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v4, Lcom/google/firebase/firestore/model/SnapshotVersion;

    new-instance v1, Lcom/google/firebase/Timestamp;

    .line 50
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v1, v5, v6, v2}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    invoke-direct {v4, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;-><init>(Lcom/google/firebase/Timestamp;)V

    .line 51
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 52
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/firestore/bundle/BundleMetadata;-><init>(Ljava/lang/String;ILcom/google/firebase/firestore/model/SnapshotVersion;IJ)V

    .line 45
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getBundleMetadata(Ljava/lang/String;)Lcom/google/firebase/firestore/bundle/BundleMetadata;
    .locals 2
    .param p1, "bundleId"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteBundleCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v1, "SELECT schema_version, create_time_seconds, create_time_nanos, total_documents,  total_bytes FROM bundles WHERE bundle_id = ?"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteBundleCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/google/firebase/firestore/local/SQLiteBundleCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->firstValue(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/bundle/BundleMetadata;

    .line 39
    return-object v0
.end method

.method public getNamedQuery(Ljava/lang/String;)Lcom/google/firebase/firestore/bundle/NamedQuery;
    .locals 2
    .param p1, "queryName"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteBundleCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v1, "SELECT read_time_seconds, read_time_nanos, bundled_query_proto FROM named_queries WHERE name = ?"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteBundleCache$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/SQLiteBundleCache$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/local/SQLiteBundleCache;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->firstValue(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/bundle/NamedQuery;

    .line 72
    return-object v0
.end method

.method synthetic lambda$getNamedQuery$1$com-google-firebase-firestore-local-SQLiteBundleCache(Ljava/lang/String;Landroid/database/Cursor;)Lcom/google/firebase/firestore/bundle/NamedQuery;
    .locals 8
    .param p1, "queryName"    # Ljava/lang/String;
    .param p2, "row"    # Landroid/database/Cursor;

    .line 78
    if-eqz p2, :cond_0

    .line 80
    const/4 v0, 0x2

    :try_start_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/firestore/bundle/BundledQuery;->parseFrom([B)Lcom/google/firestore/bundle/BundledQuery;

    move-result-object v0

    .line 81
    .local v0, "bundledQuery":Lcom/google/firestore/bundle/BundledQuery;
    new-instance v1, Lcom/google/firebase/firestore/bundle/NamedQuery;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteBundleCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 83
    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/local/LocalSerializer;->decodeBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)Lcom/google/firebase/firestore/bundle/BundledQuery;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/firestore/model/SnapshotVersion;

    new-instance v4, Lcom/google/firebase/Timestamp;

    .line 84
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    invoke-direct {v3, v4}, Lcom/google/firebase/firestore/model/SnapshotVersion;-><init>(Lcom/google/firebase/Timestamp;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/google/firebase/firestore/bundle/NamedQuery;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/bundle/BundledQuery;Lcom/google/firebase/firestore/model/SnapshotVersion;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-object v1

    .line 85
    .end local v0    # "bundledQuery":Lcom/google/firestore/bundle/BundledQuery;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v1, "NamedQuery failed to parse: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1

    .line 90
    .end local v0    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveBundleMetadata(Lcom/google/firebase/firestore/bundle/BundleMetadata;)V
    .locals 8
    .param p1, "metadata"    # Lcom/google/firebase/firestore/bundle/BundleMetadata;

    .line 57
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteBundleCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 61
    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getBundleId()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getSchemaVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 63
    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getCreateTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 64
    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getCreateTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 65
    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getTotalDocuments()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 66
    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getTotalBytes()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 57
    const-string v2, "INSERT OR REPLACE INTO bundles (bundle_id, schema_version, create_time_seconds, create_time_nanos, total_documents, total_bytes) VALUES (?, ?, ?, ?, ?, ?)"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public saveNamedQuery(Lcom/google/firebase/firestore/bundle/NamedQuery;)V
    .locals 6
    .param p1, "query"    # Lcom/google/firebase/firestore/bundle/NamedQuery;

    .line 96
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteBundleCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/NamedQuery;->getBundledQuery()Lcom/google/firebase/firestore/bundle/BundledQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/LocalSerializer;->encodeBundledQuery(Lcom/google/firebase/firestore/bundle/BundledQuery;)Lcom/google/firestore/bundle/BundledQuery;

    move-result-object v0

    .line 98
    .local v0, "bundledQuery":Lcom/google/firestore/bundle/BundledQuery;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteBundleCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 102
    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/NamedQuery;->getName()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/NamedQuery;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 104
    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/NamedQuery;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 105
    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledQuery;->toByteArray()[B

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 98
    const-string v3, "INSERT OR REPLACE INTO named_queries (name, read_time_seconds, read_time_nanos, bundled_query_proto) VALUES (?, ?, ?, ?)"

    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    return-void
.end method
