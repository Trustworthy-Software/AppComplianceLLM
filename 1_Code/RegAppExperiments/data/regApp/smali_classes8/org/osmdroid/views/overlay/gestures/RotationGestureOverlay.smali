.class public Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "RotationGestureOverlay.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;
.implements Lorg/osmdroid/views/overlay/IOverlayMenuProvider;


# static fields
.field private static final MENU_ENABLED:I

.field private static final MENU_ROTATE_CCW:I

.field private static final MENU_ROTATE_CW:I

.field private static final SHOW_ROTATE_MENU_ITEMS:Z = false


# instance fields
.field currentAngle:F

.field final deltaTime:J

.field private mMapView:Lorg/osmdroid/views/MapView;

.field private mOptionsMenuEnabled:Z

.field private final mRotationDetector:Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;

.field timeLastSet:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    invoke-static {}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ENABLED:I

    .line 17
    invoke-static {}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ROTATE_CCW:I

    .line 18
    invoke-static {}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ROTATE_CW:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 33
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mOptionsMenuEnabled:Z

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->timeLastSet:J

    .line 45
    const-wide/16 v0, 0x19

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->deltaTime:J

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->currentAngle:F

    .line 34
    iput-object p1, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 35
    new-instance v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;-><init>(Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mRotationDetector:Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;

    .line 36
    return-void
.end method


# virtual methods
.method public isOptionsMenuEnabled()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mOptionsMenuEnabled:Z

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 69
    sget v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ENABLED:I

    add-int/2addr v0, p2

    const-string v1, "Enable rotation"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "map"    # Lorg/osmdroid/views/MapView;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 60
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "pItem"    # Landroid/view/MenuItem;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ENABLED:I

    add-int/2addr v1, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 83
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setMapOrientation(F)V

    .line 85
    invoke-virtual {p0, v2}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->setEnabled(Z)V

    goto :goto_0

    .line 87
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->setEnabled(Z)V

    .line 88
    return v0

    .line 90
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ROTATE_CCW:I

    add-int/2addr v1, p2

    const/high16 v3, 0x41200000    # 10.0f

    if-ne v0, v1, :cond_2

    .line 91
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v1

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setMapOrientation(F)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ROTATE_CW:I

    add-int/2addr v1, p2

    if-ne v0, v1, :cond_3

    .line 93
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setMapOrientation(F)V

    .line 96
    :cond_3
    :goto_0
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 101
    sget v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ENABLED:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Disable rotation"

    goto :goto_0

    :cond_0
    const-string v1, "Enable rotation"

    .line 101
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onRotate(F)V
    .locals 4
    .param p1, "deltaAngle"    # F

    .line 50
    iget v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->currentAngle:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->currentAngle:F

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x19

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->timeLastSet:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->timeLastSet:J

    .line 53
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v1

    iget v2, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->currentAngle:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setMapOrientation(F)V

    .line 55
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 40
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mRotationDetector:Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->onTouch(Landroid/view/MotionEvent;)V

    .line 41
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "pEnabled"    # Z

    .line 113
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mRotationDetector:Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->setEnabled(Z)V

    .line 114
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;->setEnabled(Z)V

    .line 115
    return-void
.end method

.method public setOptionsMenuEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 108
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mOptionsMenuEnabled:Z

    .line 109
    return-void
.end method
