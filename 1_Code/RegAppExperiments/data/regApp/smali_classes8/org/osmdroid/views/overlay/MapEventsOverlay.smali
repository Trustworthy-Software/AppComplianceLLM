.class public Lorg/osmdroid/views/overlay/MapEventsOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "MapEventsOverlay.java"


# instance fields
.field private mReceiver:Lorg/osmdroid/events/MapEventsReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/events/MapEventsReceiver;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "receiver"    # Lorg/osmdroid/events/MapEventsReceiver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/MapEventsOverlay;-><init>(Lorg/osmdroid/events/MapEventsReceiver;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/events/MapEventsReceiver;)V
    .locals 0
    .param p1, "receiver"    # Lorg/osmdroid/events/MapEventsReceiver;

    .line 35
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/osmdroid/views/overlay/MapEventsOverlay;->mReceiver:Lorg/osmdroid/events/MapEventsReceiver;

    .line 37
    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 48
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 49
    .local v0, "proj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 51
    .local v1, "p":Lorg/osmdroid/util/GeoPoint;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MapEventsOverlay;->mReceiver:Lorg/osmdroid/events/MapEventsReceiver;

    invoke-interface {v2, v1}, Lorg/osmdroid/events/MapEventsReceiver;->longPressHelper(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v2

    return v2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 41
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 42
    .local v0, "proj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 43
    .local v1, "p":Lorg/osmdroid/util/GeoPoint;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MapEventsOverlay;->mReceiver:Lorg/osmdroid/events/MapEventsReceiver;

    invoke-interface {v2, v1}, Lorg/osmdroid/events/MapEventsReceiver;->singleTapConfirmedHelper(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v2

    return v2
.end method
