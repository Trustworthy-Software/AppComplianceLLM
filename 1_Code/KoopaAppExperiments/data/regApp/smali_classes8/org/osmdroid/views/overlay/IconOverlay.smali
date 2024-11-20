.class public Lorg/osmdroid/views/overlay/IconOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "IconOverlay.java"


# static fields
.field public static final ANCHOR_BOTTOM:F = 1.0f

.field public static final ANCHOR_CENTER:F = 0.5f

.field public static final ANCHOR_LEFT:F = 0.0f

.field public static final ANCHOR_RIGHT:F = 1.0f

.field public static final ANCHOR_TOP:F


# instance fields
.field protected mAlpha:F

.field protected mAnchorU:F

.field protected mAnchorV:F

.field protected mBearing:F

.field protected mFlat:Z

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mPosition:Lorg/osmdroid/api/IGeoPoint;

.field protected mPositionPixels:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mBearing:F

    .line 32
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAnchorU:F

    iput v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAnchorV:F

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAlpha:F

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mFlat:Z

    .line 37
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPositionPixels:Landroid/graphics/Point;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "position"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mBearing:F

    .line 32
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAnchorU:F

    iput v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAnchorV:F

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAlpha:F

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mFlat:Z

    .line 37
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPositionPixels:Landroid/graphics/Point;

    .line 49
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/IconOverlay;->set(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/drawable/Drawable;)Lorg/osmdroid/views/overlay/IconOverlay;

    .line 50
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pj"    # Lorg/osmdroid/views/Projection;

    .line 57
    iget-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    if-nez v0, :cond_1

    .line 60
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPositionPixels:Landroid/graphics/Point;

    invoke-virtual {p2, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 63
    iget-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 64
    .local v0, "width":I
    iget-object v1, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 65
    .local v1, "height":I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 66
    .local v2, "rect":Landroid/graphics/Rect;
    iget v3, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAnchorU:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    iget v4, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAnchorV:F

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 67
    iget-object v3, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 69
    iget-object v3, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAlpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 71
    iget-boolean v3, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mFlat:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mBearing:F

    neg-float v3, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v3

    iget v4, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mBearing:F

    sub-float/2addr v3, v4

    :goto_0
    move v9, v3

    .line 72
    .local v9, "rotationOnScreen":F
    iget-object v5, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPositionPixels:Landroid/graphics/Point;

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPositionPixels:Landroid/graphics/Point;

    iget v7, v3, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lorg/osmdroid/views/overlay/IconOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZF)V

    .line 73
    return-void
.end method

.method public getPosition()Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    return-object v0
.end method

.method public moveTo(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/overlay/IconOverlay;
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 86
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 87
    .local v0, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/osmdroid/views/overlay/IconOverlay;->moveTo(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/overlay/IconOverlay;

    .line 88
    return-object p0
.end method

.method public moveTo(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/overlay/IconOverlay;
    .locals 0
    .param p1, "position"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 92
    iput-object p1, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    .line 93
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 94
    return-object p0
.end method

.method public set(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/drawable/Drawable;)Lorg/osmdroid/views/overlay/IconOverlay;
    .locals 0
    .param p1, "position"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 80
    iput-object p1, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    .line 81
    iput-object p2, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 82
    return-object p0
.end method
