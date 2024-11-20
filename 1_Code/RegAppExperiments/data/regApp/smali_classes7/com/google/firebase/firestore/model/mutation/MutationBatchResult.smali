.class public final Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;
.super Ljava/lang/Object;
.source "MutationBatchResult.java"


# instance fields
.field private final batch:Lcom/google/firebase/firestore/model/mutation/MutationBatch;

.field private final commitVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

.field private final docVersions:Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            ">;"
        }
    .end annotation
.end field

.field private final mutationResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationResult;",
            ">;"
        }
    .end annotation
.end field

.field private final streamToken:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/model/mutation/MutationBatch;Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;Lcom/google/protobuf/ByteString;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V
    .locals 0
    .param p1, "batch"    # Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .param p2, "commitVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p4, "streamToken"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationResult;",
            ">;",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p3, "mutationResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationResult;>;"
    .local p5, "docVersions":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->batch:Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 40
    iput-object p2, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->commitVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 41
    iput-object p3, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->mutationResults:Ljava/util/List;

    .line 42
    iput-object p4, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->streamToken:Lcom/google/protobuf/ByteString;

    .line 43
    iput-object p5, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->docVersions:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 44
    return-void
.end method

.method public static create(Lcom/google/firebase/firestore/model/mutation/MutationBatch;Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;
    .locals 9
    .param p0, "batch"    # Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .param p1, "commitVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p3, "streamToken"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationResult;",
            ">;",
            "Lcom/google/protobuf/ByteString;",
            ")",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;"
        }
    .end annotation

    .line 56
    .local p2, "mutationResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationResult;>;"
    nop

    .line 57
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getMutations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getMutations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 60
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 56
    const-string v2, "Mutations sent %d must equal results received %d"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentCollections;->emptyVersionMap()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 63
    .local v0, "docVersions":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getMutations()Ljava/util/List;

    move-result-object v1

    .line 64
    .local v1, "mutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 65
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/mutation/MutationResult;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v3

    .line 66
    .local v3, "version":Lcom/google/firebase/firestore/model/SnapshotVersion;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/mutation/Mutation;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 64
    .end local v3    # "version":Lcom/google/firebase/firestore/model/SnapshotVersion;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;-><init>(Lcom/google/firebase/firestore/model/mutation/MutationBatch;Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;Lcom/google/protobuf/ByteString;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-object v2
.end method


# virtual methods
.method public getBatch()Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->batch:Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    return-object v0
.end method

.method public getCommitVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->commitVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public getDocVersions()Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->docVersions:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object v0
.end method

.method public getMutationResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationResult;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->mutationResults:Ljava/util/List;

    return-object v0
.end method

.method public getStreamToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->streamToken:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
