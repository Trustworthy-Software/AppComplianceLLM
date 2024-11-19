.class public Lcom/google/firebase/firestore/bundle/BundleMetadata;
.super Ljava/lang/Object;
.source "BundleMetadata.java"

# interfaces
.implements Lcom/google/firebase/firestore/bundle/BundleElement;


# instance fields
.field private final bundleId:Ljava/lang/String;

.field private final createTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

.field private final schemaVersion:I

.field private final totalBytes:J

.field private final totalDocuments:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/firebase/firestore/model/SnapshotVersion;IJ)V
    .locals 0
    .param p1, "bundleId"    # Ljava/lang/String;
    .param p2, "schemaVersion"    # I
    .param p3, "createTime"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p4, "totalDocuments"    # I
    .param p5, "totalBytes"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->bundleId:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->schemaVersion:I

    .line 35
    iput-object p3, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->createTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 36
    iput p4, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->totalDocuments:I

    .line 37
    iput-wide p5, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->totalBytes:J

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 73
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/bundle/BundleMetadata;

    .line 78
    .local v1, "that":Lcom/google/firebase/firestore/bundle/BundleMetadata;
    iget v2, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->schemaVersion:I

    iget v3, v1, Lcom/google/firebase/firestore/bundle/BundleMetadata;->schemaVersion:I

    if-eq v2, v3, :cond_2

    return v0

    .line 79
    :cond_2
    iget v2, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->totalDocuments:I

    iget v3, v1, Lcom/google/firebase/firestore/bundle/BundleMetadata;->totalDocuments:I

    if-eq v2, v3, :cond_3

    return v0

    .line 80
    :cond_3
    iget-wide v2, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->totalBytes:J

    iget-wide v4, v1, Lcom/google/firebase/firestore/bundle/BundleMetadata;->totalBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v0

    .line 81
    :cond_4
    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->bundleId:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/firebase/firestore/bundle/BundleMetadata;->bundleId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    .line 82
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->createTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v2, v1, Lcom/google/firebase/firestore/bundle/BundleMetadata;->createTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 74
    .end local v1    # "that":Lcom/google/firebase/firestore/bundle/BundleMetadata;
    :cond_6
    :goto_0
    return v0
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->bundleId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->createTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public getSchemaVersion()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->schemaVersion:I

    return v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->totalBytes:J

    return-wide v0
.end method

.method public getTotalDocuments()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->totalDocuments:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->bundleId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 88
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->schemaVersion:I

    add-int/2addr v1, v2

    .line 89
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->totalDocuments:I

    add-int/2addr v0, v2

    .line 90
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->totalBytes:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 91
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundleMetadata;->createTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 92
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
