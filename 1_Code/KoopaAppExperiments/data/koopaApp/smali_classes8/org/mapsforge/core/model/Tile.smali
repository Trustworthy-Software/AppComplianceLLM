.class public Lorg/mapsforge/core/model/Tile;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private boundingBox:Lorg/mapsforge/core/model/BoundingBox;

.field public final mapSize:J

.field private origin:Lorg/mapsforge/core/model/Point;

.field public final tileSize:I

.field public final tileX:I

.field public final tileY:I

.field public final zoomLevel:B


# direct methods
.method public constructor <init>(IIBI)V
    .locals 6
    .param p1, "tileX"    # I
    .param p2, "tileY"    # I
    .param p3, "zoomLevel"    # B
    .param p4, "tileSize"    # I

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-ltz p1, :cond_4

    .line 122
    if-ltz p2, :cond_3

    .line 124
    if-ltz p3, :cond_2

    .line 128
    invoke-static {p3}, Lorg/mapsforge/core/model/Tile;->getMaxTileNumber(B)I

    move-result v0

    int-to-long v0, v0

    .line 129
    .local v0, "maxTileNumber":J
    int-to-long v2, p1

    cmp-long v2, v2, v0

    const-string v3, ": "

    if-gtz v2, :cond_1

    .line 131
    int-to-long v4, p2

    cmp-long v2, v4, v0

    if-gtz v2, :cond_0

    .line 135
    iput p4, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    .line 136
    iput p1, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    .line 137
    iput p2, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    .line 138
    iput-byte p3, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    .line 139
    invoke-static {p3, p4}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mapsforge/core/model/Tile;->mapSize:J

    .line 142
    return-void

    .line 132
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid tileY number on zoom level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid tileX number on zoom level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    .end local v0    # "maxTileNumber":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomLevel must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tileY must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tileX must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBoundaryAbsolute(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/core/model/Rectangle;
    .locals 12
    .param p0, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p1, "lowerRight"    # Lorg/mapsforge/core/model/Tile;

    .line 52
    new-instance v9, Lorg/mapsforge/core/model/Rectangle;

    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getOrigin()Lorg/mapsforge/core/model/Point;

    move-result-object v0

    iget-wide v1, v0, Lorg/mapsforge/core/model/Point;->x:D

    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getOrigin()Lorg/mapsforge/core/model/Point;

    move-result-object v0

    iget-wide v3, v0, Lorg/mapsforge/core/model/Point;->y:D

    invoke-virtual {p1}, Lorg/mapsforge/core/model/Tile;->getOrigin()Lorg/mapsforge/core/model/Point;

    move-result-object v0

    iget-wide v5, v0, Lorg/mapsforge/core/model/Point;->x:D

    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    int-to-double v7, v0

    add-double/2addr v5, v7

    invoke-virtual {p1}, Lorg/mapsforge/core/model/Tile;->getOrigin()Lorg/mapsforge/core/model/Point;

    move-result-object v0

    iget-wide v7, v0, Lorg/mapsforge/core/model/Point;->y:D

    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    int-to-double v10, v0

    add-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    return-object v9
.end method

