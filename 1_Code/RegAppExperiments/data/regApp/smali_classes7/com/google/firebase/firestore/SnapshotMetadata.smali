.class public Lcom/google/firebase/firestore/SnapshotMetadata;
.super Ljava/lang/Object;
.source "SnapshotMetadata.java"


# instance fields
.field private final hasPendingWrites:Z

.field private final isFromCache:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0
    .param p1, "hasPendingWrites"    # Z
    .param p2, "isFromCache"    # Z

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/google/firebase/firestore/SnapshotMetadata;->hasPendingWrites:Z

    .line 32
    iput-boolean p2, p0, Lcom/google/firebase/firestore/SnapshotMetadata;->isFromCache:Z

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 58
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 59
    return v0

    .line 61
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/SnapshotMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 62
    return v2

    .line 64
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/SnapshotMetadata;

    .line 65
    .local v1, "other":Lcom/google/firebase/firestore/SnapshotMetadata;
    iget-boolean v3, p0, Lcom/google/firebase/firestore/SnapshotMetadata;->hasPendingWrites:Z

    iget-boolean v4, v1, Lcom/google/firebase/firestore/SnapshotMetadata;->hasPendingWrites:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/google/firebase/firestore/SnapshotMetadata;->isFromCache:Z

    iget-boolean v4, v1, Lcom/google/firebase/firestore/SnapshotMetadata;->isFromCache:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hasPendingWrites()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/google/firebase/firestore/SnapshotMetadata;->hasPendingWrites:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 70
    iget-boolean v0, p0, Lcom/google/firebase/firestore/SnapshotMetadata;->hasPendingWrites:Z

    .line 71
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/firebase/firestore/SnapshotMetadata;->isFromCache:Z

    add-int/2addr v1, v2

    .line 72
    .end local v0    # "hash":I
    .local v1, "hash":I
    return v1
.end method

.method public isFromCache()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/google/firebase/firestore/SnapshotMetadata;->isFromCache:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnapshotMetadata{hasPendingWrites="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/firestore/SnapshotMetadata;->hasPendingWrites:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFromCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/firestore/SnapshotMetadata;->isFromCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
