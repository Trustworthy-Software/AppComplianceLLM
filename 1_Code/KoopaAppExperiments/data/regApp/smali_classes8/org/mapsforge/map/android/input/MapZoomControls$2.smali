.class Lorg/mapsforge/map/android/input/MapZoomControls$2;
.super Ljava/lang/Object;
.source "MapZoomControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapsforge/map/android/input/MapZoomControls;-><init>(Landroid/content/Context;Lorg/mapsforge/map/android/view/MapView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapsforge/map/android/input/MapZoomControls;

.field final synthetic val$mapView:Lorg/mapsforge/map/android/view/MapView;


# direct methods
.method constructor <init>(Lorg/mapsforge/map/android/input/MapZoomControls;Lorg/mapsforge/map/android/view/MapView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mapsforge/map/android/input/MapZoomControls;

    .line 149
    iput-object p1, p0, Lorg/mapsforge/map/android/input/MapZoomControls$2;->this$0:Lorg/mapsforge/map/android/input/MapZoomControls;

    iput-object p2, p0, Lorg/mapsforge/map/android/input/MapZoomControls$2;->val$mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 152
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls$2;->val$mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->onZoomEvent()V

    .line 153
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls$2;->this$0:Lorg/mapsforge/map/android/input/MapZoomControls;

    invoke-static {v0}, Lorg/mapsforge/map/android/input/MapZoomControls;->access$000(Lorg/mapsforge/map/android/input/MapZoomControls;)Lorg/mapsforge/map/android/view/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0}, Lorg/mapsforge/map/model/IMapViewPosition;->zoomIn()V

    .line 154
    return-void
.end method
