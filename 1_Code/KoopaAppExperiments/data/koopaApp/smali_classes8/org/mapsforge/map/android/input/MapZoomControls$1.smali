.class Lorg/mapsforge/map/android/input/MapZoomControls$1;
.super Landroid/os/Handler;
.source "MapZoomControls.java"


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


# direct methods
.method constructor <init>(Lorg/mapsforge/map/android/input/MapZoomControls;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mapsforge/map/android/input/MapZoomControls;

    .line 133
    iput-object p1, p0, Lorg/mapsforge/map/android/input/MapZoomControls$1;->this$0:Lorg/mapsforge/map/android/input/MapZoomControls;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .line 136
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls$1;->this$0:Lorg/mapsforge/map/android/input/MapZoomControls;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/input/MapZoomControls;->hide()V

    .line 137
    return-void
.end method
