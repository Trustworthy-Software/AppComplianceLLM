.class public Lorg/mapsforge/core/model/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final maxLatitude:D

.field public final maxLongitude:D

.field public final minLatitude:D

.field public final minLongitude:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 4
    .param p1, "minLatitude"    # D
    .param p3, "minLongitude"    # D
    .param p5, "maxLatitude"    # D
    .param p7, "maxLongitude"    # D

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1, p2}, Lorg/mapsforge/core/util/LatLongUtils;->validateLatitude(D)D

    .line 73
    invoke-static {p3, p4}, Lorg/mapsforge/core/util/LatLongUtils;->validateLongitude(D)D

    .line 74
    invoke-static {p5, p6}, Lorg/mapsforge/core/util/LatLongUtils;->validateLatitude(D)D

    .line 75
    invoke-static {p7, p8}, Lorg/mapsforge/core/util/LatLongUtils;->validateLongitude(D)D

    .line 77
    cmpl-double v0, p1, p5

    const/16 v1, 0x20

    if-gtz v0, :cond_1

    .line 79
    cmpl-double v0, p3, p7

    if-gtz v0, :cond_0

    .line 83
    iput-wide p1, p0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    .line 84
    iput-wide p3, p0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    .line 85
    iput-wide p5, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    .line 86
    iput-wide p7, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    .line 87
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid longitude range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid latitude range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/LatLong;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p1, "latLongs":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/LatLong;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 94
    .local v0, "minLatitude":D
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 95
    .local v2, "minLongitude":D
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 96
    .local v4, "maxLatitude":D
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 97
    .local v6, "maxLongitude":D
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mapsforge/core/model/LatLong;

    .line 98
    .local v9, "latLong":Lorg/mapsforge/core/model/LatLong;
    iget-wide v10, v9, Lorg/mapsforge/core/model/LatLong;->latitude:D

    .line 99
    .local v10, "latitude":D
    iget-wide v12, v9, Lorg/mapsforge/core/model/LatLong;->longitude:D

    .line 101
    .local v12, "longitude":D
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 102
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 103
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 104
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 105
    .end local v9    # "latLong":Lorg/mapsforge/core/model/LatLong;
    .end local v10    # "latitude":D
    .end local v12    # "longitude":D
    goto :goto_0

    .line 107
    :cond_0
    iput-wide v0, p0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    .line 108
    iput-wide v2, p0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    .line 109
    iput-wide v4, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    .line 110
    iput-wide v6, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    .line 111
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/mapsforge/core/model/BoundingBox;
    .locals 11
    .param p0, "boundingBoxString"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/mapsforge/core/util/LatLongUtils;->parseCoordinateString(Ljava/lang/String;I)[D

    move-result-object v0

    .line 41
    .local v0, "coordinates":[D
    new-instance v10, Lorg/mapsforge/core/model/BoundingBox;

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    const/4 v1, 0x2

    aget-wide v6, v0, v1

    const/4 v1, 0x3

    aget-wide v8, v0, v1

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/mapsforge/core/model/BoundingBox;-><init>(DDDD)V

    return-object v10
.end method


# virtual methods
.method public contains(DD)Z
    .locals 2
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 119
    iget-wide v0, p0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    cmpl-double v0, v0, p1

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    cmpg-double v0, v0, p3

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    cmpl-double v0, v0, p3

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Lorg/mapsforge/core/model/LatLong;)Z
    .locals 4
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;

    .line 128
    iget-wide v0, p1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-wide v2, p1, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mapsforge/core/model/BoundingBox;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 134
    return v0

    .line 135
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/core/model/BoundingBox;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 136
    return v2

    .line 138
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/core/model/BoundingBox;

    .line 139
    .local v1, "other":Lorg/mapsforge/core/model/BoundingBox;
    iget-wide v3, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v1, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 140
    return v2

    .line 141
    :cond_2
    iget-wide v3, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v1, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 142
    return v2

    .line 143
    :cond_3
    iget-wide v3, p0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v1, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 144
    return v2

    .line 145
    :cond_4
    iget-wide v3, p0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v1, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 146
    return v2

    .line 148
    :cond_5
    return v0
.end method

.method public extendBoundingBox(Lorg/mapsforge/core/model/BoundingBox;)Lorg/mapsforge/core/model/BoundingBox;
    .locals 12
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;

    .line 156
    new-instance v9, Lorg/mapsforge/core/model/BoundingBox;

    iget-wide v0, p0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    iget-wide v2, p1, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    iget-wide v5, p1, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    .line 157
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    iget-wide v7, p1, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    .line 158
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iget-wide v7, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    iget-wide v10, p1, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    .line 159
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/mapsforge/core/model/BoundingBox;-><init>(DDDD)V

    .line 156
    return-object v9
.end method

.method public extendCoordinates(DD)Lorg/mapsforge/core/model/BoundingBox;
    .locals 23
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 170
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {p0 .. p4}, Lorg/mapsforge/core/model/BoundingBox;->contains(DD)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    return-object v0

    .line 174
    :cond_0
    iget-wide v5, v0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    const-wide v7, -0x3faabcba4e5ab62aL    # -85.05112877980659

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 175
    .local v5, "minLat":D
    iget-wide v7, v0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    const-wide v9, -0x3f99800000000000L    # -180.0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    .line 176
    .local v7, "minLon":D
    iget-wide v9, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    const-wide v11, 0x40554345b1a549d6L    # 85.05112877980659

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    .line 177
    .local v18, "maxLat":D
    iget-wide v9, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    const-wide v11, 0x4066800000000000L    # 180.0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v20

    .line 179
    .local v20, "maxLon":D
    new-instance v22, Lorg/mapsforge/core/model/BoundingBox;

    move-object/from16 v9, v22

    move-wide v10, v5

    move-wide v12, v7

    move-wide/from16 v14, v18

    move-wide/from16 v16, v20

    invoke-direct/range {v9 .. v17}, Lorg/mapsforge/core/model/BoundingBox;-><init>(DDDD)V

    return-object v22
.end method

.method public extendCoordinates(Lorg/mapsforge/core/model/LatLong;)Lorg/mapsforge/core/model/BoundingBox;
    .locals 4
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;

    .line 189
    iget-wide v0, p1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-wide v2, p1, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mapsforge/core/model/BoundingBox;->extendCoordinates(DD)Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public extendDegrees(DD)Lorg/mapsforge/core/model/BoundingBox;
    .locals 19
    .param p1, "verticalExpansion"    # D
    .param p3, "horizontalExpansion"    # D

    .line 200
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    cmpl-double v3, p3, v1

    if-nez v3, :cond_0

    .line 201
    return-object v0

    .line 202
    :cond_0
    cmpg-double v3, p1, v1

    if-ltz v3, :cond_1

    cmpg-double v1, p3, v1

    if-ltz v1, :cond_1

    .line 206
    iget-wide v1, v0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    sub-double v1, v1, p1

    const-wide v3, -0x3faabcba4e5ab62aL    # -85.05112877980659

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 207
    .local v1, "minLat":D
    iget-wide v3, v0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    sub-double v3, v3, p3

    const-wide v5, -0x3f99800000000000L    # -180.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 208
    .local v3, "minLon":D
    iget-wide v5, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    add-double v5, v5, p1

    const-wide v7, 0x40554345b1a549d6L    # 85.05112877980659

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    .line 209
    .local v14, "maxLat":D
    iget-wide v5, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    add-double v5, v5, p3

    const-wide v7, 0x4066800000000000L    # 180.0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    .line 211
    .local v16, "maxLon":D
    new-instance v18, Lorg/mapsforge/core/model/BoundingBox;

    move-object/from16 v5, v18

    move-wide v6, v1

    move-wide v8, v3

    move-wide v10, v14

    move-wide/from16 v12, v16

    invoke-direct/range {v5 .. v13}, Lorg/mapsforge/core/model/BoundingBox;-><init>(DDDD)V

    return-object v18

    .line 203
    .end local v1    # "minLat":D
    .end local v3    # "minLon":D
    .end local v14    # "maxLat":D
    .end local v16    # "maxLon":D
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "BoundingBox extend operation does not accept negative values"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public extendMargin(F)Lorg/mapsforge/core/model/BoundingBox;
    .locals 24
    .param p1, "margin"    # F

    .line 221
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 222
    return-object v0

    .line 223
    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-lez v2, :cond_1

    .line 227
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/core/model/BoundingBox;->getLatitudeSpan()D

    move-result-wide v2

    float-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/core/model/BoundingBox;->getLatitudeSpan()D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    .line 228
    .local v2, "verticalExpansion":D
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/core/model/BoundingBox;->getLongitudeSpan()D

    move-result-wide v6

    float-to-double v8, v1

    mul-double/2addr v6, v8

    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/core/model/BoundingBox;->getLongitudeSpan()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    .line 230
    .local v6, "horizontalExpansion":D
    iget-wide v4, v0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    sub-double/2addr v4, v2

    const-wide v8, -0x3faabcba4e5ab62aL    # -85.05112877980659

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 231
    .local v4, "minLat":D
    iget-wide v8, v0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    sub-double/2addr v8, v6

    const-wide v10, -0x3f99800000000000L    # -180.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 232
    .local v8, "minLon":D
    iget-wide v10, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    add-double/2addr v10, v2

    const-wide v12, 0x40554345b1a549d6L    # 85.05112877980659

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v19

    .line 233
    .local v19, "maxLat":D
    iget-wide v10, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    add-double/2addr v10, v6

    const-wide v12, 0x4066800000000000L    # 180.0

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v21

    .line 235
    .local v21, "maxLon":D
    new-instance v23, Lorg/mapsforge/core/model/BoundingBox;

    move-object/from16 v10, v23

    move-wide v11, v4

    move-wide v13, v8

    move-wide/from16 v15, v19

    move-wide/from16 v17, v21

    invoke-direct/range {v10 .. v18}, Lorg/mapsforge/core/model/BoundingBox;-><init>(DDDD)V

    return-object v23

    .line 224
    .end local v2    # "verticalExpansion":D
    .end local v4    # "minLat":D
    .end local v6    # "horizontalExpansion":D
    .end local v8    # "minLon":D
    .end local v19    # "maxLat":D
    .end local v21    # "maxLon":D
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "BoundingBox extend operation does not accept negative or zero values"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public extendMeters(I)Lorg/mapsforge/core/model/BoundingBox;
    .locals 24
    .param p1, "meters"    # I

    .line 245
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-nez v1, :cond_0

    .line 246
    return-object v0

    .line 247
    :cond_0
    if-ltz v1, :cond_1

    .line 251
    invoke-static/range {p1 .. p1}, Lorg/mapsforge/core/util/LatLongUtils;->latitudeDistance(I)D

    move-result-wide v2

    .line 252
    .local v2, "verticalExpansion":D
    iget-wide v4, v0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-wide v6, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lorg/mapsforge/core/util/LatLongUtils;->longitudeDistance(ID)D

    move-result-wide v4

    .line 254
    .local v4, "horizontalExpansion":D
    iget-wide v6, v0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    sub-double/2addr v6, v2

    const-wide v8, -0x3faabcba4e5ab62aL    # -85.05112877980659

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 255
    .local v6, "minLat":D
    iget-wide v8, v0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    sub-double/2addr v8, v4

    const-wide v10, -0x3f99800000000000L    # -180.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 256
    .local v8, "minLon":D
    iget-wide v10, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    add-double/2addr v10, v2

    const-wide v12, 0x40554345b1a549d6L    # 85.05112877980659

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v19

    .line 257
    .local v19, "maxLat":D
    iget-wide v10, v0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    add-double/2addr v10, v4

    const-wide v12, 0x4066800000000000L    # 180.0

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v21

    .line 259
    .local v21, "maxLon":D
    new-instance v23, Lorg/mapsforge/core/model/BoundingBox;

    move-object/from16 v10, v23

    move-wide v11, v6

    move-wide v13, v8

    move-wide/from16 v15, v19

    move-wide/from16 v17, v21

    invoke-direct/range {v10 .. v18}, Lorg/mapsforge/core/model/BoundingBox;-><init>(DDDD)V

    return-object v23

    .line 248
    .end local v2    # "verticalExpansion":D
    .end local v4    # "horizontalExpansion":D
    .end local v6    # "minLat":D
    .end local v8    # "minLon":D
    .end local v19    # "maxLat":D
    .end local v21    # "maxLon":D
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "BoundingBox extend operation does not accept negative values"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCenterPoint()Lorg/mapsforge/core/model/LatLong;
    .locals 10

    .line 266
    iget-wide v0, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    iget-wide v2, p0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 267
    .local v0, "latitudeOffset":D
    iget-wide v4, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    iget-wide v6, p0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    sub-double/2addr v4, v6

    div-double/2addr v4, v2

    .line 268
    .local v4, "longitudeOffset":D
    new-instance v2, Lorg/mapsforge/core/model/LatLong;

    iget-wide v6, p0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    add-double/2addr v6, v0

    iget-wide v8, p0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    add-double/2addr v8, v4

    invoke-direct {v2, v6, v7, v8, v9}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    return-object v2
.end method

.method public getLatitudeSpan()D
    .locals 4

    .line 275
    iget-wide v0, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    iget-wide v2, p0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getLongitudeSpan()D
    .locals 4

    .line 282
    iget-wide v0, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    iget-wide v2, p0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getPositionRelativeToTile(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/core/model/Rectangle;
    .locals 12
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 292
    new-instance v0, Lorg/mapsforge/core/model/LatLong;

    iget-wide v1, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    iget-wide v3, p0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    invoke-static {v0, p1}, Lorg/mapsforge/core/util/MercatorProjection;->getPixelRelativeToTile(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/core/model/Point;

    move-result-object v0

    .line 293
    .local v0, "upperLeft":Lorg/mapsforge/core/model/Point;
    new-instance v1, Lorg/mapsforge/core/model/LatLong;

    iget-wide v2, p0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    iget-wide v4, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    invoke-static {v1, p1}, Lorg/mapsforge/core/util/MercatorProjection;->getPixelRelativeToTile(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/core/model/Point;

    move-result-object v1

    .line 294
    .local v1, "lowerRight":Lorg/mapsforge/core/model/Point;
    new-instance v11, Lorg/mapsforge/core/model/Rectangle;

    iget-wide v3, v0, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v5, v0, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v7, v1, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v9, v1, Lorg/mapsforge/core/model/Point;->y:D

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    return-object v11
.end method

.method public hashCode()I
    .locals 8

    .line 299
    const/16 v0, 0x1f

    .line 300
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 302
    .local v1, "result":I
    iget-wide v2, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 303
    .local v2, "temp":J
    mul-int/lit8 v4, v1, 0x1f

    const/16 v5, 0x20

    ushr-long v6, v2, v5

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v4, v6

    .line 304
    .end local v1    # "result":I
    .local v4, "result":I
    iget-wide v6, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 305
    .end local v2    # "temp":J
    .local v1, "temp":J
    mul-int/lit8 v3, v4, 0x1f

    ushr-long v6, v1, v5

    xor-long/2addr v6, v1

    long-to-int v6, v6

    add-int/2addr v3, v6

    .line 306
    .end local v4    # "result":I
    .local v3, "result":I
    iget-wide v6, p0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 307
    mul-int/lit8 v4, v3, 0x1f

    ushr-long v6, v1, v5

    xor-long/2addr v6, v1

    long-to-int v6, v6

    add-int/2addr v4, v6

    .line 308
    .end local v3    # "result":I
    .restart local v4    # "result":I
    iget-wide v6, p0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 309
    mul-int/lit8 v3, v4, 0x1f

    ushr-long v5, v1, v5

    xor-long/2addr v5, v1

    long-to-int v5, v5

    add-int/2addr v3, v5

    .line 310
    .end local v4    # "result":I
    .restart local v3    # "result":I
    return v3
.end method

.method public intersects(Lorg/mapsforge/core/model/BoundingBox;)Z
    .locals 5
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;

    .line 318
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 319
    return v0

    .line 322
    :cond_0
    iget-wide v1, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    iget-wide v3, p1, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    iget-wide v1, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    iget-wide v3, p1, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    iget-wide v1, p0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    iget-wide v3, p1, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    iget-wide v1, p0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    iget-wide v3, p1, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public intersectsArea([[Lorg/mapsforge/core/model/LatLong;)Z
    .locals 21
    .param p1, "latLongs"    # [[Lorg/mapsforge/core/model/LatLong;

    .line 337
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    aget-object v2, v1, v3

    array-length v2, v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 340
    :cond_0
    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 341
    .local v5, "outer":[Lorg/mapsforge/core/model/LatLong;
    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 342
    .local v8, "latLong":Lorg/mapsforge/core/model/LatLong;
    invoke-virtual {v0, v8}, Lorg/mapsforge/core/model/BoundingBox;->contains(Lorg/mapsforge/core/model/LatLong;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 344
    const/4 v2, 0x1

    return v2

    .line 341
    .end local v8    # "latLong":Lorg/mapsforge/core/model/LatLong;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 340
    .end local v5    # "outer":[Lorg/mapsforge/core/model/LatLong;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 350
    :cond_3
    aget-object v2, v1, v3

    aget-object v2, v2, v3

    iget-wide v4, v2, Lorg/mapsforge/core/model/LatLong;->latitude:D

    .line 351
    .local v4, "tmpMinLat":D
    aget-object v2, v1, v3

    aget-object v2, v2, v3

    iget-wide v6, v2, Lorg/mapsforge/core/model/LatLong;->longitude:D

    .line 352
    .local v6, "tmpMinLon":D
    aget-object v2, v1, v3

    aget-object v2, v2, v3

    iget-wide v8, v2, Lorg/mapsforge/core/model/LatLong;->latitude:D

    .line 353
    .local v8, "tmpMaxLat":D
    aget-object v2, v1, v3

    aget-object v2, v2, v3

    iget-wide v10, v2, Lorg/mapsforge/core/model/LatLong;->longitude:D

    .line 355
    .local v10, "tmpMaxLon":D
    array-length v2, v1

    move v12, v3

    :goto_2
    if-ge v12, v2, :cond_5

    aget-object v13, v1, v12

    .line 356
    .local v13, "outer":[Lorg/mapsforge/core/model/LatLong;
    array-length v14, v13

    move v15, v3

    :goto_3
    if-ge v15, v14, :cond_4

    aget-object v3, v13, v15

    .line 357
    .local v3, "latLong":Lorg/mapsforge/core/model/LatLong;
    move/from16 v17, v2

    iget-wide v1, v3, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 358
    iget-wide v1, v3, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 359
    iget-wide v1, v3, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 360
    iget-wide v1, v3, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 356
    .end local v3    # "latLong":Lorg/mapsforge/core/model/LatLong;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v17

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    move/from16 v17, v2

    .line 355
    .end local v13    # "outer":[Lorg/mapsforge/core/model/LatLong;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    const/4 v3, 0x0

    goto :goto_2

    .line 363
    :cond_5
    new-instance v1, Lorg/mapsforge/core/model/BoundingBox;

    move-object v12, v1

    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    invoke-direct/range {v12 .. v20}, Lorg/mapsforge/core/model/BoundingBox;-><init>(DDDD)V

    invoke-virtual {v0, v1}, Lorg/mapsforge/core/model/BoundingBox;->intersects(Lorg/mapsforge/core/model/BoundingBox;)Z

    move-result v1

    return v1

    .line 338
    .end local v4    # "tmpMinLat":D
    .end local v6    # "tmpMinLon":D
    .end local v8    # "tmpMaxLat":D
    .end local v10    # "tmpMaxLon":D
    :cond_6
    :goto_4
    const/4 v1, 0x0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "minLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-wide v1, p0, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 371
    const-string v1, ", minLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-wide v1, p0, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 373
    const-string v1, ", maxLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-wide v1, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, ", maxLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-wide v1, p0, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
