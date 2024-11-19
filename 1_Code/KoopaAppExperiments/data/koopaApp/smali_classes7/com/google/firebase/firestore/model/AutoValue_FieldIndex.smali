.class final Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;
.super Lcom/google/firebase/firestore/model/FieldIndex;
.source "AutoValue_FieldIndex.java"


# instance fields
.field private final collectionGroup:Ljava/lang/String;

.field private final indexId:I

.field private final indexState:Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

.field private final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/FieldIndex$Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexState;)V
    .locals 2
    .param p1, "indexId"    # I
    .param p2, "collectionGroup"    # Ljava/lang/String;
    .param p4, "indexState"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/FieldIndex$Segment;",
            ">;",
            "Lcom/google/firebase/firestore/model/FieldIndex$IndexState;",
            ")V"
        }
    .end annotation

    .line 23
    .local p3, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex$Segment;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/FieldIndex;-><init>()V

    .line 24
    iput p1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->indexId:I

    .line 25
    if-eqz p2, :cond_2

    .line 28
    iput-object p2, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->collectionGroup:Ljava/lang/String;

    .line 29
    if-eqz p3, :cond_1

    .line 32
    iput-object p3, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->segments:Ljava/util/List;

    .line 33
    if-eqz p4, :cond_0

    .line 36
    iput-object p4, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->indexState:Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    .line 37
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null indexState"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null segments"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null collectionGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 71
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 72
    return v0

    .line 74
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/model/FieldIndex;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 75
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/model/FieldIndex;

    .line 76
    .local v1, "that":Lcom/google/firebase/firestore/model/FieldIndex;
    iget v3, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->indexId:I

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexId()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->collectionGroup:Ljava/lang/String;

    .line 77
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex;->getCollectionGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->segments:Ljava/util/List;

    .line 78
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->indexState:Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    .line 79
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex;->getIndexState()Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 76
    :goto_0
    return v0

    .line 81
    .end local v1    # "that":Lcom/google/firebase/firestore/model/FieldIndex;
    :cond_2
    return v2
.end method

.method public getCollectionGroup()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->collectionGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexId()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->indexId:I

    return v0
.end method

.method public getIndexState()Lcom/google/firebase/firestore/model/FieldIndex$IndexState;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->indexState:Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    return-object v0
.end method

.method public getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/FieldIndex$Segment;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->segments:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 86
    const/4 v0, 0x1

    .line 87
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 88
    iget v2, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->indexId:I

    xor-int/2addr v0, v2

    .line 89
    mul-int/2addr v0, v1

    .line 90
    iget-object v2, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->collectionGroup:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 91
    mul-int/2addr v0, v1

    .line 92
    iget-object v2, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->segments:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 93
    mul-int/2addr v0, v1

    .line 94
    iget-object v1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->indexState:Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 95
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldIndex{indexId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->indexId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", collectionGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->collectionGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->segments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", indexState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex;->indexState:Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
