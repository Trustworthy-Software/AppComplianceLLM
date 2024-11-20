.class public Lcom/google/firebase/firestore/core/CompositeFilter;
.super Lcom/google/firebase/firestore/core/Filter;
.source "CompositeFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
    }
.end annotation


# instance fields
.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedFlattenedFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/FieldFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V
    .locals 1
    .param p2, "operator"    # Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;",
            "Lcom/google/firebase/firestore/core/CompositeFilter$Operator;",
            ")V"
        }
    .end annotation

    .line 50
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/Filter;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    .line 52
    iput-object p2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    .line 53
    return-void
.end method

.method private findFirstMatchingFilter(Lcom/google/firebase/firestore/util/Function;)Lcom/google/firebase/firestore/core/FieldFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/core/FieldFilter;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/firebase/firestore/core/FieldFilter;"
        }
    .end annotation

    .line 119
    .local p1, "condition":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<Lcom/google/firebase/firestore/core/FieldFilter;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFlattenedFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 120
    .local v1, "filter":Lcom/google/firebase/firestore/core/FieldFilter;
    invoke-interface {p1, v1}, Lcom/google/firebase/firestore/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    return-object v1

    .line 123
    .end local v1    # "filter":Lcom/google/firebase/firestore/core/FieldFilter;
    :cond_0
    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 177
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 183
    .local v1, "other":Lcom/google/firebase/firestore/core/CompositeFilter;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    iget-object v3, v1, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    iget-object v3, v1, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 178
    .end local v1    # "other":Lcom/google/firebase/firestore/core/CompositeFilter;
    :cond_2
    :goto_0
    return v0
.end method

.method public getCanonicalId()Ljava/lang/String;
    .locals 4

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isFlatConjunction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/Filter;

    .line 159
    .local v2, "filter":Lcom/google/firebase/firestore/core/Filter;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Filter;->getCanonicalId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .end local v2    # "filter":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 164
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, ","

    iget-object v2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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

    .line 57
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFlattenedFilters()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/FieldFilter;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->memoizedFlattenedFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 67
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->memoizedFlattenedFilters:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Filter;

    .line 71
    .local v1, "subfilter":Lcom/google/firebase/firestore/core/Filter;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->memoizedFlattenedFilters:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Filter;->getFlattenedFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    .end local v1    # "subfilter":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->memoizedFlattenedFilters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 188
    const/16 v0, 0x25

    .line 189
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 190
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 191
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isConjunction()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    sget-object v1, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->AND:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisjunction()Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    sget-object v1, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->OR:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFlat()Z
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Filter;

    .line 96
    .local v1, "filter":Lcom/google/firebase/firestore/core/Filter;
    instance-of v2, v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-eqz v2, :cond_0

    .line 97
    const/4 v0, 0x0

    return v0

    .line 99
    .end local v1    # "filter":Lcom/google/firebase/firestore/core/Filter;
    :cond_0
    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isFlatConjunction()Z
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isFlat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isConjunction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matches(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 5
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    .line 129
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->isConjunction()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/Filter;

    .line 132
    .local v3, "filter":Lcom/google/firebase/firestore/core/Filter;
    invoke-virtual {v3, p1}, Lcom/google/firebase/firestore/core/Filter;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    return v2

    .line 135
    .end local v3    # "filter":Lcom/google/firebase/firestore/core/Filter;
    :cond_0
    goto :goto_0

    .line 136
    :cond_1
    return v1

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/Filter;

    .line 140
    .restart local v3    # "filter":Lcom/google/firebase/firestore/core/Filter;
    invoke-virtual {v3, p1}, Lcom/google/firebase/firestore/core/Filter;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    return v1

    .line 143
    .end local v3    # "filter":Lcom/google/firebase/firestore/core/Filter;
    :cond_3
    goto :goto_1

    .line 144
    :cond_4
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/CompositeFilter;->getCanonicalId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAddedFilters(Ljava/util/List;)Lcom/google/firebase/firestore/core/CompositeFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;)",
            "Lcom/google/firebase/firestore/core/CompositeFilter;"
        }
    .end annotation

    .line 107
    .local p1, "otherFilters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->filters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    .local v0, "mergedFilters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    new-instance v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    return-object v1
.end method
