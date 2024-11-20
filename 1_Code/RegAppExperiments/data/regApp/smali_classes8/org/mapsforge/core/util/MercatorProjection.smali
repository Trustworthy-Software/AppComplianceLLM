.class public final Lorg/mapsforge/core/util/MercatorProjection;
.super Ljava/lang/Object;
.source "MercatorProjection.java"


# static fields
.field private static final DUMMY_TILE_SIZE:I = 0x100

.field public static final EARTH_CIRCUMFERENCE:D = 4.0075016686E7

.field public static final LATITUDE_MAX:D = 85.05112877980659

.field public static final LATITUDE_MIN:D = -85.05112877980659


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static calculateGroundResolution(DJ)D
    .locals 4
    .param p0, "latitude"    # D
    .param p2, "mapSize"    # J

    .line 75
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x41831bf8457ced91L    # 4.0075016686E7

    mul-double/2addr v0, v2

    long-to-double v2, p2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static calculateGroundResolutionWithScaleFactor(DDI)D
    .locals 6
    .param p0, "latitude"    # D
    .param p2, "scaleFactor"    # D
    .param p4, "tileSize"    # I

    .line 63
    invoke-static {p2, p3, p4}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSizeWithScaleFactor(DI)J

    move-result-wide v0

    .line 64
    .local v0, "mapSize":J
    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x41831bf8457ced91L    # 4.0075016686E7

    mul-double/2addr v2, v4

    long-to-double v4, v0

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public static fromPixels(DDJ)Lorg/mapsforge/core/model/LatLong;
    .locals 5
    .param p0, "pixelX"    # D
    .param p2, "pixelY"    # D
    .param p4, "mapSize"    # J

    .line 91
    new-instance v0, Lorg/mapsforge/core/model/LatLong;

    invoke-static {p2, p3, p4, p5}, Lorg/mapsforge/core/util/MercatorProjection;->pixelYToLatitude(DJ)D

    move-result-wide v1

    .line 92
    invoke-static {p0, p1, p4, p5}, Lorg/mapsforge/core/util/MercatorProjection;->pixelXToLongitude(DJ)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    .line 91
    return-object v0
.end method

.method public static fromPixelsWithScaleFactor(DDDI)Lorg/mapsforge/core/model/LatLong;
    .locals 5
    .param p0, "pixelX"    # D
    .param p2, "pixelY"    # D
    .param p4, "scaleFactor"    # D
    .param p6, "tileSize"    # I

    .line 83
    new-instance v0, Lorg/mapsforge/core/model/LatLong;

    invoke-static {p2, p3, p4, p5, p6}, Lorg/mapsforge/core/util/MercatorProjection;->pixelYToLatitudeWithScaleFactor(DDI)D

    move-result-wide v1

    .line 84
    invoke-static {p0, p1, p4, p5, p6}, Lorg/mapsforge/core/util/MercatorProjection;->pixelXToLongitudeWithScaleFactor(DDI)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    .line 83
    return-object v0
.end method

.method public static getMapSize(BI)J
    .locals 3
    .param p0, "zoomLevel"    # B
    .param p1, "tileSize"    # I

    .line 113
    if-ltz p0, :cond_0

    .line 116
    int-to-long v0, p1

    shl-long/2addr v0, p0

    return-wide v0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoom level must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMapSizeWithScaleFactor(DI)J
    .locals 6
    .param p0, "scaleFactor"    # D
    .param p2, "tileSize"    # I

    .line 101
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 104
    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {p0, p1}, Lorg/mapsforge/core/util/MercatorProjection;->scaleFactorToZoomLevel(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scale factor must not < 1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPixel(Lorg/mapsforge/core/model/LatLong;J)Lorg/mapsforge/core/model/Point;
    .locals 5
    .param p0, "latLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p1, "mapSize"    # J

    .line 126
    iget-wide v0, p0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v0, v1, p1, p2}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v0

    .line 127
    .local v0, "pixelX":D
    iget-wide v2, p0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v2, v3, p1, p2}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v2

    .line 128
    .local v2, "pixelY":D
    new-instance v4, Lorg/mapsforge/core/model/Point;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    return-object v4
.end method

.method public static getPixelAbsolute(Lorg/mapsforge/core/model/LatLong;J)Lorg/mapsforge/core/model/Point;
    .locals 7
    .param p0, "latLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p1, "mapSize"    # J

    .line 140
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v6}, Lorg/mapsforge/core/util/MercatorProjection;->getPixelRelative(Lorg/mapsforge/core/model/LatLong;JDD)Lorg/mapsforge/core/model/Point;

    move-result-object v0

    return-object v0
.end method

