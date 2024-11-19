.class public Llu/snt/trux/koopaapp/Utils/Training;
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

    .line 25
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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Llu/snt/trux/koopaapp/Utils/Training;->date:Ljava/lang/String;

    .line 30
    iput p2, p0, Llu/snt/trux/koopaapp/Utils/Training;->duration:I

    .line 31
    iput-object p3, p0, Llu/snt/trux/koopaapp/Utils/Training;->intensity:Ljava/lang/String;

    .line 32
    iput-wide p4, p0, Llu/snt/trux/koopaapp/Utils/Training;->latitude:D

    .line 33
    iput-wide p6, p0, Llu/snt/trux/koopaapp/Utils/Training;->longitude:D

    .line 34
    return-void
.end method


# virtual methods
.method public getCity(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    const-string v0, "Unknown City"

    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 101
    .local v1, "geocoder":Landroid/location/Geocoder;
    :try_start_0
    iget-wide v2, p0, Llu/snt/trux/koopaapp/Utils/Training;->latitude:D

    iget-wide v4, p0, Llu/snt/trux/koopaapp/Utils/Training;->longitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 104
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    .line 105
    .local v3, "address":Landroid/location/Address;
    invoke-virtual {v3}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "cityName":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 107
    return-object v4

    .line 110
    :cond_0
    invoke-virtual {v3}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 111
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_1

    .line 112
    return-object v4

    .line 115
    :cond_1
    return-object v0

    .line 120
    .end local v3    # "address":Landroid/location/Address;
    .end local v4    # "cityName":Ljava/lang/String;
    :cond_2
    return-object v0

    .line 122
    .end local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 125
    return-object v0
.end method

.method public getCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    const-string v0, "Unknown"

    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 81
    .local v1, "geocoder":Landroid/location/Geocoder;
    :try_start_0
    iget-wide v2, p0, Llu/snt/trux/koopaapp/Utils/Training;->latitude:D

    iget-wide v4, p0, Llu/snt/trux/koopaapp/Utils/Training;->longitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    .line 85
    .local v3, "address":Landroid/location/Address;
    invoke-virtual {v3}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    .end local v3    # "address":Landroid/location/Address;
    :cond_0
    return-object v0

    .line 90
    .end local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Llu/snt/trux/koopaapp/Utils/Training;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 46
    iget v0, p0, Llu/snt/trux/koopaapp/Utils/Training;->duration:I

    return v0
.end method

.method public getIntensity()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Llu/snt/trux/koopaapp/Utils/Training;->intensity:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 62
    iget-wide v0, p0, Llu/snt/trux/koopaapp/Utils/Training;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 70
    iget-wide v0, p0, Llu/snt/trux/koopaapp/Utils/Training;->longitude:D

    return-wide v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Llu/snt/trux/koopaapp/Utils/Training;->date:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .line 50
    iput p1, p0, Llu/snt/trux/koopaapp/Utils/Training;->duration:I

    .line 51
    return-void
.end method

.method public setIntensity(Ljava/lang/String;)V
    .locals 0
    .param p1, "intensity"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Llu/snt/trux/koopaapp/Utils/Training;->intensity:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "latitude"    # D

    .line 66
    iput-wide p1, p0, Llu/snt/trux/koopaapp/Utils/Training;->latitude:D

    .line 67
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "longitude"    # D

    .line 74
    iput-wide p1, p0, Llu/snt/trux/koopaapp/Utils/Training;->longitude:D

    .line 75
    return-void
.end method
