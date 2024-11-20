.class public Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;
.super Ljava/lang/Object;
.source "GpsMyLocationProvider.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;
.implements Landroid/location/LocationListener;


# instance fields
.field private final locationSources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

.field private mLocation:Landroid/location/Location;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateMinDistance:F

.field private mLocationUpdateMinTime:J

.field private mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinTime:J

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinDistance:F

    .line 27
    new-instance v0, Lorg/osmdroid/util/NetworkLocationIgnorer;

    invoke-direct {v0}, Lorg/osmdroid/util/NetworkLocationIgnorer;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    .line 31
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    .line 32
    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method


# virtual methods
.method public addLocationSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public clearLocationSources()V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 45
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 145
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->stopLocationProvider()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocation:Landroid/location/Location;

    .line 147
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    .line 148
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 149
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

    .line 150
    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getLocationSources()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    return-object v0
.end method

.method public getLocationUpdateMinDistance()F
    .locals 1

    .line 81
    iget v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinDistance:F

    return v0
.end method

.method public getLocationUpdateMinTime()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinTime:J

    return-wide v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .line 158
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

    if-nez v0, :cond_0

    .line 159
    const-string v0, "OsmDroid"

    const-string v1, "GpsMyLocation provider, mIgnore is null, unexpected. Location update will be ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void

    .line 162
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/util/NetworkLocationIgnorer;->shouldIgnore(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    return-void

    .line 168
    :cond_2
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocation:Landroid/location/Location;

    .line 169
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 170
    invoke-interface {v0, p1, p0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    .line 171
    :cond_3
    return-void

    .line 163
    :cond_4
    :goto_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 175
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 179
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 183
    return-void
.end method

.method public setLocationUpdateMinDistance(F)V
    .locals 0
    .param p1, "meters"    # F

    .line 92
    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinDistance:F

    .line 93
    return-void
.end method

.method public setLocationUpdateMinTime(J)V
    .locals 0
    .param p1, "milliSeconds"    # J

    .line 77
    iput-wide p1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinTime:J

    .line 78
    return-void
.end method

.method public startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z
    .locals 9
    .param p1, "myLocationConsumer"    # Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 108
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "result":Z
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    .local v2, "provider":Ljava/lang/String;
    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    :try_start_0
    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    iget-wide v5, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinTime:J

    iget v7, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinDistance:F

    move-object v4, v2

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    const/4 v0, 0x1

    .line 119
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v3

    .line 118
    .local v3, "ex":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to attach listener for location provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " check permissions?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OsmDroid"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v2    # "provider":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    goto :goto_0

    .line 122
    :cond_1
    return v0
.end method

.method public stopLocationProvider()V
    .locals 3

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 129
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "OsmDroid"

    const-string v2, "Unable to deattach location listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method
