.class public Lcom/google/firebase/firestore/core/KeyFieldFilter;
.super Lcom/google/firebase/firestore/core/FieldFilter;
.source "KeyFieldFilter.java"


# instance fields
.field private final key:Lcom/google/firebase/firestore/model/DocumentKey;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)V
    .locals 3
    .param p1, "field"    # Lcom/google/firebase/firestore/model/FieldPath;
    .param p2, "operator"    # Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    .param p3, "value"    # Lcom/google/firestore/v1/Value;

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/core/FieldFilter;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)V

    .line 31
    invoke-static {p3}, Lcom/google/firebase/firestore/model/Values;->isReferenceValue(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "KeyFieldFilter expects a ReferenceValue"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/KeyFieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getReferenceValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->fromName(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/KeyFieldFilter;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 33
    return-void
.end method


# virtual methods
.method public matches(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 2
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    .line 37
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/KeyFieldFilter;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/DocumentKey;->compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result v0

    .line 38
    .local v0, "comparator":I
    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/core/KeyFieldFilter;->matchesComparison(I)Z

    move-result v1

    return v1
.end method
