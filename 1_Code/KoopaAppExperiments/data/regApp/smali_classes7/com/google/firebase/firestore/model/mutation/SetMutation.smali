.class public final Lcom/google/firebase/firestore/model/mutation/SetMutation;
.super Lcom/google/firebase/firestore/model/mutation/Mutation;
.source "SetMutation.java"


# instance fields
.field private final value:Lcom/google/firebase/firestore/model/ObjectValue;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/mutation/Precondition;)V
    .locals 1
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "value"    # Lcom/google/firebase/firestore/model/ObjectValue;
    .param p3, "precondition"    # Lcom/google/firebase/firestore/model/mutation/Precondition;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/firestore/model/mutation/SetMutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/mutation/Precondition;Ljava/util/List;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/mutation/Precondition;Ljava/util/List;)V
    .locals 0
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "value"    # Lcom/google/firebase/firestore/model/ObjectValue;
    .param p3, "precondition"    # Lcom/google/firebase/firestore/model/mutation/Precondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/ObjectValue;",
            "Lcom/google/firebase/firestore/model/mutation/Precondition;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/FieldTransform;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p4, "fieldTransforms":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/FieldTransform;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/google/firebase/firestore/model/mutation/Mutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;Ljava/util/List;)V

    .line 44
    iput-object p2, p0, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    .line 45
    return-void
.end method


# virtual methods
.method public applyToLocalView(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/FieldMask;Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 3
    .param p1, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .param p2, "previousMask"    # Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .param p3, "localWriteTime"    # Lcom/google/firebase/Timestamp;

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/SetMutation;->verifyKeyMatches(Lcom/google/firebase/firestore/model/MutableDocument;)V

    .line 94
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/SetMutation;->getPrecondition()Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->isValidFor(Lcom/google/firebase/firestore/model/MutableDocument;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    return-object p2

    .line 98
    :cond_0
    invoke-virtual {p0, p3, p1}, Lcom/google/firebase/firestore/model/mutation/SetMutation;->localTransformResults(Lcom/google/firebase/Timestamp;Lcom/google/firebase/firestore/model/MutableDocument;)Ljava/util/Map;

    move-result-object v0

    .line 99
    .local v0, "transformResults":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/ObjectValue;->clone()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v1

    .line 100
    .local v1, "localValue":Lcom/google/firebase/firestore/model/ObjectValue;
    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/model/ObjectValue;->setAll(Ljava/util/Map;)V

    .line 101
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/google/firebase/firestore/model/MutableDocument;->convertToFoundDocument(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/MutableDocument;->setHasLocalMutations()Lcom/google/firebase/firestore/model/MutableDocument;

    .line 103
    const/4 v2, 0x0

    return-object v2
.end method

.method public applyToRemoteDocument(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/MutationResult;)V
    .locals 3
    .param p1, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .param p2, "mutationResult"    # Lcom/google/firebase/firestore/model/mutation/MutationResult;

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/SetMutation;->verifyKeyMatches(Lcom/google/firebase/firestore/model/MutableDocument;)V

    .line 80
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ObjectValue;->clone()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v0

    .line 81
    .local v0, "newData":Lcom/google/firebase/firestore/model/ObjectValue;
    nop

    .line 82
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getTransformResults()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/firebase/firestore/model/mutation/SetMutation;->serverTransformResults(Lcom/google/firebase/firestore/model/MutableDocument;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 83
    .local v1, "transformResults":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/ObjectValue;->setAll(Ljava/util/Map;)V

    .line 84
    nop

    .line 85
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/google/firebase/firestore/model/MutableDocument;->convertToFoundDocument(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/MutableDocument;->setHasCommittedMutations()Lcom/google/firebase/firestore/model/MutableDocument;

    .line 87
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 49
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 50
    return v0

    .line 52
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 56
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/SetMutation;

    .line 57
    .local v2, "that":Lcom/google/firebase/firestore/model/mutation/SetMutation;
    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/model/mutation/SetMutation;->hasSameKeyAndPrecondition(Lcom/google/firebase/firestore/model/mutation/Mutation;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    iget-object v4, v2, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    .line 58
    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/ObjectValue;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/SetMutation;->getFieldTransforms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/SetMutation;->getFieldTransforms()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 57
    :goto_0
    return v0

    .line 53
    .end local v2    # "that":Lcom/google/firebase/firestore/model/mutation/SetMutation;
    :cond_3
    :goto_1
    return v1
.end method

.method public getFieldMask()Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 1

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Lcom/google/firebase/firestore/model/ObjectValue;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/SetMutation;->keyAndPreconditionHashCode()I

    move-result v0

    .line 65
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/ObjectValue;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 66
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetMutation{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/SetMutation;->keyAndPreconditionToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
