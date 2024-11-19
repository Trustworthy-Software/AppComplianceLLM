.class Lcom/google/firebase/firestore/Filter$CompositeFilter;
.super Lcom/google/firebase/firestore/Filter;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompositeFilter"
.end annotation


# instance fields
.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private final operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V
    .locals 0
    .param p2, "operator"    # Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/Filter;",
            ">;",
            "Lcom/google/firebase/firestore/core/CompositeFilter$Operator;",
            ")V"
        }
    .end annotation

    .line 80
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/Filter;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/Filter;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/firebase/firestore/Filter$CompositeFilter;->filters:Ljava/util/List;

    .line 82
    iput-object p2, p0, Lcom/google/firebase/firestore/Filter$CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    .line 83
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 96
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/Filter$CompositeFilter;

    .line 100
    .local v2, "that":Lcom/google/firebase/firestore/Filter$CompositeFilter;
    iget-object v3, p0, Lcom/google/firebase/firestore/Filter$CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    iget-object v4, v2, Lcom/google/firebase/firestore/Filter$CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/Filter$CompositeFilter;->filters:Ljava/util/List;

    iget-object v4, v2, Lcom/google/firebase/firestore/Filter$CompositeFilter;->filters:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 96
    .end local v2    # "that":Lcom/google/firebase/firestore/Filter$CompositeFilter;
    :cond_3
    :goto_1
    return v1
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/Filter;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/firebase/firestore/Filter$CompositeFilter;->filters:Ljava/util/List;

    return-object v0
.end method

.method public getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/firebase/firestore/Filter$CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/google/firebase/firestore/Filter$CompositeFilter;->filters:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 106
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/firebase/firestore/Filter$CompositeFilter;->operator:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 107
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method
