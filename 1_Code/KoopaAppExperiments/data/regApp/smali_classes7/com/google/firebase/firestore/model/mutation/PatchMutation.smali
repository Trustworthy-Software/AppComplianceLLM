.class public final Lcom/google/firebase/firestore/model/mutation/PatchMutation;
.super Lcom/google/firebase/firestore/model/mutation/Mutation;
.source "PatchMutation.java"


# instance fields
.field private final mask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

.field private final value:Lcom/google/firebase/firestore/model/ObjectValue;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/mutation/FieldMask;Lcom/google/firebase/firestore/model/mutation/Precondition;)V
    .locals 6
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "value"    # Lcom/google/firebase/firestore/model/ObjectValue;
    .param p3, "mask"    # Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .param p4, "precondition"    # Lcom/google/firebase/firestore/model/mutation/Precondition;

    .line 48
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/mutation/FieldMask;Lcom/google/firebase/firestore/model/mutation/Precondition;Ljava/util/List;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/mutation/FieldMask;Lcom/google/firebase/firestore/model/mutation/Precondition;Ljava/util/List;)V
    .locals 0
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "value"    # Lcom/google/firebase/firestore/model/ObjectValue;
    .param p3, "mask"    # Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .param p4, "precondition"    # Lcom/google/firebase/firestore/model/mutation/Precondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/ObjectValue;",
            "Lcom/google/firebase/firestore/model/mutation/FieldMask;",
            "Lcom/google/firebase/firestore/model/mutation/Precondition;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/FieldTransform;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p5, "fieldTransforms":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/FieldTransform;>;"
    invoke-direct {p0, p1, p4, p5}, Lcom/google/firebase/firestore/model/mutation/Mutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;Ljava/util/List;)V

    .line 58
    iput-object p2, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    .line 59
    iput-object p3, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->mask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    .line 60
    return-void
.end method

.method private getFieldTransformPaths()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/FieldPath;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldPath;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->getFieldTransforms()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    .line 162
    .local v2, "fieldTransform":Lcom/google/firebase/firestore/model/mutation/FieldTransform;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v2    # "fieldTransform":Lcom/google/firebase/firestore/model/mutation/FieldTransform;
    goto :goto_0

    .line 164
    :cond_0
    return-object v0
.end method

.method private getPatch()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/FieldPath;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->mask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->getMask()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/FieldPath;

    .line 170
    .local v2, "path":Lcom/google/firebase/firestore/model/FieldPath;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldPath;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/model/ObjectValue;->get(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v2    # "path":Lcom/google/firebase/firestore/model/FieldPath;
    :cond_0
    goto :goto_0

    .line 174
    :cond_1
    return-object v0
.end method


# virtual methods
.method public applyToLocalView(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/FieldMask;Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 5
    .param p1, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .param p2, "previousMask"    # Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .param p3, "localWriteTime"    # Lcom/google/firebase/Timestamp;

    .line 134
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->verifyKeyMatches(Lcom/google/firebase/firestore/model/MutableDocument;)V

    .line 136
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->getPrecondition()Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->isValidFor(Lcom/google/firebase/firestore/model/MutableDocument;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    return-object p2

    .line 140
    :cond_0
    invoke-virtual {p0, p3, p1}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->localTransformResults(Lcom/google/firebase/Timestamp;Lcom/google/firebase/firestore/model/MutableDocument;)Ljava/util/Map;

    move-result-object v0

    .line 141
    .local v0, "transformResults":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->getPatch()Ljava/util/Map;

    move-result-object v1

    .line 142
    .local v1, "patches":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v2

    .line 143
    .local v2, "value":Lcom/google/firebase/firestore/model/ObjectValue;
    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/model/ObjectValue;->setAll(Ljava/util/Map;)V

    .line 144
    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/model/ObjectValue;->setAll(Ljava/util/Map;)V

    .line 145
    nop

    .line 146
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/firebase/firestore/model/MutableDocument;->convertToFoundDocument(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v3

    .line 147
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/MutableDocument;->setHasLocalMutations()Lcom/google/firebase/firestore/model/MutableDocument;

    .line 149
    if-nez p2, :cond_1

    .line 150
    const/4 v3, 0x0

    return-object v3

    .line 153
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->getMask()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 154
    .local v3, "mergedMaskSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/firebase/firestore/model/FieldPath;>;"
    iget-object v4, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->mask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->getMask()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 155
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->getFieldTransformPaths()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 156
    invoke-static {v3}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->fromSet(Ljava/util/Set;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v4

    return-object v4
.end method

.method public applyToRemoteDocument(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/MutationResult;)V
    .locals 4
    .param p1, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .param p2, "mutationResult"    # Lcom/google/firebase/firestore/model/mutation/MutationResult;

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->verifyKeyMatches(Lcom/google/firebase/firestore/model/MutableDocument;)V

    .line 113
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->getPrecondition()Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->isValidFor(Lcom/google/firebase/firestore/model/MutableDocument;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/model/MutableDocument;->convertToUnknownDocument(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    .line 118
    return-void

    .line 121
    :cond_0
    nop

    .line 122
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getTransformResults()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->serverTransformResults(Lcom/google/firebase/firestore/model/MutableDocument;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 123
    .local v0, "transformResults":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v1

    .line 124
    .local v1, "value":Lcom/google/firebase/firestore/model/ObjectValue;
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->getPatch()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/ObjectValue;->setAll(Ljava/util/Map;)V

    .line 125
    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/model/ObjectValue;->setAll(Ljava/util/Map;)V

    .line 126
    nop

    .line 127
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/firebase/firestore/model/MutableDocument;->convertToFoundDocument(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/MutableDocument;->setHasCommittedMutations()Lcom/google/firebase/firestore/model/MutableDocument;

    .line 129
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 65
    return v0

    .line 67
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/PatchMutation;

    .line 72
    .local v2, "that":Lcom/google/firebase/firestore/model/mutation/PatchMutation;
    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->hasSameKeyAndPrecondition(Lcom/google/firebase/firestore/model/mutation/Mutation;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    iget-object v4, v2, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    .line 73
    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/ObjectValue;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->getFieldTransforms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->getFieldTransforms()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 72
    :goto_0
    return v0

    .line 68
    .end local v2    # "that":Lcom/google/firebase/firestore/model/mutation/PatchMutation;
    :cond_3
    :goto_1
    return v1
.end method

.method public getFieldMask()Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->mask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    return-object v0
.end method

.method public getValue()Lcom/google/firebase/firestore/model/ObjectValue;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->keyAndPreconditionHashCode()I

    move-result v0

    .line 80
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/ObjectValue;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 81
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PatchMutation{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->keyAndPreconditionToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->mask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    return-object v0
.end method
