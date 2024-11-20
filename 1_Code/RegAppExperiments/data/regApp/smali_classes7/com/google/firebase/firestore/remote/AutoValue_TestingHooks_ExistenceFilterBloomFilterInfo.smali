.class final Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;
.super Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;
.source "AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo.java"


# instance fields
.field private final applied:Z

.field private final bitmapLength:I

.field private final bloomFilter:Lcom/google/firebase/firestore/remote/BloomFilter;

.field private final hashCount:I

.field private final padding:I


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/remote/BloomFilter;ZIII)V
    .locals 0
    .param p1, "bloomFilter"    # Lcom/google/firebase/firestore/remote/BloomFilter;
    .param p2, "applied"    # Z
    .param p3, "hashCount"    # I
    .param p4, "bitmapLength"    # I
    .param p5, "padding"    # I

    .line 26
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->bloomFilter:Lcom/google/firebase/firestore/remote/BloomFilter;

    .line 28
    iput-boolean p2, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->applied:Z

    .line 29
    iput p3, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->hashCount:I

    .line 30
    iput p4, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->bitmapLength:I

    .line 31
    iput p5, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->padding:I

    .line 32
    return-void
.end method


# virtual methods
.method applied()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->applied:Z

    return v0
.end method

.method bitmapLength()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->bitmapLength:I

    return v0
.end method

.method bloomFilter()Lcom/google/firebase/firestore/remote/BloomFilter;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->bloomFilter:Lcom/google/firebase/firestore/remote/BloomFilter;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 74
    return v0

    .line 76
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 77
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;

    .line 78
    .local v1, "that":Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->bloomFilter:Lcom/google/firebase/firestore/remote/BloomFilter;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;->bloomFilter()Lcom/google/firebase/firestore/remote/BloomFilter;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;->bloomFilter()Lcom/google/firebase/firestore/remote/BloomFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    iget-boolean v3, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->applied:Z

    .line 79
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;->applied()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->hashCount:I

    .line 80
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;->hashCount()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->bitmapLength:I

    .line 81
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;->bitmapLength()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->padding:I

    .line 82
    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;->padding()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    .line 78
    :goto_1
    return v0

    .line 84
    .end local v1    # "that":Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 89
    const/4 v0, 0x1

    .line 90
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 91
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->bloomFilter:Lcom/google/firebase/firestore/remote/BloomFilter;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    .line 92
    mul-int/2addr v0, v1

    .line 93
    iget-boolean v2, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->applied:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    xor-int/2addr v0, v2

    .line 94
    mul-int/2addr v0, v1

    .line 95
    iget v2, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->hashCount:I

    xor-int/2addr v0, v2

    .line 96
    mul-int/2addr v0, v1

    .line 97
    iget v2, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->bitmapLength:I

    xor-int/2addr v0, v2

    .line 98
    mul-int/2addr v0, v1

    .line 99
    iget v1, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->padding:I

    xor-int/2addr v0, v1

    .line 100
    return v0
.end method

.method hashCount()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->hashCount:I

    return v0
.end method

.method padding()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->padding:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExistenceFilterBloomFilterInfo{bloomFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->bloomFilter:Lcom/google/firebase/firestore/remote/BloomFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", applied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->applied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->hashCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitmapLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->bitmapLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", padding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;->padding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
