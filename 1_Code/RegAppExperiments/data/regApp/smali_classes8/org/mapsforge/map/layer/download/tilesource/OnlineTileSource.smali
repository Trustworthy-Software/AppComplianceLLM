.class public Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;
.super Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;
.source "OnlineTileSource.java"


# instance fields
.field private alpha:Z

.field private baseUrl:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parallelRequestsLimit:I

.field private protocol:Ljava/lang/String;

.field private tileSize:I

.field private zoomLevelMax:B

.field private zoomLevelMin:B


# direct methods
.method public constructor <init>([Ljava/lang/String;I)V
    .locals 2
    .param p1, "hostNames"    # [Ljava/lang/String;
    .param p2, "port"    # I

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;-><init>([Ljava/lang/String;I)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->alpha:Z

    .line 24
    const-string v1, "/"

    iput-object v1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->baseUrl:Ljava/lang/String;

    .line 25
    const-string v1, "png"

    iput-object v1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->extension:Ljava/lang/String;

    .line 27
    const/16 v1, 0x8

    iput v1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->parallelRequestsLimit:I

    .line 28
    const-string v1, "http"

    iput-object v1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->protocol:Ljava/lang/String;

    .line 29
    const/16 v1, 0x100

    iput v1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->tileSize:I

    .line 30
    const/16 v1, 0x12

    iput-byte v1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->zoomLevelMax:B

    .line 31
    iput-byte v0, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->zoomLevelMin:B

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 39
    invoke-super {p0, p1}, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 40
    return v1

    .line 42
    :cond_0
    instance-of v0, p1, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;

    if-nez v0, :cond_1

    .line 43
    return v1

    .line 45
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;

    .line 46
    .local v0, "other":Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;
    iget-object v2, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->baseUrl:Ljava/lang/String;

    iget-object v3, v0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 47
    return v1

    .line 49
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParallelRequestsLimit()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->parallelRequestsLimit:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getTileSize()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->tileSize:I

    return v0
.end method

.method public getTileUrl(Lorg/mapsforge/core/model/Tile;)Ljava/net/URL;
    .locals 6
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-byte v1, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    iget v2, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->extension:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->apiKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 89
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->keyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->apiKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->protocol:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->getHostName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->port:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method public getZoomLevelMax()B
    .locals 1

    .line 97
    iget-byte v0, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->zoomLevelMax:B

    return v0
.end method

.method public getZoomLevelMin()B
    .locals 1

    .line 102
    iget-byte v0, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->zoomLevelMin:B

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->alpha:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 112
    const/16 v0, 0x1f

    .line 113
    .local v0, "prime":I
    invoke-super {p0}, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;->hashCode()I

    move-result v1

    .line 114
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->baseUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 115
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public setAlpha(Z)Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;
    .locals 0
    .param p1, "alpha"    # Z

    .line 119
    iput-boolean p1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->alpha:Z

    .line 120
    return-object p0
.end method

.method public setBaseUrl(Ljava/lang/String;)Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->baseUrl:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setExtension(Ljava/lang/String;)Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;
    .locals 0
    .param p1, "extension"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->extension:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->name:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public setParallelRequestsLimit(I)Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;
    .locals 0
    .param p1, "parallelRequestsLimit"    # I

    .line 139
    iput p1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->parallelRequestsLimit:I

    .line 140
    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->protocol:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setTileSize(I)Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;
    .locals 0
    .param p1, "tileSize"    # I

    .line 149
    iput p1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->tileSize:I

    .line 150
    return-object p0
.end method

.method public setZoomLevelMax(B)Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;
    .locals 0
    .param p1, "zoomLevelMax"    # B

    .line 154
    iput-byte p1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->zoomLevelMax:B

    .line 155
    return-object p0
.end method

.method public setZoomLevelMin(B)Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;
    .locals 0
    .param p1, "zoomLevelMin"    # B

    .line 159
    iput-byte p1, p0, Lorg/mapsforge/map/layer/download/tilesource/OnlineTileSource;->zoomLevelMin:B

    .line 160
    return-object p0
.end method
