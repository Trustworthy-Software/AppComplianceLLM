.class final Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_Segment;
.super Lcom/google/firebase/firestore/model/FieldIndex$Segment;
.source "AutoValue_FieldIndex_Segment.java"


# instance fields
.field private final fieldPath:Lcom/google/firebase/firestore/model/FieldPath;

.field private final kind:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;)V
    .locals 2
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/model/FieldPath;
    .param p2, "kind"    # Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;-><init>()V

    .line 17
    if-eqz p1, :cond_1

    .line 20
    iput-object p1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_Segment;->fieldPath:Lcom/google/firebase/firestore/model/FieldPath;

    .line 21
    if-eqz p2, :cond_0

    .line 24
    iput-object p2, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_Segment;->kind:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    .line 25
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null kind"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null fieldPath"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 48
    return v0

    .line 50
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 51
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 52
    .local v1, "that":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    iget-object v3, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_Segment;->fieldPath:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_Segment;->kind:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    .line 53
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 52
    :goto_0
    return v0

    .line 55
    .end local v1    # "that":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    :cond_2
    return v2
.end method

.method public getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_Segment;->fieldPath:Lcom/google/firebase/firestore/model/FieldPath;

    return-object v0
.end method

.method public getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_Segment;->kind:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 60
    const/4 v0, 0x1

    .line 61
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 62
    iget-object v2, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_Segment;->fieldPath:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldPath;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 63
    mul-int/2addr v0, v1

    .line 64
    iget-object v1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_Segment;->kind:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 65
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Segment{fieldPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_Segment;->fieldPath:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_Segment;->kind:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
