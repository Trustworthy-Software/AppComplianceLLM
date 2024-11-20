.class public Lcom/google/firebase/firestore/core/OrderBy;
.super Ljava/lang/Object;
.source "OrderBy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/OrderBy$Direction;
    }
.end annotation


# instance fields
.field private final direction:Lcom/google/firebase/firestore/core/OrderBy$Direction;

.field final field:Lcom/google/firebase/firestore/model/FieldPath;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/core/OrderBy$Direction;Lcom/google/firebase/firestore/model/FieldPath;)V
    .locals 0
    .param p1, "direction"    # Lcom/google/firebase/firestore/core/OrderBy$Direction;
    .param p2, "field"    # Lcom/google/firebase/firestore/model/FieldPath;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/firebase/firestore/core/OrderBy;->direction:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    .line 58
    iput-object p2, p0, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    .line 59
    return-void
.end method

.method public static getInstance(Lcom/google/firebase/firestore/core/OrderBy$Direction;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/OrderBy;
    .locals 1
    .param p0, "direction"    # Lcom/google/firebase/firestore/core/OrderBy$Direction;
    .param p1, "path"    # Lcom/google/firebase/firestore/model/FieldPath;

    .line 42
    new-instance v0, Lcom/google/firebase/firestore/core/OrderBy;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/core/OrderBy;-><init>(Lcom/google/firebase/firestore/core/OrderBy$Direction;Lcom/google/firebase/firestore/model/FieldPath;)V

    return-object v0
.end method


# virtual methods
.method compare(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)I
    .locals 5
    .param p1, "d1"    # Lcom/google/firebase/firestore/model/Document;
    .param p2, "d2"    # Lcom/google/firebase/firestore/model/Document;

    .line 62
    iget-object v0, p0, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    sget-object v1, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/firebase/firestore/core/OrderBy;->direction:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/OrderBy$Direction;->getComparisonModifier()I

    move-result v0

    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/DocumentKey;->compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result v1

    mul-int/2addr v0, v1

    return v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-interface {p1, v0}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    .line 66
    .local v0, "v1":Lcom/google/firestore/v1/Value;
    iget-object v1, p0, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-interface {p2, v1}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    .line 67
    .local v1, "v2":Lcom/google/firestore/v1/Value;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const-string v4, "Trying to compare documents on fields that don\'t exist."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v2, p0, Lcom/google/firebase/firestore/core/OrderBy;->direction:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/OrderBy$Direction;->getComparisonModifier()I

    move-result v2

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/model/Values;->compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v3

    mul-int/2addr v2, v3

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/google/firebase/firestore/core/OrderBy;

    if-nez v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/core/OrderBy;

    .line 80
    .local v1, "other":Lcom/google/firebase/firestore/core/OrderBy;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/OrderBy;->direction:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    iget-object v3, v1, Lcom/google/firebase/firestore/core/OrderBy;->direction:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    iget-object v3, v1, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 76
    .end local v1    # "other":Lcom/google/firebase/firestore/core/OrderBy;
    :cond_2
    :goto_0
    return v0
.end method

.method public getDirection()Lcom/google/firebase/firestore/core/OrderBy$Direction;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/firebase/firestore/core/OrderBy;->direction:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    return-object v0
.end method

.method public getField()Lcom/google/firebase/firestore/model/FieldPath;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 85
    const/16 v0, 0x1d

    .line 86
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/OrderBy;->direction:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/OrderBy$Direction;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 87
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldPath;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 88
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/firestore/core/OrderBy;->direction:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    sget-object v2, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    if-ne v1, v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "-"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
