.class public Lorg/osmdroid/util/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/util/BoundingBox;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x2L


# instance fields
.field private mLatNorth:D

.field private mLatSouth:D

.field private mLonEast:D

.field private mLonWest:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 374
    new-instance v0, Lorg/osmdroid/util/BoundingBox$1;

    invoke-direct {v0}, Lorg/osmdroid/util/BoundingBox$1;-><init>()V

    sput-object v0, Lorg/osmdroid/util/BoundingBox;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0
    .param p1, "north"    # D
    .param p3, "east"    # D
    .param p5, "south"    # D
    .param p7, "west"    # D

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual/range {p0 .. p8}, Lorg/osmdroid/util/BoundingBox;->set(DDDD)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBox;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .line 22
    invoke-static {p0}, Lorg/osmdroid/util/BoundingBox;->readFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public static fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;)",
            "Lorg/osmdroid/util/BoundingBox;"
        }
    .end annotation

    .line 320
    .local p0, "partialPolyLine":Ljava/util/List;, "Ljava/util/List<+Lorg/osmdroid/api/IGeoPoint;>;"
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 321
    .local v0, "minLat":D
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 322
    .local v2, "minLon":D
    const-wide v4, -0x10000000000001L

    .line 323
    .local v4, "maxLat":D
    const-wide v6, -0x10000000000001L

    .line 324
    .local v6, "maxLon":D
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/osmdroid/api/IGeoPoint;

    .line 325
    .local v9, "gp":Lorg/osmdroid/api/IGeoPoint;
    invoke-interface {v9}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v10

    .line 326
    .local v10, "latitude":D
    invoke-interface {v9}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v12

    .line 328
    .local v12, "longitude":D
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 329
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 330
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 331
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 332
    .end local v9    # "gp":Lorg/osmdroid/api/IGeoPoint;
    .end local v10    # "latitude":D
    .end local v12    # "longitude":D
    goto :goto_0

    .line 334
    :cond_0
    new-instance v8, Lorg/osmdroid/util/BoundingBox;

    move-object v9, v8

    move-wide v10, v4

    move-wide v12, v6

    move-wide v14, v0

    move-wide/from16 v16, v2

    invoke-direct/range {v9 .. v17}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v8
.end method

.method public static fromGeoPointsSafe(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/osmdroid/util/BoundingBox;"
        }
    .end annotation

    .line 514
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :try_start_0
    invoke-static {p0}, Lorg/osmdroid/util/BoundingBox;->fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v1

    .line 517
    .local v1, "tileSystem":Lorg/osmdroid/util/TileSystem;
    new-instance v11, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v3

    .line 518
    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v5

    .line 519
    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v7

    .line 520
    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v9

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 517
    return-object v11
.end method

.method public static getCenterLongitude(DD)D
    .locals 4
    .param p0, "pWest"    # D
    .param p2, "pEast"    # D

    .line 157
    add-double v0, p2, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 158
    .local v0, "longitude":D
    cmpg-double v2, p2, p0

    if-gez v2, :cond_0

    .line 160
    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v0, v2

    .line 162
    :cond_0
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide v2

    return-wide v2
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBox;
    .locals 18
    .param p0, "in"    # Landroid/os/Parcel;

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v9

    .line 401
    .local v9, "latNorth":D
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v11

    .line 402
    .local v11, "lonEast":D
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v13

    .line 403
    .local v13, "latSouth":D
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v15

    .line 404
    .local v15, "lonWest":D
    new-instance v17, Lorg/osmdroid/util/BoundingBox;

    move-object/from16 v0, v17

    move-wide v1, v9

    move-wide v3, v11

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v17
.end method


