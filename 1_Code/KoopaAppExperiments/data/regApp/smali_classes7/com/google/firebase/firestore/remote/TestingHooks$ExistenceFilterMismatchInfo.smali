.class abstract Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;
.super Ljava/lang/Object;
.source "TestingHooks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/TestingHooks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ExistenceFilterMismatchInfo"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(IILjava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;)Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;
    .locals 7
    .param p0, "localCacheCount"    # I
    .param p1, "existenceFilterCount"    # I
    .param p2, "projectId"    # Ljava/lang/String;
    .param p3, "databaseId"    # Ljava/lang/String;
    .param p4, "bloomFilter"    # Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;

    .line 136
    new-instance v6, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;)V

    return-object v6
.end method

.method static from(ILcom/google/firebase/firestore/remote/ExistenceFilter;Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/remote/BloomFilter;Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;)Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;
    .locals 4
    .param p0, "localCacheCount"    # I
    .param p1, "existenceFilter"    # Lcom/google/firebase/firestore/remote/ExistenceFilter;
    .param p2, "databaseId"    # Lcom/google/firebase/firestore/model/DatabaseId;
    .param p3, "bloomFilter"    # Lcom/google/firebase/firestore/remote/BloomFilter;
    .param p4, "bloomFilterStatus"    # Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    .line 173
    nop

    .line 175
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/ExistenceFilter;->getCount()I

    move-result v0

    .line 176
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {p3, p4, p1}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;->from(Lcom/google/firebase/firestore/remote/BloomFilter;Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;Lcom/google/firebase/firestore/remote/ExistenceFilter;)Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;

    move-result-object v3

    .line 173
    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;->create(IILjava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;)Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract bloomFilter()Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;
.end method

.method abstract databaseId()Ljava/lang/String;
.end method

.method abstract existenceFilterCount()I
.end method

.method abstract localCacheCount()I
.end method

.method abstract projectId()Ljava/lang/String;
.end method
