.class final Lorg/mapsforge/map/reader/QueryCalculations;
.super Ljava/lang/Object;
.source "QueryCalculations.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static calculateTileBitmask(Lorg/mapsforge/core/model/Tile;I)I
    .locals 19
    .param p0, "tile"    # Lorg/mapsforge/core/model/Tile;
    .param p1, "zoomLevelDifference"    # I

    .line 23
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 24
    invoke-static/range {p0 .. p0}, Lorg/mapsforge/map/reader/QueryCalculations;->getFirstLevelTileBitmask(Lorg/mapsforge/core/model/Tile;)I

    move-result v2

    return v2

    .line 28
    :cond_0
    iget v3, v0, Lorg/mapsforge/core/model/Tile;->tileX:I

    add-int/lit8 v4, v1, -0x2

    ushr-int/2addr v3, v4

    int-to-long v3, v3

    .line 29
    .local v3, "subtileX":J
    iget v5, v0, Lorg/mapsforge/core/model/Tile;->tileY:I

    add-int/lit8 v6, v1, -0x2

    ushr-int/2addr v5, v6

    int-to-long v5, v5

    .line 32
    .local v5, "subtileY":J
    ushr-long v7, v3, v2

    .line 33
    .local v7, "parentTileX":J
    ushr-long v9, v5, v2

    .line 36
    .local v9, "parentTileY":J
    const-wide/16 v11, 0x2

    rem-long v13, v7, v11

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-nez v2, :cond_1

    rem-long v13, v9, v11

    cmp-long v2, v13, v15

    if-nez v2, :cond_1

    .line 37
    invoke-static {v3, v4, v5, v6}, Lorg/mapsforge/map/reader/QueryCalculations;->getSecondLevelTileBitmaskUpperLeft(JJ)I

    move-result v2

    return v2

    .line 38
    :cond_1
    rem-long v13, v7, v11

    const-wide/16 v17, 0x1

    cmp-long v2, v13, v17

    if-nez v2, :cond_2

    rem-long v13, v9, v11

    cmp-long v2, v13, v15

    if-nez v2, :cond_2

    .line 39
    invoke-static {v3, v4, v5, v6}, Lorg/mapsforge/map/reader/QueryCalculations;->getSecondLevelTileBitmaskUpperRight(JJ)I

    move-result v2

    return v2

    .line 40
    :cond_2
    rem-long v13, v7, v11

    cmp-long v2, v13, v15

    if-nez v2, :cond_3

    rem-long v11, v9, v11

    cmp-long v2, v11, v17

    if-nez v2, :cond_3

    .line 41
    invoke-static {v3, v4, v5, v6}, Lorg/mapsforge/map/reader/QueryCalculations;->getSecondLevelTileBitmaskLowerLeft(JJ)I

    move-result v2

    return v2

    .line 43
    :cond_3
    invoke-static {v3, v4, v5, v6}, Lorg/mapsforge/map/reader/QueryCalculations;->getSecondLevelTileBitmaskLowerRight(JJ)I

    move-result v2

    return v2
.end method

.method static calculateTileBitmask(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;I)I
    .locals 6
    .param p0, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p1, "lowerRight"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "zoomLevelDifference"    # I

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "bitmask":I
    iget v1, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    .local v1, "x":I
    :goto_0
    iget v2, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    if-gt v1, v2, :cond_1

    .line 50
    iget v2, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    .local v2, "y":I
    :goto_1
    iget v3, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    if-gt v2, v3, :cond_0

    .line 51
    new-instance v3, Lorg/mapsforge/core/model/Tile;

    iget-byte v4, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget v5, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    .line 52
    .local v3, "current":Lorg/mapsforge/core/model/Tile;
    invoke-static {v3, p2}, Lorg/mapsforge/map/reader/QueryCalculations;->calculateTileBitmask(Lorg/mapsforge/core/model/Tile;I)I

    move-result v4

    or-int/2addr v0, v4

    .line 50
    .end local v3    # "current":Lorg/mapsforge/core/model/Tile;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 49
    .end local v2    # "y":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "x":I
    :cond_1
    return v0
.end method

.method private static getFirstLevelTileBitmask(Lorg/mapsforge/core/model/Tile;)I
    .locals 2
    .param p0, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 59
    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 61
    const v0, 0xcc00

    return v0

    .line 62
    :cond_0
    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 64
    const/16 v0, 0x3300

    return v0

    .line 65
    :cond_1
    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_2

    .line 67
    const/16 v0, 0xcc

    return v0

    .line 70
    :cond_2
    const/16 v0, 0x33

    return v0
.end method

.method private static getSecondLevelTileBitmaskLowerLeft(JJ)I
    .locals 8
    .param p0, "subtileX"    # J
    .param p2, "subtileY"    # J

    .line 75
    const-wide/16 v0, 0x2

    rem-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    rem-long v2, p2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 77
    const/16 v0, 0x80

    return v0

    .line 78
    :cond_0
    rem-long v2, p0, v0

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    rem-long v2, p2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 80
    const/16 v0, 0x40

    return v0

    .line 81
    :cond_1
    rem-long v2, p0, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    rem-long v0, p2, v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    .line 83
    const/16 v0, 0x8

    return v0

    .line 86
    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method private static getSecondLevelTileBitmaskLowerRight(JJ)I
    .locals 8
    .param p0, "subtileX"    # J
    .param p2, "subtileY"    # J

    .line 91
    const-wide/16 v0, 0x2

    rem-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    rem-long v2, p2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 93
    const/16 v0, 0x20

    return v0

    .line 94
    :cond_0
    rem-long v2, p0, v0

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    rem-long v2, p2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 96
    const/16 v0, 0x10

    return v0

    .line 97
    :cond_1
    rem-long v2, p0, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    rem-long v0, p2, v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    .line 99
    const/4 v0, 0x2

    return v0

    .line 102
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static getSecondLevelTileBitmaskUpperLeft(JJ)I
    .locals 8
    .param p0, "subtileX"    # J
    .param p2, "subtileY"    # J

    .line 107
    const-wide/16 v0, 0x2

    rem-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    rem-long v2, p2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 109
    const v0, 0x8000

    return v0

    .line 110
    :cond_0
    rem-long v2, p0, v0

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    rem-long v2, p2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 112
    const/16 v0, 0x4000

    return v0

    .line 113
    :cond_1
    rem-long v2, p0, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    rem-long v0, p2, v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    .line 115
    const/16 v0, 0x800

    return v0

    .line 118
    :cond_2
    const/16 v0, 0x400

    return v0
.end method

.method private static getSecondLevelTileBitmaskUpperRight(JJ)I
    .locals 8
    .param p0, "subtileX"    # J
    .param p2, "subtileY"    # J

    .line 123
    const-wide/16 v0, 0x2

    rem-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    rem-long v2, p2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 125
    const/16 v0, 0x2000

    return v0

    .line 126
    :cond_0
    rem-long v2, p0, v0

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    rem-long v2, p2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 128
    const/16 v0, 0x1000

    return v0

    .line 129
    :cond_1
    rem-long v2, p0, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    rem-long v0, p2, v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    .line 131
    const/16 v0, 0x200

    return v0

    .line 134
    :cond_2
    const/16 v0, 0x100

    return v0
.end method