# virtual methods
.method public bringToBoundingBox(DD)Lorg/osmdroid/util/GeoPoint;
    .locals 7
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .line 315
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    iget-wide v5, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    .line 316
    invoke-static {v5, v6, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 315
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->clone()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/util/BoundingBox;
    .locals 10

    .line 85
    new-instance v9, Lorg/osmdroid/util/BoundingBox;

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v5, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    iget-wide v7, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v9
.end method

.method public concat(Lorg/osmdroid/util/BoundingBox;)Lorg/osmdroid/util/BoundingBox;
    .locals 12
    .param p1, "bb2"    # Lorg/osmdroid/util/BoundingBox;

    .line 92
    new-instance v9, Lorg/osmdroid/util/BoundingBox;

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    .line 93
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    .line 94
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    .line 95
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iget-wide v7, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    .line 96
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v10

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 92
    return-object v9
.end method

.method public contains(DD)Z
    .locals 9
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "latMatch":Z
    const/4 v1, 0x0

    .line 345
    .local v1, "lonMatch":Z
    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    cmpg-double v6, v2, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gez v6, :cond_0

    .line 347
    const/4 v0, 0x1

    goto :goto_1

    .line 350
    :cond_0
    cmpg-double v2, p1, v2

    if-gez v2, :cond_1

    cmpl-double v2, p1, v4

    if-lez v2, :cond_1

    move v2, v7

    goto :goto_0

    :cond_1
    move v2, v8

    :goto_0
    move v0, v2

    .line 354
    :goto_1
    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    cmpg-double v6, v2, v4

    if-gez v6, :cond_3

    .line 356
    cmpg-double v2, p3, v2

    if-gtz v2, :cond_2

    cmpl-double v2, p3, v4

    if-ltz v2, :cond_2

    move v2, v7

    goto :goto_2

    :cond_2
    move v2, v8

    :goto_2
    move v1, v2

    goto :goto_4

    .line 360
    :cond_3
    cmpg-double v2, p3, v2

    if-gez v2, :cond_4

    cmpl-double v2, p3, v4

    if-lez v2, :cond_4

    move v2, v7

    goto :goto_3

    :cond_4
    move v2, v8

    :goto_3
    move v1, v2

    .line 363
    :goto_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    move v7, v8

    :goto_5
    return v7
.end method

.method public contains(Lorg/osmdroid/api/IGeoPoint;)Z
    .locals 4
    .param p1, "pGeoPoint"    # Lorg/osmdroid/api/IGeoPoint;

    .line 338
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/util/BoundingBox;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public getActualNorth()D
    .locals 4

    .line 169
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getActualSouth()D
    .locals 4

    .line 176
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCenter()Lorg/osmdroid/util/GeoPoint;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    iget-wide v5, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v7, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    add-double/2addr v5, v7

    div-double/2addr v5, v3

    invoke-direct {v0, v1, v2, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public getCenterLatitude()D
    .locals 4

    .line 140
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getCenterLongitude()D
    .locals 4

    .line 147
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    invoke-static {v0, v1, v2, v3}, Lorg/osmdroid/util/BoundingBox;->getCenterLongitude(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCenterWithDateLine()Lorg/osmdroid/util/GeoPoint;
    .locals 5

    .line 120
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getCenterLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getCenterLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public getDiagonalLengthInMeters()D
    .locals 6

    .line 124
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->distanceToAsDouble(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeoPointOfRelativePositionWithExactGudermannInterpolation(FF)Lorg/osmdroid/util/GeoPoint;
    .locals 17
    .param p1, "relX"    # F
    .param p2, "relY"    # F

    .line 268
    move-object/from16 v0, p0

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v1

    .line 269
    .local v1, "tileSystem":Lorg/osmdroid/util/TileSystem;
    iget-wide v2, v0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v2, v3}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v2

    .line 270
    .local v2, "gudNorth":D
    iget-wide v4, v0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-static {v4, v5}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v4

    .line 271
    .local v4, "gudSouth":D
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v6, p2

    float-to-double v6, v6

    sub-double v8, v2, v4

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Lorg/osmdroid/util/MyMath;->gudermann(D)D

    move-result-wide v6

    .line 272
    .local v6, "lat":D
    iget-wide v8, v0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v10

    move/from16 v12, p1

    float-to-double v13, v12

    mul-double/2addr v10, v13

    add-double/2addr v8, v10

    .line 273
    .local v8, "lon":D
    new-instance v10, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1, v6, v7}, Lorg/osmdroid/util/TileSystem;->cleanLatitude(D)D

    move-result-wide v13

    move-wide v15, v2

    .end local v2    # "gudNorth":D
    .local v15, "gudNorth":D
    invoke-virtual {v1, v8, v9}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide v2

    invoke-direct {v10, v13, v14, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v10
.end method

.method public getGeoPointOfRelativePositionWithLinearInterpolation(FF)Lorg/osmdroid/util/GeoPoint;
    .locals 10
    .param p1, "relX"    # F
    .param p2, "relY"    # F

    .line 260
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    .line 261
    .local v0, "tileSystem":Lorg/osmdroid/util/TileSystem;
    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v3

    float-to-double v5, p2

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    .line 262
    .local v1, "lat":D
    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v5

    float-to-double v7, p1

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    .line 263
    .local v3, "lon":D
    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->cleanLatitude(D)D

    move-result-wide v6

    invoke-virtual {v0, v3, v4}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v5
.end method

.method public getLatNorth()D
    .locals 2

    .line 129
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    return-wide v0
.end method

.method public getLatSouth()D
    .locals 2

    .line 133
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    return-wide v0
.end method

.method public getLatitudeSpan()D
    .locals 4

    .line 193
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitudeSpanE6()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 409
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLonEast()D
    .locals 2

    .line 180
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    return-wide v0
.end method

.method public getLonWest()D
    .locals 2

    .line 184
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    return-wide v0
.end method

.method public getLongitudeSpan()D
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitudeSpanE6()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 414
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLongitudeSpanWithDateLine()D
    .locals 5

    .line 226
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 227
    sub-double/2addr v0, v2

    return-wide v0

    .line 229
    :cond_0
    sub-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 7
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D
    .param p5, "reuse"    # Landroid/graphics/PointF;

    .line 251
    if-eqz p5, :cond_0

    move-object v0, p5

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 252
    .local v0, "out":Landroid/graphics/PointF;
    :goto_0
    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v1, v2}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v1

    invoke-static {p1, p2}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v3, v4}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-static {v5, v6}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 253
    .local v1, "y":F
    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    sub-double/2addr v2, p3

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    .line 254
    .local v3, "x":F
    invoke-virtual {v0, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 255
    return-object v0
.end method

.method public getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 6
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D
    .param p5, "reuse"    # Landroid/graphics/PointF;

    .line 242
    if-eqz p5, :cond_0

    move-object v0, p5

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 243
    .local v0, "out":Landroid/graphics/PointF;
    :goto_0
    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    sub-double/2addr v1, p1

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 244
    .local v1, "y":F
    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    sub-double/2addr v2, p3

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    .line 245
    .local v3, "x":F
    invoke-virtual {v0, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 246
    return-object v0
.end method

.method public increaseByScale(F)Lorg/osmdroid/util/BoundingBox;
    .locals 28
    .param p1, "pBoundingboxPaddingRelativeScale"    # F

    .line 283
    move/from16 v0, p1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_0

    .line 285
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v1

    .line 287
    .local v1, "tileSystem":Lorg/osmdroid/util/TileSystem;
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/BoundingBox;->getCenterLatitude()D

    move-result-wide v2

    .line 288
    .local v2, "latCenter":D
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    float-to-double v8, v0

    mul-double/2addr v4, v8

    .line 289
    .local v4, "latSpanHalf":D
    add-double v8, v2, v4

    invoke-virtual {v1, v8, v9}, Lorg/osmdroid/util/TileSystem;->cleanLatitude(D)D

    move-result-wide v8

    .line 290
    .local v8, "latNorth":D
    sub-double v10, v2, v4

    invoke-virtual {v1, v10, v11}, Lorg/osmdroid/util/TileSystem;->cleanLatitude(D)D

    move-result-wide v19

    .line 292
    .local v19, "latSouth":D
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/BoundingBox;->getCenterLongitude()D

    move-result-wide v21

    .line 293
    .local v21, "lonCenter":D
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpanWithDateLine()D

    move-result-wide v10

    div-double/2addr v10, v6

    float-to-double v6, v0

    mul-double/2addr v6, v10

    .line 294
    .local v6, "lonSpanHalf":D
    add-double v10, v21, v6

    invoke-virtual {v1, v10, v11}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide v23

    .line 295
    .local v23, "latEast":D
    sub-double v10, v21, v6

    invoke-virtual {v1, v10, v11}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide v25

    .line 296
    .local v25, "latWest":D
    new-instance v27, Lorg/osmdroid/util/BoundingBox;

    move-object/from16 v10, v27

    move-wide v11, v8

    move-wide/from16 v13, v23

    move-wide/from16 v15, v19

    move-wide/from16 v17, v25

    invoke-direct/range {v10 .. v18}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v27

    .line 284
    .end local v1    # "tileSystem":Lorg/osmdroid/util/TileSystem;
    .end local v2    # "latCenter":D
    .end local v4    # "latSpanHalf":D
    .end local v6    # "lonSpanHalf":D
    .end local v8    # "latNorth":D
    .end local v19    # "latSouth":D
    .end local v21    # "lonCenter":D
    .end local v23    # "latEast":D
    .end local v25    # "latWest":D
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pBoundingboxPaddingRelativeScale must be positive"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public overlaps(Lorg/osmdroid/util/BoundingBox;D)Z
    .locals 17
    .param p1, "pBoundingBox"    # Lorg/osmdroid/util/BoundingBox;
    .param p2, "pZoom"    # D

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v2, p2, v2

    const/4 v3, 0x1

    if-gez v2, :cond_0

    .line 431
    return v3

    .line 433
    :cond_0
    const/4 v2, 0x0

    .line 434
    .local v2, "latMatch":Z
    const/4 v4, 0x0

    .line 437
    .local v4, "lonMatch":Z
    iget-wide v5, v1, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    iget-wide v7, v0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    cmpg-double v9, v5, v7

    if-gtz v9, :cond_1

    iget-wide v9, v0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    cmpl-double v9, v5, v9

    if-ltz v9, :cond_1

    .line 439
    const/4 v2, 0x1

    .line 443
    :cond_1
    iget-wide v9, v0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    iget-wide v11, v1, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    cmpl-double v13, v9, v11

    if-ltz v13, :cond_2

    iget-wide v13, v1, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    cmpg-double v13, v9, v13

    if-gtz v13, :cond_2

    .line 444
    const/4 v4, 0x1

    .line 446
    :cond_2
    iget-wide v13, v0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    cmpl-double v15, v13, v11

    if-ltz v15, :cond_3

    move/from16 v16, v4

    .end local v4    # "lonMatch":Z
    .local v16, "lonMatch":Z
    iget-wide v3, v1, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    cmpg-double v3, v9, v3

    if-gtz v3, :cond_4

    .line 447
    const/4 v4, 0x1

    .end local v16    # "lonMatch":Z
    .restart local v4    # "lonMatch":Z
    goto :goto_0

    .line 446
    :cond_3
    move/from16 v16, v4

    .line 450
    .end local v4    # "lonMatch":Z
    .restart local v16    # "lonMatch":Z
    :cond_4
    move/from16 v4, v16

    .end local v16    # "lonMatch":Z
    .restart local v4    # "lonMatch":Z
    :goto_0
    cmpg-double v3, v9, v11

    if-gtz v3, :cond_6

    move/from16 v16, v2

    .end local v2    # "latMatch":Z
    .local v16, "latMatch":Z
    iget-wide v2, v1, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    cmpl-double v2, v13, v2

    if-ltz v2, :cond_5

    iget-wide v2, v1, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    cmpl-double v2, v7, v2

    if-ltz v2, :cond_5

    iget-wide v2, v0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    cmpg-double v2, v2, v5

    if-gtz v2, :cond_5

    .line 454
    const/4 v2, 0x1

    return v2

    .line 450
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .end local v16    # "latMatch":Z
    .restart local v2    # "latMatch":Z
    :cond_6
    move/from16 v16, v2

    const/4 v2, 0x1

    .line 457
    .end local v2    # "latMatch":Z
    .restart local v16    # "latMatch":Z
    :goto_1
    cmpl-double v3, v7, v5

    if-ltz v3, :cond_7

    iget-wide v2, v0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    cmpg-double v2, v7, v2

    if-gtz v2, :cond_7

    .line 458
    const/4 v2, 0x1

    .end local v16    # "latMatch":Z
    .restart local v2    # "latMatch":Z
    goto :goto_2

    .line 460
    .end local v2    # "latMatch":Z
    .restart local v16    # "latMatch":Z
    :cond_7
    move/from16 v2, v16

    .end local v16    # "latMatch":Z
    .restart local v2    # "latMatch":Z
    :goto_2
    iget-wide v7, v0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    cmpl-double v3, v7, v5

    if-ltz v3, :cond_8

    cmpg-double v3, v7, v7

    if-gtz v3, :cond_8

    .line 461
    const/4 v2, 0x1

    .line 463
    :cond_8
    cmpl-double v3, v9, v13

    if-lez v3, :cond_d

    .line 469
    iget-wide v5, v1, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    cmpg-double v3, v13, v5

    if-gtz v3, :cond_9

    cmpl-double v3, v11, v9

    if-ltz v3, :cond_9

    .line 470
    const/4 v4, 0x1

    .line 473
    :cond_9
    cmpl-double v3, v9, v5

    if-ltz v3, :cond_c

    cmpg-double v3, v13, v5

    if-gtz v3, :cond_c

    .line 475
    const/4 v3, 0x1

    .line 476
    .end local v4    # "lonMatch":Z
    .local v3, "lonMatch":Z
    cmpg-double v4, v5, v9

    if-gez v4, :cond_a

    cmpg-double v4, v11, v9

    if-gez v4, :cond_a

    .line 478
    const/4 v3, 0x0

    .line 480
    :cond_a
    cmpl-double v4, v5, v13

    if-lez v4, :cond_b

    cmpl-double v4, v11, v13

    if-lez v4, :cond_b

    .line 482
    const/4 v3, 0x0

    move v4, v3

    goto :goto_3

    .line 484
    :cond_b
    move v4, v3

    .end local v3    # "lonMatch":Z
    .restart local v4    # "lonMatch":Z
    :cond_c
    :goto_3
    cmpl-double v3, v9, v5

    if-ltz v3, :cond_d

    cmpl-double v3, v13, v5

    if-ltz v3, :cond_d

    .line 486
    const/4 v4, 0x1

    .line 509
    :cond_d
    if-eqz v2, :cond_e

    if-eqz v4, :cond_e

    const/4 v3, 0x1

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    :goto_4
    return v3
.end method

.method public set(DDDD)V
    .locals 4
    .param p1, "north"    # D
    .param p3, "east"    # D
    .param p5, "south"    # D
    .param p7, "west"    # D

    .line 65
    iput-wide p1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    .line 66
    iput-wide p3, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    .line 67
    iput-wide p5, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    .line 68
    iput-wide p7, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    .line 70
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isEnforceTileSystemBounds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    .line 73
    .local v0, "tileSystem":Lorg/osmdroid/util/TileSystem;
    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/TileSystem;->isValidLatitude(D)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {v0, p5, p6}, Lorg/osmdroid/util/TileSystem;->isValidLatitude(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {v0, p7, p8}, Lorg/osmdroid/util/TileSystem;->isValidLongitude(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v0, p3, p4}, Lorg/osmdroid/util/TileSystem;->isValidLongitude(D)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "east must be in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->toStringLongitudeSpan()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "west must be in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->toStringLongitudeSpan()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "south must be in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->toStringLatitudeSpan()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "north must be in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->toStringLatitudeSpan()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    .end local v0    # "tileSystem":Lorg/osmdroid/util/TileSystem;
    :cond_4
    :goto_0
    return-void
.end method

.method public setLatNorth(D)V
    .locals 0
    .param p1, "mLatNorth"    # D

    .line 205
    iput-wide p1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    .line 206
    return-void
.end method

.method public setLatSouth(D)V
    .locals 0
    .param p1, "mLatSouth"    # D

    .line 209
    iput-wide p1, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    .line 210
    return-void
.end method

.method public setLonEast(D)V
    .locals 0
    .param p1, "mLonEast"    # D

    .line 213
    iput-wide p1, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    .line 214
    return-void
.end method

.method public setLonWest(D)V
    .locals 0
    .param p1, "mLonWest"    # D

    .line 217
    iput-wide p1, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    .line 218
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 305
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "N:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; E:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    .line 306
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; W:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    .line 307
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .line 393
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 394
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 395
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 396
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 397
    return-void
.end method
