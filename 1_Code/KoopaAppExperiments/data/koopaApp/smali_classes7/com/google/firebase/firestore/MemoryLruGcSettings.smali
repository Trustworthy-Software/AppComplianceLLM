.class public final Lcom/google/firebase/firestore/MemoryLruGcSettings;
.super Ljava/lang/Object;
.source "MemoryLruGcSettings.java"

# interfaces
.implements Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/MemoryLruGcSettings$Builder;
    }
.end annotation


# instance fields
.field private sizeBytes:J


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .param p1, "size"    # J

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Lcom/google/firebase/firestore/MemoryLruGcSettings;->sizeBytes:J

    .line 60
    return-void
.end method

.method synthetic constructor <init>(JLcom/google/firebase/firestore/MemoryLruGcSettings$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # Lcom/google/firebase/firestore/MemoryLruGcSettings$1;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/MemoryLruGcSettings;-><init>(J)V

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/firestore/MemoryLruGcSettings$Builder;
    .locals 2

    .line 65
    new-instance v0, Lcom/google/firebase/firestore/MemoryLruGcSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/MemoryLruGcSettings$Builder;-><init>(Lcom/google/firebase/firestore/MemoryLruGcSettings$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 83
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 84
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 86
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/MemoryLruGcSettings;

    .line 88
    .local v2, "that":Lcom/google/firebase/firestore/MemoryLruGcSettings;
    iget-wide v3, p0, Lcom/google/firebase/firestore/MemoryLruGcSettings;->sizeBytes:J

    iget-wide v5, v2, Lcom/google/firebase/firestore/MemoryLruGcSettings;->sizeBytes:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 84
    .end local v2    # "that":Lcom/google/firebase/firestore/MemoryLruGcSettings;
    :cond_3
    :goto_1
    return v1
.end method

.method public getSizeBytes()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/google/firebase/firestore/MemoryLruGcSettings;->sizeBytes:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 93
    iget-wide v0, p0, Lcom/google/firebase/firestore/MemoryLruGcSettings;->sizeBytes:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MemoryLruGcSettings{cacheSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/MemoryLruGcSettings;->getSizeBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
