.class public final Lorg/mapsforge/core/util/LatLongUtils;
.super Ljava/lang/Object;
.source "LatLongUtils.java"


# static fields
.field private static final CONVERSION_FACTOR:D = 1000000.0

.field private static final DELIMITER:Ljava/lang/String; = ","

.field public static final EQUATORIAL_RADIUS:D = 6378137.0

.field public static final INVERSE_FLATTENING:D = 298.257223563

.field public static final LATITUDE_MAX:D = 90.0

.field public static final LATITUDE_MIN:D = -90.0

.field public static final LONGITUDE_MAX:D = 180.0

.field public static final LONGITUDE_MIN:D = -180.0

.field public static final POLAR_RADIUS:D = 6356752.3142


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static contains(Ljava/util/List;Lorg/mapsforge/core/model/LatLong;)Z
    .locals 14
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/LatLong;",
            ">;",
            "Lorg/mapsforge/core/model/LatLong;",
            ")Z"
        }
    .end annotation

    .line 104
    .local p0, "latLongs":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/LatLong;>;"
    const/4 v0, 0x0

    .line 105
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "j":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 106
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/core/model/LatLong;

    iget-wide v4, v4, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-wide v6, p1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    cmpl-double v4, v4, v6

    const/4 v5, 0x0

    if-lez v4, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mapsforge/core/model/LatLong;

    iget-wide v6, v6, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-wide v8, p1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    move v6, v3

    goto :goto_2

    :cond_1
    move v6, v5

    :goto_2
    if-eq v4, v6, :cond_3

    iget-wide v6, p1, Lorg/mapsforge/core/model/LatLong;->longitude:D

    .line 107
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/core/model/LatLong;

    iget-wide v8, v4, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/core/model/LatLong;

    iget-wide v10, v4, Lorg/mapsforge/core/model/LatLong;->longitude:D

    sub-double/2addr v8, v10

    iget-wide v10, p1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/core/model/LatLong;

    iget-wide v12, v4, Lorg/mapsforge/core/model/LatLong;->latitude:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    .line 108
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/core/model/LatLong;

    iget-wide v10, v4, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/core/model/LatLong;

    iget-wide v12, v4, Lorg/mapsforge/core/model/LatLong;->latitude:D

    sub-double/2addr v10, v12

    div-double/2addr v8, v10

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/core/model/LatLong;

    iget-wide v10, v4, Lorg/mapsforge/core/model/LatLong;->longitude:D

    add-double/2addr v8, v10

    cmpg-double v4, v6, v8

    if-gez v4, :cond_3

    .line 109
    if-nez v0, :cond_2

    move v5, v3

    :cond_2
    move v0, v5

    .line 105
    :cond_3
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    move v2, v1

    move v1, v4

    goto :goto_0

    .line 112
    .end local v2    # "j":I
    .end local v4    # "i":I
    :cond_4
    return v0
.end method

