.class public Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;
.super Ljava/lang/Object;
.source "TileSourcePolicy.java"


# static fields
.field public static final FLAG_NO_BULK:I = 0x1

.field public static final FLAG_NO_PREVENTIVE:I = 0x2

.field public static final FLAG_USER_AGENT_MEANINGFUL:I = 0x4

.field public static final FLAG_USER_AGENT_NORMALIZED:I = 0x8


# instance fields
.field private final mFlags:I

.field private final mMaxConcurrent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;-><init>(II)V

    .line 56
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "pMaxConcurrent"    # I
    .param p2, "pFlags"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->mMaxConcurrent:I

    .line 61
    iput p2, p0, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->mFlags:I

    .line 62
    return-void
.end method

.method private acceptsMeaninglessUserAgent()Z
    .locals 1

    .line 73
    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public acceptsBulkDownload()Z
    .locals 2

    .line 69
    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public acceptsPreventive()Z
    .locals 1

    .line 81
    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public acceptsUserAgent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pUserAgent"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->acceptsMeaninglessUserAgent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 86
    return v1

    .line 88
    :cond_0
    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 90
    const-string v0, "osmdroid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 88
    :goto_0
    return v1
.end method

.method public computeExpirationTime(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 8
    .param p1, "pHttpExpiresHeader"    # Ljava/lang/String;
    .param p2, "pHttpCacheControlHeader"    # Ljava/lang/String;
    .param p3, "pNow"    # J

    .line 143
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getExpirationOverrideDuration()Ljava/lang/Long;

    move-result-object v0

    .line 144
    .local v0, "override":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, p3

    return-wide v1

    .line 148
    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getExpirationExtendedDuration()J

    move-result-wide v1

    .line 149
    .local v1, "extension":J
    invoke-virtual {p0, p2}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->getHttpCacheControlDuration(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 150
    .local v3, "cacheControlDuration":Ljava/lang/Long;
    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v4, p3

    add-long/2addr v4, v1

    return-wide v4

    .line 154
    :cond_1
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->getHttpExpiresTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 155
    .local v4, "httpExpiresTime":Ljava/lang/Long;
    if-eqz v4, :cond_2

    .line 156
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v1

    return-wide v5

    .line 159
    :cond_2
    const-wide/32 v5, 0x240c8400

    add-long/2addr v5, p3

    add-long/2addr v5, v1

    return-wide v5
.end method

.method public computeExpirationTime(Ljava/net/HttpURLConnection;J)J
    .locals 6
    .param p1, "pHttpURLConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "pNow"    # J

    .line 167
    const-string v0, "Expires"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "expires":Ljava/lang/String;
    const-string v1, "Cache-Control"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "cacheControl":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->computeExpirationTime(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 170
    .local v2, "result":J
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeExpirationTime(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OsmDroid"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    return-wide v2
.end method

.method public getHttpCacheControlDuration(Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "pHttpCacheControlHeader"    # Ljava/lang/String;

    .line 117
    const-string v0, "max-age="

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 119
    :try_start_0
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "parts":[Ljava/lang/String;
    move-object v2, v0

    .line 121
    .local v2, "maxAge":Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 122
    .local v5, "part":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 123
    .local v6, "pos":I
    if-nez v6, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "durationString":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 121
    .end local v0    # "durationString":Ljava/lang/String;
    .end local v5    # "part":Ljava/lang/String;
    .end local v6    # "pos":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "maxAge":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse cache control tag for tile, server returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OsmDroid"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpExpiresTime(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "pHttpExpiresHeader"    # Ljava/lang/String;

    .line 99
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    :try_start_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getHttpHeaderDateTimeFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 102
    .local v0, "dateExpires":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 103
    .end local v0    # "dateExpires":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse expiration tag for tile, server returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OsmDroid"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxConcurrent()I
    .locals 1

    .line 65
    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->mMaxConcurrent:I

    return v0
.end method

.method public normalizesUserAgent()Z
    .locals 1

    .line 77
    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
