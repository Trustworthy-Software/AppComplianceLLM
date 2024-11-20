.class public final Lcom/google/firebase/firestore/FirebaseFirestoreSettings;
.super Ljava/lang/Object;
.source "FirebaseFirestoreSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE_UNLIMITED:J = -0x1L

.field static final DEFAULT_CACHE_SIZE_BYTES:J = 0x6400000L

.field public static final DEFAULT_HOST:Ljava/lang/String; = "firestore.googleapis.com"

.field static final MINIMUM_CACHE_BYTES:J = 0x100000L


# instance fields
.field private cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

.field private final cacheSizeBytes:J

.field private final host:Ljava/lang/String;

.field private final persistenceEnabled:Z

.field private final sslEnabled:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->access$600(Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->host:Ljava/lang/String;

    .line 237
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->access$700(Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->sslEnabled:Z

    .line 238
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->access$800(Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->persistenceEnabled:Z

    .line 239
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->access$900(Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSizeBytes:J

    .line 240
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->access$1000(Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;)Lcom/google/firebase/firestore/LocalCacheSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

    .line 241
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;Lcom/google/firebase/firestore/FirebaseFirestoreSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;
    .param p2, "x1"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings$1;

    .line 25
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;-><init>(Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 25
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 25
    iget-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->sslEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 25
    iget-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->persistenceEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 25
    iget-wide v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSizeBytes:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)Lcom/google/firebase/firestore/LocalCacheSettings;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 25
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 245
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 246
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 248
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 250
    .local v1, "that":Lcom/google/firebase/firestore/FirebaseFirestoreSettings;
    iget-boolean v2, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->sslEnabled:Z

    iget-boolean v3, v1, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->sslEnabled:Z

    if-eq v2, v3, :cond_2

    return v0

    .line 251
    :cond_2
    iget-boolean v2, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->persistenceEnabled:Z

    iget-boolean v3, v1, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->persistenceEnabled:Z

    if-eq v2, v3, :cond_3

    return v0

    .line 252
    :cond_3
    iget-wide v2, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSizeBytes:J

    iget-wide v4, v1, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSizeBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v0

    .line 253
    :cond_4
    iget-object v2, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->host:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

    iget-object v2, v1, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 246
    .end local v1    # "that":Lcom/google/firebase/firestore/FirebaseFirestoreSettings;
    :cond_6
    :goto_0
    return v0
.end method

.method public getCacheSettings()Lcom/google/firebase/firestore/LocalCacheSettings;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

    return-object v0
.end method

.method public getCacheSizeBytes()J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

    if-eqz v0, :cond_2

    .line 322
    instance-of v1, v0, Lcom/google/firebase/firestore/PersistentCacheSettings;

    if-eqz v1, :cond_0

    .line 323
    check-cast v0, Lcom/google/firebase/firestore/PersistentCacheSettings;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/PersistentCacheSettings;->getSizeBytes()J

    move-result-wide v0

    return-wide v0

    .line 325
    :cond_0
    check-cast v0, Lcom/google/firebase/firestore/MemoryCacheSettings;

    .line 326
    .local v0, "memorySettings":Lcom/google/firebase/firestore/MemoryCacheSettings;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/MemoryCacheSettings;->getGarbageCollectorSettings()Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;

    move-result-object v1

    instance-of v1, v1, Lcom/google/firebase/firestore/MemoryLruGcSettings;

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {v0}, Lcom/google/firebase/firestore/MemoryCacheSettings;->getGarbageCollectorSettings()Lcom/google/firebase/firestore/MemoryGarbageCollectorSettings;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/MemoryLruGcSettings;

    .line 328
    invoke-virtual {v1}, Lcom/google/firebase/firestore/MemoryLruGcSettings;->getSizeBytes()J

    move-result-wide v1

    .line 327
    return-wide v1

    .line 331
    :cond_1
    const-wide/16 v1, -0x1

    return-wide v1

    .line 335
    .end local v0    # "memorySettings":Lcom/google/firebase/firestore/MemoryCacheSettings;
    :cond_2
    iget-wide v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSizeBytes:J

    return-wide v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->host:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 259
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 260
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->sslEnabled:Z

    add-int/2addr v1, v2

    .line 261
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->persistenceEnabled:Z

    add-int/2addr v0, v2

    .line 262
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSizeBytes:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 263
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 264
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isPersistenceEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

    if-eqz v0, :cond_0

    .line 306
    instance-of v0, v0, Lcom/google/firebase/firestore/PersistentCacheSettings;

    return v0

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->persistenceEnabled:Z

    return v0
.end method

.method public isSslEnabled()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->sslEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirebaseFirestoreSettings{host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sslEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->sslEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", persistenceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->persistenceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cacheSizeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSizeBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cacheSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 282
    const-string v0, "null"

    goto :goto_0

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0
.end method
