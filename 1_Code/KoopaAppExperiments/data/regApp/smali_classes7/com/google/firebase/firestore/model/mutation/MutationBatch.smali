.class public final Lcom/google/firebase/firestore/model/mutation/MutationBatch;
.super Ljava/lang/Object;
.source "MutationBatch.java"


# static fields
.field public static final UNKNOWN:I = -0x1


# instance fields
.field private final baseMutations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;"
        }
    .end annotation
.end field

.field private final batchId:I

.field private final localWriteTime:Lcom/google/firebase/Timestamp;

.field private final mutations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/firebase/Timestamp;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "batchId"    # I
    .param p2, "localWriteTime"    # Lcom/google/firebase/Timestamp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/firebase/Timestamp;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p3, "baseMutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    .local p4, "mutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot create an empty mutation batch"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iput p1, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->batchId:I

    .line 72
    iput-object p2, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->localWriteTime:Lcom/google/firebase/Timestamp;

    .line 73
    iput-object p3, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->baseMutations:Ljava/util/List;

    .line 74
    iput-object p4, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->mutations:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public applyToLocalDocumentSet(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/local/OverlayedDocument;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;"
        }
    .end annotation

    .line 141
    .local p1, "documentMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/local/OverlayedDocument;>;"
    .local p2, "documentsWithoutRemoteVersion":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v0, "overlays":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 145
    .local v2, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/local/OverlayedDocument;

    .line 146
    .local v3, "overlayedDocument":Lcom/google/firebase/firestore/local/OverlayedDocument;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/local/OverlayedDocument;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/MutableDocument;

    .line 147
    .local v4, "document":Lcom/google/firebase/firestore/model/MutableDocument;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/local/OverlayedDocument;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/local/OverlayedDocument;->getMutatedFields()Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->applyToLocalView(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/FieldMask;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v5

    .line 150
    .local v5, "mutatedFields":Lcom/google/firebase/firestore/model/mutation/FieldMask;
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    move-object v6, v5

    :goto_1
    move-object v5, v6

    .line 151
    invoke-static {v4, v5}, Lcom/google/firebase/firestore/model/mutation/Mutation;->calculateOverlayMutation(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/FieldMask;)Lcom/google/firebase/firestore/model/mutation/Mutation;

    move-result-object v6

    .line 152
    .local v6, "overlay":Lcom/google/firebase/firestore/model/mutation/Mutation;
    if-eqz v6, :cond_1

    .line 153
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_1
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/MutableDocument;->isValidDocument()Z

    move-result v7

    if-nez v7, :cond_2

    .line 157
    sget-object v7, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v4, v7}, Lcom/google/firebase/firestore/model/MutableDocument;->convertToNoDocument(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    .line 159
    .end local v2    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v3    # "overlayedDocument":Lcom/google/firebase/firestore/local/OverlayedDocument;
    .end local v4    # "document":Lcom/google/firebase/firestore/model/MutableDocument;
    .end local v5    # "mutatedFields":Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .end local v6    # "overlay":Lcom/google/firebase/firestore/model/mutation/Mutation;
    :cond_2
    goto :goto_0

    .line 161
    :cond_3
    return-object v0
.end method

.method public applyToLocalView(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/FieldMask;)Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 4
    .param p1, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .param p2, "mutatedFields"    # Lcom/google/firebase/firestore/model/mutation/FieldMask;

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->baseMutations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->baseMutations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 114
    .local v1, "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->localWriteTime:Lcom/google/firebase/Timestamp;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/firebase/firestore/model/mutation/Mutation;->applyToLocalView(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/FieldMask;Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object p2

    .line 112
    .end local v1    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->mutations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 121
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->mutations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 122
    .restart local v1    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->localWriteTime:Lcom/google/firebase/Timestamp;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/firebase/firestore/model/mutation/Mutation;->applyToLocalView(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/FieldMask;Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object p2

    .line 120
    .end local v1    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    .end local v0    # "i":I
    :cond_3
    return-object p2
.end method

.method public applyToRemoteDocument(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)V
    .locals 6
    .param p1, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .param p2, "batchResult"    # Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;

    .line 85
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->mutations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 86
    .local v0, "size":I
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;->getMutationResults()Ljava/util/List;

    move-result-object v1

    .line 87
    .local v1, "mutationResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/MutationResult;>;"
    nop

    .line 88
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 90
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 91
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 87
    const-string v4, "Mismatch between mutations length (%d) and results length (%d)"

    invoke-static {v2, v4, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 93
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 94
    iget-object v3, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->mutations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 95
    .local v3, "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/mutation/MutationResult;

    .line 97
    .local v4, "mutationResult":Lcom/google/firebase/firestore/model/mutation/MutationResult;
    invoke-virtual {v3, p1, v4}, Lcom/google/firebase/firestore/model/mutation/Mutation;->applyToRemoteDocument(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/MutationResult;)V

    .line 93
    .end local v3    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    .end local v4    # "mutationResult":Lcom/google/firebase/firestore/model/mutation/MutationResult;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 166
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 167
    return v0

    .line 169
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 173
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 174
    .local v2, "that":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    iget v3, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->batchId:I

    iget v4, v2, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->batchId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->localWriteTime:Lcom/google/firebase/Timestamp;

    iget-object v4, v2, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->localWriteTime:Lcom/google/firebase/Timestamp;

    .line 175
    invoke-virtual {v3, v4}, Lcom/google/firebase/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->baseMutations:Ljava/util/List;

    iget-object v4, v2, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->baseMutations:Ljava/util/List;

    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->mutations:Ljava/util/List;

    iget-object v4, v2, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->mutations:Ljava/util/List;

    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 174
    :goto_0
    return v0

    .line 170
    .end local v2    # "that":Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    :cond_3
    :goto_1
    return v1
.end method

.method public getBaseMutations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->baseMutations:Ljava/util/List;

    return-object v0
.end method

.method public getBatchId()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->batchId:I

    return v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 205
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->mutations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 206
    .local v2, "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v2    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    goto :goto_0

    .line 208
    :cond_0
    return-object v0
.end method

.method public getLocalWriteTime()Lcom/google/firebase/Timestamp;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->localWriteTime:Lcom/google/firebase/Timestamp;

    return-object v0
.end method

.method public getMutations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->mutations:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 182
    iget v0, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->batchId:I

    .line 183
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->localWriteTime:Lcom/google/firebase/Timestamp;

    invoke-virtual {v2}, Lcom/google/firebase/Timestamp;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 184
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->baseMutations:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 185
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->mutations:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 186
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MutationBatch(batchId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->batchId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localWriteTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->localWriteTime:Lcom/google/firebase/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", baseMutations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->baseMutations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mutations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->mutations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
