.class public Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Union;
.super Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;
.source "ArrayTransformOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Union"
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

    .line 100
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;-><init>(Ljava/util/List;)V

    .line 101
    return-void
.end method


# virtual methods
.method protected apply(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 4
    .param p1, "previousValue"    # Lcom/google/firestore/v1/Value;

    .line 105
    invoke-static {p1}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Union;->coercedFieldValuesArray(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v0

    .line 106
    .local v0, "result":Lcom/google/firestore/v1/ArrayValue$Builder;
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Union;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    .line 107
    .local v2, "unionElement":Lcom/google/firestore/v1/Value;
    invoke-static {v0, v2}, Lcom/google/firebase/firestore/model/Values;->contains(Lcom/google/firestore/v1/ArrayValueOrBuilder;Lcom/google/firestore/v1/Value;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    invoke-virtual {v0, v2}, Lcom/google/firestore/v1/ArrayValue$Builder;->addValues(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;

    .line 110
    .end local v2    # "unionElement":Lcom/google/firestore/v1/Value;
    :cond_0
    goto :goto_0

    .line 111
    :cond_1
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firestore/v1/Value$Builder;->setArrayValue(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    return-object v1
.end method
