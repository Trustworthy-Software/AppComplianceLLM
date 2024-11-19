.class public Lorg/mapsforge/map/layer/renderer/PolylineContainer;
.super Ljava/lang/Object;
.source "PolylineContainer.java"

# interfaces
.implements Lorg/mapsforge/map/layer/renderer/ShapeContainer;


# instance fields
.field private center:Lorg/mapsforge/core/model/Point;

.field private coordinatesAbsolute:[[Lorg/mapsforge/core/model/Point;

.field private coordinatesRelativeToTile:[[Lorg/mapsforge/core/model/Point;

.field private final isClosedWay:Z

.field private final layer:B

.field private final lowerRight:Lorg/mapsforge/core/model/Tile;

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private final upperLeft:Lorg/mapsforge/core/model/Tile;

.field private way:Lorg/mapsforge/map/datastore/Way;


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/datastore/Way;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)V
    .locals 3
    .param p1, "way"    # Lorg/mapsforge/map/datastore/Way;
    .param p2, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p3, "lowerRight"    # Lorg/mapsforge/core/model/Tile;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [[Lorg/mapsforge/core/model/Point;

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesAbsolute:[[Lorg/mapsforge/core/model/Point;

    .line 51
    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesRelativeToTile:[[Lorg/mapsforge/core/model/Point;

    .line 52
    iget-object v0, p1, Lorg/mapsforge/map/datastore/Way;->tags:Ljava/util/List;

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->tags:Ljava/util/List;

    .line 53
    iput-object p2, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->upperLeft:Lorg/mapsforge/core/model/Tile;

    .line 54
    iput-object p3, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->lowerRight:Lorg/mapsforge/core/model/Tile;

    .line 55
    iget-byte v0, p1, Lorg/mapsforge/map/datastore/Way;->layer:B

    iput-byte v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->layer:B

    .line 56
    iput-object p1, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->way:Lorg/mapsforge/map/datastore/Way;

    .line 57
    iget-object v0, p1, Lorg/mapsforge/map/datastore/Way;->latLongs:[[Lorg/mapsforge/core/model/LatLong;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/mapsforge/core/util/LatLongUtils;->isClosedWay([Lorg/mapsforge/core/model/LatLong;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->isClosedWay:Z

    .line 58
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->way:Lorg/mapsforge/map/datastore/Way;

    iget-object v0, v0, Lorg/mapsforge/map/datastore/Way;->labelPosition:Lorg/mapsforge/core/model/LatLong;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->way:Lorg/mapsforge/map/datastore/Way;

    iget-object v0, v0, Lorg/mapsforge/map/datastore/Way;->labelPosition:Lorg/mapsforge/core/model/LatLong;

    iget-wide v1, p2, Lorg/mapsforge/core/model/Tile;->mapSize:J

    invoke-static {v0, v1, v2}, Lorg/mapsforge/core/util/MercatorProjection;->getPixelAbsolute(Lorg/mapsforge/core/model/LatLong;J)Lorg/mapsforge/core/model/Point;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->center:Lorg/mapsforge/core/model/Point;

    .line 61
    :cond_0
    return-void
.end method

.method public constructor <init>([Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Ljava/util/List;)V
    .locals 4
    .param p1, "coordinates"    # [Lorg/mapsforge/core/model/Point;
    .param p2, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p3, "lowerRight"    # Lorg/mapsforge/core/model/Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/mapsforge/core/model/Point;",
            "Lorg/mapsforge/core/model/Tile;",
            "Lorg/mapsforge/core/model/Tile;",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p4, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    new-array v1, v0, [[Lorg/mapsforge/core/model/Point;

    iput-object v1, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesAbsolute:[[Lorg/mapsforge/core/model/Point;

    .line 65
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [[Lorg/mapsforge/core/model/Point;

    iput-object v2, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesRelativeToTile:[[Lorg/mapsforge/core/model/Point;

    .line 66
    array-length v2, p1

    new-array v2, v2, [Lorg/mapsforge/core/model/Point;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 67
    array-length v1, p1

    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iput-object p4, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->tags:Ljava/util/List;

    .line 69
    iput-object p2, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->upperLeft:Lorg/mapsforge/core/model/Tile;

    .line 70
    iput-object p3, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->lowerRight:Lorg/mapsforge/core/model/Tile;

    .line 71
    iput-byte v3, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->layer:B

    .line 72
    aget-object v1, p1, v3

    array-length v2, p1

    sub-int/2addr v2, v0

    aget-object v0, p1, v2

    invoke-virtual {v1, v0}, Lorg/mapsforge/core/model/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->isClosedWay:Z

    .line 73
    return-void
.end method


# virtual methods
.method public getCenterAbsolute()Lorg/mapsforge/core/model/Point;
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->center:Lorg/mapsforge/core/model/Point;

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getCoordinatesAbsolute()[[Lorg/mapsforge/core/model/Point;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/mapsforge/map/layer/renderer/GeometryUtils;->calculateCenterOfBoundingBox([Lorg/mapsforge/core/model/Point;)Lorg/mapsforge/core/model/Point;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->center:Lorg/mapsforge/core/model/Point;

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->center:Lorg/mapsforge/core/model/Point;

    return-object v0
.end method

.method public getCoordinatesAbsolute()[[Lorg/mapsforge/core/model/Point;
    .locals 6

    .line 85
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesAbsolute:[[Lorg/mapsforge/core/model/Point;

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->way:Lorg/mapsforge/map/datastore/Way;

    iget-object v0, v0, Lorg/mapsforge/map/datastore/Way;->latLongs:[[Lorg/mapsforge/core/model/LatLong;

    array-length v0, v0

    new-array v0, v0, [[Lorg/mapsforge/core/model/Point;

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesAbsolute:[[Lorg/mapsforge/core/model/Point;

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->way:Lorg/mapsforge/map/datastore/Way;

    iget-object v1, v1, Lorg/mapsforge/map/datastore/Way;->latLongs:[[Lorg/mapsforge/core/model/LatLong;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 88
    iget-object v1, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesAbsolute:[[Lorg/mapsforge/core/model/Point;

    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->way:Lorg/mapsforge/map/datastore/Way;

    iget-object v2, v2, Lorg/mapsforge/map/datastore/Way;->latLongs:[[Lorg/mapsforge/core/model/LatLong;

    aget-object v2, v2, v0

    array-length v2, v2

    new-array v2, v2, [Lorg/mapsforge/core/model/Point;

    aput-object v2, v1, v0

    .line 89
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->way:Lorg/mapsforge/map/datastore/Way;

    iget-object v2, v2, Lorg/mapsforge/map/datastore/Way;->latLongs:[[Lorg/mapsforge/core/model/LatLong;

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 90
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesAbsolute:[[Lorg/mapsforge/core/model/Point;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->way:Lorg/mapsforge/map/datastore/Way;

    iget-object v3, v3, Lorg/mapsforge/map/datastore/Way;->latLongs:[[Lorg/mapsforge/core/model/LatLong;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->upperLeft:Lorg/mapsforge/core/model/Tile;

    iget-wide v4, v4, Lorg/mapsforge/core/model/Tile;->mapSize:J

    invoke-static {v3, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->getPixelAbsolute(Lorg/mapsforge/core/model/LatLong;J)Lorg/mapsforge/core/model/Point;

    move-result-object v3

    aput-object v3, v2, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->way:Lorg/mapsforge/map/datastore/Way;

    .line 95
    :cond_2
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesAbsolute:[[Lorg/mapsforge/core/model/Point;

    return-object v0
.end method

.method public getCoordinatesRelativeToOrigin()[[Lorg/mapsforge/core/model/Point;
    .locals 9

    .line 99
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesRelativeToTile:[[Lorg/mapsforge/core/model/Point;

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->upperLeft:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v0}, Lorg/mapsforge/core/model/Tile;->getOrigin()Lorg/mapsforge/core/model/Point;

    move-result-object v0

    .line 101
    .local v0, "tileOrigin":Lorg/mapsforge/core/model/Point;
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getCoordinatesAbsolute()[[Lorg/mapsforge/core/model/Point;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [[Lorg/mapsforge/core/model/Point;

    iput-object v1, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesRelativeToTile:[[Lorg/mapsforge/core/model/Point;

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesRelativeToTile:[[Lorg/mapsforge/core/model/Point;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 103
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesAbsolute:[[Lorg/mapsforge/core/model/Point;

    aget-object v3, v3, v1

    array-length v3, v3

    new-array v3, v3, [Lorg/mapsforge/core/model/Point;

    aput-object v3, v2, v1

    .line 104
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesRelativeToTile:[[Lorg/mapsforge/core/model/Point;

    aget-object v3, v3, v1

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 105
    iget-object v4, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesAbsolute:[[Lorg/mapsforge/core/model/Point;

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    iget-wide v5, v0, Lorg/mapsforge/core/model/Point;->x:D

    neg-double v5, v5

    iget-wide v7, v0, Lorg/mapsforge/core/model/Point;->y:D

    neg-double v7, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/mapsforge/core/model/Point;->offset(DD)Lorg/mapsforge/core/model/Point;

    move-result-object v4

    aput-object v4, v3, v2

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "tileOrigin":Lorg/mapsforge/core/model/Point;
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->coordinatesRelativeToTile:[[Lorg/mapsforge/core/model/Point;

    return-object v0
.end method

.method public getLayer()B
    .locals 1

    .line 113
    iget-byte v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->layer:B

    return v0
.end method

.method public getLowerRight()Lorg/mapsforge/core/model/Tile;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->lowerRight:Lorg/mapsforge/core/model/Tile;

    return-object v0
.end method

.method public getShapeType()Lorg/mapsforge/map/layer/renderer/ShapeType;
    .locals 1

    .line 118
    sget-object v0, Lorg/mapsforge/map/layer/renderer/ShapeType;->POLYLINE:Lorg/mapsforge/map/layer/renderer/ShapeType;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getUpperLeft()Lorg/mapsforge/core/model/Tile;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->upperLeft:Lorg/mapsforge/core/model/Tile;

    return-object v0
.end method

.method public isClosedWay()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->isClosedWay:Z

    return v0
.end method
