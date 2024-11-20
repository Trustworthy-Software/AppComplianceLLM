.class public final Lcom/google/firebase/firestore/MemoryCacheSettings;
.super Ljava/lang/Object;
.source "MemoryCacheSettings.java"

# interfaces
.implements Lcom/google/firebase/firestore/LocalCacheSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/MemoryCacheSettings$Builder;
    }
.end annotation


# instance fields
.field private gcSettings:Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;)V
    .locals 0
    .param p1, "settings"    # Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/firebase/firestore/MemoryCacheSettings;->gcSettings:Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;Lcom/google/firebase/firestore/MemoryCacheSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;
    .param p2, "x1"    # Lcom/google/firebase/firestore/MemoryCacheSettings$1;

    .line 29
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/MemoryCacheSettings;-><init>(Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/firestore/MemoryCacheSettings$Builder;
    .locals 2

    .line 35
    new-instance v0, Lcom/google/firebase/firestore/MemoryCacheSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/MemoryCacheSettings$Builder;-><init>(Lcom/google/firebase/firestore/MemoryCacheSettings$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 49
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 50
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/firestore/MemoryCacheSettings;->getGarbageCollectorSettings()Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/MemoryCacheSettings;

    .line 53
    invoke-virtual {v1}, Lcom/google/firebase/firestore/MemoryCacheSettings;->getGarbageCollectorSettings()Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 52
    return v0

    .line 50
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGarbageCollectorSettings()Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/firebase/firestore/MemoryCacheSettings;->gcSettings:Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/firebase/firestore/MemoryCacheSettings;->gcSettings:Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MemoryCacheSettings{gcSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/MemoryCacheSettings;->getGarbageCollectorSettings()Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
