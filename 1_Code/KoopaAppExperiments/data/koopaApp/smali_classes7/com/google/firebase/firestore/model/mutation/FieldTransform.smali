.class public final Lcom/google/firebase/firestore/model/mutation/FieldTransform;
.super Ljava/lang/Object;
.source "FieldTransform.java"


# instance fields
.field private final fieldPath:Lcom/google/firebase/firestore/model/FieldPath;

.field private final operation:Lcom/google/firebase/firestore/model/mutation/TransformOperation;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/mutation/TransformOperation;)V
    .locals 0
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/model/FieldPath;
    .param p2, "operation"    # Lcom/google/firebase/firestore/model/mutation/TransformOperation;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->fieldPath:Lcom/google/firebase/firestore/model/FieldPath;

    .line 27
    iput-object p2, p0, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->operation:Lcom/google/firebase/firestore/model/mutation/TransformOperation;

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 40
    if-ne p0, p1, :cond_0

    .line 41
    const/4 v0, 0x1

    return v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    .line 49
    .local v1, "that":Lcom/google/firebase/firestore/model/mutation/FieldTransform;
    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->fieldPath:Lcom/google/firebase/firestore/model/FieldPath;

    iget-object v3, v1, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->fieldPath:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 50
    return v0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->operation:Lcom/google/firebase/firestore/model/mutation/TransformOperation;

    iget-object v2, v1, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->operation:Lcom/google/firebase/firestore/model/mutation/TransformOperation;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 44
    .end local v1    # "that":Lcom/google/firebase/firestore/model/mutation/FieldTransform;
    :cond_3
    :goto_0
    return v0
.end method

.method public getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->fieldPath:Lcom/google/firebase/firestore/model/FieldPath;

    return-object v0
.end method

.method public getOperation()Lcom/google/firebase/firestore/model/mutation/TransformOperation;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->operation:Lcom/google/firebase/firestore/model/mutation/TransformOperation;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->fieldPath:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/FieldPath;->hashCode()I

    move-result v0

    .line 58
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->operation:Lcom/google/firebase/firestore/model/mutation/TransformOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 59
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
