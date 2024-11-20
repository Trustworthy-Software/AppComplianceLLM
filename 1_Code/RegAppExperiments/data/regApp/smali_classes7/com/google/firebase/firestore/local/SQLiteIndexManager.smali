.class final Lcom/google/firebase/firestore/local/SQLiteIndexManager;
.super Ljava/lang/Object;
.source "SQLiteIndexManager.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/IndexManager;


# static fields
.field private static final EMPTY_BYTES_VALUE:[B

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final collectionParentsCache:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

.field private final db:Lcom/google/firebase/firestore/local/SQLitePersistence;

.field private final memoizedIndexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            ">;>;"
        }
    .end annotation
.end field

.field private memoizedMaxIndexId:I

.field private memoizedMaxSequenceNumber:J

.field private final nextIndexToUpdate:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            ">;"
        }
    .end annotation
.end field

.field private final serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

.field private started:Z

.field private final targetToDnfSubTargets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/core/Target;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Target;",
            ">;>;"
        }
    .end annotation
.end field

.field private final uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->TAG:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->EMPTY_BYTES_VALUE:[B

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Lcom/google/firebase/firestore/local/LocalSerializer;Lcom/google/firebase/firestore/auth/User;)V
    .locals 3
    .param p1, "persistence"    # Lcom/google/firebase/firestore/local/SQLitePersistence;
    .param p2, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;
    .param p3, "user"    # Lcom/google/firebase/firestore/auth/User;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->targetToDnfSubTargets:Ljava/util/Map;

    .line 90
    new-instance v0, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->collectionParentsCache:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedIndexes:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda3;-><init>()V

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->nextIndexToUpdate:Ljava/util/Queue;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->started:Z

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedMaxIndexId:I

    .line 109
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedMaxSequenceNumber:J

    .line 112
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 113
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 114
    invoke-virtual {p3}, Lcom/google/firebase/firestore/auth/User;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/firestore/auth/User;->getUid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->uid:Ljava/lang/String;

    .line 115
    return-void
.end method

