.class Lorg/mapsforge/map/reader/QueryParameters;
.super Ljava/lang/Object;
.source "QueryParameters.java"


# instance fields
.field fromBaseTileX:J

.field fromBaseTileY:J

.field fromBlockX:J

.field fromBlockY:J

.field queryTileBitmask:I

.field queryZoomLevel:I

.field toBaseTileX:J

.field toBaseTileY:J

.field toBlockX:J

.field toBlockY:J

.field useTileBitmask:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateBaseTiles(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/reader/header/SubFileParameter;)V
    .locals 6
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;
    .param p3, "subFileParameter"    # Lorg/mapsforge/map/reader/header/SubFileParameter;

    .line 64
    iget-byte v0, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget-byte v1, p3, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    .line 66
    iget-byte v0, p3, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    iget-byte v1, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    sub-int/2addr v0, v1

    .line 67
    .local v0, "zoomLevelDifference":I
    iget v1, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    shl-int/2addr v1, v0

    int-to-long v4, v1

    iput-wide v4, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    .line 68
    iget v1, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    shl-int/2addr v1, v0

    int-to-long v4, v1

    iput-wide v4, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    .line 69
    iget v1, p2, Lorg/mapsforge/core/model/Tile;->tileX:I

    shl-int/2addr v1, v0

    shl-int v4, v3, v0

    add-int/2addr v1, v4

    sub-int/2addr v1, v3

    int-to-long v4, v1

    iput-wide v4, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileX:J

    .line 70
    iget v1, p2, Lorg/mapsforge/core/model/Tile;->tileY:I

    shl-int/2addr v1, v0

    shl-int v4, v3, v0

    add-int/2addr v1, v4

    sub-int/2addr v1, v3

    int-to-long v3, v1

    iput-wide v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileY:J

    .line 71
    iput-boolean v2, p0, Lorg/mapsforge/map/reader/QueryParameters;->useTileBitmask:Z

    .line 72
    .end local v0    # "zoomLevelDifference":I
    goto :goto_0

    :cond_0
    iget-byte v0, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget-byte v1, p3, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    if-le v0, v1, :cond_1

    .line 74
    iget-byte v0, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget-byte v1, p3, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    sub-int/2addr v0, v1

    .line 75
    .restart local v0    # "zoomLevelDifference":I
    iget v1, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    ushr-int/2addr v1, v0

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    .line 76
    iget v1, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    ushr-int/2addr v1, v0

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    .line 77
    iget v1, p2, Lorg/mapsforge/core/model/Tile;->tileX:I

    ushr-int/2addr v1, v0

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileX:J

    .line 78
    iget v1, p2, Lorg/mapsforge/core/model/Tile;->tileY:I

    ushr-int/2addr v1, v0

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileY:J

    .line 82
    iput-boolean v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->useTileBitmask:Z

    .line 83
    invoke-static {p1, p2, v0}, Lorg/mapsforge/map/reader/QueryCalculations;->calculateTileBitmask(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;I)I

    move-result v1

    iput v1, p0, Lorg/mapsforge/map/reader/QueryParameters;->queryTileBitmask:I

    .line 84
    .end local v0    # "zoomLevelDifference":I
    goto :goto_0

    .line 86
    :cond_1
    iget v0, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    .line 87
    iget v0, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    .line 88
    iget v0, p2, Lorg/mapsforge/core/model/Tile;->tileX:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileX:J

    .line 89
    iget v0, p2, Lorg/mapsforge/core/model/Tile;->tileY:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileY:J

    .line 90
    iput-boolean v2, p0, Lorg/mapsforge/map/reader/QueryParameters;->useTileBitmask:Z

    .line 92
    :goto_0
    return-void
.end method

