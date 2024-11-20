.class final Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;
.super Ljava/lang/Object;
.source "SQLiteRemoteDocumentCache.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/RemoteDocumentCache;


# static fields
.field static final BINDS_PER_STATEMENT:I = 0x9


# instance fields
.field private final db:Lcom/google/firebase/firestore/local/SQLitePersistence;

.field private indexManager:Lcom/google/firebase/firestore/local/IndexManager;

.field private final serializer:Lcom/google/firebase/firestore/local/LocalSerializer;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;)V
    .locals 0
    .param p1, "persistence"    # Lcom/google/firebase/firestore/local/SQLitePersistence;
    .param p2, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 60
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 61
    return-void
.end method

.method private decodeMaybeDocument([BII)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "readTimeSeconds"    # I
    .param p3, "readTimeNanos"    # I

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 289
    invoke-static {p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->parseFrom([B)Lcom/google/firebase/firestore/proto/MaybeDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/LocalSerializer;->decodeMaybeDocument(Lcom/google/firebase/firestore/proto/MaybeDocument;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/model/SnapshotVersion;

    new-instance v2, Lcom/google/firebase/Timestamp;

    int-to-long v3, p2

    invoke-direct {v2, v3, v4, p3}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    invoke-direct {v1, v2}, Lcom/google/firebase/firestore/model/SnapshotVersion;-><init>(Lcom/google/firebase/Timestamp;)V

    .line 290
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/MutableDocument;->setReadTime(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    return-object v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v1, "MaybeDocument failed to parse: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method private getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/util/Function;)Ljava/util/Map;
    .locals 6
    .param p2, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .param p3, "count"    # I
    .param p4    # Lcom/google/firebase/firestore/util/Function;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/ResourcePath;",
            ">;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "I",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 238
    .local p1, "collections":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    .local p4, "filter":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/model/MutableDocument;Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;
    .locals 15
    .param p2, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .param p3, "count"    # I
    .param p4    # Lcom/google/firebase/firestore/util/Function;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "context"    # Lcom/google/firebase/firestore/local/QueryContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/ResourcePath;",
            ">;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "I",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/firebase/firestore/local/QueryContext;",
            ")",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 187
    .local p1, "collections":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    .local p4, "filter":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/model/MutableDocument;Ljava/lang/Boolean;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v0

    .line 188
    .local v0, "readTime":Lcom/google/firebase/Timestamp;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    .line 190
    .local v1, "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    nop

    .line 198
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 191
    const-string v3, "SELECT contents, read_time_seconds, read_time_nanos, path FROM remote_documents WHERE path >= ? AND path < ? AND path_length = ? AND (read_time_seconds > ? OR ( read_time_seconds = ? AND read_time_nanos > ?) OR ( read_time_seconds = ? AND read_time_nanos = ? and path > ?)) "

    const-string v4, " UNION "

    invoke-static {v3, v2, v4}, Lcom/google/firebase/firestore/util/Util;->repeatSequence(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    .local v2, "sql":Ljava/lang/StringBuilder;
    const-string v3, "ORDER BY read_time_seconds, read_time_nanos, path LIMIT ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 203
    .local v3, "bindVars":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 204
    .local v4, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 205
    .local v6, "collection":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-static {v6}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, "prefixPath":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "i":I
    .local v8, "i":I
    aput-object v7, v3, v4

    .line 207
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "i":I
    .restart local v4    # "i":I
    invoke-static {v7}, Lcom/google/firebase/firestore/local/EncodedPath;->prefixSuccessor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    .line 208
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "i":I
    .restart local v8    # "i":I
    invoke-virtual {v6}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v4

    .line 209
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v8

    .line 210
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "i":I
    .restart local v8    # "i":I
    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v4

    .line 211
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v8

    .line 212
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "i":I
    .restart local v8    # "i":I
    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v4

    .line 213
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v8

    .line 214
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "i":I
    .restart local v8    # "i":I
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v9

    invoke-static {v9}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v4

    .line 215
    .end local v6    # "collection":Lcom/google/firebase/firestore/model/ResourcePath;
    .end local v7    # "prefixPath":Ljava/lang/String;
    move v4, v8

    goto :goto_0

    .line 216
    .end local v8    # "i":I
    .restart local v4    # "i":I
    :cond_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 218
    new-instance v8, Lcom/google/firebase/firestore/util/BackgroundQueue;

    invoke-direct {v8}, Lcom/google/firebase/firestore/util/BackgroundQueue;-><init>()V

    .line 219
    .local v8, "backgroundQueue":Lcom/google/firebase/firestore/util/BackgroundQueue;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 220
    .local v5, "results":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    move-object v12, p0

    iget-object v6, v12, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v6

    .line 221
    invoke-virtual {v6, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v13

    new-instance v14, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;

    move-object v6, v14

    move-object v7, p0

    move-object v9, v5

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Lcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/local/QueryContext;)V

    .line 222
    invoke-virtual {v13, v14}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 229
    invoke-virtual {v8}, Lcom/google/firebase/firestore/util/BackgroundQueue;->drain()V

    .line 230
    return-object v5
.end method

.method static synthetic lambda$getDocumentsMatchingQuery$3(Lcom/google/firebase/firestore/core/Query;Ljava/util/Set;Lcom/google/firebase/firestore/model/MutableDocument;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p1, "mutatedKeys"    # Ljava/util/Set;
    .param p2, "doc"    # Lcom/google/firebase/firestore/model/MutableDocument;

    .line 281
    invoke-virtual {p0, p2}, Lcom/google/firebase/firestore/core/Query;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private processRowInBackground(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;Lcom/google/firebase/firestore/util/Function;)V
    .locals 13
    .param p1, "backgroundQueue"    # Lcom/google/firebase/firestore/util/BackgroundQueue;
    .param p3, "row"    # Landroid/database/Cursor;
    .param p4    # Lcom/google/firebase/firestore/util/Function;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/BackgroundQueue;",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;",
            "Landroid/database/Cursor;",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 246
    .local p2, "results":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    .local p4, "filter":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/model/MutableDocument;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 247
    .local v1, "rawDocument":[B
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 248
    .local v9, "readTimeSeconds":I
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 252
    .local v10, "readTimeNanos":I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    move-object v11, v2

    .line 253
    .local v11, "executor":Ljava/util/concurrent/Executor;
    new-instance v12, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;

    move-object v2, v12

    move-object v3, p0

    move-object v4, v1

    move v5, v9

    move v6, v10

    move-object/from16 v7, p4

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;[BIILcom/google/firebase/firestore/util/Function;Ljava/util/Map;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method


# virtual methods
.method public add(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/SnapshotVersion;)V
    .locals 9
    .param p1, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .param p2, "readTime"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 70
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 71
    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 70
    const-string v2, "Cannot add document to the RemoteDocumentCache with a read time of zero"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    .line 75
    .local v0, "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v1

    .line 76
    .local v1, "timestamp":Lcom/google/firebase/Timestamp;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-virtual {v2, p1}, Lcom/google/firebase/firestore/local/LocalSerializer;->encodeMaybeDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/proto/MaybeDocument;

    move-result-object v2

    .line 78
    .local v2, "message":Lcom/google/protobuf/MessageLite;
    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 82
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 84
    invoke-virtual {v1}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 85
    invoke-virtual {v1}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 86
    invoke-interface {v2}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v8

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v4

    .line 78
    const-string v5, "INSERT OR REPLACE INTO remote_documents (path, path_length, read_time_seconds, read_time_nanos, contents) VALUES (?, ?, ?, ?, ?)"

    invoke-virtual {v3, v5, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DocumentKey;->getCollectionPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/firebase/firestore/local/IndexManager;->addToCollectionParentIndex(Lcom/google/firebase/firestore/model/ResourcePath;)V

    .line 89
    return-void
.end method

.method public get(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 1
    .param p1, "documentKey"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 116
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/MutableDocument;

    return-object v0
.end method

.method public getAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 121
    .local p1, "documentKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v0, "results":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, "bindVars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 124
    .local v3, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-static {v3}, Lcom/google/firebase/firestore/model/MutableDocument;->newInvalidDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_0

    .line 131
    :cond_0
    new-instance v2, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v4, "SELECT contents, read_time_seconds, read_time_nanos FROM remote_documents WHERE path IN ("

    const-string v5, ") ORDER BY path"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 139
    .local v2, "longQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;
    new-instance v3, Lcom/google/firebase/firestore/util/BackgroundQueue;

    invoke-direct {v3}, Lcom/google/firebase/firestore/util/BackgroundQueue;-><init>()V

    .line 140
    .local v3, "backgroundQueue":Lcom/google/firebase/firestore/util/BackgroundQueue;
    :goto_1
    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->hasMoreSubqueries()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    nop

    .line 142
    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->performNextSubquery()Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v3, v0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;)V

    .line 143
    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {v3}, Lcom/google/firebase/firestore/util/BackgroundQueue;->drain()V

    .line 146
    return-object v0
.end method

.method public getAll(Ljava/lang/String;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;I)Ljava/util/Map;
    .locals 8
    .param p1, "collectionGroup"    # Ljava/lang/String;
    .param p2, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "I)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/IndexManager;->getCollectionParents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 153
    .local v0, "collectionParents":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v1, "collections":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 155
    .local v3, "collectionParent":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {v3, p1}, Lcom/google/firebase/firestore/model/ResourcePath;->append(Ljava/lang/String;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v3    # "collectionParent":Lcom/google/firebase/firestore/model/ResourcePath;
    goto :goto_0

    .line 158
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 160
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    const/16 v3, 0x384

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 161
    invoke-direct {p0, v1, p2, p3, v4}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/util/Function;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 164
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v2, "results":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    const/16 v3, 0x64

    .line 166
    .local v3, "pageSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 167
    nop

    .line 169
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int v7, v5, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 168
    invoke-direct {p0, v6, p2, p3, v4}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/util/Function;)Ljava/util/Map;

    move-result-object v6

    .line 167
    invoke-interface {v2, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 166
    add-int/2addr v5, v3

    goto :goto_1

    .line 174
    .end local v5    # "i":I
    :cond_3
    sget-object v4, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->DOCUMENT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, p3, v4}, Lcom/google/firebase/firestore/util/Util;->firstNEntries(Ljava/util/Map;ILjava/util/Comparator;)Ljava/util/Map;

    move-result-object v4

    return-object v4
.end method

.method public getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Ljava/util/Set;)Ljava/util/Map;
    .locals 1
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .param p3    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 268
    .local p3, "mutatedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Ljava/util/Set;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Ljava/util/Set;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;
    .locals 7
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .param p3    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4, "context"    # Lcom/google/firebase/firestore/local/QueryContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;",
            "Lcom/google/firebase/firestore/local/QueryContext;",
            ")",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 277
    .local p3, "mutatedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    nop

    .line 278
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const v4, 0x7fffffff

    new-instance v5, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1, p3}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/core/Query;Ljava/util/Set;)V

    .line 277
    move-object v1, p0

    move-object v3, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->getAll(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;ILcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/local/QueryContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getAll$0$com-google-firebase-firestore-local-SQLiteRemoteDocumentCache(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "backgroundQueue"    # Lcom/google/firebase/firestore/util/BackgroundQueue;
    .param p2, "results"    # Ljava/util/Map;
    .param p3, "row"    # Landroid/database/Cursor;

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->processRowInBackground(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;Lcom/google/firebase/firestore/util/Function;)V

    return-void
.end method

.method synthetic lambda$getAll$1$com-google-firebase-firestore-local-SQLiteRemoteDocumentCache(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Lcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/local/QueryContext;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "backgroundQueue"    # Lcom/google/firebase/firestore/util/BackgroundQueue;
    .param p2, "results"    # Ljava/util/Map;
    .param p3, "filter"    # Lcom/google/firebase/firestore/util/Function;
    .param p4, "context"    # Lcom/google/firebase/firestore/local/QueryContext;
    .param p5, "row"    # Landroid/database/Cursor;

    .line 224
    invoke-direct {p0, p1, p2, p5, p3}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->processRowInBackground(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;Lcom/google/firebase/firestore/util/Function;)V

    .line 225
    if-eqz p4, :cond_0

    .line 226
    invoke-virtual {p4}, Lcom/google/firebase/firestore/local/QueryContext;->incrementDocumentReadCount()V

    .line 228
    :cond_0
    return-void
.end method

.method synthetic lambda$processRowInBackground$2$com-google-firebase-firestore-local-SQLiteRemoteDocumentCache([BIILcom/google/firebase/firestore/util/Function;Ljava/util/Map;)V
    .locals 2
    .param p1, "rawDocument"    # [B
    .param p2, "readTimeSeconds"    # I
    .param p3, "readTimeNanos"    # I
    .param p4, "filter"    # Lcom/google/firebase/firestore/util/Function;
    .param p5, "results"    # Ljava/util/Map;

    .line 255
    nop

    .line 256
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->decodeMaybeDocument([BII)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0

    .line 257
    .local v0, "document":Lcom/google/firebase/firestore/model/MutableDocument;
    if-eqz p4, :cond_0

    invoke-interface {p4, v0}, Lcom/google/firebase/firestore/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    :cond_0
    monitor-enter p5

    .line 259
    :try_start_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-interface {p5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    monitor-exit p5

    .line 262
    :cond_1
    return-void

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "encodedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentCollections;->emptyDocumentMap()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    .line 98
    .local v1, "deletedDocs":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 99
    .local v3, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v4, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 101
    invoke-static {v3, v4}, Lcom/google/firebase/firestore/model/MutableDocument;->newNoDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    .line 102
    .end local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_0

    .line 104
    :cond_1
    new-instance v2, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v4, "DELETE FROM remote_documents WHERE path IN ("

    const-string v5, ")"

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;-><init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 107
    .local v2, "longQuery":Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;
    :goto_1
    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->hasMoreSubqueries()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    invoke-virtual {v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->executeNextSubquery()V

    goto :goto_1

    .line 111
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-interface {v3, v1}, Lcom/google/firebase/firestore/local/IndexManager;->updateIndexEntries(Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    .line 112
    return-void
.end method

.method public setIndexManager(Lcom/google/firebase/firestore/local/IndexManager;)V
    .locals 0
    .param p1, "indexManager"    # Lcom/google/firebase/firestore/local/IndexManager;

    .line 65
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->indexManager:Lcom/google/firebase/firestore/local/IndexManager;

    .line 66
    return-void
.end method
