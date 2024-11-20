.class public Lorg/osmdroid/config/DefaultConfigurationProvider;
.super Ljava/lang/Object;
.source "DefaultConfigurationProvider.java"

# interfaces
.implements Lorg/osmdroid/config/IConfigurationProvider;


# static fields
.field public static final DEFAULT_USER_AGENT:Ljava/lang/String; = "osmdroid"


# instance fields
.field protected animationSpeedDefault:I

.field protected animationSpeedShort:I

.field protected cacheMapTileCount:S

.field protected cacheTileOvershoot:S

.field protected debugMapTileDownloader:Z

.field protected debugMapView:Z

.field protected debugMode:Z

.field protected debugTileProviders:Z

.field protected enforceTileSystemBounds:Z

.field protected expirationAdder:J

.field protected expirationOverride:Ljava/lang/Long;

.field protected gpsWaitTime:J

.field protected httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

.field protected httpProxy:Ljava/net/Proxy;

.field protected isMapViewHardwareAccelerated:Z

.field private final mAdditionalHttpRequestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalizedUserAgent:Ljava/lang/String;

.field protected mTileDownloaderFollowRedirects:Z

.field protected mTileGCBulkPauseInMillis:J

.field protected mTileGCBulkSize:I

.field protected mTileGCFrequencyInMillis:J

.field protected mapViewRecycler:Z

.field protected osmdroidBasePath:Ljava/io/File;

.field protected osmdroidTileCache:Ljava/io/File;

.field protected tileDownloadMaxQueueSize:S

.field protected tileDownloadThreads:S

.field protected tileFileSystemCacheMaxBytes:J

.field protected tileFileSystemCacheTrimBytes:J

.field protected tileFileSystemMaxQueueSize:S

.field protected tileFileSystemThreads:S

.field protected userAgentHttpHeader:Ljava/lang/String;

.field protected userAgentValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    .line 40
    iput-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    .line 41
    iput-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    .line 42
    iput-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    .line 44
    const-string v2, "osmdroid"

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentValue:Ljava/lang/String;

    .line 45
    const-string v2, "User-Agent"

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentHttpHeader:Ljava/lang/String;

    .line 46
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    .line 47
    const/16 v2, 0x9

    iput-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    .line 48
    const/4 v2, 0x2

    iput-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    .line 49
    const/16 v2, 0x8

    iput-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    .line 50
    const/16 v2, 0x28

    iput-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    .line 51
    iput-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    .line 52
    const-wide/32 v2, 0x25800000

    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheMaxBytes:J

    .line 53
    const-wide/32 v2, 0x1f400000

    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheTrimBytes:J

    .line 54
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

    .line 57
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    .line 58
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    .line 59
    iput-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpProxy:Ljava/net/Proxy;

    .line 60
    const/16 v2, 0x3e8

    iput v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    .line 61
    const/16 v2, 0x1f4

    iput v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    .line 62
    iput-boolean v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    .line 63
    iput-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheTileOvershoot:S

    .line 64
    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCFrequencyInMillis:J

    .line 65
    const/16 v2, 0x14

    iput v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkSize:I

    .line 66
    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkPauseInMillis:J

    .line 67
    iput-boolean v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileDownloaderFollowRedirects:Z

    .line 68
    iput-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->enforceTileSystemBounds:Z

    .line 78
    return-void
.end method

