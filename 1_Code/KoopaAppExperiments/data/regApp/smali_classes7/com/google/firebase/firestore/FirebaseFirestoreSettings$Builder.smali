.class public final Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;
.super Ljava/lang/Object;
.source "FirebaseFirestoreSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/FirebaseFirestoreSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

.field private cacheSizeBytes:J

.field private host:Ljava/lang/String;

.field private persistenceEnabled:Z

.field private sslEnabled:Z

.field private usedLegacyCacheSettings:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->usedLegacyCacheSettings:Z

    .line 51
    const-string v0, "firestore.googleapis.com"

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->host:Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->sslEnabled:Z

    .line 53
    iput-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->persistenceEnabled:Z

    .line 54
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->cacheSizeBytes:J

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)V
    .locals 7
    .param p1, "settings"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->usedLegacyCacheSettings:Z

    .line 62
    const-string v1, "Provided settings must not be null."

    invoke-static {p1, v1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->access$000(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->host:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->access$100(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->sslEnabled:Z

    .line 65
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->access$200(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->persistenceEnabled:Z

    .line 66
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->access$300(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->cacheSizeBytes:J

    .line 67
    iget-boolean v3, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->persistenceEnabled:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const-wide/32 v5, 0x6400000

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    iput-boolean v4, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->usedLegacyCacheSettings:Z

    .line 71
    :cond_1
    iget-boolean v1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->usedLegacyCacheSettings:Z

    if-nez v1, :cond_2

    .line 72
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->access$400(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)Lcom/google/firebase/firestore/LocalCacheSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

    goto :goto_1

    .line 74
    :cond_2
    nop

    .line 75
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;->access$400(Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)Lcom/google/firebase/firestore/LocalCacheSettings;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 74
    const-string v1, "Given settings object mixes both cache config APIs, which is impossible."

    invoke-static {v4, v1, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :goto_1
    return-void
.end method

.method static synthetic access$1000(Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;)Lcom/google/firebase/firestore/LocalCacheSettings;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    .line 39
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    .line 39
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    .line 39
    iget-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->sslEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    .line 39
    iget-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->persistenceEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;

    .line 39
    iget-wide v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->cacheSizeBytes:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/google/firebase/firestore/FirebaseFirestoreSettings;
    .locals 2

    .line 219
    iget-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->sslEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->host:Ljava/lang/String;

    const-string v1, "firestore.googleapis.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t set the \'sslEnabled\' setting unless you also set a non-default \'host\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/FirebaseFirestoreSettings;-><init>(Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;Lcom/google/firebase/firestore/FirebaseFirestoreSettings$1;)V

    return-object v0
.end method

.method public getCacheSizeBytes()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    iget-wide v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->cacheSizeBytes:J

    return-wide v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->host:Ljava/lang/String;

    return-object v0
.end method

.method public isPersistenceEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    iget-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->persistenceEnabled:Z

    return v0
.end method

.method public isSslEnabled()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->sslEnabled:Z

    return v0
.end method

.method public setCacheSizeBytes(J)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;
    .locals 2
    .param p1, "value"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

    if-nez v0, :cond_2

    .line 145
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cache size must be set to at least 1048576 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->cacheSizeBytes:J

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->usedLegacyCacheSettings:Z

    .line 151
    return-object p0

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "New cache config API setLocalCacheSettings() is already used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHost(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 88
    const-string v0, "Provided host must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->host:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setLocalCacheSettings(Lcom/google/firebase/firestore/LocalCacheSettings;)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;
    .locals 2
    .param p1, "settings"    # Lcom/google/firebase/firestore/LocalCacheSettings;

    .line 170
    iget-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->usedLegacyCacheSettings:Z

    if-nez v0, :cond_2

    .line 176
    instance-of v0, p1, Lcom/google/firebase/firestore/MemoryCacheSettings;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/firebase/firestore/PersistentCacheSettings;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MemoryCacheSettings and PersistentCacheSettings are accepted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

    .line 183
    return-object p0

    .line 171
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deprecated setPersistenceEnabled() or setCacheSizeBytes() is already used, remove those first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPersistenceEnabled(Z)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;
    .locals 2
    .param p1, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->cacheSettings:Lcom/google/firebase/firestore/LocalCacheSettings;

    if-nez v0, :cond_0

    .line 119
    iput-boolean p1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->persistenceEnabled:Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->usedLegacyCacheSettings:Z

    .line 121
    return-object p0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "New cache config API setLocalCacheSettings() is already used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSslEnabled(Z)Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 99
    iput-boolean p1, p0, Lcom/google/firebase/firestore/FirebaseFirestoreSettings$Builder;->sslEnabled:Z

    .line 100
    return-object p0
.end method
