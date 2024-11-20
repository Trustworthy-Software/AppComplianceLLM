.class public Lcom/google/firebase/firestore/core/ArrayContainsAnyFilter;
.super Lcom/google/firebase/firestore/core/FieldFilter;
.source "ArrayContainsAnyFilter.java"


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V
    .locals 3
    .param p1, "field"    # Lcom/google/firebase/firestore/model/FieldPath;
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 27
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/firestore/core/FieldFilter;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)V

    .line 28
    invoke-static {p2}, Lcom/google/firebase/firestore/model/Values;->isArray(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ArrayContainsAnyFilter expects an ArrayValue"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method


# virtual methods
.method public matches(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 5
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    .line 33
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/ArrayContainsAnyFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    .line 34
    .local v0, "other":Lcom/google/firestore/v1/Value;
    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->isArray(Lcom/google/firestore/v1/Value;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 35
    return v2

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/Value;

    .line 38
    .local v3, "val":Lcom/google/firestore/v1/Value;
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/ArrayContainsAnyFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/firebase/firestore/model/Values;->contains(Lcom/google/firestore/v1/ArrayValueOrBuilder;Lcom/google/firestore/v1/Value;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    const/4 v1, 0x1

    return v1

    .line 41
    .end local v3    # "val":Lcom/google/firestore/v1/Value;
    :cond_1
    goto :goto_0

    .line 42
    :cond_2
    return v2
.end method