.method public static contains([Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/LatLong;)Z
    .locals 14
    .param p0, "latLongs"    # [Lorg/mapsforge/core/model/LatLong;
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "j":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_4

    .line 87
    aget-object v4, p0, v1

    iget-wide v4, v4, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-wide v6, p1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    cmpl-double v4, v4, v6

    const/4 v5, 0x0

    if-lez v4, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    aget-object v6, p0, v2

    iget-wide v6, v6, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-wide v8, p1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    move v6, v3

    goto :goto_2

    :cond_1
    move v6, v5

    :goto_2
    if-eq v4, v6, :cond_3

    iget-wide v6, p1, Lorg/mapsforge/core/model/LatLong;->longitude:D

    aget-object v4, p0, v2

    iget-wide v8, v4, Lorg/mapsforge/core/model/LatLong;->longitude:D

    aget-object v4, p0, v1

    iget-wide v10, v4, Lorg/mapsforge/core/model/LatLong;->longitude:D

    sub-double/2addr v8, v10

    iget-wide v10, p1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    aget-object v4, p0, v1

    iget-wide v12, v4, Lorg/mapsforge/core/model/LatLong;->latitude:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    aget-object v4, p0, v2

    iget-wide v10, v4, Lorg/mapsforge/core/model/LatLong;->latitude:D

    aget-object v4, p0, v1

    iget-wide v12, v4, Lorg/mapsforge/core/model/LatLong;->latitude:D

    sub-double/2addr v10, v12

    div-double/2addr v8, v10

    aget-object v4, p0, v1

    iget-wide v10, v4, Lorg/mapsforge/core/model/LatLong;->longitude:D

    add-double/2addr v8, v10

    cmpg-double v4, v6, v8

    if-gez v4, :cond_3

    .line 90
    if-nez v0, :cond_2

    move v5, v3

    :cond_2
    move v0, v5

    .line 86
    :cond_3
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    move v2, v1

    move v1, v4

    goto :goto_0

    .line 93
    .end local v2    # "j":I
    .end local v4    # "i":I
    :cond_4
    return v0
.end method

.method public static degreesToMicrodegrees(D)I
    .locals 2
    .param p0, "coordinate"    # D

    .line 122
    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method public static destinationPoint(Lorg/mapsforge/core/model/LatLong;DF)Lorg/mapsforge/core/model/LatLong;
    .locals 20
    .param p0, "start"    # Lorg/mapsforge/core/model/LatLong;
    .param p1, "distance"    # D
    .param p3, "bearing"    # F

    .line 136
    move-object/from16 v0, p0

    move/from16 v1, p3

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 137
    .local v2, "theta":D
    const-wide v4, 0x415854a640000000L    # 6378137.0

    div-double v4, p1, v4

    .line 139
    .local v4, "delta":D
    iget-wide v6, v0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 140
    .local v6, "phi1":D
    iget-wide v8, v0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 142
    .local v8, "lambda1":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    .line 143
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 142
    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    .line 144
    .local v10, "phi2":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    .line 145
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    .line 144
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    add-double/2addr v12, v8

    .line 147
    .local v12, "lambda2":D
    new-instance v14, Lorg/mapsforge/core/model/LatLong;

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    move-wide v15, v2

    .end local v2    # "theta":D
    .local v15, "theta":D
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    invoke-direct {v14, v0, v1, v2, v3}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    return-object v14
.end method

.method public static distance(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/LatLong;)D
    .locals 6
    .param p0, "latLong1"    # Lorg/mapsforge/core/model/LatLong;
    .param p1, "latLong2"    # Lorg/mapsforge/core/model/LatLong;

    .line 159
    iget-wide v0, p0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    iget-wide v2, p1, Lorg/mapsforge/core/model/LatLong;->longitude:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-wide v4, p1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceSegmentPoint(DDDDDD)D
    .locals 5
    .param p0, "startX"    # D
    .param p2, "startY"    # D
    .param p4, "endX"    # D
    .param p6, "endY"    # D
    .param p8, "pointX"    # D
    .param p10, "pointY"    # D

    .line 168
    invoke-static/range {p0 .. p11}, Lorg/mapsforge/core/util/LatLongUtils;->nearestSegmentPoint(DDDDDD)Lorg/mapsforge/core/model/Point;

    move-result-object v0

    .line 169
    .local v0, "nearest":Lorg/mapsforge/core/model/Point;
    iget-wide v1, v0, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v1, p8

    iget-wide v3, v0, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v3, p10

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    return-wide v1
.end method

.method public static fromString(Ljava/lang/String;)Lorg/mapsforge/core/model/LatLong;
    .locals 6
    .param p0, "latLongString"    # Ljava/lang/String;

    .line 181
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/mapsforge/core/util/LatLongUtils;->parseCoordinateString(Ljava/lang/String;I)[D

    move-result-object v0

    .line 182
    .local v0, "coordinates":[D
    new-instance v1, Lorg/mapsforge/core/model/LatLong;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    return-object v1
.end method

.method public static isClosedWay([Lorg/mapsforge/core/model/LatLong;)Z
    .locals 6
    .param p0, "latLongs"    # [Lorg/mapsforge/core/model/LatLong;

    .line 191
    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Lorg/mapsforge/core/model/LatLong;->distance(Lorg/mapsforge/core/model/LatLong;)D

    move-result-wide v1

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v1, v1, v4

    if-gez v1, :cond_0

    move v0, v3

    :cond_0
    return v0
.end method

.method public static latitudeDistance(I)D
    .locals 4
    .param p0, "meters"    # I

    .line 201
    mul-int/lit16 v0, p0, 0x168

    int-to-double v0, v0

    const-wide v2, 0x41831bf8457c1093L    # 4.007501668557849E7

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static longitudeDistance(ID)D
    .locals 6
    .param p0, "meters"    # I
    .param p1, "latitude"    # D

    .line 212
    mul-int/lit16 v0, p0, 0x168

    int-to-double v0, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x41831bf8457c1093L    # 4.007501668557849E7

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static microdegreesToDegrees(I)D
    .locals 4
    .param p0, "coordinate"    # I

    .line 222
    int-to-double v0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static nearestSegmentPoint(DDDDDD)Lorg/mapsforge/core/model/Point;
    .locals 22
    .param p0, "startX"    # D
    .param p2, "startY"    # D
    .param p4, "endX"    # D
    .param p6, "endY"    # D
    .param p8, "pointX"    # D
    .param p10, "pointY"    # D

    .line 231
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    sub-double v8, v4, v0

    .line 232
    .local v8, "xDiff":D
    sub-double v10, v6, v2

    .line 233
    .local v10, "yDiff":D
    mul-double v12, v8, v8

    mul-double v14, v10, v10

    add-double/2addr v12, v14

    .line 234
    .local v12, "length2":D
    const-wide/16 v14, 0x0

    cmpl-double v16, v12, v14

    if-nez v16, :cond_0

    new-instance v14, Lorg/mapsforge/core/model/Point;

    invoke-direct {v14, v0, v1, v2, v3}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    return-object v14

    .line 235
    :cond_0
    sub-double v16, p8, v0

    sub-double v18, v4, v0

    mul-double v16, v16, v18

    sub-double v18, p10, v2

    sub-double v20, v6, v2

    mul-double v18, v18, v20

    add-double v16, v16, v18

    div-double v16, v16, v12

    .line 236
    .local v16, "t":D
    cmpg-double v14, v16, v14

    if-gez v14, :cond_1

    new-instance v14, Lorg/mapsforge/core/model/Point;

    invoke-direct {v14, v0, v1, v2, v3}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    return-object v14

    .line 237
    :cond_1
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v16, v14

    if-lez v14, :cond_2

    new-instance v14, Lorg/mapsforge/core/model/Point;

    invoke-direct {v14, v4, v5, v6, v7}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    return-object v14

    .line 238
    :cond_2
    new-instance v14, Lorg/mapsforge/core/model/Point;

    sub-double v18, v4, v0

    mul-double v18, v18, v16

    add-double v4, v0, v18

    sub-double v18, v6, v2

    mul-double v18, v18, v16

    add-double v0, v2, v18

    invoke-direct {v14, v4, v5, v0, v1}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    return-object v14
.end method

.method public static parseCoordinateString(Ljava/lang/String;I)[D
    .locals 7
    .param p0, "coordinatesString"    # Ljava/lang/String;
    .param p1, "numberOfCoordinates"    # I

    .line 250
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 251
    .local v0, "stringTokenizer":Ljava/util/StringTokenizer;
    const/4 v1, 0x1

    .line 252
    .local v1, "isDelimiter":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    .local v3, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 255
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "token":Ljava/lang/String;
    if-nez v1, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    move v1, v5

    .line 257
    if-eqz v1, :cond_1

    .line 258
    goto :goto_0

    .line 261
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v4    # "token":Ljava/lang/String;
    goto :goto_0

    .line 264
    :cond_2
    if-nez v1, :cond_5

    .line 266
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, p1, :cond_4

    .line 270
    new-array v2, p1, [D

    .line 271
    .local v2, "coordinates":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, p1, :cond_3

    .line 272
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    aput-wide v5, v2, v4

    .line 271
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 274
    .end local v4    # "i":I
    :cond_3
    return-object v2

    .line 267
    .end local v2    # "coordinates":[D
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid number of coordinate values: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid coordinate delimiter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static sphericalDistance(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/LatLong;)D
    .locals 12
    .param p0, "latLong1"    # Lorg/mapsforge/core/model/LatLong;
    .param p1, "latLong2"    # Lorg/mapsforge/core/model/LatLong;

    .line 290
    iget-wide v0, p1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-wide v2, p0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 291
    .local v0, "dLat":D
    iget-wide v2, p1, Lorg/mapsforge/core/model/LatLong;->longitude:D

    iget-wide v4, p0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 292
    .local v2, "dLon":D
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v6, v0, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    div-double v8, v0, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget-wide v10, p1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    .line 293
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    div-double v10, v2, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    div-double v10, v2, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 294
    .local v6, "a":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    mul-double/2addr v8, v4

    .line 295
    .local v8, "c":D
    const-wide v4, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v4, v8

    return-wide v4
.end method

.method public static validateLatitude(D)D
    .locals 3
    .param p0, "latitude"    # D

    .line 304
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_0

    .line 307
    return-wide p0

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static validateLongitude(D)D
    .locals 3
    .param p0, "longitude"    # D

    .line 316
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_0

    .line 319
    return-wide p0

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static vincentyDistance(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/LatLong;)D
    .locals 60
    .param p0, "latLong1"    # Lorg/mapsforge/core/model/LatLong;
    .param p1, "latLong2"    # Lorg/mapsforge/core/model/LatLong;

    .line 339
    const-wide v0, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    .line 340
    .local v0, "f":D
    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/core/model/LatLong;->getLongitude()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/core/model/LatLong;->getLongitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 341
    .local v2, "L":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v6, v4, v0

    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/core/model/LatLong;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    .line 342
    .local v6, "U1":D
    sub-double v8, v4, v0

    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/core/model/LatLong;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    .line 343
    .local v8, "U2":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .local v10, "sinU1":D
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 344
    .local v12, "cosU1":D
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .local v14, "sinU2":D
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 346
    .local v16, "cosU2":D
    move-wide/from16 v18, v2

    .local v18, "lambda":D
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    .line 348
    .local v20, "iterLimit":D
    const-wide/16 v22, 0x0

    .local v22, "cosSqAlpha":D
    const-wide/16 v24, 0x0

    .local v24, "sinSigma":D
    const-wide/16 v26, 0x0

    .local v26, "cosSigma":D
    const-wide/16 v28, 0x0

    .local v28, "cos2SigmaM":D
    const-wide/16 v30, 0x0

    .local v30, "sigma":D
    const-wide/16 v32, 0x0

    .local v32, "sinLambda":D
    const-wide/16 v34, 0x0

    .local v34, "sinAlpha":D
    const-wide/16 v36, 0x0

    .line 350
    .local v36, "cosLambda":D
    :goto_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    .line 351
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    .line 352
    mul-double v38, v16, v32

    mul-double v40, v16, v32

    mul-double v38, v38, v40

    mul-double v40, v12, v14

    mul-double v42, v10, v16

    mul-double v42, v42, v36

    sub-double v40, v40, v42

    mul-double v42, v12, v14

    mul-double v44, v10, v16

    mul-double v44, v44, v36

    sub-double v42, v42, v44

    mul-double v40, v40, v42

    add-double v38, v38, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 355
    .end local v24    # "sinSigma":D
    .local v4, "sinSigma":D
    const-wide/16 v24, 0x0

    cmpl-double v38, v4, v24

    if-nez v38, :cond_0

    .line 356
    return-wide v24

    .line 357
    :cond_0
    mul-double v38, v10, v14

    mul-double v42, v12, v16

    mul-double v42, v42, v36

    move-wide/from16 v44, v6

    .end local v6    # "U1":D
    .local v44, "U1":D
    add-double v6, v38, v42

    .line 358
    .end local v26    # "cosSigma":D
    .local v6, "cosSigma":D
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v30

    .line 359
    mul-double v26, v12, v16

    mul-double v26, v26, v32

    div-double v34, v26, v4

    .line 360
    mul-double v26, v34, v34

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    sub-double v22, v38, v26

    .line 361
    cmpl-double v26, v22, v24

    move-wide/from16 v38, v8

    .end local v8    # "U2":D
    .local v38, "U2":D
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    if-eqz v26, :cond_1

    .line 362
    mul-double v26, v10, v8

    mul-double v26, v26, v14

    div-double v26, v26, v22

    sub-double v26, v6, v26

    move-wide/from16 v28, v26

    .end local v28    # "cos2SigmaM":D
    .local v26, "cos2SigmaM":D
    goto :goto_1

    .line 364
    .end local v26    # "cos2SigmaM":D
    .restart local v28    # "cos2SigmaM":D
    :cond_1
    const-wide/16 v26, 0x0

    move-wide/from16 v28, v26

    .line 366
    :goto_1
    const-wide/high16 v26, 0x4030000000000000L    # 16.0

    div-double v26, v0, v26

    mul-double v26, v26, v22

    const-wide/high16 v42, 0x4008000000000000L    # 3.0

    mul-double v42, v42, v22

    const-wide/high16 v46, 0x4010000000000000L    # 4.0

    sub-double v42, v46, v42

    mul-double v42, v42, v0

    add-double v42, v42, v46

    mul-double v26, v26, v42

    .line 367
    .local v26, "C":D
    move-wide/from16 v42, v18

    .line 368
    .local v42, "lambdaP":D
    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    sub-double v48, v40, v26

    mul-double v48, v48, v0

    mul-double v48, v48, v34

    mul-double v50, v26, v4

    mul-double v52, v26, v6

    mul-double v54, v28, v8

    mul-double v54, v54, v28

    const-wide/high16 v56, -0x4010000000000000L    # -1.0

    add-double v54, v54, v56

    mul-double v52, v52, v54

    add-double v52, v28, v52

    mul-double v50, v50, v52

    add-double v50, v30, v50

    mul-double v48, v48, v50

    add-double v18, v2, v48

    .line 374
    .end local v26    # "C":D
    sub-double v26, v18, v42

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    const-wide v48, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v26, v26, v48

    if-lez v26, :cond_3

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v48, v20, v26

    move-wide/from16 v20, v48

    cmpl-double v26, v48, v24

    if-gtz v26, :cond_2

    goto :goto_2

    :cond_2
    move-wide/from16 v24, v4

    move-wide/from16 v26, v6

    move-wide/from16 v8, v38

    move-wide/from16 v6, v44

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    .line 376
    :cond_3
    :goto_2
    cmpl-double v26, v20, v24

    if-nez v26, :cond_4

    .line 377
    return-wide v24

    .line 379
    :cond_4
    nop

    .line 380
    move-wide/from16 v24, v0

    .end local v0    # "f":D
    .local v24, "f":D
    const-wide v0, 0x415854a640000000L    # 6378137.0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    move-wide/from16 v26, v2

    .end local v2    # "L":D
    .local v26, "L":D
    const-wide v2, 0x41583fc4141bda51L    # 6356752.3142

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v48

    sub-double v0, v0, v48

    mul-double v0, v0, v22

    .line 381
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v48

    div-double v0, v0, v48

    .line 382
    .local v0, "uSq":D
    const-wide/high16 v48, 0x40d0000000000000L    # 16384.0

    div-double v48, v0, v48

    const-wide v50, 0x4065e00000000000L    # 175.0

    mul-double v50, v50, v0

    const-wide/high16 v52, 0x4074000000000000L    # 320.0

    sub-double v52, v52, v50

    mul-double v52, v52, v0

    const-wide/high16 v50, -0x3f78000000000000L    # -768.0

    add-double v52, v52, v50

    mul-double v52, v52, v0

    const-wide/high16 v50, 0x40b0000000000000L    # 4096.0

    add-double v52, v52, v50

    mul-double v48, v48, v52

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    add-double v48, v48, v40

    .line 383
    .local v48, "A":D
    const-wide/high16 v40, 0x4090000000000000L    # 1024.0

    div-double v40, v0, v40

    const-wide v50, 0x4047800000000000L    # 47.0

    mul-double v50, v50, v0

    const-wide v52, 0x4052800000000000L    # 74.0

    sub-double v52, v52, v50

    mul-double v52, v52, v0

    const-wide/high16 v50, -0x3fa0000000000000L    # -128.0

    add-double v52, v52, v50

    mul-double v52, v52, v0

    const-wide/high16 v50, 0x4070000000000000L    # 256.0

    add-double v52, v52, v50

    mul-double v40, v40, v52

    .line 384
    .local v40, "B":D
    mul-double v50, v40, v4

    div-double v52, v40, v46

    mul-double v8, v8, v28

    mul-double v8, v8, v28

    add-double v8, v8, v56

    mul-double/2addr v8, v6

    const-wide/high16 v54, 0x4018000000000000L    # 6.0

    div-double v54, v40, v54

    mul-double v54, v54, v28

    mul-double v56, v4, v46

    mul-double v56, v56, v4

    const-wide/high16 v58, -0x3ff8000000000000L    # -3.0

    add-double v56, v56, v58

    mul-double v54, v54, v56

    mul-double v46, v46, v28

    mul-double v46, v46, v28

    add-double v46, v46, v58

    mul-double v54, v54, v46

    sub-double v8, v8, v54

    mul-double v52, v52, v8

    add-double v52, v28, v52

    mul-double v50, v50, v52

    .line 391
    .local v50, "deltaSigma":D
    mul-double v2, v2, v48

    sub-double v8, v30, v50

    mul-double/2addr v2, v8

    .line 393
    .local v2, "s":D
    return-wide v2
.end method

.method public static zoomForBounds(Lorg/mapsforge/core/model/Dimension;Lorg/mapsforge/core/model/BoundingBox;I)B
    .locals 19
    .param p0, "dimension"    # Lorg/mapsforge/core/model/Dimension;
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p2, "tileSize"    # I

    .line 407
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move/from16 v3, p2

    invoke-static {v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v4

    .line 408
    .local v4, "mapSize":J
    iget-wide v6, v1, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    invoke-static {v6, v7, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v6

    .line 409
    .local v6, "pixelXMax":D
    iget-wide v8, v1, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    invoke-static {v8, v9, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v8

    .line 410
    .local v8, "pixelXMin":D
    sub-double v10, v6, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    iget v12, v0, Lorg/mapsforge/core/model/Dimension;->width:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    neg-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v10, v14

    .line 411
    .local v10, "zoomX":D
    iget-wide v14, v1, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    invoke-static {v14, v15, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v14

    .line 412
    .local v14, "pixelYMax":D
    iget-wide v2, v1, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-static {v2, v3, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v2

    .line 413
    .local v2, "pixelYMin":D
    sub-double v17, v14, v2

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    iget v12, v0, Lorg/mapsforge/core/model/Dimension;->height:I

    int-to-double v12, v12

    div-double v17, v17, v12

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    neg-double v12, v12

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->log(D)D

    move-result-wide v17

    div-double v12, v12, v17

    .line 414
    .local v12, "zoomY":D
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 415
    .local v0, "zoom":D
    const-wide/16 v17, 0x0

    cmpg-double v17, v0, v17

    if-gez v17, :cond_0

    .line 416
    const/16 v16, 0x0

    return v16

    .line 418
    :cond_0
    const-wide v16, 0x405fc00000000000L    # 127.0

    cmpl-double v16, v0, v16

    if-lez v16, :cond_1

    .line 419
    const/16 v16, 0x7f

    return v16

    .line 421
    :cond_1
    move-wide/from16 v16, v2

    .end local v2    # "pixelYMin":D
    .local v16, "pixelYMin":D
    double-to-int v2, v0

    int-to-byte v2, v2

    return v2
.end method