.method public static getBoundingBox(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/core/model/BoundingBox;
    .locals 3
    .param p0, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p1, "lowerRight"    # Lorg/mapsforge/core/model/Tile;

    .line 39
    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getBoundingBox()Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v0

    .line 40
    .local v0, "ul":Lorg/mapsforge/core/model/BoundingBox;
    invoke-virtual {p1}, Lorg/mapsforge/core/model/Tile;->getBoundingBox()Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v1

    .line 41
    .local v1, "lr":Lorg/mapsforge/core/model/BoundingBox;
    invoke-virtual {v0, v1}, Lorg/mapsforge/core/model/BoundingBox;->extendBoundingBox(Lorg/mapsforge/core/model/BoundingBox;)Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v2

    return-object v2
.end method

.method public static getMaxTileNumber(B)I
    .locals 3
    .param p0, "zoomLevel"    # B

    .line 80
    if-ltz p0, :cond_1

    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    return v0

    .line 85
    :cond_0
    add-int/lit8 v0, p0, -0x1

    const/4 v1, 0x2

    shl-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomLevel must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static tileAreasOverlap(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Z
    .locals 2
    .param p0, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p1, "lowerRight"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "upperLeftOther"    # Lorg/mapsforge/core/model/Tile;
    .param p3, "lowerRightOther"    # Lorg/mapsforge/core/model/Tile;

    .line 67
    iget-byte v0, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget-byte v1, p2, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    if-eq v0, v1, :cond_0

    .line 68
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_0
    invoke-virtual {p0, p2}, Lorg/mapsforge/core/model/Tile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p3}, Lorg/mapsforge/core/model/Tile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_1
    invoke-static {p0, p1}, Lorg/mapsforge/core/model/Tile;->getBoundaryAbsolute(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/core/model/Rectangle;

    move-result-object v0

    invoke-static {p2, p3}, Lorg/mapsforge/core/model/Tile;->getBoundaryAbsolute(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/core/model/Rectangle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mapsforge/core/model/Rectangle;->intersects(Lorg/mapsforge/core/model/Rectangle;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 147
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 148
    return v0

    .line 149
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/core/model/Tile;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 150
    return v2

    .line 152
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/core/model/Tile;

    .line 153
    .local v1, "other":Lorg/mapsforge/core/model/Tile;
    iget v3, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    iget v4, v1, Lorg/mapsforge/core/model/Tile;->tileX:I

    if-eq v3, v4, :cond_2

    .line 154
    return v2

    .line 155
    :cond_2
    iget v3, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    iget v4, v1, Lorg/mapsforge/core/model/Tile;->tileY:I

    if-eq v3, v4, :cond_3

    .line 156
    return v2

    .line 157
    :cond_3
    iget-byte v3, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget-byte v4, v1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    if-eq v3, v4, :cond_4

    .line 158
    return v2

    .line 159
    :cond_4
    iget v3, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    iget v4, v1, Lorg/mapsforge/core/model/Tile;->tileSize:I

    if-eq v3, v4, :cond_5

    .line 160
    return v2

    .line 162
    :cond_5
    return v0
.end method

.method public getAbove()Lorg/mapsforge/core/model/Tile;
    .locals 5

    .line 268
    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    add-int/lit8 v0, v0, -0x1

    .line 269
    .local v0, "y":I
    if-gez v0, :cond_0

    .line 270
    iget-byte v1, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v1}, Lorg/mapsforge/core/model/Tile;->getMaxTileNumber(B)I

    move-result v0

    .line 272
    :cond_0
    new-instance v1, Lorg/mapsforge/core/model/Tile;

    iget v2, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    iget-byte v3, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget v4, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    return-object v1
.end method

.method public getAboveLeft()Lorg/mapsforge/core/model/Tile;
    .locals 5

    .line 295
    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    add-int/lit8 v0, v0, -0x1

    .line 296
    .local v0, "y":I
    iget v1, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    add-int/lit8 v1, v1, -0x1

    .line 297
    .local v1, "x":I
    if-gez v0, :cond_0

    .line 298
    iget-byte v2, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v2}, Lorg/mapsforge/core/model/Tile;->getMaxTileNumber(B)I

    move-result v0

    .line 300
    :cond_0
    if-gez v1, :cond_1

    .line 301
    iget-byte v2, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v2}, Lorg/mapsforge/core/model/Tile;->getMaxTileNumber(B)I

    move-result v1

    .line 303
    :cond_1
    new-instance v2, Lorg/mapsforge/core/model/Tile;

    iget-byte v3, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget v4, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-direct {v2, v1, v0, v3, v4}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    return-object v2
.end method

.method public getAboveRight()Lorg/mapsforge/core/model/Tile;
    .locals 5

    .line 312
    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    add-int/lit8 v0, v0, -0x1

    .line 313
    .local v0, "y":I
    iget v1, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    add-int/lit8 v1, v1, 0x1

    .line 314
    .local v1, "x":I
    if-gez v0, :cond_0

    .line 315
    iget-byte v2, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v2}, Lorg/mapsforge/core/model/Tile;->getMaxTileNumber(B)I

    move-result v0

    .line 317
    :cond_0
    iget-byte v2, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v2}, Lorg/mapsforge/core/model/Tile;->getMaxTileNumber(B)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 318
    const/4 v1, 0x0

    .line 320
    :cond_1
    new-instance v2, Lorg/mapsforge/core/model/Tile;

    iget-byte v3, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget v4, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-direct {v2, v1, v0, v3, v4}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    return-object v2
