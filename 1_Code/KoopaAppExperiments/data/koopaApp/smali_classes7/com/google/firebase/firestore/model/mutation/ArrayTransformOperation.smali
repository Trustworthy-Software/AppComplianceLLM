.class public abstract Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;
.super Ljava/lang/Object;
.source "ArrayTransformOperation.java"

# interfaces
.implements Lcom/google/firebase/firestore/model/mutation/TransformOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Remove;,
        Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Union;
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;->elements:Ljava/util/List;

    .line 35
    return-void
.end method

.method static coercedFieldValuesArray(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1
    .param p0, "value"    # Lcom/google/firestore/v1/Value;

    .line 89
    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->isArray(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ArrayValue$Builder;

    return-object v0

    .line 93
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->newBuilder()Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract apply(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
.end method

.method public applyToLocalView(Lcom/google/firestore/v1/Value;Lcom/google/firebase/Timestamp;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "previousValue"    # Lcom/google/firestore/v1/Value;
    .param p2, "localWriteTime"    # Lcom/google/firebase/Timestamp;

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;->apply(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public applyToRemoteDocument(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "previousValue"    # Lcom/google/firestore/v1/Value;
    .param p2, "transformResult"    # Lcom/google/firestore/v1/Value;

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;->apply(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public computeBaseValue(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "currentValue"    # Lcom/google/firestore/v1/Value;

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 62
    if-ne p0, p1, :cond_0

    .line 63
    const/4 v0, 0x1

    return v0

    .line 65
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;

    .line 71
    .local v0, "that":Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;->elements:Ljava/util/List;

    iget-object v2, v0, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;->elements:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 66
    .end local v0    # "that":Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;->elements:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 77
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;->elements:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 78
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
