.class public Lorg/osmdroid/util/GeoPoint;
.super Ljava/lang/Object;
.source "GeoPoint.java"

# interfaces
.implements Lorg/osmdroid/api/IGeoPoint;
.implements Lorg/osmdroid/views/util/constants/MathConstants;
.implements Lorg/osmdroid/util/constants/GeoConstants;
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mAltitude:D

.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 232
    new-instance v0, Lorg/osmdroid/util/GeoPoint$1;

    invoke-direct {v0}, Lorg/osmdroid/util/GeoPoint$1;-><init>()V

    sput-object v0, Lorg/osmdroid/util/GeoPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 53
    iput-wide p3, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 54
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D
    .param p5, "aAltitude"    # D

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 58
    iput-wide p3, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 59
    iput-wide p5, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    .line 60
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 41
    int-to-double v0, p2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 42
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I
    .param p3, "aAltitude"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 47
    int-to-double v0, p2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 48
    int-to-double v0, p3

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 7
    .param p1, "aLocation"    # Landroid/location/Location;

    .line 63
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    .line 218
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/osmdroid/util/GeoPoint$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/osmdroid/util/GeoPoint$1;

    .line 18
    invoke-direct {p0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 2
    .param p1, "pGeopoint"    # Lorg/osmdroid/api/IGeoPoint;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 77
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/GeoPoint;)V
    .locals 2
    .param p1, "aGeopoint"    # Lorg/osmdroid/util/GeoPoint;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget-wide v0, p1, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 68
    iget-wide v0, p1, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 69
    iget-wide v0, p1, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    .line 70
    return-void
.end method

