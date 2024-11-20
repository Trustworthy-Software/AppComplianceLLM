.class public abstract Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;
.super Ljava/lang/Object;
.source "AbstractTileSource.java"

# interfaces
.implements Lorg/mapsforge/map/layer/download/tilesource/TileSource;


# static fields
.field private static final TIMEOUT_CONNECT:I = 0x1388

.field private static final TIMEOUT_READ:I = 0x2710


# instance fields
.field protected apiKey:Ljava/lang/String;

.field protected authorization:Ljava/lang/String;

.field protected defaultTimeToLive:J

.field protected followRedirects:Z

.field protected final hostNames:[Ljava/lang/String;

.field protected keyName:Ljava/lang/String;

.field protected final port:I

.field protected final random:Ljava/util/Random;

.field protected referer:Ljava/lang/String;

.field protected timeoutConnect:I

.field protected timeoutRead:I

.field protected userAgent:Ljava/lang/String;


# direct methods
.method protected constructor <init>([Ljava/lang/String;I)V
    .locals 4
    .param p1, "hostNames"    # [Ljava/lang/String;
    .param p2, "port"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->defaultTimeToLive:J

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->followRedirects:Z

    .line 45
    const-string v0, "key"

    iput-object v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->keyName:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->random:Ljava/util/Random;

    .line 49
    const/16 v0, 0x1388

    iput v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->timeoutConnect:I

    .line 50
    const/16 v0, 0x2710

    iput v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->timeoutRead:I

    .line 54
    if-eqz p1, :cond_3

    array-length v0, p1

    if-eqz v0, :cond_3

    .line 57
    if-ltz p2, :cond_2

    const v0, 0xffff

    if-gt p2, v0, :cond_2

    .line 60
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 61
    .local v2, "hostname":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    .end local v2    # "hostname":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .restart local v2    # "hostname":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty host name in host name list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    .end local v2    # "hostname":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->hostNames:[Ljava/lang/String;

    .line 67
    iput p2, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->port:I

    .line 68
    return-void

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid port number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no host names specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 72
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 73
    return v0

    .line 74
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 75
    return v2

    .line 77
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;

    .line 78
    .local v1, "other":Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;
    iget-object v3, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->hostNames:[Ljava/lang/String;

    iget-object v4, v1, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->hostNames:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 79
    return v2

    .line 80
    :cond_2
    iget v3, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->port:I

    iget v4, v1, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->port:I

    if-eq v3, v4, :cond_3

    .line 81
    return v2

    .line 83
    :cond_3
    return v0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorization()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->authorization:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultTimeToLive()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->defaultTimeToLive:J

    return-wide v0
.end method

.method protected getHostName()Ljava/lang/String;
    .locals 3

    .line 104
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->hostNames:[Ljava/lang/String;

    iget-object v1, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->random:Ljava/util/Random;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public getReferer()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->referer:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeoutConnect()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->timeoutConnect:I

    return v0
.end method

.method public getTimeoutRead()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->timeoutRead:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 133
    const/16 v0, 0x1f

    .line 134
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 135
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->hostNames:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 136
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->port:I

    add-int/2addr v1, v3

    .line 137
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isFollowRedirects()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->followRedirects:Z

    return v0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "apiKey"    # Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->apiKey:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setAuthorization(Ljava/lang/String;)V
    .locals 0
    .param p1, "authorization"    # Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->authorization:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setFollowRedirects(Z)V
    .locals 0
    .param p1, "followRedirects"    # Z

    .line 154
    iput-boolean p1, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->followRedirects:Z

    .line 155
    return-void
.end method

.method public setKeyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;

    .line 158
    iput-object p1, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->keyName:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setReferer(Ljava/lang/String;)V
    .locals 0
    .param p1, "referer"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->referer:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setTimeoutConnect(I)V
    .locals 0
    .param p1, "timeoutConnect"    # I

    .line 166
    iput p1, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->timeoutConnect:I

    .line 167
    return-void
.end method

.method public setTimeoutRead(I)V
    .locals 0
    .param p1, "timeoutRead"    # I

    .line 170
    iput p1, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->timeoutRead:I

    .line 171
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 174
    iput-object p1, p0, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->userAgent:Ljava/lang/String;

    .line 175
    return-void
.end method
