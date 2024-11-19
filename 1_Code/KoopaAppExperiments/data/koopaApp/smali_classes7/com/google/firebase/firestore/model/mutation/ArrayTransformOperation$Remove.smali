.class public Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Remove;
.super Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;
.source "ArrayTransformOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Remove"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;-><init>(Ljava/util/List;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected apply(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 5
    .param p1, "previousValue"    # Lcom/google/firestore/v1/Value;

    .line 123
    invoke-static {p1}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Remove;->coercedFieldValuesArray(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v0

    .line 124
    .local v0, "result":Lcom/google/firestore/v1/ArrayValue$Builder;
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Remove;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    .line 125
    .local v2, "removeElement":Lcom/google/firestore/v1/Value;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue$Builder;->getValuesCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 126
    invoke-virtual {v0, v3}, Lcom/google/firestore/v1/ArrayValue$Builder;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/firebase/firestore/model/Values;->equals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    invoke-virtual {v0, v3}, Lcom/google/firestore/v1/ArrayValue$Builder;->removeValues(I)Lcom/google/firestore/v1/ArrayValue$Builder;

    goto :goto_1

    .line 129
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    .end local v2    # "removeElement":Lcom/google/firestore/v1/Value;
    .end local v3    # "i":I
    :cond_1
    goto :goto_0

    .line 133
    :cond_2
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firestore/v1/Value$Builder;->setArrayValue(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    return-object v1
.end method
