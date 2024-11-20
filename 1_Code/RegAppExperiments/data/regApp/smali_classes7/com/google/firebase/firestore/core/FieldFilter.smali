.class public Lcom/google/firebase/firestore/core/FieldFilter;
.super Lcom/google/firebase/firestore/core/Filter;
.source "FieldFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    }
.end annotation


# instance fields
.field private final field:Lcom/google/firebase/firestore/model/FieldPath;

.field private final operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

.field private final value:Lcom/google/firestore/v1/Value;


# direct methods
.method protected constructor <init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p1, "field"    # Lcom/google/firebase/firestore/model/FieldPath;
    .param p2, "operator"    # Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    .param p3, "value"    # Lcom/google/firestore/v1/Value;

    .line 64
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/Filter;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/firebase/firestore/core/FieldFilter;->field:Lcom/google/firebase/firestore/model/FieldPath;

    .line 66
    iput-object p2, p0, Lcom/google/firebase/firestore/core/FieldFilter;->operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 67
    iput-object p3, p0, Lcom/google/firebase/firestore/core/FieldFilter;->value:Lcom/google/firestore/v1/Value;

    .line 68
    return-void
.end method

.method public static create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/core/FieldFilter;
    .locals 4
    .param p0, "path"    # Lcom/google/firebase/firestore/model/FieldPath;
    .param p1, "operator"    # Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 89
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/FieldPath;->isKeyField()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne p1, v0, :cond_0

    .line 91
    new-instance v0, Lcom/google/firebase/firestore/core/KeyFieldInFilter;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/firestore/core/KeyFieldInFilter;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    return-object v0

    .line 92
    :cond_0
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne p1, v0, :cond_1

    .line 93
    new-instance v0, Lcom/google/firebase/firestore/core/KeyFieldNotInFilter;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/firestore/core/KeyFieldNotInFilter;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    return-object v0

    .line 95
    :cond_1
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "queries don\'t make sense on document keys"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 95
    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 98
    new-instance v0, Lcom/google/firebase/firestore/core/KeyFieldFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/core/KeyFieldFilter;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)V

    return-object v0

    .line 100
    :cond_3
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne p1, v0, :cond_4

    .line 101
    new-instance v0, Lcom/google/firebase/firestore/core/ArrayContainsFilter;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/firestore/core/ArrayContainsFilter;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    return-object v0

    .line 102
    :cond_4
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne p1, v0, :cond_5

    .line 103
    new-instance v0, Lcom/google/firebase/firestore/core/InFilter;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/firestore/core/InFilter;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    return-object v0

    .line 104
    :cond_5
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne p1, v0, :cond_6

    .line 105
    new-instance v0, Lcom/google/firebase/firestore/core/ArrayContainsAnyFilter;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/firestore/core/ArrayContainsAnyFilter;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    return-object v0

    .line 106
    :cond_6
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne p1, v0, :cond_7

    .line 107
    new-instance v0, Lcom/google/firebase/firestore/core/NotInFilter;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/firestore/core/NotInFilter;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    return-object v0

    .line 109
    :cond_7
    new-instance v0, Lcom/google/firebase/firestore/core/FieldFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/core/FieldFilter;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 182
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/google/firebase/firestore/core/FieldFilter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 186
    .local v1, "other":Lcom/google/firebase/firestore/core/FieldFilter;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/FieldFilter;->operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    iget-object v3, v1, Lcom/google/firebase/firestore/core/FieldFilter;->operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/firebase/firestore/core/FieldFilter;->field:Lcom/google/firebase/firestore/model/FieldPath;

    iget-object v3, v1, Lcom/google/firebase/firestore/core/FieldFilter;->field:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/firestore/core/FieldFilter;->value:Lcom/google/firestore/v1/Value;

    iget-object v3, v1, Lcom/google/firebase/firestore/core/FieldFilter;->value:Lcom/google/firestore/v1/Value;

    invoke-virtual {v2, v3}, Lcom/google/firestore/v1/Value;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 183
    .end local v1    # "other":Lcom/google/firebase/firestore/core/FieldFilter;
    :cond_2
    :goto_0
    return v0
.end method

.method public getCanonicalId()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->canonicalId(Lcom/google/firestore/v1/Value;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lcom/google/firebase/firestore/model/FieldPath;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FieldFilter;->field:Lcom/google/firebase/firestore/model/FieldPath;

    return-object v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFlattenedFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/FieldFilter;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FieldFilter;->operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    return-object v0
.end method

.method public getValue()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FieldFilter;->value:Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 191
    const/16 v0, 0x25

    .line 192
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/FieldFilter;->operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 193
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/FieldFilter;->field:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldPath;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 194
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/FieldFilter;->value:Lcom/google/firestore/v1/Value;

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 195
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isInequality()Z
    .locals 3

    .line 146
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->LESS_THAN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->LESS_THAN_OR_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->GREATER_THAN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->GREATER_THAN_OR_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/FieldFilter;->operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 146
    return v0
.end method

.method public matches(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 5
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    .line 115
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FieldFilter;->field:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-interface {p1, v0}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    .line 117
    .local v0, "other":Lcom/google/firestore/v1/Value;
    iget-object v1, p0, Lcom/google/firebase/firestore/core/FieldFilter;->operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    .line 118
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/FieldFilter;->value:Lcom/google/firestore/v1/Value;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/model/Values;->compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/core/FieldFilter;->matchesComparison(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    .line 121
    :cond_1
    if-eqz v0, :cond_2

    .line 122
    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->typeOrder(Lcom/google/firestore/v1/Value;)I

    move-result v1

    iget-object v2, p0, Lcom/google/firebase/firestore/core/FieldFilter;->value:Lcom/google/firestore/v1/Value;

    invoke-static {v2}, Lcom/google/firebase/firestore/model/Values;->typeOrder(Lcom/google/firestore/v1/Value;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/firebase/firestore/core/FieldFilter;->value:Lcom/google/firestore/v1/Value;

    .line 123
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/model/Values;->compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/core/FieldFilter;->matchesComparison(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 121
    :goto_1
    return v3
.end method

.method protected matchesComparison(I)Z
    .locals 3
    .param p1, "comp"    # I

    .line 127
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    iget-object v1, p0, Lcom/google/firebase/firestore/core/FieldFilter;->operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 141
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FieldFilter;->operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Unknown FieldFilter operator: %s"

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 139
    :pswitch_0
    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 137
    :pswitch_1
    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    .line 135
    :pswitch_2
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    .line 133
    :pswitch_3
    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1

    .line 131
    :pswitch_4
    if-gtz p1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    return v1

    .line 129
    :pswitch_5
    if-gez p1, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/FieldFilter;->getCanonicalId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
