.class public Lorg/osmdroid/views/MapViewRepository;
.super Ljava/lang/Object;
.source "MapViewRepository.java"


# instance fields
.field private mDefaultMarkerIcon:Landroid/graphics/drawable/Drawable;

.field private mDefaultMarkerInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

.field private mDefaultPolygonInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

.field private mDefaultPolylineInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

.field private final mInfoWindowList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/osmdroid/views/overlay/infowindow/InfoWindow;",
            ">;"
        }
    .end annotation
.end field

.field private mMapView:Lorg/osmdroid/views/MapView;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mInfoWindowList:Ljava/util/Set;

    .line 31
    iput-object p1, p0, Lorg/osmdroid/views/MapViewRepository;->mMapView:Lorg/osmdroid/views/MapView;

    .line 32
    return-void
.end method


# virtual methods
.method public add(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V
    .locals 1
    .param p1, "pInfoWindow"    # Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .line 35
    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mInfoWindowList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public getDefaultMarkerIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 81
    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/osmdroid/library/R$drawable;->marker_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerIcon:Landroid/graphics/drawable/Drawable;

    .line 90
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDefaultMarkerInfoWindow()Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;
    .locals 3

    .line 54
    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    sget v1, Lorg/osmdroid/library/R$layout;->bonuspack_bubble:I

    iget-object v2, p0, Lorg/osmdroid/views/MapViewRepository;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    return-object v0
.end method

.method public getDefaultPolygonInfoWindow()Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;
    .locals 3

    .line 68
    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolygonInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    sget v1, Lorg/osmdroid/library/R$layout;->bonuspack_bubble:I

    iget-object v2, p0, Lorg/osmdroid/views/MapViewRepository;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolygonInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolygonInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    return-object v0
.end method

.method public getDefaultPolylineInfoWindow()Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;
    .locals 3

    .line 61
    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolylineInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    sget v1, Lorg/osmdroid/library/R$layout;->bonuspack_bubble:I

    iget-object v2, p0, Lorg/osmdroid/views/MapViewRepository;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolylineInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolylineInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    return-object v0
.end method

.method public onDetach()V
    .locals 3

    .line 39
    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mInfoWindowList:Ljava/util/Set;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/views/MapViewRepository;->mInfoWindowList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .line 41
    .local v2, "infoWindow":Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->onDetach()V

    .line 42
    .end local v2    # "infoWindow":Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/MapViewRepository;->mInfoWindowList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mMapView:Lorg/osmdroid/views/MapView;

    .line 47
    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    .line 48
    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolylineInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    .line 49
    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolygonInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    .line 50
    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerIcon:Landroid/graphics/drawable/Drawable;

    .line 51
    return-void

    .line 44
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