.method public calculateBaseTiles(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/reader/header/SubFileParameter;)V
    .locals 10
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "subFileParameter"    # Lorg/mapsforge/map/reader/header/SubFileParameter;

    .line 36
    iget-byte v0, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget-byte v1, p2, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    .line 38
    iget-byte v0, p2, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    iget-byte v1, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    sub-int/2addr v0, v1

    .line 39
    .local v0, "zoomLevelDifference":I
    iget v1, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    shl-int/2addr v1, v0

    int-to-long v4, v1

    iput-wide v4, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    .line 40
    iget v1, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    shl-int/2addr v1, v0

    int-to-long v4, v1

    iput-wide v4, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    .line 41
    iget-wide v6, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    shl-int v1, v3, v0

    int-to-long v8, v1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileX:J

    .line 42
    shl-int v1, v3, v0

    int-to-long v6, v1

    add-long/2addr v4, v6

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileY:J

    .line 43
    iput-boolean v2, p0, Lorg/mapsforge/map/reader/QueryParameters;->useTileBitmask:Z

    .line 44
    .end local v0    # "zoomLevelDifference":I
    goto :goto_0

    :cond_0
    iget-byte v0, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget-byte v1, p2, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    if-le v0, v1, :cond_1

    .line 46
    iget-byte v0, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget-byte v1, p2, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    sub-int/2addr v0, v1

    .line 47
    .restart local v0    # "zoomLevelDifference":I
    iget v1, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    ushr-int/2addr v1, v0

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    .line 48
    iget v1, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    ushr-int/2addr v1, v0

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    .line 49
    iget-wide v4, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    iput-wide v4, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileX:J

    .line 50
    iput-wide v1, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileY:J

    .line 51
    iput-boolean v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->useTileBitmask:Z

    .line 52
    invoke-static {p1, v0}, Lorg/mapsforge/map/reader/QueryCalculations;->calculateTileBitmask(Lorg/mapsforge/core/model/Tile;I)I

    move-result v1

    iput v1, p0, Lorg/mapsforge/map/reader/QueryParameters;->queryTileBitmask:I

    .line 53
    .end local v0    # "zoomLevelDifference":I
    goto :goto_0

    .line 55
    :cond_1
    iget v0, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    .line 56
    iget v0, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    .line 57
    iget-wide v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    iput-wide v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileX:J

    .line 58
    iput-wide v0, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileY:J

    .line 59
    iput-boolean v2, p0, Lorg/mapsforge/map/reader/QueryParameters;->useTileBitmask:Z

    .line 61
    :goto_0
    return-void
.end method

.method public calculateBlocks(Lorg/mapsforge/map/reader/header/SubFileParameter;)V
    .locals 6
    .param p1, "subFileParameter"    # Lorg/mapsforge/map/reader/header/SubFileParameter;

    .line 97
    iget-wide v0, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    iget-wide v2, p1, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileLeft:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBlockX:J

    .line 98
    iget-wide v0, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    iget-wide v4, p1, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileTop:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBlockY:J

    .line 99
    iget-wide v0, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileX:J

    iget-wide v2, p1, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileLeft:J

    sub-long/2addr v0, v2

    iget-wide v2, p1, Lorg/mapsforge/map/reader/header/SubFileParameter;->blocksWidth:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBlockX:J

    .line 101
    iget-wide v0, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileY:J

    iget-wide v2, p1, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileTop:J

    sub-long/2addr v0, v2

    iget-wide v2, p1, Lorg/mapsforge/map/reader/header/SubFileParameter;->blocksHeight:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBlockY:J

    .line 103
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 108
    return v0

    .line 109
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/map/reader/QueryParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 110
    return v2

    .line 112
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/map/reader/QueryParameters;

    .line 113
    .local v1, "other":Lorg/mapsforge/map/reader/QueryParameters;
    iget-wide v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    iget-wide v5, v1, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBlockX:J

    iget-wide v5, v1, Lorg/mapsforge/map/reader/QueryParameters;->fromBlockX:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    iget-wide v5, v1, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBlockY:J

    iget-wide v5, v1, Lorg/mapsforge/map/reader/QueryParameters;->fromBlockY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->queryTileBitmask:I

    iget v4, v1, Lorg/mapsforge/map/reader/QueryParameters;->queryTileBitmask:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->queryZoomLevel:I

    iget v4, v1, Lorg/mapsforge/map/reader/QueryParameters;->queryZoomLevel:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileX:J

    iget-wide v5, v1, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileX:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileY:J

    iget-wide v5, v1, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBlockX:J

    iget-wide v5, v1, Lorg/mapsforge/map/reader/QueryParameters;->toBlockX:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBlockY:J

    iget-wide v5, v1, Lorg/mapsforge/map/reader/QueryParameters;->toBlockY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/mapsforge/map/reader/QueryParameters;->useTileBitmask:Z

    iget-boolean v4, v1, Lorg/mapsforge/map/reader/QueryParameters;->useTileBitmask:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 129
    const/4 v0, 0x7

    .line 130
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileX:J

    const/16 v4, 0x10

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 131
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBaseTileY:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 132
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileX:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 133
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBaseTileY:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 134
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBlockX:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 135
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lorg/mapsforge/map/reader/QueryParameters;->fromBlockY:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 136
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBlockX:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 137
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lorg/mapsforge/map/reader/QueryParameters;->toBlockY:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 138
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/mapsforge/map/reader/QueryParameters;->queryZoomLevel:I

    add-int/2addr v1, v2

    .line 139
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/mapsforge/map/reader/QueryParameters;->queryTileBitmask:I

    add-int/2addr v0, v2

    .line 140
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
