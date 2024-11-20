.class public final Lorg/mapsforge/map/util/LayerUtil;
.super Ljava/lang/Object;
.source "LayerUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static collisionFreeOrdered(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/mapelements/MapElementContainer;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/mapelements/MapElementContainer;",
            ">;"
        }
    .end annotation

    .line 121
    .local p0, "input":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 125
    .local v0, "output":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/core/mapelements/MapElementContainer;

    .line 126
    .local v2, "item":Lorg/mapsforge/core/mapelements/MapElementContainer;
    const/4 v3, 0x1

    .line 127
    .local v3, "hasSpace":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/core/mapelements/MapElementContainer;

    .line 128
    .local v5, "outputElement":Lorg/mapsforge/core/mapelements/MapElementContainer;
    invoke-virtual {v5, v2}, Lorg/mapsforge/core/mapelements/MapElementContainer;->clashesWith(Lorg/mapsforge/core/mapelements/MapElementContainer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 129
    const/4 v3, 0x0

    .line 130
    goto :goto_2

    .line 132
    .end local v5    # "outputElement":Lorg/mapsforge/core/mapelements/MapElementContainer;
    :cond_0
    goto :goto_1

    .line 133
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 134
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v2    # "item":Lorg/mapsforge/core/mapelements/MapElementContainer;
    .end local v3    # "hasSpace":Z
    :cond_2
    goto :goto_0

    .line 137
    :cond_3
    return-object v0
.end method

.method public static getLowerRight(Lorg/mapsforge/core/model/BoundingBox;BI)Lorg/mapsforge/core/model/Tile;
    .locals 3
    .param p0, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p1, "zoomLevel"    # B
    .param p2, "tileSize"    # I

    .line 79
    iget-wide v0, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    invoke-static {v0, v1, p1}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToTileX(DB)I

    move-result v0

    .line 80
    .local v0, "tileRight":I
    iget-wide v1, p0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-static {v1, v2, p1}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToTileY(DB)I

    move-result v1

    .line 81
    .local v1, "tileBottom":I
    new-instance v2, Lorg/mapsforge/core/model/Tile;

    invoke-direct {v2, v0, v1, p1, p2}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    return-object v2
.end method

.method public static getTilePositions(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/model/Point;I)Ljava/util/List;
    .locals 18
    .param p0, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p1, "zoomLevel"    # B
    .param p2, "topLeftPoint"    # Lorg/mapsforge/core/model/Point;
    .param p3, "tileSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/core/model/BoundingBox;",
            "B",
            "Lorg/mapsforge/core/model/Point;",
            "I)",
            "Ljava/util/List<",
            "Lorg/mapsforge/map/layer/TilePosition;",
            ">;"
        }
    .end annotation

    .line 36
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-wide v4, v0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    invoke-static {v4, v5, v1}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToTileX(DB)I

    move-result v4

    .line 37
    .local v4, "tileLeft":I
    iget-wide v5, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    invoke-static {v5, v6, v1}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToTileY(DB)I

    move-result v5

    .line 38
    .local v5, "tileTop":I
    iget-wide v6, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    invoke-static {v6, v7, v1}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToTileX(DB)I

    move-result v6

    .line 39
    .local v6, "tileRight":I
    iget-wide v7, v0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-static {v7, v8, v1}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToTileY(DB)I

    move-result v7

    .line 41
    .local v7, "tileBottom":I
    sub-int v8, v6, v4

    add-int/lit8 v8, v8, 0x1

    sub-int v9, v7, v5

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v8, v9

    .line 42
    .local v8, "initialCapacity":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .local v9, "tilePositions":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/layer/TilePosition;>;"
    move v10, v5

    .local v10, "tileY":I
    :goto_0
    if-gt v10, v7, :cond_1

    .line 45
    move v11, v4

    .local v11, "tileX":I
    :goto_1
    if-gt v11, v6, :cond_0

    .line 46
    int-to-long v12, v11

    invoke-static {v12, v13, v3}, Lorg/mapsforge/core/util/MercatorProjection;->tileToPixel(JI)J

    move-result-wide v12

    long-to-double v12, v12

    iget-wide v14, v2, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v12, v14

    .line 47
    .local v12, "pixelX":D
    int-to-long v14, v10

    invoke-static {v14, v15, v3}, Lorg/mapsforge/core/util/MercatorProjection;->tileToPixel(JI)J

    move-result-wide v14

    long-to-double v14, v14

    move/from16 v16, v4

    move/from16 v17, v5

    .end local v4    # "tileLeft":I
    .end local v5    # "tileTop":I
    .local v16, "tileLeft":I
    .local v17, "tileTop":I
    iget-wide v4, v2, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v14, v4

    .line 49
    .local v14, "pixelY":D
    new-instance v4, Lorg/mapsforge/map/layer/TilePosition;

    new-instance v5, Lorg/mapsforge/core/model/Tile;

    invoke-direct {v5, v11, v10, v1, v3}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    new-instance v0, Lorg/mapsforge/core/model/Point;

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    invoke-direct {v4, v5, v0}, Lorg/mapsforge/map/layer/TilePosition;-><init>(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Point;)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v12    # "pixelX":D
    .end local v14    # "pixelY":D
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_1

    .end local v16    # "tileLeft":I
    .end local v17    # "tileTop":I
    .restart local v4    # "tileLeft":I
    .restart local v5    # "tileTop":I
    :cond_0
    move/from16 v16, v4

    move/from16 v17, v5

    .line 44
    .end local v4    # "tileLeft":I
    .end local v5    # "tileTop":I
    .end local v11    # "tileX":I
    .restart local v16    # "tileLeft":I
    .restart local v17    # "tileTop":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 53
    .end local v10    # "tileY":I
    .end local v16    # "tileLeft":I
    .end local v17    # "tileTop":I
    .restart local v4    # "tileLeft":I
    .restart local v5    # "tileTop":I
    :cond_1
    return-object v9
