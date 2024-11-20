.class public abstract Lcom/google/firebase/firestore/model/mutation/Mutation;
.super Ljava/lang/Object;
.source "Mutation.java"


# instance fields
.field private final fieldTransforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/FieldTransform;",
            ">;"
        }
    .end annotation
.end field

.field private final key:Lcom/google/firebase/firestore/model/DocumentKey;

.field private final precondition:Lcom/google/firebase/firestore/model/mutation/Precondition;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)V
    .locals 1
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "precondition"    # Lcom/google/firebase/firestore/model/mutation/Precondition;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/firestore/model/mutation/Mutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;Ljava/util/List;)V

    .line 77
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;Ljava/util/List;)V
    .locals 0
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "precondition"    # Lcom/google/firebase/firestore/model/mutation/Precondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/mutation/Precondition;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/FieldTransform;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p3, "fieldTransforms":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/FieldTransform;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 81
    iput-object p2, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->precondition:Lcom/google/firebase/firestore/model/mutation/Precondition;

    .line 82
    iput-object p3, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->fieldTransforms:Ljava/util/List;

    .line 83
    return-void
.end method

.method public static calculateOverlayMutation(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/FieldMask;)Lcom/google/firebase/firestore/model/mutation/Mutation;
    .locals 8
    .param p0, "doc"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .param p1, "mask"    # Lcom/google/firebase/firestore/model/mutation/FieldMask;

    .line 92
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MutableDocument;->hasLocalMutations()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->getMask()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 97
    :cond_0
    if-nez p1, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MutableDocument;->isNoDocument()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/DeleteMutation;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/model/mutation/Precondition;->NONE:Lcom/google/firebase/firestore/model/mutation/Precondition;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/model/mutation/DeleteMutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)V

    return-object v0

    .line 101
    :cond_1
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/SetMutation;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MutableDocument;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/model/mutation/Precondition;->NONE:Lcom/google/firebase/firestore/model/mutation/Precondition;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/firestore/model/mutation/SetMutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/mutation/Precondition;)V

    return-object v0

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MutableDocument;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v0

    .line 105
    .local v0, "docValue":Lcom/google/firebase/firestore/model/ObjectValue;
    new-instance v1, Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-direct {v1}, Lcom/google/firebase/firestore/model/ObjectValue;-><init>()V

    .line 106
    .local v1, "patchValue":Lcom/google/firebase/firestore/model/ObjectValue;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 107
    .local v2, "maskSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/firebase/firestore/model/FieldPath;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->getMask()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/FieldPath;

    .line 108
    .local v4, "path":Lcom/google/firebase/firestore/model/FieldPath;
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 109
    invoke-virtual {v0, v4}, Lcom/google/firebase/firestore/model/ObjectValue;->get(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v5

    .line 118
    .local v5, "value":Lcom/google/firestore/v1/Value;
    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/FieldPath;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    .line 119
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/FieldPath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/google/firebase/firestore/model/FieldPath;

    .line 121
    :cond_3
    invoke-virtual {v0, v4}, Lcom/google/firebase/firestore/model/ObjectValue;->get(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lcom/google/firebase/firestore/model/ObjectValue;->set(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    .line 122
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v4    # "path":Lcom/google/firebase/firestore/model/FieldPath;
    .end local v5    # "value":Lcom/google/firestore/v1/Value;
    :cond_4
    goto :goto_0

    .line 125
    :cond_5
    new-instance v3, Lcom/google/firebase/firestore/model/mutation/PatchMutation;

    .line 126
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-static {v2}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->fromSet(Ljava/util/Set;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v5

    sget-object v6, Lcom/google/firebase/firestore/model/mutation/Precondition;->NONE:Lcom/google/firebase/firestore/model/mutation/Precondition;

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/mutation/FieldMask;Lcom/google/firebase/firestore/model/mutation/Precondition;)V

    .line 125
    return-object v3

    .line 93
    .end local v0    # "docValue":Lcom/google/firebase/firestore/model/ObjectValue;
    .end local v1    # "patchValue":Lcom/google/firebase/firestore/model/ObjectValue;
    .end local v2    # "maskSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/firebase/firestore/model/FieldPath;>;"
    :cond_6
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract applyToLocalView(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/FieldMask;Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/model/mutation/FieldMask;
.end method

.method public abstract applyToRemoteDocument(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/MutationResult;)V
.end method

.method public extractTransformBaseValue(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/model/ObjectValue;
    .locals 6
    .param p1, "document"    # Lcom/google/firebase/firestore/model/Document;

    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, "baseObject":Lcom/google/firebase/firestore/model/ObjectValue;
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    .line 247
    .local v2, "transform":Lcom/google/firebase/firestore/model/mutation/FieldTransform;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v3

    .line 248
    .local v3, "existingValue":Lcom/google/firestore/v1/Value;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getOperation()Lcom/google/firebase/firestore/model/mutation/TransformOperation;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/firebase/firestore/model/mutation/TransformOperation;->computeBaseValue(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 249
    .local v4, "coercedValue":Lcom/google/firestore/v1/Value;
    if-eqz v4, :cond_1

    .line 250
    if-nez v0, :cond_0

    .line 251
    new-instance v5, Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-direct {v5}, Lcom/google/firebase/firestore/model/ObjectValue;-><init>()V

    move-object v0, v5

    .line 253
    :cond_0
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/google/firebase/firestore/model/ObjectValue;->set(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    .line 255
    .end local v2    # "transform":Lcom/google/firebase/firestore/model/mutation/FieldTransform;
    .end local v3    # "existingValue":Lcom/google/firestore/v1/Value;
    .end local v4    # "coercedValue":Lcom/google/firestore/v1/Value;
    :cond_1
    goto :goto_0

    .line 257
    :cond_2
    return-object v0
.end method

.method public abstract getFieldMask()Lcom/google/firebase/firestore/model/mutation/FieldMask;
.end method

.method public getFieldTransforms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/FieldTransform;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->fieldTransforms:Ljava/util/List;

    return-object v0
.end method

.method public getKey()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    return-object v0
.end method

.method public getPrecondition()Lcom/google/firebase/firestore/model/mutation/Precondition;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->precondition:Lcom/google/firebase/firestore/model/mutation/Precondition;

    return-object v0
.end method

.method hasSameKeyAndPrecondition(Lcom/google/firebase/firestore/model/mutation/Mutation;)Z
    .locals 2
    .param p1, "other"    # Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 175
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object v1, p1, Lcom/google/firebase/firestore/model/mutation/Mutation;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->precondition:Lcom/google/firebase/firestore/model/mutation/Precondition;

    iget-object v1, p1, Lcom/google/firebase/firestore/model/mutation/Mutation;->precondition:Lcom/google/firebase/firestore/model/mutation/Precondition;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method keyAndPreconditionHashCode()I
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->precondition:Lcom/google/firebase/firestore/model/mutation/Precondition;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method keyAndPreconditionToString()Ljava/lang/String;
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", precondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->precondition:Lcom/google/firebase/firestore/model/mutation/Precondition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected localTransformResults(Lcom/google/firebase/Timestamp;Lcom/google/firebase/firestore/model/MutableDocument;)Ljava/util/Map;
    .locals 7
    .param p1, "localWriteTime"    # Lcom/google/firebase/Timestamp;
    .param p2, "mutableDocument"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/Timestamp;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ")",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/FieldPath;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 234
    .local v0, "transformResults":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    .line 235
    .local v2, "fieldTransform":Lcom/google/firebase/firestore/model/mutation/FieldTransform;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getOperation()Lcom/google/firebase/firestore/model/mutation/TransformOperation;

    move-result-object v3

    .line 236
    .local v3, "transform":Lcom/google/firebase/firestore/model/mutation/TransformOperation;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/firebase/firestore/model/MutableDocument;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 237
    .local v4, "previousValue":Lcom/google/firestore/v1/Value;
    nop

    .line 238
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    invoke-interface {v3, v4, p1}, Lcom/google/firebase/firestore/model/mutation/TransformOperation;->applyToLocalView(Lcom/google/firestore/v1/Value;Lcom/google/firebase/Timestamp;)Lcom/google/firestore/v1/Value;

    move-result-object v6

    .line 237
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .end local v2    # "fieldTransform":Lcom/google/firebase/firestore/model/mutation/FieldTransform;
    .end local v3    # "transform":Lcom/google/firebase/firestore/model/mutation/TransformOperation;
    .end local v4    # "previousValue":Lcom/google/firestore/v1/Value;
    goto :goto_0

    .line 240
    :cond_0
    return-object v0
.end method

.method protected serverTransformResults(Lcom/google/firebase/firestore/model/MutableDocument;Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .param p1, "mutableDocument"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/FieldPath;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 205
    .local p2, "serverTransformResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 206
    .local v0, "transformResults":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->fieldTransforms:Ljava/util/List;

    .line 207
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 209
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->fieldTransforms:Ljava/util/List;

    .line 210
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 206
    const-string v3, "server transform count (%d) should match field transform count (%d)"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 212
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->fieldTransforms:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    .line 214
    .local v2, "fieldTransform":Lcom/google/firebase/firestore/model/mutation/FieldTransform;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getOperation()Lcom/google/firebase/firestore/model/mutation/TransformOperation;

    move-result-object v3

    .line 215
    .local v3, "transform":Lcom/google/firebase/firestore/model/mutation/TransformOperation;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/firebase/firestore/model/MutableDocument;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 216
    .local v4, "previousValue":Lcom/google/firestore/v1/Value;
    nop

    .line 217
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    .line 218
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firestore/v1/Value;

    invoke-interface {v3, v4, v6}, Lcom/google/firebase/firestore/model/mutation/TransformOperation;->applyToRemoteDocument(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object v6

    .line 216
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .end local v2    # "fieldTransform":Lcom/google/firebase/firestore/model/mutation/FieldTransform;
    .end local v3    # "transform":Lcom/google/firebase/firestore/model/mutation/TransformOperation;
    .end local v4    # "previousValue":Lcom/google/firestore/v1/Value;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method verifyKeyMatches(Lcom/google/firebase/firestore/model/MutableDocument;)V
    .locals 3
    .param p1, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;

    .line 189
    nop

    .line 190
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 189
    const-string v2, "Can only apply a mutation to a document with the same key"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 192
    return-void
.end method