.end method

.method public getBelow()Lorg/mapsforge/core/model/Tile;
    .locals 5

    .line 282
    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    add-int/lit8 v0, v0, 0x1

    .line 283
    .local v0, "y":I
    iget-byte v1, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v1}, Lorg/mapsforge/core/model/Tile;->getMaxTileNumber(B)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 286
    :cond_0
    new-instance v1, Lorg/mapsforge/core/model/Tile;

    iget v2, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    iget-byte v3, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget v4, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    return-object v1
.end method

.method public getBelowLeft()Lorg/mapsforge/core/model/Tile;
    .locals 5

    .line 329
    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    add-int/lit8 v0, v0, 0x1

    .line 330
    .local v0, "y":I
    iget v1, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    add-int/lit8 v1, v1, -0x1

    .line 331
    .local v1, "x":I
    iget-byte v2, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v2}, Lorg/mapsforge/core/model/Tile;->getMaxTileNumber(B)I

    move-result v2

    if-le v0, v2, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 334
    :cond_0
    if-gez v1, :cond_1

    .line 335
    iget-byte v2, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v2}, Lorg/mapsforge/core/model/Tile;->getMaxTileNumber(B)I

    move-result v1

    .line 337
    :cond_1
    new-instance v2, Lorg/mapsforge/core/model/Tile;

    iget-byte v3, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget v4, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-direct {v2, v1, v0, v3, v4}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    return-object v2
.end method

.method public getBelowRight()Lorg/mapsforge/core/model/Tile;
    .locals 5

    .line 346
    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    add-int/lit8 v0, v0, 0x1

    .line 347
    .local v0, "y":I
    iget v1, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    add-int/lit8 v1, v1, 0x1

    .line 348
    .local v1, "x":I
    iget-byte v2, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v2}, Lorg/mapsforge/core/model/Tile;->getMaxTileNumber(B)I

    move-result v2

    if-le v0, v2, :cond_0

    .line 349
    const/4 v0, 0x0

    .line 351
    :cond_0
    iget-byte v2, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v2}, Lorg/mapsforge/core/model/Tile;->getMaxTileNumber(B)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 352
    const/4 v1, 0x0

    .line 354
    :cond_1
    new-instance v2, Lorg/mapsforge/core/model/Tile;

    iget-byte v3, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget v4, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-direct {v2, v1, v0, v3, v4}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    return-object v2
.end method

.method public getBoundaryAbsolute()Lorg/mapsforge/core/model/Rectangle;
    .locals 12

    .line 209
    new-instance v9, Lorg/mapsforge/core/model/Rectangle;

    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getOrigin()Lorg/mapsforge/core/model/Point;

    move-result-object v0

    iget-wide v1, v0, Lorg/mapsforge/core/model/Point;->x:D

    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getOrigin()Lorg/mapsforge/core/model/Point;

    move-result-object v0

    iget-wide v3, v0, Lorg/mapsforge/core/model/Point;->y:D

    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getOrigin()Lorg/mapsforge/core/model/Point;

    move-result-object v0

    iget-wide v5, v0, Lorg/mapsforge/core/model/Point;->x:D

    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    int-to-double v7, v0

    add-double/2addr v5, v7

    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getOrigin()Lorg/mapsforge/core/model/Point;

    move-result-object v0

    iget-wide v7, v0, Lorg/mapsforge/core/model/Point;->y:D

    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    int-to-double v10, v0

    add-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    return-object v9
.end method

.method public getBoundaryRelative()Lorg/mapsforge/core/model/Rectangle;
    .locals 10

    .line 218
    new-instance v9, Lorg/mapsforge/core/model/Rectangle;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    int-to-double v5, v0

    int-to-double v7, v0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    return-object v9
