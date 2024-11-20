.class public Lorg/osmdroid/util/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getLastKnownLocation(Landroid/location/LocationManager;)Landroid/location/Location;
    .locals 8
    .param p0, "pLocationManager"    # Landroid/location/LocationManager;

    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    return-object v0

    .line 25
    :cond_0
    const-string v0, "gps"

    invoke-static {p0, v0}, Lorg/osmdroid/util/LocationUtils;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 26
    .local v0, "gpsLocation":Landroid/location/Location;
    const-string v1, "network"

    invoke-static {p0, v1}, Lorg/osmdroid/util/LocationUtils;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 27
    .local v1, "networkLocation":Landroid/location/Location;
    if-nez v0, :cond_1

    .line 28
    return-object v1

    .line 29
    :cond_1
    if-nez v1, :cond_2

    .line 30
    return-object v0

    .line 33
    :cond_2
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/osmdroid/config/IConfigurationProvider;->getGpsWaitTime()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 34
    return-object v1

    .line 36
    :cond_3
    return-object v0
.end method

.method private static getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
    .locals 2
    .param p0, "pLocationManager"    # Landroid/location/LocationManager;
    .param p1, "pProvider"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 44
    return-object v0

    .line 48
    :cond_0
    nop

    .line 49
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method
