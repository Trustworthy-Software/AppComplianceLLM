.class public Lorg/mapsforge/core/model/LatLong;
.super Ljava/lang/Object;
.source "LatLong.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/mapsforge/core/model/LatLong;",
        ">;"
    }
.end annotation


# static fields
.field private static final WKT_POINT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final latitude:D

.field public final longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    nop

    .line 31
    const-string v0, ".*POINT\\s?\\(([\\d\\.]+)\\s([\\d\\.]+)\\).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/core/model/LatLong;->WKT_POINT_PATTERN:Ljava/util/regex/Pattern;

    .line 30
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 2
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1, p2}, Lorg/mapsforge/core/util/LatLongUtils;->validateLatitude(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    .line 53
    invoke-static {p3, p4}, Lorg/mapsforge/core/util/LatLongUtils;->validateLongitude(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "wellKnownText"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lorg/mapsforge/core/model/LatLong;->WKT_POINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 68
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/mapsforge/core/util/LatLongUtils;->validateLongitude(D)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    .line 70
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/mapsforge/core/util/LatLongUtils;->validateLatitude(D)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    .line 71
    return-void
.end method

.method public static fromMicroDegrees(II)Lorg/mapsforge/core/model/LatLong;
    .locals 5
    .param p0, "latitudeE6"    # I
    .param p1, "longitudeE6"    # I

    .line 137
    new-instance v0, Lorg/mapsforge/core/model/LatLong;

    invoke-static {p0}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v1

    .line 138
    invoke-static {p1}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    .line 137
    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/mapsforge/core/model/LatLong;
    .locals 6
    .param p0, "latLonString"    # Ljava/lang/String;

    .line 151
    const-string v0, "[,;:\\s]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 154
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 155
    .local v1, "latitude":D
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 156
    .local v3, "longitude":D
    new-instance v5, Lorg/mapsforge/core/model/LatLong;

    invoke-direct {v5, v1, v2, v3, v4}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    return-object v5

    .line 153
    .end local v1    # "latitude":D
    .end local v3    # "longitude":D
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot read coordinate, not a valid format"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lorg/mapsforge/core/model/LatLong;

    invoke-virtual {p0, p1}, Lorg/mapsforge/core/model/LatLong;->compareTo(Lorg/mapsforge/core/model/LatLong;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/mapsforge/core/model/LatLong;)I
    .locals 9
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;

    .line 78
    iget-wide v0, p0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-wide v2, p1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_3

    iget-wide v4, p0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    iget-wide v6, p1, Lorg/mapsforge/core/model/LatLong;->longitude:D

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_2
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 79
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public destinationPoint(DF)Lorg/mapsforge/core/model/LatLong;
    .locals 1
    .param p1, "distance"    # D
    .param p3, "bearing"    # F

    .line 97
    invoke-static {p0, p1, p2, p3}, Lorg/mapsforge/core/util/LatLongUtils;->destinationPoint(Lorg/mapsforge/core/model/LatLong;DF)Lorg/mapsforge/core/model/LatLong;

    move-result-object v0

    return-object v0
.end method

.method public distance(Lorg/mapsforge/core/model/LatLong;)D
    .locals 2
    .param p1, "other"    # Lorg/mapsforge/core/model/LatLong;

    .line 107
    invoke-static {p0, p1}, Lorg/mapsforge/core/util/LatLongUtils;->distance(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/LatLong;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 112
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 113
    return v0

    .line 114
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/core/model/LatLong;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 115
    return v2

    .line 117
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/core/model/LatLong;

    .line 118
    .local v1, "other":Lorg/mapsforge/core/model/LatLong;
    iget-wide v3, p0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-wide v5, v1, Lorg/mapsforge/core/model/LatLong;->latitude:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_2

    .line 119
    return v2

    .line 120
    :cond_2
    iget-wide v3, p0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    iget-wide v5, v1, Lorg/mapsforge/core/model/LatLong;->longitude:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_3

    .line 121
    return v2

    .line 123
    :cond_3
    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 165
    iget-wide v0, p0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    return-wide v0
.end method

.method public getLatitudeE6()I
    .locals 2

    .line 174
    iget-wide v0, p0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v0, v1}, Lorg/mapsforge/core/util/LatLongUtils;->degreesToMicrodegrees(D)I

    move-result v0

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .line 183
    iget-wide v0, p0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    return-wide v0
.end method

.method public getLongitudeE6()I
    .locals 2

    .line 192
    iget-wide v0, p0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v0, v1}, Lorg/mapsforge/core/util/LatLongUtils;->degreesToMicrodegrees(D)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 197
    const/16 v0, 0x1f

    .line 198
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 200
    .local v1, "result":I
    iget-wide v2, p0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 201
    .local v2, "temp":J
    mul-int/lit8 v4, v1, 0x1f

    const/16 v5, 0x20

    ushr-long v6, v2, v5

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v4, v6

    .line 202
    .end local v1    # "result":I
    .local v4, "result":I
    iget-wide v6, p0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 203
    .end local v2    # "temp":J
    .local v1, "temp":J
    mul-int/lit8 v3, v4, 0x1f

    ushr-long v5, v1, v5

    xor-long/2addr v5, v1

    long-to-int v5, v5

    add-int/2addr v3, v5

    .line 204
    .end local v4    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public sphericalDistance(Lorg/mapsforge/core/model/LatLong;)D
    .locals 2
    .param p1, "other"    # Lorg/mapsforge/core/model/LatLong;

    .line 216
    invoke-static {p0, p1}, Lorg/mapsforge/core/util/LatLongUtils;->sphericalDistance(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/LatLong;)D

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/mapsforge/core/model/LatLong;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vincentyDistance(Lorg/mapsforge/core/model/LatLong;)D
    .locals 2
    .param p1, "other"    # Lorg/mapsforge/core/model/LatLong;

    .line 233
    invoke-static {p0, p1}, Lorg/mapsforge/core/util/LatLongUtils;->vincentyDistance(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/LatLong;)D

    move-result-wide v0

    return-wide v0
.end method
