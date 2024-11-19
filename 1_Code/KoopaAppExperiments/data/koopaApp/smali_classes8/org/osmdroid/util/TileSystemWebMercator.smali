.class public Lorg/osmdroid/util/TileSystemWebMercator;
.super Lorg/osmdroid/util/TileSystem;
.source "TileSystemWebMercator.java"


# static fields
.field public static final MaxLatitude:D = 85.05112877980658

.field public static final MaxLongitude:D = 180.0

.field public static final MinLatitude:D = -85.05112877980658

.field public static final MinLongitude:D = -180.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/osmdroid/util/TileSystem;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitudeFromY01(D)D
    .locals 6
    .param p1, "pY01"    # D

    .line 32
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v0, p1, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method public getLongitudeFromX01(D)D
    .locals 6
    .param p1, "pX01"    # D

    .line 27
    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystemWebMercator;->getMinLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystemWebMercator;->getMaxLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystemWebMercator;->getMinLongitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getMaxLatitude()D
    .locals 2

    .line 42
    const-wide v0, 0x40554345b1a549d5L    # 85.05112877980658

    return-wide v0
.end method

.method public getMaxLongitude()D
    .locals 2

    .line 52
    const-wide v0, 0x4066800000000000L    # 180.0

    return-wide v0
.end method

.method public getMinLatitude()D
    .locals 2

    .line 37
    const-wide v0, -0x3faabcba4e5ab62bL    # -85.05112877980658

    return-wide v0
.end method

.method public getMinLongitude()D
    .locals 2

    .line 47
    const-wide v0, -0x3f99800000000000L    # -180.0

    return-wide v0
.end method

.method public getX01FromLongitude(D)D
    .locals 6
    .param p1, "pLongitude"    # D

    .line 16
    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystemWebMercator;->getMinLongitude()D

    move-result-wide v0

    sub-double v0, p1, v0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystemWebMercator;->getMaxLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystemWebMercator;->getMinLongitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getY01FromLatitude(D)D
    .locals 6
    .param p1, "pLatitude"    # D

    .line 21
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p1

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 22
    .local v0, "sinus":D
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

    return-wide v4
.end method
