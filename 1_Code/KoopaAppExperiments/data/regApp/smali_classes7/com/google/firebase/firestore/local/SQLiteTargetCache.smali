.class final Lcom/google/firebase/firestore/local/SQLiteTargetCache;
.super Ljava/lang/Object;
.source "SQLiteTargetCache.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/TargetCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;,
        Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;
    }
.end annotation


# instance fields
.field private final db:Lcom/google/firebase/firestore/local/SQLitePersistence;

.field private highestTargetId:I

.field private lastListenSequenceNumber:J

.field private lastRemoteSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

.field private final localSerializer:Lcom/google/firebase/firestore/local/LocalSerializer;

.field private targetCount:J


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;)V
    .locals 1
    .param p1, "db"    # Lcom/google/firebase/firestore/local/SQLitePersistence;
    .param p2, "localSerializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lastRemoteSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 43
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 44
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->localSerializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 45
    return-void
.end method

.method private decodeTargetData([B)Lcom/google/firebase/firestore/local/TargetData;
    .locals 3
    .param p1, "bytes"    # [B

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->localSerializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 239
    invoke-static {p1}, Lcom/google/firebase/firestore/proto/Target;->parseFrom([B)Lcom/google/firebase/firestore/proto/Target;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/LocalSerializer;->decodeTargetData(Lcom/google/firebase/firestore/proto/Target;)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v1, "TargetData failed to parse: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method static synthetic lambda$getMatchingKeysForTargetId$4(Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;Landroid/database/Cursor;)V
    .locals 3
    .param p0, "holder"    # Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;
    .param p1, "row"    # Landroid/database/Cursor;

    .line 293
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->decodeResourcePath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    .line 295
    .local v1, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;->keys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;->keys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 296
    return-void
.end method

.method private removeTarget(I)V
    .locals 4
    .param p1, "targetId"    # I

    .line 172
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->removeMatchingKeysForTargetId(I)V

    .line 173
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "DELETE FROM targets WHERE target_id = ?"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->targetCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->targetCount:J

    .line 175
    return-void
.end method

.method private saveTargetData(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 12
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 98
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v0

    .line 99
    .local v0, "targetId":I
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Target;->getCanonicalId()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "canonicalId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v9

    .line 102
    .local v9, "version":Lcom/google/firebase/Timestamp;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->localSerializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 103
    invoke-virtual {v2, p1}, Lcom/google/firebase/firestore/local/LocalSerializer;->encodeTargetData(Lcom/google/firebase/firestore/local/TargetData;)Lcom/google/firebase/firestore/proto/Target;

    move-result-object v10

    .line 105
    .local v10, "targetProto":Lcom/google/firebase/firestore/proto/Target;
    iget-object v11, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 117
    invoke-virtual {v9}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 118
    invoke-virtual {v9}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 119
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    .line 120
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSequenceNumber()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 121
    invoke-virtual {v10}, Lcom/google/firebase/firestore/proto/Target;->toByteArray()[B

    move-result-object v8

    move-object v3, v1

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    .line 105
    const-string v3, "INSERT OR REPLACE INTO targets (target_id, canonical_id, snapshot_version_seconds, snapshot_version_nanos, resume_token, last_listen_sequence_number, target_proto) VALUES (?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v11, v3, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method private updateMetadata(Lcom/google/firebase/firestore/local/TargetData;)Z
    .locals 5
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "wasUpdated":Z
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v1

    iget v2, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->highestTargetId:I

    if-le v1, v2, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v1

    iput v1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->highestTargetId:I

    .line 129
    const/4 v0, 0x1

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSequenceNumber()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lastListenSequenceNumber:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 133
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSequenceNumber()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lastListenSequenceNumber:J

    .line 134
    const/4 v0, 0x1

    .line 137
    :cond_1
    return v0
.end method

.method private writeMetadata()V
    .locals 7

    .line 160
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    iget v1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->highestTargetId:I

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lastListenSequenceNumber:J

    .line 165
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lastRemoteSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 166
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lastRemoteSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 167
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->targetCount:J

    .line 168
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 160
    const-string v2, "UPDATE target_globals SET highest_target_id = ?, highest_listen_sequence_number = ?, last_remote_snapshot_version_seconds = ?, last_remote_snapshot_version_nanos = ?, target_count = ?"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    return-void
.end method


# virtual methods
.method public addMatchingKeys(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V
    .locals 7
    .param p2, "targetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;I)V"
        }
    .end annotation

    .line 256
    .local p1, "keys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 257
    const-string v1, "INSERT OR IGNORE INTO target_documents (target_id, path) VALUES (?, ?)"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->prepare(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 259
    .local v0, "inserter":Landroid/database/sqlite/SQLiteStatement;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

    move-result-object v1

    .line 260
    .local v1, "delegate":Lcom/google/firebase/firestore/local/ReferenceDelegate;
    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 261
    .local v3, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)I

    .line 263
    invoke-interface {v1, v3}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->addReference(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 264
    .end local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v4    # "path":Ljava/lang/String;
    goto :goto_0

    .line 265
    :cond_0
    return-void
.end method

.method public addTargetData(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 4
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 142
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->saveTargetData(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->updateMetadata(Lcom/google/firebase/firestore/local/TargetData;)Z

    .line 146
    iget-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->targetCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->targetCount:J

    .line 147
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->writeMetadata()V

    .line 148
    return-void
.end method

.method public containsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z
    .locals 3
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 307
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "SELECT target_id FROM target_documents WHERE path = ? AND target_id != 0 LIMIT 1"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 310
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->isEmpty()Z

    move-result v1

    .line 308
    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public forEachTarget(Lcom/google/firebase/firestore/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/Consumer<",
            "Lcom/google/firebase/firestore/local/TargetData;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p1, "consumer":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<Lcom/google/firebase/firestore/local/TargetData;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v1, "SELECT target_proto FROM targets"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Lcom/google/firebase/firestore/util/Consumer;)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 84
    return-void
.end method

.method public getHighestListenSequenceNumber()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lastListenSequenceNumber:J

    return-wide v0
.end method

.method public getHighestTargetId()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->highestTargetId:I

    return v0
.end method

.method public getLastRemoteSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lastRemoteSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public getMatchingKeysForTargetId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 3
    .param p1, "targetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;-><init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache$1;)V

    .line 289
    .local v0, "holder":Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "SELECT path FROM target_documents WHERE target_id = ?"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    .line 290
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;)V

    .line 291
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 297
    iget-object v1, v0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;->keys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-object v1
.end method

.method public getTargetCount()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->targetCount:J

    return-wide v0
.end method

.method public getTargetData(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;
    .locals 4
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 214
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getCanonicalId()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "canonicalId":Ljava/lang/String;
    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;-><init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache$1;)V

    .line 216
    .local v1, "result":Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v3, "SELECT target_proto FROM targets WHERE canonical_id = ?"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    .line 217
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;)V

    .line 218
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 229
    iget-object v2, v1, Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;->targetData:Lcom/google/firebase/firestore/local/TargetData;

    return-object v2
.end method

.method synthetic lambda$forEachTarget$1$com-google-firebase-firestore-local-SQLiteTargetCache(Lcom/google/firebase/firestore/util/Consumer;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "consumer"    # Lcom/google/firebase/firestore/util/Consumer;
    .param p2, "row"    # Landroid/database/Cursor;

    .line 83
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->decodeTargetData([B)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/firebase/firestore/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$getTargetData$3$com-google-firebase-firestore-local-SQLiteTargetCache(Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;
    .param p2, "result"    # Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;
    .param p3, "row"    # Landroid/database/Cursor;

    .line 221
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->decodeTargetData([B)Lcom/google/firebase/firestore/local/TargetData;

    move-result-object v0

    .line 225
    .local v0, "found":Lcom/google/firebase/firestore/local/TargetData;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/core/Target;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iput-object v0, p2, Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;->targetData:Lcom/google/firebase/firestore/local/TargetData;

    .line 228
    :cond_0
    return-void
.end method

.method synthetic lambda$removeQueries$2$com-google-firebase-firestore-local-SQLiteTargetCache(Landroid/util/SparseArray;[ILandroid/database/Cursor;)V
    .locals 3
    .param p1, "activeTargetIds"    # Landroid/util/SparseArray;
    .param p2, "count"    # [I
    .param p3, "row"    # Landroid/database/Cursor;

    .line 198
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 199
    .local v1, "targetId":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 200
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->removeTarget(I)V

    .line 201
    aget v2, p2, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, p2, v0

    .line 203
    :cond_0
    return-void
.end method

.method synthetic lambda$start$0$com-google-firebase-firestore-local-SQLiteTargetCache(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "row"    # Landroid/database/Cursor;

    .line 56
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->highestTargetId:I

    .line 57
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lastListenSequenceNumber:J

    .line 58
    new-instance v0, Lcom/google/firebase/firestore/model/SnapshotVersion;

    new-instance v1, Lcom/google/firebase/Timestamp;

    .line 59
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;-><init>(Lcom/google/firebase/Timestamp;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lastRemoteSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 60
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->targetCount:J

    .line 61
    return-void
.end method

.method public removeMatchingKeys(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V
    .locals 7
    .param p2, "targetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;I)V"
        }
    .end annotation

    .line 270
    .local p1, "keys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 271
    const-string v1, "DELETE FROM target_documents WHERE target_id = ? AND path = ?"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->prepare(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 273
    .local v0, "deleter":Landroid/database/sqlite/SQLiteStatement;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

    move-result-object v1

    .line 274
    .local v1, "delegate":Lcom/google/firebase/firestore/local/ReferenceDelegate;
    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 275
    .local v3, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)I

    .line 277
    invoke-interface {v1, v3}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->removeReference(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 278
    .end local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v4    # "path":Ljava/lang/String;
    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method

.method public removeMatchingKeysForTargetId(I)V
    .locals 3
    .param p1, "targetId"    # I

    .line 283
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "DELETE FROM target_documents WHERE target_id = ?"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method removeQueries(JLandroid/util/SparseArray;)I
    .locals 3
    .param p1, "upperBound"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/SparseArray<",
            "*>;)I"
        }
    .end annotation

    .line 190
    .local p3, "activeTargetIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 194
    .local v0, "count":[I
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "SELECT target_id FROM targets WHERE last_listen_sequence_number <= ?"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    .line 195
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p3, v0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Landroid/util/SparseArray;[I)V

    .line 196
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 204
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->writeMetadata()V

    .line 205
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public removeTargetData(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 1
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 179
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v0

    .line 180
    .local v0, "targetId":I
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->removeTarget(I)V

    .line 181
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->writeMetadata()V

    .line 182
    return-void
.end method

.method public setLastRemoteSnapshotVersion(Lcom/google/firebase/firestore/model/SnapshotVersion;)V
    .locals 0
    .param p1, "snapshotVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 93
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lastRemoteSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 94
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->writeMetadata()V

    .line 95
    return-void
.end method

.method start()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 50
    const-string v1, "SELECT highest_target_id, highest_listen_sequence_number, last_remote_snapshot_version_seconds, last_remote_snapshot_version_nanos, target_count FROM target_globals LIMIT 1"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache;)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->first(Lcom/google/firebase/firestore/util/Consumer;)I

    move-result v0

    .line 62
    .local v0, "found":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Missing target_globals entry"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public updateTargetData(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 1
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 152
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->saveTargetData(Lcom/google/firebase/firestore/local/TargetData;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->updateMetadata(Lcom/google/firebase/firestore/local/TargetData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->writeMetadata()V

    .line 157
    :cond_0
    return-void
.end method
