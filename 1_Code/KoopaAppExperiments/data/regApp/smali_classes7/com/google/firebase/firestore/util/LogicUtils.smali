.class public Lcom/google/firebase/firestore/util/LogicUtils;
.super Ljava/lang/Object;
.source "LogicUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static applyAssociation(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 11
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 103
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->assertFieldFilterOrCompositeFilter(Lcom/google/firebase/firestore/core/Filter;)V

    .line 105
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->isSingleFieldFilter(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    return-object p0

    .line 109
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 112
    .local v0, "compositeFilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 116
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/Filter;

    invoke-static {v2}, Lcom/google/firebase/firestore/util/LogicUtils;->applyAssociation(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v2

    return-object v2

    .line 120
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isFlat()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    return-object v0

    .line 126
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v2, "updatedFilters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/core/Filter;

    .line 128
    .local v6, "subfilter":Lcom/google/firebase/firestore/core/Filter;
    invoke-static {v6}, Lcom/google/firebase/firestore/util/LogicUtils;->applyAssociation(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v6    # "subfilter":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 138
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v5, "newSubfilters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/core/Filter;

    .line 140
    .local v7, "subfilter":Lcom/google/firebase/firestore/core/Filter;
    instance-of v8, v7, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v8, :cond_4

    .line 141
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 142
    :cond_4
    instance-of v8, v7, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-eqz v8, :cond_6

    .line 143
    move-object v8, v7

    check-cast v8, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 144
    .local v8, "compositeSubfilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    invoke-virtual {v8}, Lcom/google/firebase/firestore/core/CompositeFilter;->getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object v9

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 148
    invoke-virtual {v8}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 153
    :cond_5
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v7    # "subfilter":Lcom/google/firebase/firestore/core/Filter;
    .end local v8    # "compositeSubfilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    :cond_6
    :goto_2
    goto :goto_1

    .line 157
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_8

    .line 158
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/Filter;

    return-object v3

    .line 160
    :cond_8
    new-instance v3, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    return-object v3
.end method

.method private static applyDistribution(Lcom/google/firebase/firestore/core/CompositeFilter;Lcom/google/firebase/firestore/core/CompositeFilter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 6
    .param p0, "lhs"    # Lcom/google/firebase/firestore/core/CompositeFilter;
    .param p1, "rhs"    # Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 224
    nop

    .line 225
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 224
    const-string v2, "Found an empty composite filter"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isConjunction()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/CompositeFilter;->isConjunction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->withAddedFilters(Ljava/util/List;)Lcom/google/firebase/firestore/core/CompositeFilter;

    move-result-object v0

    return-object v0

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isDisjunction()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    goto :goto_1

    :cond_2
    move-object v0, p1

    .line 243
    .local v0, "disjunctionSide":Lcom/google/firebase/firestore/core/CompositeFilter;
    :goto_1
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isDisjunction()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    goto :goto_2

    :cond_3
    move-object v1, p0

    .line 244
    .local v1, "otherSide":Lcom/google/firebase/firestore/core/CompositeFilter;
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/Filter;

    .line 246
    .local v4, "subfilter":Lcom/google/firebase/firestore/core/Filter;
    invoke-static {v4, v1}, Lcom/google/firebase/firestore/util/LogicUtils;->applyDistribution(Lcom/google/firebase/firestore/core/Filter;Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v4    # "subfilter":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_3

    .line 248
    :cond_4
    new-instance v3, Lcom/google/firebase/firestore/core/CompositeFilter;

    sget-object v4, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->OR:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-direct {v3, v2, v4}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    return-object v3
.end method

.method private static applyDistribution(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/core/CompositeFilter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 4
    .param p0, "fieldFilter"    # Lcom/google/firebase/firestore/core/FieldFilter;
    .param p1, "compositeFilter"    # Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 210
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/CompositeFilter;->isConjunction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->withAddedFilters(Ljava/util/List;)Lcom/google/firebase/firestore/core/CompositeFilter;

    move-result-object v0

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v0, "newFilters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/Filter;

    .line 217
    .local v2, "subfilter":Lcom/google/firebase/firestore/core/Filter;
    invoke-static {p0, v2}, Lcom/google/firebase/firestore/util/LogicUtils;->applyDistribution(Lcom/google/firebase/firestore/core/Filter;Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v2    # "subfilter":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 219
    :cond_1
    new-instance v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    sget-object v2, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->OR:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    return-object v1
.end method

.method private static applyDistribution(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/core/FieldFilter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 3
    .param p0, "lhs"    # Lcom/google/firebase/firestore/core/FieldFilter;
    .param p1, "rhs"    # Lcom/google/firebase/firestore/core/FieldFilter;

    .line 202
    new-instance v0, Lcom/google/firebase/firestore/core/CompositeFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/firebase/firestore/core/Filter;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->AND:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    return-object v0
.end method

.method protected static applyDistribution(Lcom/google/firebase/firestore/core/Filter;Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 2
    .param p0, "lhs"    # Lcom/google/firebase/firestore/core/Filter;
    .param p1, "rhs"    # Lcom/google/firebase/firestore/core/Filter;

    .line 182
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->assertFieldFilterOrCompositeFilter(Lcom/google/firebase/firestore/core/Filter;)V

    .line 183
    invoke-static {p1}, Lcom/google/firebase/firestore/util/LogicUtils;->assertFieldFilterOrCompositeFilter(Lcom/google/firebase/firestore/core/Filter;)V

    .line 185
    instance-of v0, p0, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v0, :cond_0

    .line 186
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/FieldFilter;

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/core/FieldFilter;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/LogicUtils;->applyDistribution(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/core/FieldFilter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v0

    .local v0, "result":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 187
    .end local v0    # "result":Lcom/google/firebase/firestore/core/Filter;
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-eqz v0, :cond_1

    .line 188
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/FieldFilter;

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/LogicUtils;->applyDistribution(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/core/CompositeFilter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v0

    .restart local v0    # "result":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 189
    .end local v0    # "result":Lcom/google/firebase/firestore/core/Filter;
    :cond_1
    instance-of v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v0, :cond_2

    .line 190
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/core/FieldFilter;

    move-object v1, p0

    check-cast v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/LogicUtils;->applyDistribution(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/core/CompositeFilter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v0

    .restart local v0    # "result":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 192
    .end local v0    # "result":Lcom/google/firebase/firestore/core/Filter;
    :cond_2
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/CompositeFilter;

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/LogicUtils;->applyDistribution(Lcom/google/firebase/firestore/core/CompositeFilter;Lcom/google/firebase/firestore/core/CompositeFilter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v0

    .line 197
    .restart local v0    # "result":Lcom/google/firebase/firestore/core/Filter;
    :goto_0
    invoke-static {v0}, Lcom/google/firebase/firestore/util/LogicUtils;->applyAssociation(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v1

    return-object v1
.end method

.method private static assertFieldFilterOrCompositeFilter(Lcom/google/firebase/firestore/core/Filter;)V
    .locals 3
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 37
    instance-of v0, p0, Lcom/google/firebase/firestore/core/FieldFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "Only field filters and composite filters are accepted."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method protected static computeDistributedNormalForm(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 9
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 252
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->assertFieldFilterOrCompositeFilter(Lcom/google/firebase/firestore/core/Filter;)V

    .line 254
    instance-of v0, p0, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v0, :cond_0

    .line 255
    return-object p0

    .line 258
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 260
    .local v0, "compositeFilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Filter;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Filter;

    invoke-static {v1}, Lcom/google/firebase/firestore/util/LogicUtils;->computeDistributedNormalForm(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v1

    return-object v1

    .line 265
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/core/Filter;

    .line 267
    .local v5, "subfilter":Lcom/google/firebase/firestore/core/Filter;
    invoke-static {v5}, Lcom/google/firebase/firestore/util/LogicUtils;->computeDistributedNormalForm(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v5    # "subfilter":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 269
    :cond_2
    new-instance v4, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    .line 270
    .local v4, "newFilter":Lcom/google/firebase/firestore/core/Filter;
    invoke-static {v4}, Lcom/google/firebase/firestore/util/LogicUtils;->applyAssociation(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v4

    .line 272
    invoke-static {v4}, Lcom/google/firebase/firestore/util/LogicUtils;->isDisjunctiveNormalForm(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 273
    return-object v4

    .line 276
    :cond_3
    instance-of v5, v4, Lcom/google/firebase/firestore/core/CompositeFilter;

    const-string v6, "field filters are already in DNF form."

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 277
    move-object v5, v4

    check-cast v5, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 278
    .local v5, "newCompositeFilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    nop

    .line 279
    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/CompositeFilter;->isConjunction()Z

    move-result v6

    new-array v7, v3, [Ljava/lang/Object;

    .line 278
    const-string v8, "Disjunction of filters all of which are already in DNF form is itself in DNF form."

    invoke-static {v6, v8, v7}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 281
    nop

    .line 282
    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    new-array v6, v3, [Ljava/lang/Object;

    .line 281
    const-string v7, "Single-filter composite filters are already in DNF form."

    invoke-static {v2, v7, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 284
    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/Filter;

    .line 285
    .local v2, "runningResult":Lcom/google/firebase/firestore/core/Filter;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 286
    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/core/Filter;

    invoke-static {v2, v6}, Lcom/google/firebase/firestore/util/LogicUtils;->applyDistribution(Lcom/google/firebase/firestore/core/Filter;Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v2

    .line 285
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 288
    .end local v3    # "i":I
    :cond_5
    return-object v2
.end method

.method protected static computeInExpansion(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 5
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 297
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->assertFieldFilterOrCompositeFilter(Lcom/google/firebase/firestore/core/Filter;)V

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v0, "expandedFilters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    instance-of v1, p0, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v1, :cond_2

    .line 302
    instance-of v1, p0, Lcom/google/firebase/firestore/core/InFilter;

    if-eqz v1, :cond_1

    .line 304
    move-object v1, p0

    check-cast v1, Lcom/google/firebase/firestore/core/InFilter;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/InFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    .line 305
    .local v2, "value":Lcom/google/firestore/v1/Value;
    move-object v3, p0

    check-cast v3, Lcom/google/firebase/firestore/core/InFilter;

    .line 307
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/InFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 306
    invoke-static {v3, v4, v2}, Lcom/google/firebase/firestore/core/FieldFilter;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object v3

    .line 305
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v2    # "value":Lcom/google/firestore/v1/Value;
    goto :goto_0

    .line 309
    :cond_0
    new-instance v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    sget-object v2, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->OR:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    return-object v1

    .line 312
    :cond_1
    return-object p0

    .line 317
    :cond_2
    move-object v1, p0

    check-cast v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 318
    .local v1, "compositeFilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/Filter;

    .line 319
    .local v3, "subfilter":Lcom/google/firebase/firestore/core/Filter;
    invoke-static {v3}, Lcom/google/firebase/firestore/util/LogicUtils;->computeInExpansion(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v3    # "subfilter":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_1

    .line 321
    :cond_3
    new-instance v2, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/CompositeFilter;->getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    return-object v2
.end method

.method public static getDnfTerms(Lcom/google/firebase/firestore/core/CompositeFilter;)Ljava/util/List;
    .locals 4
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/CompositeFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/CompositeFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;"
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 342
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->computeInExpansion(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/util/LogicUtils;->computeDistributedNormalForm(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v0

    .line 344
    .local v0, "result":Lcom/google/firebase/firestore/core/Filter;
    nop

    .line 345
    invoke-static {v0}, Lcom/google/firebase/firestore/util/LogicUtils;->isDisjunctiveNormalForm(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 344
    const-string v3, "computeDistributedNormalForm did not result in disjunctive normal form"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 348
    invoke-static {v0}, Lcom/google/firebase/firestore/util/LogicUtils;->isSingleFieldFilter(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/google/firebase/firestore/util/LogicUtils;->isFlatConjunction(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Filter;->getFilters()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 349
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static isDisjunctionOfFieldFiltersAndFlatConjunctions(Lcom/google/firebase/firestore/core/Filter;)Z
    .locals 5
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 60
    instance-of v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 61
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 62
    .local v0, "compositeFilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isDisjunction()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/Filter;

    .line 64
    .local v3, "subfilter":Lcom/google/firebase/firestore/core/Filter;
    invoke-static {v3}, Lcom/google/firebase/firestore/util/LogicUtils;->isSingleFieldFilter(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/google/firebase/firestore/util/LogicUtils;->isFlatConjunction(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    return v1

    .line 67
    .end local v3    # "subfilter":Lcom/google/firebase/firestore/core/Filter;
    :cond_0
    goto :goto_0

    .line 68
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 71
    .end local v0    # "compositeFilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    :cond_2
    return v1
.end method

.method private static isDisjunctiveNormalForm(Lcom/google/firebase/firestore/core/Filter;)Z
    .locals 1
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 87
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->isSingleFieldFilter(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->isFlatConjunction(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-static {p0}, Lcom/google/firebase/firestore/util/LogicUtils;->isDisjunctionOfFieldFiltersAndFlatConjunctions(Lcom/google/firebase/firestore/core/Filter;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 87
    :goto_1
    return v0
.end method

.method private static isFlatConjunction(Lcom/google/firebase/firestore/core/Filter;)Z
    .locals 1
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 52
    instance-of v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isFlatConjunction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSingleFieldFilter(Lcom/google/firebase/firestore/core/Filter;)Z
    .locals 1
    .param p0, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 44
    instance-of v0, p0, Lcom/google/firebase/firestore/core/FieldFilter;

    return v0
.end method