.method public static getPixelRelative(Lorg/mapsforge/core/model/LatLong;JDD)Lorg/mapsforge/core/model/Point;
    .locals 5
    .param p0, "latLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p1, "mapSize"    # J
    .param p3, "x"    # D
    .param p5, "y"    # D

    .line 151
    iget-wide v0, p0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v0, v1, p1, p2}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v0

    sub-double/2addr v0, p3

    .line 152
    .local v0, "pixelX":D
    iget-wide v2, p0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v2, v3, p1, p2}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v2

    sub-double/2addr v2, p5

    .line 153
    .local v2, "pixelY":D
    new-instance v4, Lorg/mapsforge/core/model/Point;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    return-object v4
.end method

.method public static getPixelRelative(Lorg/mapsforge/core/model/LatLong;JLorg/mapsforge/core/model/Point;)Lorg/mapsforge/core/model/Point;
    .locals 7
    .param p0, "latLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p1, "mapSize"    # J
    .param p3, "origin"    # Lorg/mapsforge/core/model/Point;

    .line 165
    iget-wide v3, p3, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v5, p3, Lorg/mapsforge/core/model/Point;->y:D

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v6}, Lorg/mapsforge/core/util/MercatorProjection;->getPixelRelative(Lorg/mapsforge/core/model/LatLong;JDD)Lorg/mapsforge/core/model/Point;

    move-result-object v0

    return-object v0
.end method

.method public static getPixelRelativeToTile(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/core/model/Point;
    .locals 3
    .param p0, "latLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 176
    iget-wide v0, p1, Lorg/mapsforge/core/model/Tile;->mapSize:J

    invoke-virtual {p1}, Lorg/mapsforge/core/model/Tile;->getOrigin()Lorg/mapsforge/core/model/Point;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lorg/mapsforge/core/util/MercatorProjection;->getPixelRelative(Lorg/mapsforge/core/model/LatLong;JLorg/mapsforge/core/model/Point;)Lorg/mapsforge/core/model/Point;

    move-result-object v0

    return-object v0
.end method

.method public static getPixelWithScaleFactor(Lorg/mapsforge/core/model/LatLong;DI)Lorg/mapsforge/core/model/Point;
    .locals 5
    .param p0, "latLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p1, "scaleFactor"    # D
    .param p3, "tileSize"    # I

    .line 120
    iget-wide v0, p0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v0, v1, p1, p2, p3}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelXWithScaleFactor(DDI)D

    move-result-wide v0

    .line 121
    .local v0, "pixelX":D
    iget-wide v2, p0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v2, v3, p1, p2, p3}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelYWithScaleFactor(DDI)D

    move-result-wide v2

    .line 122
    .local v2, "pixelY":D
    new-instance v4, Lorg/mapsforge/core/model/Point;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    return-object v4
.end method

.method public static latitudeToPixelY(DBI)D
    .locals 10
    .param p0, "latitude"    # D
    .param p2, "zoomLevel"    # B
    .param p3, "tileSize"    # I

    .line 202
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 203
    .local v0, "sinLatitude":D
    invoke-static {p2, p3}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v2

    .line 205
    .local v2, "mapSize":J
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v6, v0, v4

    sub-double/2addr v4, v0

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide v6, 0x402921fb54442d18L    # 12.566370614359172

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v6, v4

    long-to-double v4, v2

    mul-double/2addr v6, v4

    .line 206
    .local v6, "pixelY":D
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    long-to-double v8, v2

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    return-wide v4
.end method

.method public static latitudeToPixelY(DJ)D
    .locals 8
    .param p0, "latitude"    # D
    .param p2, "mapSize"    # J

    .line 217
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 219
    .local v0, "sinLatitude":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double v4, v0, v2

    sub-double/2addr v2, v0

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x402921fb54442d18L    # 12.566370614359172

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v2

    long-to-double v2, p2

    mul-double/2addr v4, v2

    .line 220
    .local v4, "pixelY":D
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    long-to-double v6, p2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    return-wide v2
.end method

.method public static latitudeToPixelYWithScaleFactor(DDI)D
    .locals 10
    .param p0, "latitude"    # D
    .param p2, "scaleFactor"    # D
    .param p4, "tileSize"    # I

    .line 187
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 188
    .local v0, "sinLatitude":D
    invoke-static {p2, p3, p4}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSizeWithScaleFactor(DI)J

    move-result-wide v2

    .line 190
    .local v2, "mapSize":J
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v6, v0, v4

    sub-double/2addr v4, v0

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide v6, 0x402921fb54442d18L    # 12.566370614359172

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v6, v4

    long-to-double v4, v2

    mul-double/2addr v6, v4

    .line 191
    .local v6, "pixelY":D
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    long-to-double v8, v2

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    return-wide v4
.end method