.end method

.method public getBoundingBox()Lorg/mapsforge/core/model/BoundingBox;
    .locals 20

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mapsforge/core/model/Tile;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    if-nez v1, :cond_1

    .line 172
    iget v1, v0, Lorg/mapsforge/core/model/Tile;->tileY:I

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    iget-byte v3, v0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v1, v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->tileYToLatitude(JB)D

    move-result-wide v1

    const-wide v3, -0x3faabcba4e5ab62aL    # -85.05112877980659

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 173
    .local v1, "minLatitude":D
    iget v3, v0, Lorg/mapsforge/core/model/Tile;->tileX:I

    int-to-long v3, v3

    iget-byte v5, v0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v3, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->tileXToLongitude(JB)D

    move-result-wide v3

    const-wide v5, -0x3f99800000000000L    # -180.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 174
    .local v3, "minLongitude":D
    iget v7, v0, Lorg/mapsforge/core/model/Tile;->tileY:I

    int-to-long v7, v7

    iget-byte v9, v0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v7, v8, v9}, Lorg/mapsforge/core/util/MercatorProjection;->tileYToLatitude(JB)D

    move-result-wide v7

    const-wide v9, 0x40554345b1a549d6L    # 85.05112877980659

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    .line 175
    .local v14, "maxLatitude":D
    iget v7, v0, Lorg/mapsforge/core/model/Tile;->tileX:I

    add-int/lit8 v7, v7, 0x1

    int-to-long v7, v7

    iget-byte v9, v0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v7, v8, v9}, Lorg/mapsforge/core/util/MercatorProjection;->tileXToLongitude(JB)D

    move-result-wide v7

    const-wide v9, 0x4066800000000000L    # 180.0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 176
    .local v7, "maxLongitude":D
    cmpl-double v5, v7, v5

    if-nez v5, :cond_0

    .line 178
    const-wide v7, 0x4066800000000000L    # 180.0

    move-wide/from16 v16, v7

    goto :goto_0

    .line 176
    :cond_0
    move-wide/from16 v16, v7

    .line 180
    .end local v7    # "maxLongitude":D
    .local v16, "maxLongitude":D
    :goto_0
    new-instance v12, Lorg/mapsforge/core/model/BoundingBox;

    move-object v5, v12

    move-wide v6, v1

    move-wide v8, v3

    move-wide v10, v14

    move-wide/from16 v18, v1

    move-object v1, v12

    .end local v1    # "minLatitude":D
    .local v18, "minLatitude":D
    move-wide/from16 v12, v16

    invoke-direct/range {v5 .. v13}, Lorg/mapsforge/core/model/BoundingBox;-><init>(DDDD)V

    iput-object v1, v0, Lorg/mapsforge/core/model/Tile;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    .line 182
    .end local v3    # "minLongitude":D
    .end local v14    # "maxLatitude":D
    .end local v16    # "maxLongitude":D
    .end local v18    # "minLatitude":D
    :cond_1
    iget-object v1, v0, Lorg/mapsforge/core/model/Tile;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    return-object v1
.end method

.method public getLeft()Lorg/mapsforge/core/model/Tile;
    .locals 5

    .line 242
    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    add-int/lit8 v0, v0, -0x1

    .line 243
    .local v0, "x":I
    if-gez v0, :cond_0

    .line 244
    iget-byte v1, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v1}, Lorg/mapsforge/core/model/Tile;->getMaxTileNumber(B)I

    move-result v0

    .line 246
    :cond_0
    new-instance v1, Lorg/mapsforge/core/model/Tile;

    iget v2, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    iget-byte v3, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget v4, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    return-object v1
.end method

