.class public abstract Lcom/google/firebase/firestore/AggregateField;
.super Ljava/lang/Object;
.source "AggregateField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;,
        Lcom/google/firebase/firestore/AggregateField$SumAggregateField;,
        Lcom/google/firebase/firestore/AggregateField$CountAggregateField;
    }
.end annotation


# instance fields
.field private final alias:Ljava/lang/String;

.field private final fieldPath:Lcom/google/firebase/firestore/FieldPath;

.field private final operator:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/String;)V
    .locals 3
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "operator"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/firebase/firestore/AggregateField;->fieldPath:Lcom/google/firebase/firestore/FieldPath;

    .line 33
    iput-object p2, p0, Lcom/google/firebase/firestore/AggregateField;->operator:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/AggregateField;->alias:Ljava/lang/String;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/String;Lcom/google/firebase/firestore/AggregateField$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/firebase/firestore/AggregateField$1;

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/AggregateField;-><init>(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/String;)V

    return-void
.end method

.method public static average(Lcom/google/firebase/firestore/FieldPath;)Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;
    .locals 2
    .param p0, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;

    .line 190
    new-instance v0, Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/AggregateField$1;)V

    return-object v0
.end method

.method public static average(Ljava/lang/String;)Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;
    .locals 3
    .param p0, "field"    # Ljava/lang/String;

    .line 170
    new-instance v0, Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;

    invoke-static {p0}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/AggregateField$1;)V

    return-object v0
.end method

.method public static count()Lcom/google/firebase/firestore/AggregateField$CountAggregateField;
    .locals 2

    .line 102
    new-instance v0, Lcom/google/firebase/firestore/AggregateField$CountAggregateField;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/AggregateField$CountAggregateField;-><init>(Lcom/google/firebase/firestore/AggregateField$1;)V

    return-object v0
.end method

.method public static sum(Lcom/google/firebase/firestore/FieldPath;)Lcom/google/firebase/firestore/AggregateField$SumAggregateField;
    .locals 2
    .param p0, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;

    .line 150
    new-instance v0, Lcom/google/firebase/firestore/AggregateField$SumAggregateField;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/AggregateField$SumAggregateField;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/AggregateField$1;)V

    return-object v0
.end method

.method public static sum(Ljava/lang/String;)Lcom/google/firebase/firestore/AggregateField$SumAggregateField;
    .locals 3
    .param p0, "field"    # Ljava/lang/String;

    .line 126
    new-instance v0, Lcom/google/firebase/firestore/AggregateField$SumAggregateField;

    invoke-static {p0}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/AggregateField$SumAggregateField;-><init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/AggregateField$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 70
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 71
    return v0

    .line 73
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/AggregateField;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 74
    return v2

    .line 77
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/AggregateField;

    .line 78
    .local v1, "otherAggregateField":Lcom/google/firebase/firestore/AggregateField;
    iget-object v3, p0, Lcom/google/firebase/firestore/AggregateField;->fieldPath:Lcom/google/firebase/firestore/FieldPath;

    if-eqz v3, :cond_4

    iget-object v4, v1, Lcom/google/firebase/firestore/AggregateField;->fieldPath:Lcom/google/firebase/firestore/FieldPath;

    if-nez v4, :cond_2

    goto :goto_1

    .line 81
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/firestore/AggregateField;->operator:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/AggregateField;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    invoke-virtual {p0}, Lcom/google/firebase/firestore/AggregateField;->getFieldPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/firebase/firestore/AggregateField;->getFieldPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    .line 81
    :goto_0
    return v0

    .line 79
    :cond_4
    :goto_1
    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/google/firebase/firestore/AggregateField;->fieldPath:Lcom/google/firebase/firestore/FieldPath;

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/firebase/firestore/AggregateField;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldPath()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/firebase/firestore/AggregateField;->fieldPath:Lcom/google/firebase/firestore/FieldPath;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FieldPath;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/firebase/firestore/AggregateField;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/google/firebase/firestore/AggregateField;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/AggregateField;->getFieldPath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