.method public static latitudeToTileY(DB)I
    .locals 3
    .param p0, "latitude"    # D
    .param p2, "zoomLevel"    # B

    .line 243
    const/16 v0, 0x100

    invoke-static {p0, p1, p2, v0}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DBI)D

    move-result-wide v1

    invoke-static {v1, v2, p2, v0}, Lorg/mapsforge/core/util/MercatorProjection;->pixelYToTileY(DBI)I

    move-result v0

    return v0
.end method

.method public static latitudeToTileYWithScaleFactor(DD)I
    .locals 3
    .param p0, "latitude"    # D
    .param p2, "scaleFactor"    # D

    .line 232
    const/16 v0, 0x100

    invoke-static {p0, p1, p2, p3, v0}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelYWithScaleFactor(DDI)D

    move-result-wide v1

    invoke-static {v1, v2, p2, p3, v0}, Lorg/mapsforge/core/util/MercatorProjection;->pixelYToTileYWithScaleFactor(DDI)I

    move-result v0

    return v0
.end method

.method public static longitudeToPixelX(DBI)D
    .locals 6
    .param p0, "longitude"    # D
    .param p2, "zoomLevel"    # B
    .param p3, "tileSize"    # I

    .line 267
    invoke-static {p2, p3}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v0

    .line 268
    .local v0, "mapSize":J
    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v2, p0

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v4

    long-to-double v4, v0

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public static longitudeToPixelX(DJ)D
    .locals 4
    .param p0, "longitude"    # D
    .param p2, "mapSize"    # J

    .line 279
    const-wide v0, 0x4066800000000000L    # 180.0

    add-double/2addr v0, p0

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    long-to-double v2, p2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static longitudeToPixelXWithScaleFactor(DDI)D
    .locals 6
    .param p0, "longitude"    # D
    .param p2, "scaleFactor"    # D
    .param p4, "tileSize"    # I

    .line 254
    invoke-static {p2, p3, p4}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSizeWithScaleFactor(DI)J

    move-result-wide v0

    .line 255
    .local v0, "mapSize":J
    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v2, p0

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v4

    long-to-double v4, v0

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public static longitudeToTileX(DB)I
    .locals 3
    .param p0, "longitude"    # D
    .param p2, "zoomLevel"    # B

    .line 301
    const/16 v0, 0x100

    invoke-static {p0, p1, p2, v0}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DBI)D

    move-result-wide v1

    invoke-static {v1, v2, p2, v0}, Lorg/mapsforge/core/util/MercatorProjection;->pixelXToTileX(DBI)I

    move-result v0

    return v0
.end method

.method public static longitudeToTileXWithScaleFactor(DD)I
    .locals 3
    .param p0, "longitude"    # D
    .param p2, "scaleFactor"    # D

    .line 290
    const/16 v0, 0x100

    invoke-static {p0, p1, p2, p3, v0}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelXWithScaleFactor(DDI)D

    move-result-wide v1

    invoke-static {v1, v2, p2, p3, v0}, Lorg/mapsforge/core/util/MercatorProjection;->pixelXToTileXWithScaleFactor(DDI)I

    move-result v0

    return v0
.end method

