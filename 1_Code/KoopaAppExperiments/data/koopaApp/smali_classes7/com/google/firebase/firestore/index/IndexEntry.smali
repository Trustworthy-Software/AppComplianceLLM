.class public abstract Lcom/google/firebase/firestore/index/IndexEntry;
.super Ljava/lang/Object;
.source "IndexEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/firestore/index/IndexEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILcom/google/firebase/firestore/model/DocumentKey;[B[B)Lcom/google/firebase/firestore/index/IndexEntry;
    .locals 1
    .param p0, "indexId"    # I
    .param p1, "documentKey"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "arrayValue"    # [B
    .param p3, "directionalValue"    # [B

    .line 28
    new-instance v0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;-><init>(ILcom/google/firebase/firestore/model/DocumentKey;[B[B)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/index/IndexEntry;)I
    .locals 3
    .param p1, "other"    # Lcom/google/firebase/firestore/index/IndexEntry;

    .line 43
    invoke-virtual {p0}, Lcom/google/firebase/firestore/index/IndexEntry;->getIndexId()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/index/IndexEntry;->getIndexId()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 44
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    return v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/index/IndexEntry;->getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/index/IndexEntry;->getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/DocumentKey;->compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result v0

    .line 47
    if-eqz v0, :cond_1

    return v0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/firestore/index/IndexEntry;->getArrayValue()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/index/IndexEntry;->getArrayValue()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Util;->compareByteArrays([B[B)I

    move-result v0

    .line 50
    if-eqz v0, :cond_2

    return v0

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/index/IndexEntry;->getDirectionalValue()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/index/IndexEntry;->getDirectionalValue()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Util;->compareByteArrays([B[B)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/google/firebase/firestore/index/IndexEntry;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/index/IndexEntry;->compareTo(Lcom/google/firebase/firestore/index/IndexEntry;)I

    move-result p1

    return p1
.end method

.method public abstract getArrayValue()[B
.end method

.method public abstract getDirectionalValue()[B
.end method

.method public abstract getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;
.end method

.method public abstract getIndexId()I
.end method