.method private static commit(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p0, "pEditor"    # Landroid/content/SharedPreferences$Editor;

    .line 482
    nop

    .line 483
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 487
    return-void
.end method

.method private computeNormalizedUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "pContext"    # Landroid/content/Context;

    .line 614
    if-nez p1, :cond_0

    .line 615
    const/4 v0, 0x0

    return-object v0

    .line 617
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 620
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 621
    .local v2, "version":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 622
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "version":I
    :catch_0
    move-exception v1

    .line 623
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v0
.end method

.method private static load(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .param p0, "pPrefs"    # Landroid/content/SharedPreferences;
    .param p2, "pPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 449
    .local p1, "pMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 450
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 452
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 457
    :cond_2
    return-void

    .line 449
    :cond_3
    :goto_1
    return-void
.end method

.method private static save(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .param p0, "pPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "pEdit"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "pPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 470
    .local p2, "pMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 471
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 474
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 475
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 476
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 478
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_1

    .line 479
    :cond_2
    return-void
.end method


# virtual methods
.method public getAdditionalHttpRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getAnimationSpeedDefault()I
    .locals 1

    .line 519
    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    return v0
.end method

.method public getAnimationSpeedShort()I
    .locals 1

    .line 529
    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    return v0
.end method

.method public getCacheMapTileCount()S
    .locals 1

    .line 162
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    return v0
.end method

.method public getCacheMapTileOvershoot()S
    .locals 1

    .line 549
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheTileOvershoot:S

    return v0
.end method

.method public getExpirationExtendedDuration()J
    .locals 2

    .line 491
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    return-wide v0
.end method

.method public getExpirationOverrideDuration()Ljava/lang/Long;
    .locals 1

    .line 509
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    return-object v0
.end method

.method public getGpsWaitTime()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    return-wide v0
.end method

.method public getHttpHeaderDateTimeFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getHttpProxy()Ljava/net/Proxy;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpProxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getNormalizedUserAgent()Ljava/lang/String;
    .locals 1

    .line 597
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mNormalizedUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getOsmdroidBasePath()Ljava/io/File;
    .locals 1

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 258
    const-string v0, "OsmDroid"

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    if-nez v1, :cond_1

    .line 259
    invoke-static {p1}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getBestWritableStorage(Landroid/content/Context;)Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .local v1, "storageInfo":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    const-string v2, "osmdroid"

    if-eqz v1, :cond_0

    .line 261
    :try_start_1
    iget-object v3, v1, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    .line 262
    .local v3, "pathToStorage":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    .line 263
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 264
    nop

    .end local v3    # "pathToStorage":Ljava/lang/String;
    goto :goto_0

    .line 265
    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 267
    .local v2, "osmdroidBasePath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 268
    const-string v3, "Directory not created"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    .end local v1    # "storageInfo":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    .end local v2    # "osmdroidBasePath":Ljava/io/File;
    :cond_1
    :goto_0
    goto :goto_1

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create base path at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    .line 280
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    return-object v0
.end method

.method public getOsmdroidTileCache()Ljava/io/File;
    .locals 1

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getOsmdroidTileCache(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 295
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "tiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    .line 298
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create tile cache path at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OsmDroid"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    return-object v0
.end method

.method public getTileDownloadMaxQueueSize()S
    .locals 1

    .line 192
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    return v0
.end method

.method public getTileDownloadThreads()S
    .locals 1

    .line 172
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    return v0
.end method

.method public getTileFileSystemCacheMaxBytes()J
    .locals 2

    .line 212
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheMaxBytes:J

    return-wide v0
.end method

.method public getTileFileSystemCacheTrimBytes()J
    .locals 2

    .line 222
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheTrimBytes:J

    return-wide v0
.end method

.method public getTileFileSystemMaxQueueSize()S
    .locals 1

    .line 202
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    return v0
.end method

.method public getTileFileSystemThreads()S
    .locals 1

    .line 182
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    return v0
.end method

.method public getTileGCBulkPauseInMillis()J
    .locals 2

    .line 574
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkPauseInMillis:J

    return-wide v0
.end method

.method public getTileGCBulkSize()I
    .locals 1

    .line 564
    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkSize:I

    return v0
.end method

.method public getTileGCFrequencyInMillis()J
    .locals 2

    .line 554
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCFrequencyInMillis:J

    return-wide v0
.end method

.method public getUserAgentHttpHeader()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentHttpHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentValue()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentValue:Ljava/lang/String;

    return-object v0
.end method

.method public isDebugMapTileDownloader()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    return v0
.end method

.method public isDebugMapView()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    return v0
.end method

.method public isDebugMode()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    return v0
.end method

.method public isDebugTileProviders()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    return v0
.end method

.method public isEnforceTileSystemBounds()Z
    .locals 1

    .line 602
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->enforceTileSystemBounds:Z

    return v0
.end method

.method public isMapTileDownloaderFollowRedirects()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileDownloaderFollowRedirects:Z

    return v0
.end method

.method public isMapViewHardwareAccelerated()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    return v0
.end method

.method public isMapViewRecyclerFriendly()Z
    .locals 1

    .line 534
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .line 326
    invoke-direct {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->computeNormalizedUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mNormalizedUserAgent:Ljava/lang/String;

    .line 331
    const-string v0, "osmdroid.basePath"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "basePathStr":Ljava/lang/String;
    const-string v3, "osmdroid.cachePath"

    if-eqz v2, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 353
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    .line 354
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    .line 355
    const-string v0, "osmdroid.DebugMode"

    iget-boolean v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugMode(Z)V

    .line 356
    const-string v0, "osmdroid.DebugDownloading"

    iget-boolean v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugMapTileDownloader(Z)V

    .line 357
    const-string v0, "osmdroid.DebugMapView"

    iget-boolean v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugMapView(Z)V

    .line 358
    const-string v0, "osmdroid.DebugTileProvider"

    iget-boolean v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugTileProviders(Z)V

    .line 359
    const-string v0, "osmdroid.HardwareAcceleration"

    iget-boolean v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setMapViewHardwareAccelerated(Z)V

    .line 360
    const-string v0, "osmdroid.userAgentValue"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setUserAgentValue(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    const-string v3, "osmdroid.additionalHttpRequestProperty."

    invoke-static {p2, v0, v3}, Lorg/osmdroid/config/DefaultConfigurationProvider;->load(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;)V

    .line 362
    const-string v0, "osmdroid.gpsWaitTime"

    iget-wide v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    invoke-interface {p2, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setGpsWaitTime(J)V

    .line 363
    const-string v0, "osmdroid.tileDownloadThreads"

    iget-short v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileDownloadThreads(S)V

    .line 364
    const-string v0, "osmdroid.tileFileSystemThreads"

    iget-short v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemThreads(S)V

    .line 365
    const-string v0, "osmdroid.tileDownloadMaxQueueSize"

    iget-short v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileDownloadMaxQueueSize(S)V

    .line 366
    const-string v0, "osmdroid.tileFileSystemMaxQueueSize"

    iget-short v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemMaxQueueSize(S)V

    .line 367
    const-string v0, "osmdroid.ExpirationExtendedDuration"

    iget-wide v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    invoke-interface {p2, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setExpirationExtendedDuration(J)V

    .line 368
    const-string v0, "osmdroid.mapViewRecycler"

    iget-boolean v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setMapViewRecyclerFriendly(Z)V

    .line 369
    const-string v0, "osmdroid.ZoomSpeedDefault"

    iget v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setAnimationSpeedDefault(I)V

    .line 370
    const-string v0, "osmdroid.animationSpeedShort"

    iget v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setAnimationSpeedShort(I)V

    .line 371
    const-string v0, "osmdroid.cacheTileOvershoot"

    iget-short v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheTileOvershoot:S

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setCacheMapTileOvershoot(S)V

    .line 372
    const-string v0, "osmdroid.TileDownloaderFollowRedirects"

    iget-boolean v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileDownloaderFollowRedirects:Z

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setMapTileDownloaderFollowRedirects(Z)V

    .line 373
    const-string v0, "osmdroid.enforceTileSystemBounds"

    const/4 v3, 0x0

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setEnforceTileSystemBounds(Z)V

    .line 374
    const-string v0, "osmdroid.ExpirationOverride"

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 375
    const-wide/16 v3, -0x1

    invoke-interface {p2, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    .line 376
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_4

    .line 377
    iput-object v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    goto :goto_1

    .line 334
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 335
    .local v1, "discoveredBasePath":Ljava/io/File;
    invoke-virtual {p0, p1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 336
    .local v4, "discoveredCachePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 338
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "osmdroid"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v5

    .line 339
    new-instance v5, Ljava/io/File;

    const-string v6, "tiles"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v5

    .line 340
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 343
    :cond_3
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 344
    .local v5, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-static {v5}, Lorg/osmdroid/config/DefaultConfigurationProvider;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 347
    invoke-virtual {p0, v1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    .line 348
    invoke-virtual {p0, v4}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setUserAgentValue(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/config/DefaultConfigurationProvider;->save(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 351
    .end local v1    # "discoveredBasePath":Ljava/io/File;
    .end local v4    # "discoveredCachePath":Ljava/io/File;
    .end local v5    # "edit":Landroid/content/SharedPreferences$Editor;
    nop

    .line 382
    :cond_4
    :goto_1
    nop

    .line 391
    const-wide/16 v0, 0x0

    .line 392
    .local v0, "cacheSize":J
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cache.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .local v3, "dbFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 394
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 397
    :cond_5
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    .line 400
    .local v4, "freeSpace":J
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v6

    add-long v8, v4, v0

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    .line 401
    add-long v6, v4, v0

    long-to-double v6, v6

    const-wide v8, 0x3fee666666666666L    # 0.95

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-virtual {p0, v6, v7}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemCacheMaxBytes(J)V

    .line 402
    add-long v6, v4, v0

    long-to-double v6, v6

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-virtual {p0, v6, v7}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemCacheTrimBytes(J)V

    .line 405
    .end local v0    # "cacheSize":J
    .end local v3    # "dbFile":Ljava/io/File;
    .end local v4    # "freeSpace":J
    :cond_6
    return-void
.end method

.method public save(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .line 409
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 410
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "osmdroid.basePath"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "osmdroid.cachePath"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 412
    const-string v1, "osmdroid.DebugMode"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugMode()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 413
    const-string v1, "osmdroid.DebugDownloading"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugMapTileDownloader()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 414
    const-string v1, "osmdroid.DebugMapView"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugMapView()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 415
    const-string v1, "osmdroid.DebugTileProvider"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugTileProviders()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 416
    const-string v1, "osmdroid.HardwareAcceleration"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 417
    const-string v1, "osmdroid.TileDownloaderFollowRedirects"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapTileDownloaderFollowRedirects()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 418
    const-string v1, "osmdroid.userAgentValue"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 419
    iget-object v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    const-string v2, "osmdroid.additionalHttpRequestProperty."

    invoke-static {p2, v0, v1, v2}, Lorg/osmdroid/config/DefaultConfigurationProvider;->save(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Ljava/lang/String;)V

    .line 420
    const-string v1, "osmdroid.gpsWaitTime"

    iget-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 421
    const-string v1, "osmdroid.cacheMapTileCount"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 422
    const-string v1, "osmdroid.tileDownloadThreads"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 423
    const-string v1, "osmdroid.tileFileSystemThreads"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 424
    const-string v1, "osmdroid.tileDownloadMaxQueueSize"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 425
    const-string v1, "osmdroid.tileFileSystemMaxQueueSize"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 426
    const-string v1, "osmdroid.ExpirationExtendedDuration"

    iget-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 427
    iget-object v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 428
    const-string v2, "osmdroid.ExpirationOverride"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 430
    :cond_0
    const-string v1, "osmdroid.ZoomSpeedDefault"

    iget v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 431
    const-string v1, "osmdroid.animationSpeedShort"

    iget v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 432
    const-string v1, "osmdroid.mapViewRecycler"

    iget-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 433
    const-string v1, "osmdroid.cacheTileOvershoot"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheTileOvershoot:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 434
    const-string v1, "osmdroid.enforceTileSystemBounds"

    iget-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->enforceTileSystemBounds:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 435
    invoke-static {v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 436
    return-void
.end method

.method public setAnimationSpeedDefault(I)V
    .locals 0
    .param p1, "durationsMilliseconds"    # I

    .line 514
    iput p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    .line 515
    return-void
.end method

.method public setAnimationSpeedShort(I)V
    .locals 0
    .param p1, "durationsMilliseconds"    # I

    .line 524
    iput p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    .line 525
    return-void
.end method

.method public setCacheMapTileCount(S)V
    .locals 0
    .param p1, "cacheMapTileCount"    # S

    .line 167
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    .line 168
    return-void
.end method

.method public setCacheMapTileOvershoot(S)V
    .locals 0
    .param p1, "value"    # S

    .line 544
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheTileOvershoot:S

    .line 545
    return-void
.end method

.method public setDebugMapTileDownloader(Z)V
    .locals 0
    .param p1, "debugMapTileDownloader"    # Z

    .line 132
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    .line 133
    return-void
.end method

.method public setDebugMapView(Z)V
    .locals 0
    .param p1, "debugMapView"    # Z

    .line 112
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    .line 113
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0
    .param p1, "debugMode"    # Z

    .line 102
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    .line 103
    return-void
.end method

.method public setDebugTileProviders(Z)V
    .locals 0
    .param p1, "debugTileProviders"    # Z

    .line 122
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    .line 123
    return-void
.end method

.method public setEnforceTileSystemBounds(Z)V
    .locals 0
    .param p1, "mValue"    # Z

    .line 607
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->enforceTileSystemBounds:Z

    .line 608
    return-void
.end method

.method public setExpirationExtendedDuration(J)V
    .locals 3
    .param p1, "period"    # J

    .line 496
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 497
    iput-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    goto :goto_0

    .line 499
    :cond_0
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    .line 500
    :goto_0
    return-void
.end method

.method public setExpirationOverrideDuration(Ljava/lang/Long;)V
    .locals 0
    .param p1, "period"    # Ljava/lang/Long;

    .line 504
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    .line 505
    return-void
.end method

.method public setGpsWaitTime(J)V
    .locals 0
    .param p1, "gpsWaitTime"    # J

    .line 92
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    .line 93
    return-void
.end method

.method public setHttpHeaderDateTimeFormat(Ljava/text/SimpleDateFormat;)V
    .locals 0
    .param p1, "httpHeaderDateTimeFormat"    # Ljava/text/SimpleDateFormat;

    .line 237
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

    .line 238
    return-void
.end method

.method public setHttpProxy(Ljava/net/Proxy;)V
    .locals 0
    .param p1, "httpProxy"    # Ljava/net/Proxy;

    .line 247
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpProxy:Ljava/net/Proxy;

    .line 248
    return-void
.end method

.method public setMapTileDownloaderFollowRedirects(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 584
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileDownloaderFollowRedirects:Z

    .line 585
    return-void
.end method

.method public setMapViewHardwareAccelerated(Z)V
    .locals 0
    .param p1, "mapViewHardwareAccelerated"    # Z

    .line 142
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    .line 143
    return-void
.end method

.method public setMapViewRecyclerFriendly(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 539
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    .line 540
    return-void
.end method

.method public setOsmdroidBasePath(Ljava/io/File;)V
    .locals 0
    .param p1, "osmdroidBasePath"    # Ljava/io/File;

    .line 285
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    .line 286
    return-void
.end method

.method public setOsmdroidTileCache(Ljava/io/File;)V
    .locals 0
    .param p1, "osmdroidTileCache"    # Ljava/io/File;

    .line 310
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    .line 311
    return-void
.end method

.method public setTileDownloadMaxQueueSize(S)V
    .locals 0
    .param p1, "tileDownloadMaxQueueSize"    # S

    .line 197
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    .line 198
    return-void
.end method

.method public setTileDownloadThreads(S)V
    .locals 0
    .param p1, "tileDownloadThreads"    # S

    .line 177
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    .line 178
    return-void
.end method

.method public setTileFileSystemCacheMaxBytes(J)V
    .locals 0
    .param p1, "tileFileSystemCacheMaxBytes"    # J

    .line 217
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheMaxBytes:J

    .line 218
    return-void
.end method

.method public setTileFileSystemCacheTrimBytes(J)V
    .locals 0
    .param p1, "tileFileSystemCacheTrimBytes"    # J

    .line 227
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheTrimBytes:J

    .line 228
    return-void
.end method

.method public setTileFileSystemMaxQueueSize(S)V
    .locals 0
    .param p1, "tileFileSystemMaxQueueSize"    # S

    .line 207
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    .line 208
    return-void
.end method

.method public setTileFileSystemThreads(S)V
    .locals 0
    .param p1, "tileFileSystemThreads"    # S

    .line 187
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    .line 188
    return-void
.end method

.method public setTileGCBulkPauseInMillis(J)V
    .locals 0
    .param p1, "pMillis"    # J

    .line 579
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkPauseInMillis:J

    .line 580
    return-void
.end method

.method public setTileGCBulkSize(I)V
    .locals 0
    .param p1, "pSize"    # I

    .line 569
    iput p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCBulkSize:I

    .line 570
    return-void
.end method

.method public setTileGCFrequencyInMillis(J)V
    .locals 0
    .param p1, "pMillis"    # J

    .line 559
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mTileGCFrequencyInMillis:J

    .line 560
    return-void
.end method

.method public setUserAgentHttpHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgentHttpHeader"    # Ljava/lang/String;

    .line 320
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentHttpHeader:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setUserAgentValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgentValue"    # Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentValue:Ljava/lang/String;

    .line 153
    return-void
.end method
