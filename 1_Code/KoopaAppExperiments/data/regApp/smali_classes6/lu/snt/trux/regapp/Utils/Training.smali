.class public Llu/snt/trux/regapp/Utils/Training;
.super Ljava/lang/Object;
.source "Training.java"


# instance fields
.field private country:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private duration:I

.field private intensity:Ljava/lang/String;

.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;DD)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .param p3, "intensity"    # Ljava/lang/String;
    .param p4, "latitude"    # D
    .param p6, "longitude"    # D

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Llu/snt/trux/regapp/Utils/Training;->date:Ljava/lang/String;

    .line 31
    iput p2, p0, Llu/snt/trux/regapp/Utils/Training;->duration:I

    .line 32
    iput-object p3, p0, Llu/snt/trux/regapp/Utils/Training;->intensity:Ljava/lang/String;

    .line 33
    iput-wide p4, p0, Llu/snt/trux/regapp/Utils/Training;->latitude:D

    .line 34
    iput-wide p6, p0, Llu/snt/trux/regapp/Utils/Training;->longitude:D

    .line 35
    return-void
.end method


# virtual methods
.method public getCity(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    const-string v0, "Unknown City"

    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 102
    .local v1, "geocoder":Landroid/location/Geocoder;
    :try_start_0
    iget-wide v2, p0, Llu/snt/trux/regapp/Utils/Training;->latitude:D

    iget-wide v4, p0, Llu/snt/trux/regapp/Utils/Training;->longitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    .line 104
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 105
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    .line 106
    .local v3, "address":Landroid/location/Address;
    invoke-virtual {v3}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "cityName":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    return-object v4

    .line 111
    :cond_0
    invoke-virtual {v3}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 112
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_1

    .line 113
    return-object v4

    .line 116
    :cond_1
    return-object v0

    .line 121
    .end local v3    # "address":Landroid/location/Address;
    .end local v4    # "cityName":Ljava/lang/String;
    :cond_2
    return-object v0

    .line 123
    .end local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    return-object v0
.end method

.method public getCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    const-string v0, "Unknown"

    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 82
    .local v1, "geocoder":Landroid/location/Geocoder;
    :try_start_0
    iget-wide v2, p0, Llu/snt/trux/regapp/Utils/Training;->latitude:D

    iget-wide v4, p0, Llu/snt/trux/regapp/Utils/Training;->longitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    .line 84
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    .line 86
    .local v3, "address":Landroid/location/Address;
    invoke-virtual {v3}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 89
    .end local v3    # "address":Landroid/location/Address;
    :cond_0
    return-object v0

    .line 91
    .end local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 94
    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Llu/snt/trux/regapp/Utils/Training;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 47
    iget v0, p0, Llu/snt/trux/regapp/Utils/Training;->duration:I

    return v0
.end method

.method public getIntensity()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Llu/snt/trux/regapp/Utils/Training;->intensity:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 63
    iget-wide v0, p0, Llu/snt/trux/regapp/Utils/Training;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 71
    iget-wide v0, p0, Llu/snt/trux/regapp/Utils/Training;->longitude:D

    return-wide v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Llu/snt/trux/regapp/Utils/Training;->date:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .line 51
    iput p1, p0, Llu/snt/trux/regapp/Utils/Training;->duration:I

    .line 52
    return-void
.end method

.method public setIntensity(Ljava/lang/String;)V
    .locals 0
    .param p1, "intensity"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Llu/snt/trux/regapp/Utils/Training;->intensity:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "latitude"    # D

    .line 67
    iput-wide p1, p0, Llu/snt/trux/regapp/Utils/Training;->latitude:D

    .line 68
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "longitude"    # D

    .line 75
    iput-wide p1, p0, Llu/snt/trux/regapp/Utils/Training;->longitude:D

    .line 76
    return-void
.end method