.method private addIndexEntry(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/index/IndexEntry;)V
    .locals 6
    .param p1, "document"    # Lcom/google/firebase/firestore/model/Document;
    .param p2, "indexEntry"    # Lcom/google/firebase/firestore/index/IndexEntry;

    .line 465
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 468
    invoke-virtual {p2}, Lcom/google/firebase/firestore/index/IndexEntry;->getIndexId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->uid:Ljava/lang/String;

    .line 470
    invoke-virtual {p2}, Lcom/google/firebase/firestore/index/IndexEntry;->getArrayValue()[B

    move-result-object v3

    .line 471
    invoke-virtual {p2}, Lcom/google/firebase/firestore/index/IndexEntry;->getDirectionalValue()[B

    move-result-object v4

    .line 472
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/DocumentKey;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 465
    const-string v2, "INSERT INTO index_entries (index_id, uid, array_value, directional_value, document_key) VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method private computeIndexEntries(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/FieldIndex;)Ljava/util/SortedSet;
    .locals 9
    .param p1, "document"    # Lcom/google/firebase/firestore/model/Document;
    .param p2, "fieldIndex"    # Lcom/google/firebase/firestore/model/FieldIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/Document;",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            ")",
            "Ljava/util/SortedSet<",
            "Lcom/google/firebase/firestore/index/IndexEntry;",
            ">;"
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 437
    .local v0, "result":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/firebase/firestore/index/IndexEntry;>;"
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->encodeDirectionalElements(Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/model/Document;)[B

    move-result-object v1

    .line 438
    .local v1, "directionalValue":[B
    if-nez v1, :cond_0

    .line 439
    return-object v0

    .line 442
    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex;->getArraySegment()Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    move-result-object v2

    .line 443
    .local v2, "arraySegment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    if-eqz v2, :cond_2

    .line 444
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v3

    .line 445
    .local v3, "value":Lcom/google/firestore/v1/Value;
    invoke-static {v3}, Lcom/google/firebase/firestore/model/Values;->isArray(Lcom/google/firestore/v1/Value;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 446
    invoke-virtual {v3}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firestore/v1/Value;

    .line 447
    .local v5, "arrayValue":Lcom/google/firestore/v1/Value;
    nop

    .line 449
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexId()I

    move-result v6

    .line 450
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v7

    .line 451
    invoke-direct {p0, v5}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->encodeSingleElement(Lcom/google/firestore/v1/Value;)[B

    move-result-object v8

    .line 448
    invoke-static {v6, v7, v8, v1}, Lcom/google/firebase/firestore/index/IndexEntry;->create(ILcom/google/firebase/firestore/model/DocumentKey;[B[B)Lcom/google/firebase/firestore/index/IndexEntry;

    move-result-object v6

    .line 447
    invoke-interface {v0, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 453
    .end local v5    # "arrayValue":Lcom/google/firestore/v1/Value;
    goto :goto_0

    .line 455
    .end local v3    # "value":Lcom/google/firestore/v1/Value;
    :cond_1
    goto :goto_1

    .line 456
    :cond_2
    nop

    .line 458
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexId()I

    move-result v3

    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [B

    .line 457
    invoke-static {v3, v4, v5, v1}, Lcom/google/firebase/firestore/index/IndexEntry;->create(ILcom/google/firebase/firestore/model/DocumentKey;[B[B)Lcom/google/firebase/firestore/index/IndexEntry;

    move-result-object v3

    .line 456
    invoke-interface {v0, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 461
    :goto_1
    return-object v0
.end method

.method private deleteIndexEntry(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/index/IndexEntry;)V
    .locals 6
    .param p1, "document"    # Lcom/google/firebase/firestore/model/Document;
    .param p2, "indexEntry"    # Lcom/google/firebase/firestore/index/IndexEntry;

    .line 476
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 479
    invoke-virtual {p2}, Lcom/google/firebase/firestore/index/IndexEntry;->getIndexId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->uid:Ljava/lang/String;

    .line 481
    invoke-virtual {p2}, Lcom/google/firebase/firestore/index/IndexEntry;->getArrayValue()[B

    move-result-object v3

    .line 482
    invoke-virtual {p2}, Lcom/google/firebase/firestore/index/IndexEntry;->getDirectionalValue()[B

    move-result-object v4

    .line 483
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/DocumentKey;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 476
    const-string v2, "DELETE FROM index_entries WHERE index_id = ? AND uid = ? AND array_value = ? AND directional_value = ? AND document_key = ?"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    return-void
.end method

.method private encodeBound(Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/core/Bound;)[Ljava/lang/Object;
    .locals 1
    .param p1, "fieldIndex"    # Lcom/google/firebase/firestore/model/FieldIndex;
    .param p2, "target"    # Lcom/google/firebase/firestore/core/Target;
    .param p3, "bound"    # Lcom/google/firebase/firestore/core/Bound;

    .line 762
    invoke-virtual {p3}, Lcom/google/firebase/firestore/core/Bound;->getPosition()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->encodeValues(Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/core/Target;Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private encodeDirectionalElements(Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/model/Document;)[B
    .locals 6
    .param p1, "fieldIndex"    # Lcom/google/firebase/firestore/model/FieldIndex;
    .param p2, "document"    # Lcom/google/firebase/firestore/model/Document;

    .line 711
    new-instance v0, Lcom/google/firebase/firestore/index/IndexByteEncoder;

    invoke-direct {v0}, Lcom/google/firebase/firestore/index/IndexByteEncoder;-><init>()V

    .line 712
    .local v0, "encoder":Lcom/google/firebase/firestore/index/IndexByteEncoder;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getDirectionalSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 713
    .local v2, "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v3

    .line 714
    .local v3, "field":Lcom/google/firestore/v1/Value;
    if-nez v3, :cond_0

    .line 715
    const/4 v1, 0x0

    return-object v1

    .line 717
    :cond_0
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/firebase/firestore/index/IndexByteEncoder;->forKind(Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;)Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;

    move-result-object v4

    .line 718
    .local v4, "directionalEncoder":Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;
    sget-object v5, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->INSTANCE:Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;

    invoke-virtual {v5, v3, v4}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeIndexValue(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 719
    .end local v2    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    .end local v3    # "field":Lcom/google/firestore/v1/Value;
    .end local v4    # "directionalEncoder":Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;
    goto :goto_0

    .line 720
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/firestore/index/IndexByteEncoder;->getEncodedBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private encodeSegments(Lcom/google/firebase/firestore/model/FieldIndex;)[B
    .locals 2
    .param p1, "fieldIndex"    # Lcom/google/firebase/firestore/model/FieldIndex;

    .line 811
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/LocalSerializer;->encodeFieldIndexSegments(Ljava/util/List;)Lcom/google/firestore/admin/v1/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private encodeSingleElement(Lcom/google/firestore/v1/Value;)[B
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 725
    new-instance v0, Lcom/google/firebase/firestore/index/IndexByteEncoder;

    invoke-direct {v0}, Lcom/google/firebase/firestore/index/IndexByteEncoder;-><init>()V

    .line 726
    .local v0, "encoder":Lcom/google/firebase/firestore/index/IndexByteEncoder;
    sget-object v1, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->INSTANCE:Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;

    sget-object v2, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->ASCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    .line 727
    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/index/IndexByteEncoder;->forKind(Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;)Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;

    move-result-object v2

    .line 726
    invoke-virtual {v1, p1, v2}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeIndexValue(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 728
    invoke-virtual {v0}, Lcom/google/firebase/firestore/index/IndexByteEncoder;->getEncodedBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private encodeValues(Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/core/Target;Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 9
    .param p1, "fieldIndex"    # Lcom/google/firebase/firestore/model/FieldIndex;
    .param p2, "target"    # Lcom/google/firebase/firestore/core/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            "Lcom/google/firebase/firestore/core/Target;",
            "Ljava/util/Collection<",
            "Lcom/google/firestore/v1/Value;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 737
    .local p3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firestore/v1/Value;>;"
    if-nez p3, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 739
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v0, "encoders":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/index/IndexByteEncoder;>;"
    new-instance v1, Lcom/google/firebase/firestore/index/IndexByteEncoder;

    invoke-direct {v1}, Lcom/google/firebase/firestore/index/IndexByteEncoder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 743
    .local v1, "position":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getDirectionalSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 744
    .local v3, "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firestore/v1/Value;

    .line 745
    .local v4, "value":Lcom/google/firestore/v1/Value;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/index/IndexByteEncoder;

    .line 746
    .local v6, "encoder":Lcom/google/firebase/firestore/index/IndexByteEncoder;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v7

    invoke-direct {p0, p2, v7}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->isInFilter(Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/model/FieldPath;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v4}, Lcom/google/firebase/firestore/model/Values;->isArray(Lcom/google/firestore/v1/Value;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 747
    invoke-direct {p0, v0, v3, v4}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->expandIndexValues(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$Segment;Lcom/google/firestore/v1/Value;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 749
    :cond_1
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/index/IndexByteEncoder;->forKind(Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;)Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;

    move-result-object v7

    .line 750
    .local v7, "directionalEncoder":Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;
    sget-object v8, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->INSTANCE:Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;

    invoke-virtual {v8, v4, v7}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeIndexValue(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 752
    .end local v6    # "encoder":Lcom/google/firebase/firestore/index/IndexByteEncoder;
    .end local v7    # "directionalEncoder":Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;
    :goto_2
    goto :goto_1

    .line 753
    .end local v3    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    .end local v4    # "value":Lcom/google/firestore/v1/Value;
    :cond_2
    goto :goto_0

    .line 754
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getEncodedBytes(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private expandIndexValues(Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$Segment;Lcom/google/firestore/v1/Value;)Ljava/util/List;
    .locals 9
    .param p2, "segment"    # Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    .param p3, "value"    # Lcom/google/firestore/v1/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/index/IndexByteEncoder;",
            ">;",
            "Lcom/google/firebase/firestore/model/FieldIndex$Segment;",
            "Lcom/google/firestore/v1/Value;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/index/IndexByteEncoder;",
            ">;"
        }
    .end annotation

    .line 783
    .local p1, "encoders":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/index/IndexByteEncoder;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 784
    .local v0, "prefixes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/index/IndexByteEncoder;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/index/IndexByteEncoder;>;"
    invoke-virtual {p3}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/Value;

    .line 786
    .local v3, "arrayElement":Lcom/google/firestore/v1/Value;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/index/IndexByteEncoder;

    .line 787
    .local v5, "prefix":Lcom/google/firebase/firestore/index/IndexByteEncoder;
    new-instance v6, Lcom/google/firebase/firestore/index/IndexByteEncoder;

    invoke-direct {v6}, Lcom/google/firebase/firestore/index/IndexByteEncoder;-><init>()V

    .line 788
    .local v6, "clonedEncoder":Lcom/google/firebase/firestore/index/IndexByteEncoder;
    invoke-virtual {v5}, Lcom/google/firebase/firestore/index/IndexByteEncoder;->getEncodedBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/index/IndexByteEncoder;->seed([B)V

    .line 789
    sget-object v7, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->INSTANCE:Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;

    .line 790
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/firebase/firestore/index/IndexByteEncoder;->forKind(Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;)Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;

    move-result-object v8

    .line 789
    invoke-virtual {v7, v3, v8}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeIndexValue(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 791
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    .end local v5    # "prefix":Lcom/google/firebase/firestore/index/IndexByteEncoder;
    .end local v6    # "clonedEncoder":Lcom/google/firebase/firestore/index/IndexByteEncoder;
    goto :goto_1

    .line 793
    .end local v3    # "arrayElement":Lcom/google/firestore/v1/Value;
    :cond_0
    goto :goto_0

    .line 794
    :cond_1
    return-object v1
.end method

.method private fillBounds(IILjava/util/List;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .param p1, "statementCount"    # I
    .param p2, "indexId"    # I
    .param p4, "lowerBounds"    # [Ljava/lang/Object;
    .param p5, "upperBounds"    # [Ljava/lang/Object;
    .param p6, "notInValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 648
    .local p3, "arrayValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    const/4 v0, 0x5

    .line 649
    .local v0, "bindsPerStatement":I
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    div-int v1, p1, v1

    .line 651
    .local v1, "statementsPerArrayValue":I
    mul-int v2, p1, v0

    .line 653
    const/4 v3, 0x0

    if-eqz p6, :cond_1

    array-length v4, p6

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    add-int/2addr v2, v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 654
    .local v2, "bindArgs":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 655
    .local v4, "offset":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, p1, :cond_3

    .line 656
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "offset":I
    .local v6, "offset":I
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v4

    .line 657
    add-int/lit8 v4, v6, 0x1

    .end local v6    # "offset":I
    .restart local v4    # "offset":I
    iget-object v7, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->uid:Ljava/lang/String;

    aput-object v7, v2, v6

    .line 658
    add-int/lit8 v6, v4, 0x1

    .line 659
    .end local v4    # "offset":I
    .restart local v6    # "offset":I
    if-eqz p3, :cond_2

    .line 660
    div-int v7, v5, v1

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firestore/v1/Value;

    invoke-direct {p0, v7}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->encodeSingleElement(Lcom/google/firestore/v1/Value;)[B

    move-result-object v7

    goto :goto_3

    .line 661
    :cond_2
    sget-object v7, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->EMPTY_BYTES_VALUE:[B

    :goto_3
    aput-object v7, v2, v4

    .line 663
    add-int/lit8 v4, v6, 0x1

    .end local v6    # "offset":I
    .restart local v4    # "offset":I
    rem-int v7, v5, v1

    aget-object v7, p4, v7

    aput-object v7, v2, v6

    .line 664
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "offset":I
    .restart local v6    # "offset":I
    rem-int v7, v5, v1

    aget-object v7, p5, v7

    aput-object v7, v2, v4

    .line 655
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_2

    .line 666
    .end local v5    # "i":I
    .end local v6    # "offset":I
    .restart local v4    # "offset":I
    :cond_3
    if-eqz p6, :cond_4

    .line 667
    array-length v5, p6

    :goto_4
    if-ge v3, v5, :cond_4

    aget-object v6, p6, v3

    .line 668
    .local v6, "notInValue":Ljava/lang/Object;
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "offset":I
    .local v7, "offset":I
    aput-object v6, v2, v4

    .line 667
    .end local v6    # "notInValue":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_4

    .line 671
    .end local v7    # "offset":I
    .restart local v4    # "offset":I
    :cond_4
    return-object v2
.end method

.method private generateQueryAndBindings(Lcom/google/firebase/firestore/core/Target;ILjava/util/List;[Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 15
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;
    .param p2, "indexId"    # I
    .param p4, "lowerBounds"    # [Ljava/lang/Object;
    .param p5, "lowerBoundOp"    # Ljava/lang/String;
    .param p6, "upperBounds"    # [Ljava/lang/Object;
    .param p7, "upperBoundOp"    # Ljava/lang/String;
    .param p8, "notIn"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Target;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;[",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 606
    .local p3, "arrayValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    move-object/from16 v7, p8

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move-object/from16 v8, p4

    array-length v1, v8

    move-object/from16 v9, p6

    array-length v2, v9

    .line 607
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int v10, v0, v1

    .line 611
    .local v10, "statementCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v0

    .line 612
    .local v11, "statement":Ljava/lang/StringBuilder;
    const-string v0, "SELECT document_key, directional_value FROM index_entries "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string v0, "WHERE index_id = ? AND uid = ? "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v0, "AND array_value = ? "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const-string v0, "AND directional_value "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v12, p5

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v13, p7

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    const-string v0, " UNION "

    invoke-static {v11, v10, v0}, Lcom/google/firebase/firestore/util/Util;->repeatSequence(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 621
    .local v0, "sql":Ljava/lang/StringBuilder;
    if-eqz v7, :cond_1

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT document_key, directional_value FROM ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 624
    const-string v1, ") WHERE directional_value NOT IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    array-length v1, v7

    const-string v2, ", "

    const-string v3, "?"

    invoke-static {v3, v1, v2}, Lcom/google/firebase/firestore/util/Util;->repeatSequence(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 626
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v14, v0

    goto :goto_1

    .line 621
    :cond_1
    move-object v14, v0

    .line 630
    .end local v0    # "sql":Ljava/lang/StringBuilder;
    .local v14, "sql":Ljava/lang/StringBuilder;
    :goto_1
    nop

    .line 631
    move-object v0, p0

    move v1, v10

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->fillBounds(IILjava/util/List;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 633
    .local v0, "bindArgs":[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 636
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private getEncodedBytes(Ljava/util/List;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/index/IndexByteEncoder;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 767
    .local p1, "encoders":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/index/IndexByteEncoder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 768
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 769
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/index/IndexByteEncoder;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/index/IndexByteEncoder;->getEncodedBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 768
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 771
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private getExistingIndexEntries(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/FieldIndex;)Ljava/util/SortedSet;
    .locals 5
    .param p1, "documentKey"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "fieldIndex"    # Lcom/google/firebase/firestore/model/FieldIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            ")",
            "Ljava/util/SortedSet<",
            "Lcom/google/firebase/firestore/index/IndexEntry;",
            ">;"
        }
    .end annotation

    .line 488
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 489
    .local v0, "results":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/firebase/firestore/index/IndexEntry;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "SELECT array_value, directional_value FROM index_entries WHERE index_id = ? AND document_key = ? AND uid = ?"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    .line 492
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->uid:Ljava/lang/String;

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, p2, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda5;-><init>(Ljava/util/SortedSet;Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 493
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 498
    return-object v0
.end method

.method private getFieldIndex(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/model/FieldIndex;
    .locals 9
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 680
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->started:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IndexManager not started"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 682
    new-instance v0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;-><init>(Lcom/google/firebase/firestore/core/Target;)V

    .line 684
    .local v0, "targetIndexMatcher":Lcom/google/firebase/firestore/model/TargetIndexMatcher;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getCollectionGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 685
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getCollectionGroup()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 686
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/ResourcePath;->getLastSegment()Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 688
    .local v1, "collectionGroup":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getFieldIndexes(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 689
    .local v2, "collectionIndexes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firebase/firestore/model/FieldIndex;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 690
    const/4 v3, 0x0

    return-object v3

    .line 694
    :cond_1
    const/4 v3, 0x0

    .line 695
    .local v3, "matchingIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/FieldIndex;

    .line 696
    .local v5, "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    invoke-virtual {v0, v5}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->servedByIndex(Lcom/google/firebase/firestore/model/FieldIndex;)Z

    move-result v6

    .line 697
    .local v6, "matches":Z
    if-eqz v6, :cond_3

    if-eqz v3, :cond_2

    .line 699
    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/FieldIndex;->getSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/FieldIndex;->getSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v7, v8, :cond_3

    .line 700
    :cond_2
    move-object v3, v5

    .line 702
    .end local v5    # "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    .end local v6    # "matches":Z
    :cond_3
    goto :goto_1

    .line 703
    :cond_4
    return-object v3
.end method

.method private getMinOffset(Ljava/util/Collection;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            ">;)",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;"
        }
    .end annotation

    .line 316
    .local p1, "fieldIndexes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firebase/firestore/model/FieldIndex;>;"
    nop

    .line 317
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 316
    const-string v2, "Found empty index group when looking for least recent index offset."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 321
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/model/FieldIndex;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/FieldIndex;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexState()Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexState;->getOffset()Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v1

    .line 322
    .local v1, "minOffset":Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getLargestBatchId()I

    move-result v2

    .line 323
    .local v2, "maxBatchId":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/FieldIndex;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexState()Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/FieldIndex$IndexState;->getOffset()Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v3

    .line 325
    .local v3, "newOffset":Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    invoke-virtual {v3, v1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->compareTo(Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)I

    move-result v4

    if-gez v4, :cond_0

    .line 326
    move-object v1, v3

    .line 328
    :cond_0
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getLargestBatchId()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 329
    .end local v3    # "newOffset":Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->create(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/DocumentKey;I)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v3

    return-object v3
.end method

.method private getSubTargets(Lcom/google/firebase/firestore/core/Target;)Ljava/util/List;
    .locals 14
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Target;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Target;",
            ">;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->targetToDnfSubTargets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->targetToDnfSubTargets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 387
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v0, "subTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Target;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 392
    :cond_1
    new-instance v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 393
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getFilters()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->AND:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    invoke-static {v1}, Lcom/google/firebase/firestore/util/LogicUtils;->getDnfTerms(Lcom/google/firebase/firestore/core/CompositeFilter;)Ljava/util/List;

    move-result-object v1

    .line 394
    .local v1, "dnf":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/Filter;

    .line 395
    .local v3, "term":Lcom/google/firebase/firestore/core/Filter;
    new-instance v13, Lcom/google/firebase/firestore/core/Target;

    .line 397
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v5

    .line 398
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getCollectionGroup()Ljava/lang/String;

    move-result-object v6

    .line 399
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/Filter;->getFilters()Ljava/util/List;

    move-result-object v7

    .line 400
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getOrderBy()Ljava/util/List;

    move-result-object v8

    .line 401
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getLimit()J

    move-result-wide v9

    .line 402
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getStartAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v11

    .line 403
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getEndAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v12

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lcom/google/firebase/firestore/core/Target;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    .line 395
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    .end local v3    # "term":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 406
    .end local v1    # "dnf":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->targetToDnfSubTargets:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    return-object v0
.end method

.method private isInFilter(Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/model/FieldPath;)Z
    .locals 4
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;
    .param p2, "fieldPath"    # Lcom/google/firebase/firestore/model/FieldPath;

    .line 798
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Filter;

    .line 799
    .local v1, "filter":Lcom/google/firebase/firestore/core/Filter;
    instance-of v2, v1, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/google/firebase/firestore/core/FieldFilter;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 800
    move-object v2, v1

    check-cast v2, Lcom/google/firebase/firestore/core/FieldFilter;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v2

    .line 801
    .local v2, "operator":Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    sget-object v3, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 802
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 803
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 806
    .end local v1    # "filter":Lcom/google/firebase/firestore/core/Filter;
    .end local v2    # "operator":Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    :cond_1
    goto :goto_0

    .line 807
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$getCollectionParents$3(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    .locals 1
    .param p0, "parentPaths"    # Ljava/util/ArrayList;
    .param p1, "row"    # Landroid/database/Cursor;

    .line 198
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->decodeResourcePath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method static synthetic lambda$getDocumentsMatchingTarget$7(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 1
    .param p0, "result"    # Ljava/util/List;
    .param p1, "row"    # Landroid/database/Cursor;

    .line 583
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$getExistingIndexEntries$6(Ljava/util/SortedSet;Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/model/DocumentKey;Landroid/database/Cursor;)V
    .locals 3
    .param p0, "results"    # Ljava/util/SortedSet;
    .param p1, "fieldIndex"    # Lcom/google/firebase/firestore/model/FieldIndex;
    .param p2, "documentKey"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p3, "row"    # Landroid/database/Cursor;

    .line 495
    nop

    .line 497
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexId()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 496
    invoke-static {v0, p2, v1, v2}, Lcom/google/firebase/firestore/index/IndexEntry;->create(ILcom/google/firebase/firestore/model/DocumentKey;[B[B)Lcom/google/firebase/firestore/index/IndexEntry;

    move-result-object v0

    .line 495
    invoke-interface {p0, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/model/FieldIndex;)I
    .locals 4
    .param p0, "l"    # Lcom/google/firebase/firestore/model/FieldIndex;
    .param p1, "r"    # Lcom/google/firebase/firestore/model/FieldIndex;

    .line 98
    nop

    .line 100
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexState()Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/FieldIndex$IndexState;->getSequenceNumber()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexState()Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexState;->getSequenceNumber()J

    move-result-wide v2

    .line 99
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 101
    .local v0, "sequenceCmp":I
    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/FieldIndex;->getCollectionGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getCollectionGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 104
    :cond_0
    return v0
.end method

.method static synthetic lambda$start$1(Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 8
    .param p0, "indexStates"    # Ljava/util/Map;
    .param p1, "row"    # Landroid/database/Cursor;

    .line 129
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 130
    .local v0, "indexId":I
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 131
    .local v1, "sequenceNumber":J
    new-instance v3, Lcom/google/firebase/firestore/model/SnapshotVersion;

    new-instance v4, Lcom/google/firebase/Timestamp;

    .line 132
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x3

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    invoke-direct {v3, v4}, Lcom/google/firebase/firestore/model/SnapshotVersion;-><init>(Lcom/google/firebase/Timestamp;)V

    .line 133
    .local v3, "readTime":Lcom/google/firebase/firestore/model/SnapshotVersion;
    nop

    .line 134
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/firestore/local/EncodedPath;->decodeResourcePath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    .line 135
    .local v4, "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 136
    .local v5, "largestBatchId":I
    nop

    .line 137
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 138
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/firebase/firestore/model/FieldIndex$IndexState;->create(JLcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/DocumentKey;I)Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    move-result-object v7

    .line 136
    invoke-interface {p0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method private memoizeIndex(Lcom/google/firebase/firestore/model/FieldIndex;)V
    .locals 6
    .param p1, "fieldIndex"    # Lcom/google/firebase/firestore/model/FieldIndex;

    .line 415
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedIndexes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getCollectionGroup()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 416
    .local v0, "existingIndexes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/firebase/firestore/model/FieldIndex;>;"
    if-nez v0, :cond_0

    .line 417
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 418
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedIndexes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getCollectionGroup()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/FieldIndex;

    .line 422
    .local v1, "existingIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    if-eqz v1, :cond_1

    .line 423
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->nextIndexToUpdate:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 426
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->nextIndexToUpdate:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 428
    iget v2, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedMaxIndexId:I

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexId()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedMaxIndexId:I

    .line 429
    iget-wide v2, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedMaxSequenceNumber:J

    .line 430
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexState()Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/FieldIndex$IndexState;->getSequenceNumber()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedMaxSequenceNumber:J

    .line 431
    return-void
.end method

.method private updateEntries(Lcom/google/firebase/firestore/model/Document;Ljava/util/SortedSet;Ljava/util/SortedSet;)V
    .locals 3
    .param p1, "document"    # Lcom/google/firebase/firestore/model/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/Document;",
            "Ljava/util/SortedSet<",
            "Lcom/google/firebase/firestore/index/IndexEntry;",
            ">;",
            "Ljava/util/SortedSet<",
            "Lcom/google/firebase/firestore/index/IndexEntry;",
            ">;)V"
        }
    .end annotation

    .line 291
    .local p2, "existingEntries":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/firebase/firestore/index/IndexEntry;>;"
    .local p3, "newEntries":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/firebase/firestore/index/IndexEntry;>;"
    sget-object v0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->TAG:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Updating index entries for document \'%s\'"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/local/SQLiteIndexManager;Lcom/google/firebase/firestore/model/Document;)V

    new-instance v1, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/local/SQLiteIndexManager;Lcom/google/firebase/firestore/model/Document;)V

    invoke-static {p2, p3, v0, v1}, Lcom/google/firebase/firestore/util/Util;->diffCollections(Ljava/util/SortedSet;Ljava/util/SortedSet;Lcom/google/firebase/firestore/util/Consumer;Lcom/google/firebase/firestore/util/Consumer;)V

    .line 297
    return-void
.end method


# virtual methods
.method public addFieldIndex(Lcom/google/firebase/firestore/model/FieldIndex;)V
    .locals 5
    .param p1, "index"    # Lcom/google/firebase/firestore/model/FieldIndex;

    .line 205
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->started:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IndexManager not started"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedMaxIndexId:I

    add-int/lit8 v0, v0, 0x1

    .line 208
    .local v0, "nextIndexId":I
    nop

    .line 210
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getCollectionGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexState()Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    move-result-object v3

    .line 209
    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/firestore/model/FieldIndex;->create(ILjava/lang/String;Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexState;)Lcom/google/firebase/firestore/model/FieldIndex;

    move-result-object p1

    .line 212
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 218
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getCollectionGroup()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->encodeSegments(Lcom/google/firebase/firestore/model/FieldIndex;)[B

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 212
    const-string v3, "INSERT INTO index_configuration (index_id, collection_group, index_proto) VALUES(?, ?, ?)"

    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizeIndex(Lcom/google/firebase/firestore/model/FieldIndex;)V

    .line 221
    return-void
.end method

.method public addToCollectionParentIndex(Lcom/google/firebase/firestore/model/ResourcePath;)V
    .locals 5
    .param p1, "collectionPath"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 174
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->started:Z

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "IndexManager not started"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v0, "Expected a collection path."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->collectionParentsCache:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;->add(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->getLastSegment()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "collectionId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 180
    .local v1, "parentPath":Lcom/google/firebase/firestore/model/ResourcePath;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 185
    invoke-static {v1}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 180
    const-string v4, "INSERT OR REPLACE INTO collection_parents (collection_id, parent) VALUES (?, ?)"

    invoke-virtual {v2, v4, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    .end local v0    # "collectionId":Ljava/lang/String;
    .end local v1    # "parentPath":Lcom/google/firebase/firestore/model/ResourcePath;
    :cond_1
    return-void
.end method

.method public createTargetIndexes(Lcom/google/firebase/firestore/core/Target;)V
    .locals 5
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 248
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->started:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IndexManager not started"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getSubTargets(Lcom/google/firebase/firestore/core/Target;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Target;

    .line 251
    .local v1, "subTarget":Lcom/google/firebase/firestore/core/Target;
    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getIndexType(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/IndexManager$IndexType;

    move-result-object v2

    .line 252
    .local v2, "type":Lcom/google/firebase/firestore/local/IndexManager$IndexType;
    sget-object v3, Lcom/google/firebase/firestore/local/IndexManager$IndexType;->NONE:Lcom/google/firebase/firestore/local/IndexManager$IndexType;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/google/firebase/firestore/local/IndexManager$IndexType;->PARTIAL:Lcom/google/firebase/firestore/local/IndexManager$IndexType;

    if-ne v2, v3, :cond_1

    .line 253
    :cond_0
    new-instance v3, Lcom/google/firebase/firestore/model/TargetIndexMatcher;

    invoke-direct {v3, v1}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;-><init>(Lcom/google/firebase/firestore/core/Target;)V

    .line 254
    .local v3, "targetIndexMatcher":Lcom/google/firebase/firestore/model/TargetIndexMatcher;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->buildTargetIndex()Lcom/google/firebase/firestore/model/FieldIndex;

    move-result-object v4

    .line 255
    .local v4, "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    if-eqz v4, :cond_1

    .line 256
    invoke-virtual {p0, v4}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->addFieldIndex(Lcom/google/firebase/firestore/model/FieldIndex;)V

    .line 259
    .end local v1    # "subTarget":Lcom/google/firebase/firestore/core/Target;
    .end local v2    # "type":Lcom/google/firebase/firestore/local/IndexManager$IndexType;
    .end local v3    # "targetIndexMatcher":Lcom/google/firebase/firestore/model/TargetIndexMatcher;
    .end local v4    # "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    :cond_1
    goto :goto_0

    .line 260
    :cond_2
    return-void
.end method

.method public deleteAllFieldIndexes()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DELETE FROM index_configuration"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "DELETE FROM index_entries"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "DELETE FROM index_state"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->nextIndexToUpdate:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 243
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedIndexes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 244
    return-void
.end method

.method public deleteFieldIndex(Lcom/google/firebase/firestore/model/FieldIndex;)V
    .locals 3
    .param p1, "index"    # Lcom/google/firebase/firestore/model/FieldIndex;

    .line 225
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "DELETE FROM index_configuration WHERE index_id = ?"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "DELETE FROM index_entries WHERE index_id = ?"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "DELETE FROM index_state WHERE index_id = ?"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->nextIndexToUpdate:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedIndexes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getCollectionGroup()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 231
    .local v0, "collectionIndices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/firebase/firestore/model/FieldIndex;>;"
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_0
    return-void
.end method

.method public getCollectionParents(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "collectionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/ResourcePath;",
            ">;"
        }
    .end annotation

    .line 191
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->started:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IndexManager not started"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v0, "parentPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "SELECT parent FROM collection_parents WHERE collection_id = ?"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 195
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;)V

    .line 196
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 200
    return-object v0
.end method

.method public getDocumentsMatchingTarget(Lcom/google/firebase/firestore/core/Target;)Ljava/util/List;
    .locals 25
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Target;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 503
    move-object/from16 v9, p0

    iget-boolean v0, v9, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->started:Z

    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "IndexManager not started"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 506
    .local v11, "subQueries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 507
    .local v12, "bindings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 509
    .local v13, "indexes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/model/FieldIndex;>;>;"
    invoke-direct/range {p0 .. p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getSubTargets(Lcom/google/firebase/firestore/core/Target;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Target;

    .line 510
    .local v1, "subTarget":Lcom/google/firebase/firestore/core/Target;
    invoke-direct {v9, v1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getFieldIndex(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/model/FieldIndex;

    move-result-object v2

    .line 511
    .local v2, "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    if-nez v2, :cond_0

    .line 512
    const/4 v0, 0x0

    return-object v0

    .line 514
    :cond_0
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    .end local v1    # "subTarget":Lcom/google/firebase/firestore/core/Target;
    .end local v2    # "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    goto :goto_0

    .line 517
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/util/Pair;

    .line 518
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/model/FieldIndex;>;"
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/google/firebase/firestore/core/Target;

    .line 519
    .local v6, "subTarget":Lcom/google/firebase/firestore/core/Target;
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/google/firebase/firestore/model/FieldIndex;

    .line 520
    .local v4, "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    invoke-virtual {v6, v4}, Lcom/google/firebase/firestore/core/Target;->getArrayValues(Lcom/google/firebase/firestore/model/FieldIndex;)Ljava/util/List;

    move-result-object v3

    .line 521
    .local v3, "arrayValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {v6, v4}, Lcom/google/firebase/firestore/core/Target;->getNotInValues(Lcom/google/firebase/firestore/model/FieldIndex;)Ljava/util/Collection;

    move-result-object v2

    .line 522
    .local v2, "notInValues":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {v6, v4}, Lcom/google/firebase/firestore/core/Target;->getLowerBound(Lcom/google/firebase/firestore/model/FieldIndex;)Lcom/google/firebase/firestore/core/Bound;

    move-result-object v1

    .line 523
    .local v1, "lowerBound":Lcom/google/firebase/firestore/core/Bound;
    invoke-virtual {v6, v4}, Lcom/google/firebase/firestore/core/Target;->getUpperBound(Lcom/google/firebase/firestore/model/FieldIndex;)Lcom/google/firebase/firestore/core/Bound;

    move-result-object v0

    .line 525
    .local v0, "upperBound":Lcom/google/firebase/firestore/core/Bound;
    invoke-static {}, Lcom/google/firebase/firestore/util/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 526
    sget-object v5, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->TAG:Ljava/lang/String;

    const-string v7, "Using index \'%s\' to execute \'%s\' (Arrays: %s, Lower bound: %s, Upper bound: %s)"

    filled-new-array {v4, v6, v3, v1, v0}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v5, v7, v15}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    :cond_2
    invoke-direct {v9, v4, v6, v1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->encodeBound(Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/core/Bound;)[Ljava/lang/Object;

    move-result-object v15

    .line 537
    .local v15, "lowerBoundEncoded":[Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Bound;->isInclusive()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, ">="

    goto :goto_2

    :cond_3
    const-string v5, ">"

    .line 538
    .local v5, "lowerBoundOp":Ljava/lang/String;
    :goto_2
    invoke-direct {v9, v4, v6, v0}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->encodeBound(Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/core/Bound;)[Ljava/lang/Object;

    move-result-object v16

    .line 539
    .local v16, "upperBoundEncoded":[Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Bound;->isInclusive()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "<="

    goto :goto_3

    :cond_4
    const-string v7, "<"

    .line 540
    .local v7, "upperBoundOp":Ljava/lang/String;
    :goto_3
    invoke-direct {v9, v4, v6, v2}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->encodeValues(Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/core/Target;Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v17

    .line 542
    .local v17, "notInEncoded":[Ljava/lang/Object;
    nop

    .line 545
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexId()I

    move-result v18

    .line 543
    move-object/from16 v19, v0

    .end local v0    # "upperBound":Lcom/google/firebase/firestore/core/Bound;
    .local v19, "upperBound":Lcom/google/firebase/firestore/core/Bound;
    move-object/from16 v0, p0

    move-object/from16 v20, v1

    .end local v1    # "lowerBound":Lcom/google/firebase/firestore/core/Bound;
    .local v20, "lowerBound":Lcom/google/firebase/firestore/core/Bound;
    move-object v1, v6

    move-object/from16 v21, v2

    .end local v2    # "notInValues":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firestore/v1/Value;>;"
    .local v21, "notInValues":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firestore/v1/Value;>;"
    move/from16 v2, v18

    move-object/from16 v18, v3

    .end local v3    # "arrayValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    .local v18, "arrayValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    move-object/from16 v22, v4

    .end local v4    # "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    .local v22, "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    move-object v4, v15

    move-object/from16 v23, v6

    .end local v6    # "subTarget":Lcom/google/firebase/firestore/core/Target;
    .local v23, "subTarget":Lcom/google/firebase/firestore/core/Target;
    move-object/from16 v6, v16

    move-object/from16 v24, v8

    .end local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/model/FieldIndex;>;"
    .local v24, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/model/FieldIndex;>;"
    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->generateQueryAndBindings(Lcom/google/firebase/firestore/core/Target;ILjava/util/List;[Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 552
    .local v0, "subQueryAndBindings":[Ljava/lang/Object;
    aget-object v1, v0, v10

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 554
    .end local v0    # "subQueryAndBindings":[Ljava/lang/Object;
    .end local v5    # "lowerBoundOp":Ljava/lang/String;
    .end local v7    # "upperBoundOp":Ljava/lang/String;
    .end local v15    # "lowerBoundEncoded":[Ljava/lang/Object;
    .end local v16    # "upperBoundEncoded":[Ljava/lang/Object;
    .end local v17    # "notInEncoded":[Ljava/lang/Object;
    .end local v18    # "arrayValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    .end local v19    # "upperBound":Lcom/google/firebase/firestore/core/Bound;
    .end local v20    # "lowerBound":Lcom/google/firebase/firestore/core/Bound;
    .end local v21    # "notInValues":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firestore/v1/Value;>;"
    .end local v22    # "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    .end local v23    # "subTarget":Lcom/google/firebase/firestore/core/Target;
    .end local v24    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/model/FieldIndex;>;"
    goto/16 :goto_1

    .line 567
    :cond_5
    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    const-string v1, " UNION "

    invoke-static {v1, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ORDER BY directional_value, document_key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/core/Target;->getKeyOrder()Lcom/google/firebase/firestore/core/OrderBy$Direction;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/core/OrderBy$Direction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "asc "

    goto :goto_4

    :cond_6
    const-string v1, "desc "

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "unionSubTargets":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT DISTINCT document_key FROM ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "queryString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/core/Target;->hasLimit()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " LIMIT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/core/Target;->getLimit()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 577
    :cond_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/16 v4, 0x3e8

    if-ge v2, v4, :cond_8

    move v15, v3

    goto :goto_5

    :cond_8
    move v15, v10

    :goto_5
    const-string v2, "Cannot perform query with more than 999 bind elements"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v15, v2, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 579
    iget-object v2, v9, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v2

    invoke-interface {v12}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v2

    .line 581
    .local v2, "query":Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    new-instance v4, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 585
    sget-object v4, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->TAG:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Index scan returned %s documents"

    invoke-static {v4, v6, v5}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    return-object v3
.end method

.method public getFieldIndexes()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v0, "allIndices":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedIndexes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 310
    .local v2, "indices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/firebase/firestore/model/FieldIndex;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    .end local v2    # "indices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/firebase/firestore/model/FieldIndex;>;"
    goto :goto_0

    .line 312
    :cond_0
    return-object v0
.end method

.method public getFieldIndexes(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .param p1, "collectionGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            ">;"
        }
    .end annotation

    .line 301
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->started:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IndexManager not started"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedIndexes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 303
    .local v0, "indexes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/firebase/firestore/model/FieldIndex;>;"
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getIndexType(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/IndexManager$IndexType;
    .locals 7
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 343
    sget-object v0, Lcom/google/firebase/firestore/local/IndexManager$IndexType;->FULL:Lcom/google/firebase/firestore/local/IndexManager$IndexType;

    .line 344
    .local v0, "result":Lcom/google/firebase/firestore/local/IndexManager$IndexType;
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getSubTargets(Lcom/google/firebase/firestore/core/Target;)Ljava/util/List;

    move-result-object v1

    .line 346
    .local v1, "subTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Target;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/Target;

    .line 347
    .local v3, "subTarget":Lcom/google/firebase/firestore/core/Target;
    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getFieldIndex(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/model/FieldIndex;

    move-result-object v4

    .line 348
    .local v4, "index":Lcom/google/firebase/firestore/model/FieldIndex;
    if-nez v4, :cond_0

    .line 349
    sget-object v0, Lcom/google/firebase/firestore/local/IndexManager$IndexType;->NONE:Lcom/google/firebase/firestore/local/IndexManager$IndexType;

    .line 350
    goto :goto_1

    .line 353
    :cond_0
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/FieldIndex;->getSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/Target;->getSegmentCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 354
    sget-object v0, Lcom/google/firebase/firestore/local/IndexManager$IndexType;->PARTIAL:Lcom/google/firebase/firestore/local/IndexManager$IndexType;

    .line 356
    .end local v3    # "subTarget":Lcom/google/firebase/firestore/core/Target;
    .end local v4    # "index":Lcom/google/firebase/firestore/model/FieldIndex;
    :cond_1
    goto :goto_0

    .line 364
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->hasLimit()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    sget-object v2, Lcom/google/firebase/firestore/local/IndexManager$IndexType;->FULL:Lcom/google/firebase/firestore/local/IndexManager$IndexType;

    if-ne v0, v2, :cond_3

    .line 365
    sget-object v2, Lcom/google/firebase/firestore/local/IndexManager$IndexType;->PARTIAL:Lcom/google/firebase/firestore/local/IndexManager$IndexType;

    return-object v2

    .line 368
    :cond_3
    return-object v0
.end method

.method public getMinOffset(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .locals 4
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v0, "fieldIndexes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex;>;"
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getSubTargets(Lcom/google/firebase/firestore/core/Target;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/Target;

    .line 375
    .local v2, "subTarget":Lcom/google/firebase/firestore/core/Target;
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getFieldIndex(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/model/FieldIndex;

    move-result-object v3

    .line 376
    .local v3, "index":Lcom/google/firebase/firestore/model/FieldIndex;
    if-eqz v3, :cond_0

    .line 377
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v2    # "subTarget":Lcom/google/firebase/firestore/core/Target;
    .end local v3    # "index":Lcom/google/firebase/firestore/model/FieldIndex;
    :cond_0
    goto :goto_0

    .line 380
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getMinOffset(Ljava/util/Collection;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v1

    return-object v1
.end method

.method public getMinOffset(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .locals 4
    .param p1, "collectionGroup"    # Ljava/lang/String;

    .line 336
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getFieldIndexes(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 337
    .local v0, "fieldIndexes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firebase/firestore/model/FieldIndex;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "minOffset was called for collection without indexes"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getMinOffset(Ljava/util/Collection;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v1

    return-object v1
.end method

.method public getNextCollectionGroupToUpdate()Ljava/lang/String;
    .locals 3

    .line 264
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->started:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IndexManager not started"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->nextIndexToUpdate:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/FieldIndex;

    .line 266
    .local v0, "nextIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/FieldIndex;->getCollectionGroup()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method synthetic lambda$start$2$com-google-firebase-firestore-local-SQLiteIndexManager(Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "indexStates"    # Ljava/util/Map;
    .param p2, "row"    # Landroid/database/Cursor;

    .line 147
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 148
    .local v1, "indexId":I
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "collectionGroup":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 150
    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/firestore/admin/v1/Index;->parseFrom([B)Lcom/google/firestore/admin/v1/Index;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/local/LocalSerializer;->decodeFieldIndexSegments(Lcom/google/firestore/admin/v1/Index;)Ljava/util/List;

    move-result-object v3

    .line 156
    .local v3, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex$Segment;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    goto :goto_0

    .line 158
    :cond_0
    sget-object v4, Lcom/google/firebase/firestore/model/FieldIndex;->INITIAL_STATE:Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    :goto_0
    nop

    .line 159
    .local v4, "indexState":Lcom/google/firebase/firestore/model/FieldIndex$IndexState;
    nop

    .line 160
    invoke-static {v1, v2, v3, v4}, Lcom/google/firebase/firestore/model/FieldIndex;->create(ILjava/lang/String;Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexState;)Lcom/google/firebase/firestore/model/FieldIndex;

    move-result-object v5

    .line 163
    .local v5, "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    invoke-direct {p0, v5}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizeIndex(Lcom/google/firebase/firestore/model/FieldIndex;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1    # "indexId":I
    .end local v2    # "collectionGroup":Ljava/lang/String;
    .end local v3    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex$Segment;>;"
    .end local v4    # "indexState":Lcom/google/firebase/firestore/model/FieldIndex$IndexState;
    .end local v5    # "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    nop

    .line 167
    return-void

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to decode index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method synthetic lambda$updateEntries$4$com-google-firebase-firestore-local-SQLiteIndexManager(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/index/IndexEntry;)V
    .locals 0
    .param p1, "document"    # Lcom/google/firebase/firestore/model/Document;
    .param p2, "entry"    # Lcom/google/firebase/firestore/index/IndexEntry;

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->addIndexEntry(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/index/IndexEntry;)V

    return-void
.end method

.method synthetic lambda$updateEntries$5$com-google-firebase-firestore-local-SQLiteIndexManager(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/index/IndexEntry;)V
    .locals 0
    .param p1, "document"    # Lcom/google/firebase/firestore/model/Document;
    .param p2, "entry"    # Lcom/google/firebase/firestore/index/IndexEntry;

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->deleteIndexEntry(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/index/IndexEntry;)V

    return-void
.end method

.method public start()V
    .locals 3

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v0, "indexStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/firebase/firestore/model/FieldIndex$IndexState;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "SELECT index_id, sequence_number, read_time_seconds, read_time_nanos, document_key, largest_batch_id FROM index_state WHERE uid = ?"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->uid:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 126
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/Map;)V

    .line 127
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 143
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v2, "SELECT index_id, collection_group, index_proto FROM index_configuration"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$ExternalSyntheticLambda7;-><init>(Lcom/google/firebase/firestore/local/SQLiteIndexManager;Ljava/util/Map;)V

    .line 144
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->forEach(Lcom/google/firebase/firestore/util/Consumer;)I

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->started:Z

    .line 170
    return-void
.end method

.method public updateCollectionGroup(Ljava/lang/String;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)V
    .locals 12
    .param p1, "collectionGroup"    # Ljava/lang/String;
    .param p2, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    .line 816
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->started:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IndexManager not started"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 818
    iget-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedMaxSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedMaxSequenceNumber:J

    .line 819
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getFieldIndexes(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/FieldIndex;

    .line 820
    .local v1, "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    nop

    .line 822
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexId()I

    move-result v2

    .line 823
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex;->getCollectionGroup()Ljava/lang/String;

    move-result-object v3

    .line 824
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex;->getSegments()Ljava/util/List;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedMaxSequenceNumber:J

    .line 825
    invoke-static {v5, v6, p2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexState;->create(JLcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    move-result-object v5

    .line 821
    invoke-static {v2, v3, v4, v5}, Lcom/google/firebase/firestore/model/FieldIndex;->create(ILjava/lang/String;Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexState;)Lcom/google/firebase/firestore/model/FieldIndex;

    move-result-object v2

    .line 826
    .local v2, "updatedIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 830
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->uid:Ljava/lang/String;

    iget-wide v7, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizedMaxSequenceNumber:J

    .line 832
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 833
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 834
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 835
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/firestore/local/EncodedPath;->encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;

    move-result-object v10

    .line 836
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getLargestBatchId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v4

    .line 826
    const-string v5, "REPLACE INTO index_state (index_id, uid,  sequence_number, read_time_seconds, read_time_nanos, document_key, largest_batch_id) VALUES(?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v3, v5, v4}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 837
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->memoizeIndex(Lcom/google/firebase/firestore/model/FieldIndex;)V

    .line 838
    .end local v1    # "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    .end local v2    # "updatedIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    goto :goto_0

    .line 839
    :cond_0
    return-void
.end method

.method public updateIndexEntries(Lcom/google/firebase/database/collection/ImmutableSortedMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p1, "documents":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->started:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IndexManager not started"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 273
    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 274
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentKey;->getCollectionGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getFieldIndexes(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 275
    .local v2, "fieldIndexes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firebase/firestore/model/FieldIndex;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/FieldIndex;

    .line 276
    .local v4, "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-direct {p0, v5, v4}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->getExistingIndexEntries(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/FieldIndex;)Ljava/util/SortedSet;

    move-result-object v5

    .line 277
    .local v5, "existingEntries":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/firebase/firestore/index/IndexEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/model/Document;

    invoke-direct {p0, v6, v4}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->computeIndexEntries(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/FieldIndex;)Ljava/util/SortedSet;

    move-result-object v6

    .line 278
    .local v6, "newEntries":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/firebase/firestore/index/IndexEntry;>;"
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 279
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/model/Document;

    invoke-direct {p0, v7, v5, v6}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->updateEntries(Lcom/google/firebase/firestore/model/Document;Ljava/util/SortedSet;Ljava/util/SortedSet;)V

    .line 281
    .end local v4    # "fieldIndex":Lcom/google/firebase/firestore/model/FieldIndex;
    .end local v5    # "existingEntries":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/firebase/firestore/index/IndexEntry;>;"
    .end local v6    # "newEntries":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/firebase/firestore/index/IndexEntry;>;"
    :cond_0
    goto :goto_1

    .line 282
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    .end local v2    # "fieldIndexes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firebase/firestore/model/FieldIndex;>;"
    :cond_1
    goto :goto_0

    .line 283
    :cond_2
    return-void
.end method
