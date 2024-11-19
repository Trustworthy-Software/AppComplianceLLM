.class final Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;
.super Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
.source "AutoValue_FieldIndex_IndexOffset.java"


# instance fields
.field private final documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

.field private final largestBatchId:I

.field private final readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/DocumentKey;I)V
    .locals 2
    .param p1, "readTime"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p2, "documentKey"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p3, "largestBatchId"    # I

    .line 19
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;-><init>()V

    .line 20
    if-eqz p1, :cond_1

    .line 23
    iput-object p1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 24
    if-eqz p2, :cond_0

    .line 27
    iput-object p2, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 28
    iput p3, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;->largestBatchId:I

    .line 29
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null documentKey"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null readTime"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 58
    return v0

    .line 60
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 61
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    .line 62
    .local v1, "that":Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    iget-object v3, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 63
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;->largestBatchId:I

    .line 64
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getLargestBatchId()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 62
    :goto_0
    return v0

    .line 66
    .end local v1    # "that":Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    :cond_2
    return v2
.end method

.method public getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    return-object v0
.end method

.method public getLargestBatchId()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;->largestBatchId:I

    return v0
.end method

.method public getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 71
    const/4 v0, 0x1

    .line 72
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 73
    iget-object v2, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 74
    mul-int/2addr v0, v1

    .line 75
    iget-object v2, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 76
    mul-int/2addr v0, v1

    .line 77
    iget v1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;->largestBatchId:I

    xor-int/2addr v0, v1

    .line 78
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IndexOffset{readTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", documentKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", largestBatchId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexOffset;->largestBatchId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