.method public getNeighbours()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/mapsforge/core/model/Tile;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 192
    .local v0, "neighbours":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/model/Tile;>;"
    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getLeft()Lorg/mapsforge/core/model/Tile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getAboveLeft()Lorg/mapsforge/core/model/Tile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getAbove()Lorg/mapsforge/core/model/Tile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getAboveRight()Lorg/mapsforge/core/model/Tile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getRight()Lorg/mapsforge/core/model/Tile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getBelowRight()Lorg/mapsforge/core/model/Tile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getBelow()Lorg/mapsforge/core/model/Tile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getBelowLeft()Lorg/mapsforge/core/model/Tile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    return-object v0
.end method

.method public getOrigin()Lorg/mapsforge/core/model/Point;
    .locals 5

    .line 228
    iget-object v0, p0, Lorg/mapsforge/core/model/Tile;->origin:Lorg/mapsforge/core/model/Point;

    if-nez v0, :cond_0

    .line 229
    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    int-to-long v0, v0

    iget v2, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-static {v0, v1, v2}, Lorg/mapsforge/core/util/MercatorProjection;->tileToPixel(JI)J

    move-result-wide v0

    long-to-double v0, v0

    .line 230
    .local v0, "x":D
    iget v2, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    int-to-long v2, v2

    iget v4, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-static {v2, v3, v4}, Lorg/mapsforge/core/util/MercatorProjection;->tileToPixel(JI)J

    move-result-wide v2

    long-to-double v2, v2

    .line 231
    .local v2, "y":D
    new-instance v4, Lorg/mapsforge/core/model/Point;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    iput-object v4, p0, Lorg/mapsforge/core/model/Tile;->origin:Lorg/mapsforge/core/model/Point;

    .line 233
    .end local v0    # "x":D
    .end local v2    # "y":D
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/core/model/Tile;->origin:Lorg/mapsforge/core/model/Point;

    return-object v0
.end method

.method public getParent()Lorg/mapsforge/core/model/Tile;
    .locals 5

    .line 361
    iget-byte v0, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    if-nez v0, :cond_0

    .line 362
    const/4 v0, 0x0

    return-object v0

    .line 365
    :cond_0
    new-instance v1, Lorg/mapsforge/core/model/Tile;

    iget v2, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iget v4, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    return-object v1
.end method

.method public getRight()Lorg/mapsforge/core/model/Tile;
    .locals 5

    .line 255
    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    add-int/lit8 v0, v0, 0x1

    .line 256
    .local v0, "x":I
    iget-byte v1, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-static {v1}, Lorg/mapsforge/core/model/Tile;->getMaxTileNumber(B)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 259
    :cond_0
    new-instance v1, Lorg/mapsforge/core/model/Tile;

    iget v2, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    iget-byte v3, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget v4, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    return-object v1
.end method

.method public getShiftX(Lorg/mapsforge/core/model/Tile;)I
    .locals 2
    .param p1, "otherTile"    # Lorg/mapsforge/core/model/Tile;

    .line 369
    invoke-virtual {p0, p1}, Lorg/mapsforge/core/model/Tile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const/4 v0, 0x0

    return v0

    .line 373
    :cond_0
    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getParent()Lorg/mapsforge/core/model/Tile;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mapsforge/core/model/Tile;->getShiftX(Lorg/mapsforge/core/model/Tile;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getShiftY(Lorg/mapsforge/core/model/Tile;)I
    .locals 2
    .param p1, "otherTile"    # Lorg/mapsforge/core/model/Tile;

    .line 377
    invoke-virtual {p0, p1}, Lorg/mapsforge/core/model/Tile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x0

    return v0

    .line 381
    :cond_0
    iget v0, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lorg/mapsforge/core/model/Tile;->getParent()Lorg/mapsforge/core/model/Tile;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mapsforge/core/model/Tile;->getShiftY(Lorg/mapsforge/core/model/Tile;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 386
    const/4 v0, 0x7

    .line 387
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    ushr-int/lit8 v3, v2, 0x10

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 388
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    ushr-int/lit8 v3, v2, 0x10

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 389
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    add-int/2addr v1, v2

    .line 390
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    add-int/2addr v0, v2

    .line 391
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget v1, p0, Lorg/mapsforge/core/model/Tile;->tileX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    iget v1, p0, Lorg/mapsforge/core/model/Tile;->tileY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget-byte v1, p0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
