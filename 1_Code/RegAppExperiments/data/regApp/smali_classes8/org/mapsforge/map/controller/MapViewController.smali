.class public final Lorg/mapsforge/map/controller/MapViewController;
.super Ljava/lang/Object;
.source "MapViewController.java"

# interfaces
.implements Lorg/mapsforge/map/model/common/Observer;


# instance fields
.field private final mapView:Lorg/mapsforge/map/view/MapView;


# direct methods
.method private constructor <init>(Lorg/mapsforge/map/view/MapView;)V
    .locals 0
    .param p1, "mapView"    # Lorg/mapsforge/map/view/MapView;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/mapsforge/map/controller/MapViewController;->mapView:Lorg/mapsforge/map/view/MapView;

    .line 34
    return-void
.end method

.method public static create(Lorg/mapsforge/map/view/MapView;Lorg/mapsforge/map/model/Model;)Lorg/mapsforge/map/controller/MapViewController;
    .locals 2
    .param p0, "mapView"    # Lorg/mapsforge/map/view/MapView;
    .param p1, "model"    # Lorg/mapsforge/map/model/Model;

    .line 23
    new-instance v0, Lorg/mapsforge/map/controller/MapViewController;

    invoke-direct {v0, p0}, Lorg/mapsforge/map/controller/MapViewController;-><init>(Lorg/mapsforge/map/view/MapView;)V

    .line 25
    .local v0, "mapViewController":Lorg/mapsforge/map/controller/MapViewController;
    iget-object v1, p1, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v1, v0}, Lorg/mapsforge/map/model/IMapViewPosition;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 27
    return-object v0
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/mapsforge/map/controller/MapViewController;->mapView:Lorg/mapsforge/map/view/MapView;

    invoke-interface {v0}, Lorg/mapsforge/map/view/MapView;->repaint()V

    .line 39
    return-void
.end method