.end method

.method public static getTiles(Lorg/mapsforge/core/model/BoundingBox;BI)Ljava/util/Set;
    .locals 8
    .param p0, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p1, "zoomLevel"    # B
    .param p2, "tileSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/core/model/BoundingBox;",
            "BI)",
            "Ljava/util/Set<",
            "Lorg/mapsforge/core/model/Tile;",
            ">;"
        }
    .end annotation

    .line 95
    iget-wide v0, p0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    invoke-static {v0, v1, p1}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToTileX(DB)I

    move-result v0

    .line 96
    .local v0, "tileLeft":I
    iget-wide v1, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    invoke-static {v1, v2, p1}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToTileY(DB)I

    move-result v1

    .line 97
    .local v1, "tileTop":I
    iget-wide v2, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    invoke-static {v2, v3, p1}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToTileX(DB)I

    move-result v2

    .line 98
    .local v2, "tileRight":I
    iget-wide v3, p0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-static {v3, v4, p1}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToTileY(DB)I

    move-result v3

    .line 100
    .local v3, "tileBottom":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 102
    .local v4, "tiles":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/model/Tile;>;"
    move v5, v1

    .local v5, "tileY":I
    :goto_0
    if-gt v5, v3, :cond_1

    .line 103
    move v6, v0

    .local v6, "tileX":I
    :goto_1
    if-gt v6, v2, :cond_0

    .line 104
    new-instance v7, Lorg/mapsforge/core/model/Tile;

    invoke-direct {v7, v6, v5, p1, p2}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 102
    .end local v6    # "tileX":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 107
    .end local v5    # "tileY":I
    :cond_1
    return-object v4
.end method

.method public static getTiles(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Ljava/util/Set;
    .locals 6
    .param p0, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p1, "lowerRight"    # Lorg/mapsforge/core/model/Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/core/model/Tile;",
            "Lorg/mapsforge/core/model/Tile;",
            ")",
            "Ljava/util/Set<",
            "Lorg/mapsforge/core/model/Tile;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 86
    .local v0, "tiles":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/model/Tile;>;"
    iget v1, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    .local v1, "tileY":I
    :goto_0
    iget v2, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    if-gt v1, v2, :cond_1

    .line 87
    iget v2, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    .local v2, "tileX":I
    :goto_1
    iget v3, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    if-gt v2, v3, :cond_0

    .line 88
    new-instance v3, Lorg/mapsforge/core/model/Tile;

    iget-byte v4, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget v5, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-direct {v3, v2, v1, v4, v5}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    .end local v2    # "tileX":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "tileY":I
    :cond_1
    return-object v0
.end method

.method public static getUpperLeft(Lorg/mapsforge/core/model/BoundingBox;BI)Lorg/mapsforge/core/model/Tile;
    .locals 3
    .param p0, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p1, "zoomLevel"    # B
    .param p2, "tileSize"    # I

    .line 65
    iget-wide v0, p0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    invoke-static {v0, v1, p1}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToTileX(DB)I

    move-result v0

    .line 66
    .local v0, "tileLeft":I
    iget-wide v1, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    invoke-static {v1, v2, p1}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToTileY(DB)I

    move-result v1

    .line 67
    .local v1, "tileTop":I
    new-instance v2, Lorg/mapsforge/core/model/Tile;

    invoke-direct {v2, v0, v1, p1, p2}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    return-object v2
.end method
