.class public final Lcom/google/firebase/firestore/model/SnapshotVersion;
.super Ljava/lang/Object;
.source "SnapshotVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/firestore/model/SnapshotVersion;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;


# instance fields
.field private final timestamp:Lcom/google/firebase/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/google/firebase/firestore/model/SnapshotVersion;

    new-instance v1, Lcom/google/firebase/Timestamp;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;-><init>(Lcom/google/firebase/Timestamp;)V

    sput-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/Timestamp;)V
    .locals 0
    .param p1, "timestamp"    # Lcom/google/firebase/Timestamp;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/firebase/firestore/model/SnapshotVersion;->timestamp:Lcom/google/firebase/Timestamp;

    .line 33
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I
    .locals 2
    .param p1, "other"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 41
    iget-object v0, p0, Lcom/google/firebase/firestore/model/SnapshotVersion;->timestamp:Lcom/google/firebase/Timestamp;

    iget-object v1, p1, Lcom/google/firebase/firestore/model/SnapshotVersion;->timestamp:Lcom/google/firebase/Timestamp;

    invoke-virtual {v0, v1}, Lcom/google/firebase/Timestamp;->compareTo(Lcom/google/firebase/Timestamp;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 47
    return v0

    .line 49
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/model/SnapshotVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 50
    return v2

    .line 52
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 53
    .local v1, "other":Lcom/google/firebase/firestore/model/SnapshotVersion;
    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getTimestamp()Lcom/google/firebase/Timestamp;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/firebase/firestore/model/SnapshotVersion;->timestamp:Lcom/google/firebase/Timestamp;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnapshotVersion(seconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/SnapshotVersion;->timestamp:Lcom/google/firebase/Timestamp;

    .line 64
    invoke-virtual {v1}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/SnapshotVersion;->timestamp:Lcom/google/firebase/Timestamp;

    .line 66
    invoke-virtual {v1}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0
.end method
