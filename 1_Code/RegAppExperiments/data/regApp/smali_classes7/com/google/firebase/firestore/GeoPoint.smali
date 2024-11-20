.class public Lcom/google/firebase/firestore/GeoPoint;
.super Ljava/lang/Object;
.source "GeoPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/firestore/GeoPoint;",
        ">;"
    }
.end annotation


# instance fields
.field private final latitude:D

.field private final longitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 2
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_1

    .line 36
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p3, v0

    if-gtz v0, :cond_0

    .line 39
    iput-wide p1, p0, Lcom/google/firebase/firestore/GeoPoint;->latitude:D

    .line 40
    iput-wide p3, p0, Lcom/google/firebase/firestore/GeoPoint;->longitude:D

    .line 41
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Longitude must be in the range of [-180, 180]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Latitude must be in the range of [-90, 90]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/GeoPoint;)I
    .locals 5
    .param p1, "other"    # Lcom/google/firebase/firestore/GeoPoint;

    .line 55
    iget-wide v0, p0, Lcom/google/firebase/firestore/GeoPoint;->latitude:D

    iget-wide v2, p1, Lcom/google/firebase/firestore/GeoPoint;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/firestore/util/Util;->compareDoubles(DD)I

    move-result v0

    .line 56
    .local v0, "comparison":I
    if-nez v0, :cond_0

    .line 57
    iget-wide v1, p0, Lcom/google/firebase/firestore/GeoPoint;->longitude:D

    iget-wide v3, p1, Lcom/google/firebase/firestore/GeoPoint;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/google/firebase/firestore/util/Util;->compareDoubles(DD)I

    move-result v1

    return v1

    .line 59
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lcom/google/firebase/firestore/GeoPoint;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/GeoPoint;->compareTo(Lcom/google/firebase/firestore/GeoPoint;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 71
    instance-of v0, p1, Lcom/google/firebase/firestore/GeoPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    return v1

    .line 75
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/GeoPoint;

    .line 79
    .local v0, "geoPoint":Lcom/google/firebase/firestore/GeoPoint;
    iget-wide v2, p0, Lcom/google/firebase/firestore/GeoPoint;->latitude:D

    iget-wide v4, v0, Lcom/google/firebase/firestore/GeoPoint;->latitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/google/firebase/firestore/GeoPoint;->longitude:D

    iget-wide v4, v0, Lcom/google/firebase/firestore/GeoPoint;->longitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getLatitude()D
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/google/firebase/firestore/GeoPoint;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/google/firebase/firestore/GeoPoint;->longitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 86
    iget-wide v0, p0, Lcom/google/firebase/firestore/GeoPoint;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 87
    .local v0, "temp":J
    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v3, v0

    long-to-int v3, v3

    .line 88
    .local v3, "result":I
    iget-wide v4, p0, Lcom/google/firebase/firestore/GeoPoint;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 89
    mul-int/lit8 v4, v3, 0x1f

    ushr-long v5, v0, v2

    xor-long/2addr v5, v0

    long-to-int v2, v5

    add-int/2addr v4, v2

    .line 90
    .end local v3    # "result":I
    .local v4, "result":I
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoPoint { latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/firestore/GeoPoint;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/firestore/GeoPoint;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
