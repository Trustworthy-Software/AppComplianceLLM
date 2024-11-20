.class public Lorg/osmdroid/LocationListenerProxy;
.super Ljava/lang/Object;
.source "LocationListenerProxy.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private mListener:Landroid/location/LocationListener;

.field private final mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;)V
    .locals 1
    .param p1, "pLocationManager"    # Landroid/location/LocationManager;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    .line 13
    iput-object p1, p0, Lorg/osmdroid/LocationListenerProxy;->mLocationManager:Landroid/location/LocationManager;

    .line 14
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "arg0"    # Landroid/location/Location;

    .line 38
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/os/Bundle;

    .line 59
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p1, p2, p3}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 62
    :cond_0
    return-void
.end method

.method public startListening(Landroid/location/LocationListener;JF)Z
    .locals 9
    .param p1, "pListener"    # Landroid/location/LocationListener;
    .param p2, "pUpdateTime"    # J
    .param p4, "pUpdateDistance"    # F

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "result":Z
    iput-object p1, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    .line 20
    iget-object v1, p0, Lorg/osmdroid/LocationListenerProxy;->mLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21
    .local v2, "provider":Ljava/lang/String;
    const-string v3, "gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 22
    const-string v3, "network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    iget-object v3, p0, Lorg/osmdroid/LocationListenerProxy;->mLocationManager:Landroid/location/LocationManager;

    move-object v4, v2

    move-wide v5, p2

    move v7, p4

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 27
    .end local v2    # "provider":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 28
    :cond_2
    return v0
.end method

.method public stopListening()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    .line 33
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 34
    return-void
.end method
