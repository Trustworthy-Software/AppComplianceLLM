.class public Lorg/mapsforge/map/android/util/MapViewPositionObserver;
.super Ljava/lang/Object;
.source "MapViewPositionObserver.java"

# interfaces
.implements Lorg/mapsforge/map/model/common/Observer;


# instance fields
.field private final observable:Lorg/mapsforge/map/model/IMapViewPosition;

.field private final observer:Lorg/mapsforge/map/model/IMapViewPosition;


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/map/model/IMapViewPosition;)V
    .locals 0
    .param p1, "observable"    # Lorg/mapsforge/map/model/IMapViewPosition;
    .param p2, "observer"    # Lorg/mapsforge/map/model/IMapViewPosition;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/mapsforge/map/android/util/MapViewPositionObserver;->observable:Lorg/mapsforge/map/model/IMapViewPosition;

    .line 32
    iput-object p2, p0, Lorg/mapsforge/map/android/util/MapViewPositionObserver;->observer:Lorg/mapsforge/map/model/IMapViewPosition;

    .line 33
    invoke-interface {p1, p0}, Lorg/mapsforge/map/model/IMapViewPosition;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewPositionObserver;->setCenter()V

    .line 39
    invoke-virtual {p0}, Lorg/mapsforge/map/android/util/MapViewPositionObserver;->setZoom()V

    .line 40
    return-void
.end method

.method public removeObserver()V
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewPositionObserver;->observable:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0, p0}, Lorg/mapsforge/map/model/IMapViewPosition;->removeObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 57
    return-void
.end method

.method protected setCenter()V
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewPositionObserver;->observable:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0}, Lorg/mapsforge/map/model/IMapViewPosition;->getCenter()Lorg/mapsforge/core/model/LatLong;

    move-result-object v0

    iget-object v1, p0, Lorg/mapsforge/map/android/util/MapViewPositionObserver;->observer:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v1}, Lorg/mapsforge/map/model/IMapViewPosition;->getCenter()Lorg/mapsforge/core/model/LatLong;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mapsforge/core/model/LatLong;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewPositionObserver;->observer:Lorg/mapsforge/map/model/IMapViewPosition;

    iget-object v1, p0, Lorg/mapsforge/map/android/util/MapViewPositionObserver;->observable:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v1}, Lorg/mapsforge/map/model/IMapViewPosition;->getCenter()Lorg/mapsforge/core/model/LatLong;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mapsforge/map/model/IMapViewPosition;->setCenter(Lorg/mapsforge/core/model/LatLong;)V

    .line 47
    :cond_0
    return-void
.end method

.method protected setZoom()V
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewPositionObserver;->observable:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0}, Lorg/mapsforge/map/model/IMapViewPosition;->getZoomLevel()B

    move-result v0

    iget-object v1, p0, Lorg/mapsforge/map/android/util/MapViewPositionObserver;->observer:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v1}, Lorg/mapsforge/map/model/IMapViewPosition;->getZoomLevel()B

    move-result v1

    if-eq v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lorg/mapsforge/map/android/util/MapViewPositionObserver;->observer:Lorg/mapsforge/map/model/IMapViewPosition;

    iget-object v1, p0, Lorg/mapsforge/map/android/util/MapViewPositionObserver;->observable:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v1}, Lorg/mapsforge/map/model/IMapViewPosition;->getZoomLevel()B

    move-result v1

    invoke-interface {v0, v1}, Lorg/mapsforge/map/model/IMapViewPosition;->setZoomLevel(B)V

    .line 53
    :cond_0
    return-void
.end method
