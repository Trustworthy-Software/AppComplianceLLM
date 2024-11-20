.class public Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;
.super Ljava/lang/Object;
.source "RotationGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;
    }
.end annotation


# instance fields
.field private mEnabled:Z

.field private mListener:Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;

.field protected mRotation:F


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mEnabled:Z

    .line 32
    iput-object p1, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mListener:Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;

    .line 33
    return-void
.end method

.method private static rotation(Landroid/view/MotionEvent;)F
    .locals 9
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    float-to-double v3, v1

    .line 37
    .local v3, "delta_x":D
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 38
    .local v0, "delta_y":D
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    .line 39
    .local v5, "radians":D
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v2, v7

    return v2
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mEnabled:Z

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 47
    invoke-static {p1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->rotation(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mRotation:F

    .line 50
    :cond_1
    invoke-static {p1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->rotation(Landroid/view/MotionEvent;)F

    move-result v0

    .line 51
    .local v0, "rotation":F
    iget v1, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mRotation:F

    sub-float v2, v0, v1

    .line 55
    .local v2, "delta":F
    iget-boolean v3, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mEnabled:Z

    if-eqz v3, :cond_2

    .line 56
    add-float/2addr v1, v2

    iput v1, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mRotation:F

    .line 57
    iget-object v1, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mListener:Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;

    invoke-interface {v1, v2}, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;->onRotate(F)V

    goto :goto_0

    .line 59
    :cond_2
    iput v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mRotation:F

    .line 61
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "pEnabled"    # Z

    .line 64
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mEnabled:Z

    .line 65
    return-void
.end method
