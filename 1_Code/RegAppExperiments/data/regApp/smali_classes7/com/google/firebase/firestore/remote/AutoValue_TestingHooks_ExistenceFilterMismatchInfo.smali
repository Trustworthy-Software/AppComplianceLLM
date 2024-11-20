.class final Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;
.super Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;
.source "AutoValue_TestingHooks_ExistenceFilterMismatchInfo.java"


# instance fields
.field private final bloomFilter:Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;

.field private final databaseId:Ljava/lang/String;

.field private final existenceFilterCount:I

.field private final localCacheCount:I

.field private final projectId:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;)V
    .locals 2
    .param p1, "localCacheCount"    # I
    .param p2, "existenceFilterCount"    # I
    .param p3, "projectId"    # Ljava/lang/String;
    .param p4, "databaseId"    # Ljava/lang/String;
    .param p5, "bloomFilter"    # Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;

    .line 26
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;-><init>()V

    .line 27
    iput p1, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->localCacheCount:I

    .line 28
    iput p2, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->existenceFilterCount:I

    .line 29
    if-eqz p3, :cond_1

    .line 32
    iput-object p3, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->projectId:Ljava/lang/String;

    .line 33
    if-eqz p4, :cond_0

    .line 36
    iput-object p4, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->databaseId:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->bloomFilter:Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;

    .line 38
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null databaseId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null projectId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method bloomFilter()Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->bloomFilter:Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;

    return-object v0
.end method

.method databaseId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->databaseId:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 79
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 80
    return v0

    .line 82
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 83
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;

    .line 84
    .local v1, "that":Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;
    iget v3, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->localCacheCount:I

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;->localCacheCount()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->existenceFilterCount:I

    .line 85
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;->existenceFilterCount()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->projectId:Ljava/lang/String;

    .line 86
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;->projectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->databaseId:Ljava/lang/String;

    .line 87
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;->databaseId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->bloomFilter:Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;

    if-nez v3, :cond_1

    .line 88
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;->bloomFilter()Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;->bloomFilter()Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    goto :goto_1

    :cond_2
    move v0, v2

    .line 84
    :goto_1
    return v0

    .line 90
    .end local v1    # "that":Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;
    :cond_3
    return v2
.end method

.method existenceFilterCount()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->existenceFilterCount:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 95
    const/4 v0, 0x1

    .line 96
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 97
    iget v2, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->localCacheCount:I

    xor-int/2addr v0, v2

    .line 98
    mul-int/2addr v0, v1

    .line 99
    iget v2, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->existenceFilterCount:I

    xor-int/2addr v0, v2

    .line 100
    mul-int/2addr v0, v1

    .line 101
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->projectId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 102
    mul-int/2addr v0, v1

    .line 103
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->databaseId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 104
    mul-int/2addr v0, v1

    .line 105
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->bloomFilter:Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    .line 106
    return v0
.end method

.method localCacheCount()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->localCacheCount:I

    return v0
.end method

.method projectId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExistenceFilterMismatchInfo{localCacheCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->localCacheCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", existenceFilterCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->existenceFilterCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", projectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->projectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", databaseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->databaseId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bloomFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;->bloomFilter:Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