.method public static metersToPixels(FDJ)D
    .locals 4
    .param p0, "meters"    # F
    .param p1, "latitude"    # D
    .param p3, "mapSize"    # J

    .line 325
    float-to-double v0, p0

    invoke-static {p1, p2, p3, p4}, Lorg/mapsforge/core/util/MercatorProjection;->calculateGroundResolution(DJ)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static metersToPixelsWithScaleFactor(FDDI)D
    .locals 4
    .param p0, "meters"    # F
    .param p1, "latitude"    # D
    .param p3, "scaleFactor"    # D
    .param p5, "tileSize"    # I

    .line 313
    float-to-double v0, p0

    invoke-static {p1, p2, p3, p4, p5}, Lorg/mapsforge/core/util/MercatorProjection;->calculateGroundResolutionWithScaleFactor(DDI)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static pixelXToLongitude(DJ)D
    .locals 4
    .param p0, "pixelX"    # D
    .param p2, "mapSize"    # J

    .line 354
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_0

    long-to-double v0, p2

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_0

    .line 357
    long-to-double v0, p2

    div-double v0, p0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    return-wide v0

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid pixelX coordinate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static pixelXToLongitudeWithScaleFactor(DDI)D
    .locals 6
    .param p0, "pixelX"    # D
    .param p2, "scaleFactor"    # D
    .param p4, "tileSize"    # I

    .line 337
    invoke-static {p2, p3, p4}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSizeWithScaleFactor(DI)J

    move-result-wide v0

    .line 338
    .local v0, "mapSize":J
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-ltz v2, :cond_0

    long-to-double v2, v0

    cmpl-double v2, p0, v2

    if-gtz v2, :cond_0

    .line 341
    long-to-double v2, v0

    div-double v2, p0, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v4

    return-wide v2

    .line 339
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid pixelX coordinate at scale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static pixelXToTileX(DBI)I
    .locals 6
    .param p0, "pixelX"    # D
    .param p2, "zoomLevel"    # B
    .param p3, "tileSize"    # I

    .line 379
    int-to-double v0, p3

    div-double v0, p0, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static pixelXToTileXWithScaleFactor(DDI)I
    .locals 4
    .param p0, "pixelX"    # D
    .param p2, "scaleFactor"    # D
    .param p4, "tileSize"    # I

    .line 368
    int-to-double v0, p4

    div-double v0, p0, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, p2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static pixelYToLatitude(DJ)D
    .locals 6
    .param p0, "pixelY"    # D
    .param p2, "mapSize"    # J

    .line 408
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_0

    long-to-double v0, p2

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_0

    .line 411
    long-to-double v0, p2

    div-double v0, p0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v0

    .line 412
    .local v2, "y":D
    neg-double v0, v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v4

    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v4, v0

    return-wide v4

    .line 409
    .end local v2    # "y":D
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid pixelY coordinate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static pixelYToLatitudeWithScaleFactor(DDI)D
    .locals 8
    .param p0, "pixelY"    # D
    .param p2, "scaleFactor"    # D
    .param p4, "tileSize"    # I

    .line 391
    invoke-static {p2, p3, p4}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSizeWithScaleFactor(DI)J

    move-result-wide v0

    .line 392
    .local v0, "mapSize":J
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-ltz v2, :cond_0

    long-to-double v2, v0

    cmpl-double v2, p0, v2

    if-gtz v2, :cond_0

    .line 395
    long-to-double v2, v0

    div-double v2, p0, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v2

    .line 396
    .local v4, "y":D
    neg-double v2, v4

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v6, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v6

    const-wide v6, 0x4056800000000000L    # 90.0

    sub-double/2addr v6, v2

    return-wide v6

    .line 393
    .end local v4    # "y":D
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid pixelY coordinate at scale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static pixelYToTileY(DBI)I
    .locals 6
    .param p0, "pixelY"    # D
    .param p2, "zoomLevel"    # B
    .param p3, "tileSize"    # I

    .line 434
    int-to-double v0, p3

    div-double v0, p0, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static pixelYToTileYWithScaleFactor(DDI)I
    .locals 4
    .param p0, "pixelY"    # D
    .param p2, "scaleFactor"    # D
    .param p4, "tileSize"    # I

    .line 423
    int-to-double v0, p4

    div-double v0, p0, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, p2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static scaleFactorToZoomLevel(D)D
    .locals 4
    .param p0, "scaleFactor"    # D

    .line 446
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static tileToPixel(JI)J
    .locals 2
    .param p0, "tileNumber"    # J
    .param p2, "tileSize"    # I

    .line 454
    int-to-long v0, p2

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static tileXToLongitude(JB)D
    .locals 4
    .param p0, "tileX"    # J
    .param p2, "zoomLevel"    # B

    .line 476
    const-wide/16 v0, 0x100

    mul-long/2addr v0, p0

    long-to-double v0, v0

    const/16 v2, 0x100

    invoke-static {p2, v2}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->pixelXToLongitude(DJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static tileXToLongitudeWithScaleFactor(JD)D
    .locals 3
    .param p0, "tileX"    # J
    .param p2, "scaleFactor"    # D

    .line 465
    const-wide/16 v0, 0x100

    mul-long/2addr v0, p0

    long-to-double v0, v0

    const/16 v2, 0x100

    invoke-static {v0, v1, p2, p3, v2}, Lorg/mapsforge/core/util/MercatorProjection;->pixelXToLongitudeWithScaleFactor(DDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static tileYToLatitude(JB)D
    .locals 4
    .param p0, "tileY"    # J
    .param p2, "zoomLevel"    # B

    .line 498
    const-wide/16 v0, 0x100

    mul-long/2addr v0, p0

    long-to-double v0, v0

    const/16 v2, 0x100

    invoke-static {p2, v2}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->pixelYToLatitude(DJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static tileYToLatitudeWithScaleFactor(JD)D
    .locals 3
    .param p0, "tileY"    # J
    .param p2, "scaleFactor"    # D

    .line 487
    const-wide/16 v0, 0x100

    mul-long/2addr v0, p0

    long-to-double v0, v0

    const/16 v2, 0x100

    invoke-static {v0, v1, p2, p3, v2}, Lorg/mapsforge/core/util/MercatorProjection;->pixelYToLatitudeWithScaleFactor(DDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static zoomLevelToScaleFactor(B)D
    .locals 4
    .param p0, "zoomLevel"    # B

    .line 508
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method