.method public static fromCenterBetween(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 9
    .param p0, "geoPointA"    # Lorg/osmdroid/util/GeoPoint;
    .param p1, "geoPointB"    # Lorg/osmdroid/util/GeoPoint;

    .line 315
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    .line 316
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    add-double/2addr v5, v7

    div-double/2addr v5, v3

    invoke-direct {v0, v1, v2, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 315
    return-object v0
.end method

.method public static fromDoubleString(Ljava/lang/String;C)Lorg/osmdroid/util/GeoPoint;
    .locals 14
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "spacer"    # C

    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 82
    .local v0, "spacerPos1":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 84
    .local v1, "spacerPos2":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 85
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    .line 86
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    add-int/lit8 v5, v0, 0x1

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 85
    return-object v2

    .line 89
    :cond_0
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    .line 90
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    add-int/lit8 v3, v0, 0x1

    .line 91
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    add-int/lit8 v3, v1, 0x1

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    .line 89
    return-object v2
.end method

.method public static fromIntString(Ljava/lang/String;)Lorg/osmdroid/util/GeoPoint;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 116
    .local v1, "commaPos1":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 118
    .local v0, "commaPos2":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 119
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    .line 120
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    .line 119
    return-object v2

    .line 123
    :cond_0
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    .line 124
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    .line 125
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(III)V

    .line 123
    return-object v2
.end method

.method public static fromInvertedDoubleString(Ljava/lang/String;C)Lorg/osmdroid/util/GeoPoint;
    .locals 17
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "spacer"    # C

    .line 97
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 98
    .local v1, "spacerPos1":I
    add-int/lit8 v2, v1, 0x1

    move/from16 v3, p1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 100
    .local v2, "spacerPos2":I
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    .line 101
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    add-int/lit8 v6, v1, 0x1

    .line 102
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 103
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 101
    return-object v4

    .line 105
    :cond_0
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    add-int/lit8 v6, v1, 0x1

    .line 106
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 107
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    add-int/lit8 v5, v2, 0x1

    .line 108
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    .line 105
    return-object v4
.end method


# virtual methods
.method public bearingTo(Lorg/osmdroid/api/IGeoPoint;)D
    .locals 21
    .param p1, "other"    # Lorg/osmdroid/api/IGeoPoint;

    .line 271
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 272
    .local v1, "lat1":D
    iget-wide v3, v0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 273
    .local v3, "long1":D
    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 274
    .local v5, "lat2":D
    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 275
    .local v7, "long2":D
    sub-double v9, v7, v3

    .line 276
    .local v9, "delta_long":D
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    .line 277
    .local v11, "a":D
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    .line 278
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    sub-double/2addr v13, v15

    .line 279
    .local v13, "b":D
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v15

    .line 280
    .local v15, "bearing":D
    const-wide v17, 0x4076800000000000L    # 360.0

    add-double v19, v15, v17

    rem-double v19, v19, v17

    .line 281
    .local v19, "bearing_normalized":D
    return-wide v19
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->clone()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/util/GeoPoint;
    .locals 8

    .line 172
    new-instance v7, Lorg/osmdroid/util/GeoPoint;

    iget-wide v1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    iget-wide v3, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    iget-wide v5, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    return-object v7
.end method

.method public describeContents()I
    .locals 1

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public destinationPoint(DD)Lorg/osmdroid/util/GeoPoint;
    .locals 20
    .param p1, "aDistanceInMeters"    # D
    .param p3, "aBearingInDegrees"    # D

    .line 293
    const-wide v0, 0x415854a640000000L    # 6378137.0

    div-double v0, p1, v0

    .line 296
    .local v0, "dist":D
    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v4, p3, v2

    .line 299
    .local v4, "brng":D
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    mul-double/2addr v6, v2

    .line 300
    .local v6, "lat1":D
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    mul-double/2addr v8, v2

    .line 302
    .local v8, "lon1":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 303
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 302
    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    .line 304
    .local v10, "lat2":D
    nop

    .line 305
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 306
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    .line 305
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    add-double/2addr v12, v8

    .line 308
    .local v12, "lon2":D
    div-double v14, v10, v2

    .line 309
    .local v14, "lat2deg":D
    div-double v2, v12, v2

    .line 311
    .local v2, "lon2deg":D
    move-wide/from16 v16, v0

    .end local v0    # "dist":D
    .local v16, "dist":D
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v14, v15, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public distanceToAsDouble(Lorg/osmdroid/api/IGeoPoint;)D
    .locals 16
    .param p1, "other"    # Lorg/osmdroid/api/IGeoPoint;

    .line 255
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    .line 256
    .local v0, "lat1":D
    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v2

    .line 257
    .local v4, "lat2":D
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    mul-double/2addr v6, v2

    .line 258
    .local v6, "lon1":D
    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v8

    mul-double/2addr v8, v2

    .line 259
    .local v8, "lon2":D
    sub-double v2, v4, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v10

    .line 260
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 261
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double v14, v8, v6

    div-double/2addr v14, v10

    .line 262
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v12, v10

    add-double/2addr v2, v12

    .line 259
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v10, 0x416854a640000000L    # 1.2756274E7

    mul-double/2addr v2, v10

    return-wide v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 193
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 194
    return v0

    .line 196
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 197
    return v1

    .line 199
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 200
    return v0

    .line 202
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    .line 203
    .local v2, "rhs":Lorg/osmdroid/util/GeoPoint;
    iget-wide v3, v2, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    iget-wide v5, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, v2, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    iget-wide v5, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, v2, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    iget-wide v5, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public getAltitude()D
    .locals 2

    .line 146
    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .line 142
    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    return-wide v0
.end method

.method public getLatitudeE6()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .line 137
    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    return-wide v0
.end method

.method public getLongitudeE6()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 208
    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v0, v2

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x11

    iget-wide v4, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    double-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setAltitude(D)V
    .locals 0
    .param p1, "aAltitude"    # D

    .line 158
    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    .line 159
    return-void
.end method

.method public setCoords(DD)V
    .locals 0
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .line 162
    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 163
    iput-wide p3, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 164
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "aLatitude"    # D

    .line 150
    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 151
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "aLongitude"    # D

    .line 154
    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 155
    return-void
.end method

.method public toDoubleString()Ljava/lang/String;
    .locals 4

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    .line 321
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    return-object v0
.end method

.method public toIntString()Ljava/lang/String;
    .locals 7

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    mul-double/2addr v5, v3

    double-to-int v2, v5

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    double-to-int v1, v1

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    return-object v0
.end method

.method public toInvertedDoubleString()Ljava/lang/String;
    .locals 4

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    .line 326
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 227
    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 228
    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 229
    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 230
    return-void
.end method
