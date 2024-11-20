.class public final Lcom/google/firebase/firestore/core/Bound;
.super Ljava/lang/Object;
.source "Bound.java"


# instance fields
.field private final inclusive:Z

.field private final position:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;Z)V"
        }
    .end annotation

    .line 50
    .local p1, "position":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/firebase/firestore/core/Bound;->position:Ljava/util/List;

    .line 52
    iput-boolean p2, p0, Lcom/google/firebase/firestore/core/Bound;->inclusive:Z

    .line 53
    return-void
.end method

.method private compareToDocument(Ljava/util/List;Lcom/google/firebase/firestore/model/Document;)I
    .locals 10
    .param p2, "document"    # Lcom/google/firebase/firestore/model/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;",
            "Lcom/google/firebase/firestore/model/Document;",
            ")I"
        }
    .end annotation

    .line 95
    .local p1, "orderBy":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Bound;->position:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v1, "Bound has more components than query\'s orderBy"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "comparison":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/firebase/firestore/core/Bound;->position:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 98
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/OrderBy;

    .line 99
    .local v4, "orderByComponent":Lcom/google/firebase/firestore/core/OrderBy;
    iget-object v5, p0, Lcom/google/firebase/firestore/core/Bound;->position:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firestore/v1/Value;

    .line 100
    .local v5, "component":Lcom/google/firestore/v1/Value;
    iget-object v6, v4, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    sget-object v7, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    nop

    .line 102
    invoke-static {v5}, Lcom/google/firebase/firestore/model/Values;->isReferenceValue(Lcom/google/firestore/v1/Value;)Z

    move-result v6

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    .line 101
    const-string v8, "Bound has a non-key value where the key path is being used %s"

    invoke-static {v6, v8, v7}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 105
    nop

    .line 106
    invoke-virtual {v5}, Lcom/google/firestore/v1/Value;->getReferenceValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/firebase/firestore/model/DocumentKey;->fromName(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v6

    invoke-interface {p2}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/model/DocumentKey;->compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result v0

    goto :goto_3

    .line 108
    :cond_1
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v6

    .line 109
    .local v6, "docValue":Lcom/google/firestore/v1/Value;
    if-eqz v6, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    const-string v8, "Field should exist since document matched the orderBy already."

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-static {v5, v6}, Lcom/google/firebase/firestore/model/Values;->compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v0

    .line 114
    .end local v6    # "docValue":Lcom/google/firestore/v1/Value;
    :goto_3
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/OrderBy;->getDirection()Lcom/google/firebase/firestore/core/OrderBy$Direction;

    move-result-object v6

    sget-object v7, Lcom/google/firebase/firestore/core/OrderBy$Direction;->DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/core/OrderBy$Direction;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 115
    mul-int/lit8 v0, v0, -0x1

    .line 118
    :cond_3
    if-eqz v0, :cond_4

    .line 119
    goto :goto_4

    .line 97
    .end local v4    # "orderByComponent":Lcom/google/firebase/firestore/core/OrderBy;
    .end local v5    # "component":Lcom/google/firestore/v1/Value;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    .end local v1    # "i":I
    :cond_5
    :goto_4
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 128
    return v0

    .line 130
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 134
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/core/Bound;

    .line 136
    .local v2, "bound":Lcom/google/firebase/firestore/core/Bound;
    iget-boolean v3, p0, Lcom/google/firebase/firestore/core/Bound;->inclusive:Z

    iget-boolean v4, v2, Lcom/google/firebase/firestore/core/Bound;->inclusive:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Bound;->position:Ljava/util/List;

    iget-object v4, v2, Lcom/google/firebase/firestore/core/Bound;->position:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 131
    .end local v2    # "bound":Lcom/google/firebase/firestore/core/Bound;
    :cond_3
    :goto_1
    return v1
.end method

.method public getPosition()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Bound;->position:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 141
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/Bound;->inclusive:Z

    .line 142
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Bound;->position:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 143
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isInclusive()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/Bound;->inclusive:Z

    return v0
.end method

.method public positionString()Ljava/lang/String;
    .locals 5

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 72
    .local v1, "first":Z
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Bound;->position:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/Value;

    .line 73
    .local v3, "indexComponent":Lcom/google/firestore/v1/Value;
    if-nez v1, :cond_0

    .line 74
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    const/4 v1, 0x0

    .line 77
    invoke-static {v3}, Lcom/google/firebase/firestore/model/Values;->canonicalId(Lcom/google/firestore/v1/Value;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .end local v3    # "indexComponent":Lcom/google/firestore/v1/Value;
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public sortsAfterDocument(Ljava/util/List;Lcom/google/firebase/firestore/model/Document;)Z
    .locals 4
    .param p2, "document"    # Lcom/google/firebase/firestore/model/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;",
            "Lcom/google/firebase/firestore/model/Document;",
            ")Z"
        }
    .end annotation

    .line 90
    .local p1, "orderBy":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/core/Bound;->compareToDocument(Ljava/util/List;Lcom/google/firebase/firestore/model/Document;)I

    move-result v0

    .line 91
    .local v0, "comparison":I
    iget-boolean v1, p0, Lcom/google/firebase/firestore/core/Bound;->inclusive:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public sortsBeforeDocument(Ljava/util/List;Lcom/google/firebase/firestore/model/Document;)Z
    .locals 4
    .param p2, "document"    # Lcom/google/firebase/firestore/model/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;",
            "Lcom/google/firebase/firestore/model/Document;",
            ")Z"
        }
    .end annotation

    .line 84
    .local p1, "orderBy":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/core/Bound;->compareToDocument(Ljava/util/List;Lcom/google/firebase/firestore/model/Document;)I

    move-result v0

    .line 85
    .local v0, "comparison":I
    iget-boolean v1, p0, Lcom/google/firebase/firestore/core/Bound;->inclusive:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Bound(inclusive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-boolean v1, p0, Lcom/google/firebase/firestore/core/Bound;->inclusive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Bound;->position:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 153
    if-lez v1, :cond_0

    .line 154
    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Bound;->position:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    invoke-static {v2}, Lcom/google/firebase/firestore/model/Values;->canonicalId(Lcom/google/firestore/v1/Value;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
