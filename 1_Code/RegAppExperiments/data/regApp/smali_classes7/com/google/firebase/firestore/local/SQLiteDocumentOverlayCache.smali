.class public Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;
.super Ljava/lang/Object;
.source "SQLiteDocumentOverlayCache.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/DocumentOverlayCache;


# instance fields
.field private final db:Lcom/google/firebase/firestore/local/SQLitePersistence;

.field private final serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;Lcom/google/firebase/firestore/auth/User;)V
    .locals 1
    .param p1, "db"    # Lcom/google/firebase/firestore/local/SQLitePersistence;
    .param p2, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;
    .param p3, "user"    # Lcom/google/firebase/firestore/auth/User;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 47
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 48
    invoke-virtual {p3}, Lcom/google/firebase/firestore/auth/User;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/firestore/auth/User;->getUid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->uid:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private decodeOverlay([BI)Lcom/google/firebase/firestore/model/mutation/Overlay;
    .locals 3
    .param p1, "rawMutation"    # [B
    .param p2, "largestBatchId"    # I

    .line 221
    :try_start_0
    invoke-static {p1}, Lcom/google/firestore/v1/Write;->parseFrom([B)Lcom/google/firestore/v1/Write;

    move-result-object v0

    .line 222
    .local v0, "write":Lcom/google/firestore/v1/Write;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/local/LocalSerializer;->decodeMutation(Lcom/google/firestore/v1/Write;)Lcom/google/firebase/firestore/model/mutation/Mutation;

    move-result-object v1

    .line 223
    .local v1, "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    invoke-static {p2, v1}, Lcom/google/firebase/firestore/model/mutation/Overlay;->create(ILcom/google/firebase/firestore/model/mutation/Mutation;)Lcom/google/firebase/firestore/model/mutation/Overlay;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 224
    .end local v0    # "write":Lcom/google/firestore/v1/Write;
    .end local v1    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v1, "Overlay failed to parse: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method private processOverlaysInBackground(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "backgroundQueue"    # Lcom/google/firebase/firestore/util/BackgroundQueue;
    .param p3, "row"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/BackgroundQueue;",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/mutation/Overlay;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 204
    .local p2, "results":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Overlay;>;"
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 205
    .local v0, "rawMutation":[B
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 209
    .local v1, "largestBatchId":I
    invoke-interface {p3}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 210
    .local v2, "executor":Ljava/util/concurrent/Executor;
    :goto_0
    new-instance v3, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1, p2}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;[BILjava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method private processSingleCollection(Ljava/util/Map;Lcom/google/firebase/firestore/util/BackgroundQueue;Lcom/google/firebase/firestore/model/ResourcePath;Ljava/util/List;)V
    .locals 7
    .param p2, "backgroundQueue"    # Lcom/google/firebase/firestore/util/BackgroundQueue;
    .param p3, "collectionPath"    # Lcom/google/firebase/firestore/model/ResourcePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/mutation/Overlay;",
            ">;",
            "Lcom/google/firebase/firestore/util/BackgroundQueue;",
            "Lcom/google/firebase/firestore/model/ResourcePath;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Overlay;>;"
    .local p4, "documentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    return-void

    .line 95
    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v3, "SELECT overlay_mutation, largest_batch_id FROM document_overlays WHERE uid = ? AND collection_path = ? AND document_id IN ("

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->uid:Ljava/lang/String;

    .line 100
    invoke-static {p3}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v6, ")"

    move-object v1, v0

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 103
    .local v0, "longQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;
    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->hasMoreSubqueries()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    nop

    .line 105
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->performNextSubquery()Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;)V

    .line 106
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method

.method private saveOverlay(ILcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Mutation;)V
    .locals 10
    .param p1, "largestBatchId"    # I
    .param p2, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p3, "mutation"    # Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 111
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/DocumentKey;->getCollectionGroup()Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "group":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "collectionPath":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->getLastSegment()Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "documentId":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->uid:Ljava/lang/String;

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 123
    invoke-virtual {v1, p3}, Lcom/google/firebase/firestore/local/LocalSerializer;->encodeMutation(Lcom/google/firebase/firestore/model/mutation/Mutation;)Lcom/google/firestore/v1/Write;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Write;->toByteArray()[B

    move-result-object v5

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 114
    const-string v1, "INSERT OR REPLACE INTO document_overlays (uid, collection_group, collection_path, document_id, largest_batch_id, overlay_mutation) VALUES (?, ?, ?, ?, ?, ?)"

    invoke-virtual {v9, v1, v0}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-void
.end method


# virtual methods
.method public getOverlay(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/mutation/Overlay;
    .locals 4
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 54
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "collectionPath":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/ResourcePath;->getLastSegment()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "documentId":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v3, "SELECT overlay_mutation, largest_batch_id FROM document_overlays WHERE uid = ? AND collection_path = ? AND document_id = ?"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->uid:Ljava/lang/String;

    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;)V

    .line 60
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->firstValue(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/Overlay;

    .line 56
    return-object v2
.end method

.method public getOverlays(Lcom/google/firebase/firestore/model/ResourcePath;I)Ljava/util/Map;
    .locals 6
    .param p1, "collection"    # Lcom/google/firebase/firestore/model/ResourcePath;
    .param p2, "sinceBatchId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/ResourcePath;",
            "I)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/mutation/Overlay;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Overlay;>;"
    new-instance v1, Lcom/google/firebase/firestore/util/BackgroundQueue;

    invoke-direct {v1}, Lcom/google/firebase/firestore/util/BackgroundQueue;-><init>()V

    .line 145
    .local v1, "backgroundQueue":Lcom/google/firebase/firestore/util/BackgroundQueue;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v3, "SELECT overlay_mutation, largest_batch_id FROM document_overlays WHERE uid = ? AND collection_path = ? AND largest_batch_id > ?"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->uid:Ljava/lang/String;

    .line 148
    invoke-static {p1}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;)V

    .line 149
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 150
    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/BackgroundQueue;->drain()V

    .line 151
    return-object v0
.end method

.method public getOverlays(Ljava/lang/String;II)Ljava/util/Map;
    .locals 19
    .param p1, "collectionGroup"    # Ljava/lang/String;
    .param p2, "sinceBatchId"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/mutation/Overlay;",
            ">;"
        }
    .end annotation

    .line 157
    move-object/from16 v7, p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v8, v0

    .line 158
    .local v8, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Overlay;>;"
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    .line 159
    .local v9, "lastCollectionPath":[Ljava/lang/String;
    new-array v10, v0, [Ljava/lang/String;

    .line 160
    .local v10, "lastDocumentPath":[Ljava/lang/String;
    new-array v11, v0, [I

    .line 162
    .local v11, "lastLargestBatchId":[I
    new-instance v0, Lcom/google/firebase/firestore/util/BackgroundQueue;

    invoke-direct {v0}, Lcom/google/firebase/firestore/util/BackgroundQueue;-><init>()V

    move-object v12, v0

    .line 163
    .local v12, "backgroundQueue":Lcom/google/firebase/firestore/util/BackgroundQueue;
    iget-object v0, v7, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v1, "SELECT overlay_mutation, largest_batch_id, collection_path, document_id  FROM document_overlays WHERE uid = ? AND collection_group = ? AND largest_batch_id > ? ORDER BY largest_batch_id, collection_path, document_id LIMIT ?"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    iget-object v1, v7, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->uid:Ljava/lang/String;

    .line 168
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v15, p1

    filled-new-array {v1, v15, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v13

    new-instance v14, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda4;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v9

    move-object v4, v10

    move-object v5, v12

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;[I[Ljava/lang/String;[Ljava/lang/String;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;)V

    .line 169
    invoke-virtual {v13, v14}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 177
    const/4 v0, 0x0

    aget-object v1, v9, v0

    if-nez v1, :cond_0

    .line 178
    return-object v8

    .line 185
    :cond_0
    iget-object v1, v7, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "SELECT overlay_mutation, largest_batch_id FROM document_overlays WHERE uid = ? AND collection_group = ? AND (collection_path > ? OR (collection_path = ? AND document_id > ?)) AND largest_batch_id = ?"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    iget-object v13, v7, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->uid:Ljava/lang/String;

    aget-object v2, v9, v0

    aget-object v16, v9, v0

    aget-object v17, v10, v0

    aget v0, v11, v0

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v14, p1

    move-object v15, v2

    filled-new-array/range {v13 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    .line 190
    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda5;

    invoke-direct {v1, v7, v12, v8}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;)V

    .line 197
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 198
    invoke-virtual {v12}, Lcom/google/firebase/firestore/util/BackgroundQueue;->drain()V

    .line 199
    return-object v8
.end method

.method public getOverlays(Ljava/util/SortedSet;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/mutation/Overlay;",
            ">;"
        }
    .end annotation

    .line 65
    .local p1, "keys":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "getOverlays() requires natural order"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Overlay;>;"
    new-instance v1, Lcom/google/firebase/firestore/util/BackgroundQueue;

    invoke-direct {v1}, Lcom/google/firebase/firestore/util/BackgroundQueue;-><init>()V

    .line 69
    .local v1, "backgroundQueue":Lcom/google/firebase/firestore/util/BackgroundQueue;
    sget-object v2, Lcom/google/firebase/firestore/model/ResourcePath;->EMPTY:Lcom/google/firebase/firestore/model/ResourcePath;

    .line 70
    .local v2, "currentCollection":Lcom/google/firebase/firestore/model/ResourcePath;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v3, "accumulatedDocumentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 72
    .local v5, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/DocumentKey;->getCollectionPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/firebase/firestore/model/ResourcePath;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 73
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->processSingleCollection(Ljava/util/Map;Lcom/google/firebase/firestore/util/BackgroundQueue;Lcom/google/firebase/firestore/model/ResourcePath;Ljava/util/List;)V

    .line 74
    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/DocumentKey;->getCollectionPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v2

    .line 75
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 77
    :cond_1
    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/DocumentKey;->getDocumentId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v5    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_1

    .line 80
    :cond_2
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->processSingleCollection(Ljava/util/Map;Lcom/google/firebase/firestore/util/BackgroundQueue;Lcom/google/firebase/firestore/model/ResourcePath;Ljava/util/List;)V

    .line 81
    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/BackgroundQueue;->drain()V

    .line 82
    return-object v0
.end method

.method synthetic lambda$getOverlay$0$com-google-firebase-firestore-local-SQLiteDocumentOverlayCache(Landroid/database/Cursor;)Lcom/google/firebase/firestore/model/mutation/Overlay;
    .locals 2
    .param p1, "row"    # Landroid/database/Cursor;

    .line 60
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->decodeOverlay([BI)Lcom/google/firebase/firestore/model/mutation/Overlay;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getOverlays$2$com-google-firebase-firestore-local-SQLiteDocumentOverlayCache(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "backgroundQueue"    # Lcom/google/firebase/firestore/util/BackgroundQueue;
    .param p2, "result"    # Ljava/util/Map;
    .param p3, "row"    # Landroid/database/Cursor;

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->processOverlaysInBackground(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;)V

    return-void
.end method

.method synthetic lambda$getOverlays$3$com-google-firebase-firestore-local-SQLiteDocumentOverlayCache([I[Ljava/lang/String;[Ljava/lang/String;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "lastLargestBatchId"    # [I
    .param p2, "lastCollectionPath"    # [Ljava/lang/String;
    .param p3, "lastDocumentPath"    # [Ljava/lang/String;
    .param p4, "backgroundQueue"    # Lcom/google/firebase/firestore/util/BackgroundQueue;
    .param p5, "result"    # Ljava/util/Map;
    .param p6, "row"    # Landroid/database/Cursor;

    .line 171
    const/4 v0, 0x1

    invoke-interface {p6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 172
    const/4 v0, 0x2

    invoke-interface {p6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    .line 173
    const/4 v0, 0x3

    invoke-interface {p6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    .line 174
    invoke-direct {p0, p4, p5, p6}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->processOverlaysInBackground(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 175
    return-void
.end method

.method synthetic lambda$getOverlays$4$com-google-firebase-firestore-local-SQLiteDocumentOverlayCache(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "backgroundQueue"    # Lcom/google/firebase/firestore/util/BackgroundQueue;
    .param p2, "result"    # Ljava/util/Map;
    .param p3, "row"    # Landroid/database/Cursor;

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->processOverlaysInBackground(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;)V

    return-void
.end method

.method synthetic lambda$processOverlaysInBackground$5$com-google-firebase-firestore-local-SQLiteDocumentOverlayCache([BILjava/util/Map;)V
    .locals 2
    .param p1, "rawMutation"    # [B
    .param p2, "largestBatchId"    # I
    .param p3, "results"    # Ljava/util/Map;

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->decodeOverlay([BI)Lcom/google/firebase/firestore/model/mutation/Overlay;

    move-result-object v0

    .line 213
    .local v0, "overlay":Lcom/google/firebase/firestore/model/mutation/Overlay;
    monitor-enter p3

    .line 214
    :try_start_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/Overlay;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    monitor-exit p3

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$processSingleCollection$1$com-google-firebase-firestore-local-SQLiteDocumentOverlayCache(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "backgroundQueue"    # Lcom/google/firebase/firestore/util/BackgroundQueue;
    .param p2, "result"    # Ljava/util/Map;
    .param p3, "row"    # Landroid/database/Cursor;

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->processOverlaysInBackground(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;)V

    return-void
.end method

.method public removeOverlaysForBatchId(I)V
    .locals 3
    .param p1, "batchId"    # I

    .line 137
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->uid:Ljava/lang/String;

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 137
    const-string v2, "DELETE FROM document_overlays WHERE uid = ? AND largest_batch_id = ?"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public saveOverlays(ILjava/util/Map;)V
    .locals 6
    .param p1, "largestBatchId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p2, "overlays":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 129
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 130
    .local v2, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/mutation/Mutation;

    const-string v4, "null value for key: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 131
    .local v3, "overlay":Lcom/google/firebase/firestore/model/mutation/Mutation;
    invoke-direct {p0, p1, v2, v3}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->saveOverlay(ILcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Mutation;)V

    .line 132
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    .end local v2    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v3    # "overlay":Lcom/google/firebase/firestore/model/mutation/Mutation;
    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method
