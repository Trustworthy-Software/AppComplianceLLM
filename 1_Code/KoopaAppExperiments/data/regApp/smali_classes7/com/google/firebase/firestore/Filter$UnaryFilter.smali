.class Lcom/google/firebase/firestore/Filter$UnaryFilter;
.super Lcom/google/firebase/firestore/Filter;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnaryFilter"
.end annotation


# instance fields
.field private final field:Lcom/google/firebase/firestore/FieldPath;

.field private final operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Ljava/lang/Object;)V
    .locals 0
    .param p1, "field"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "operator"    # Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    .param p3, "value"    # Ljava/lang/Object;

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/firestore/Filter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/firebase/firestore/Filter$UnaryFilter;->field:Lcom/google/firebase/firestore/FieldPath;

    .line 36
    iput-object p2, p0, Lcom/google/firebase/firestore/Filter$UnaryFilter;->operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 37
    iput-object p3, p0, Lcom/google/firebase/firestore/Filter$UnaryFilter;->value:Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 56
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 58
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    .line 60
    .local v2, "that":Lcom/google/firebase/firestore/Filter$UnaryFilter;
    iget-object v3, p0, Lcom/google/firebase/firestore/Filter$UnaryFilter;->operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    iget-object v4, v2, Lcom/google/firebase/firestore/Filter$UnaryFilter;->operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/Filter$UnaryFilter;->field:Lcom/google/firebase/firestore/FieldPath;

    iget-object v4, v2, Lcom/google/firebase/firestore/Filter$UnaryFilter;->field:Lcom/google/firebase/firestore/FieldPath;

    .line 61
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/Filter$UnaryFilter;->value:Ljava/lang/Object;

    iget-object v4, v2, Lcom/google/firebase/firestore/Filter$UnaryFilter;->value:Ljava/lang/Object;

    .line 62
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 60
    :goto_0
    return v0

    .line 56
    .end local v2    # "that":Lcom/google/firebase/firestore/Filter$UnaryFilter;
    :cond_3
    :goto_1
    return v1
.end method

.method public getField()Lcom/google/firebase/firestore/FieldPath;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/firebase/firestore/Filter$UnaryFilter;->field:Lcom/google/firebase/firestore/FieldPath;

    return-object v0
.end method

.method public getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/firebase/firestore/Filter$UnaryFilter;->operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/firebase/firestore/Filter$UnaryFilter;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/google/firebase/firestore/Filter$UnaryFilter;->field:Lcom/google/firebase/firestore/FieldPath;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FieldPath;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 68
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/firebase/firestore/Filter$UnaryFilter;->operator:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v2, v3

    .line 69
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lcom/google/firebase/firestore/Filter$UnaryFilter;->value:Ljava/lang/Object;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    .line 70
    .end local v2    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
