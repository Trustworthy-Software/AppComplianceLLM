.class public Lorg/osmdroid/views/overlay/Marker;
.super Lorg/osmdroid/views/overlay/OverlayWithIW;
.source "Marker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;,
        Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;
    }
.end annotation


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

.field private mDisplayed:Z

.field protected mDragOffsetY:F

.field protected mDraggable:Z

.field protected mFlat:Z

.field protected mIWAnchorU:F

.field protected mIWAnchorV:F

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mImage:Landroid/graphics/drawable/Drawable;

.field protected mIsDragged:Z

.field private mMapViewRepository:Lorg/osmdroid/views/MapViewRepository;

.field protected mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

.field protected mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

.field private final mOrientedMarkerRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field protected mPanToView:Z

.field protected mPosition:Lorg/osmdroid/util/GeoPoint;

.field protected mPositionPixels:Landroid/graphics/Point;

.field private final mRect:Landroid/graphics/Rect;

.field protected mResources:Landroid/content/res/Resources;

.field protected mTextLabelBackgroundColor:I

.field protected mTextLabelFontSize:I

.field protected mTextLabelForegroundColor:I


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 93
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;)V
    .locals 4
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p2, "resourceProxy"    # Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    .line 50
    const/high16 v0, -0x1000000

    iput v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    .line 51
    const/16 v0, 0x18

    iput v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mRect:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mOrientedMarkerRect:Landroid/graphics/Rect;

    .line 98
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getRepository()Lorg/osmdroid/views/MapViewRepository;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mMapViewRepository:Lorg/osmdroid/views/MapViewRepository;

    .line 99
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mResources:Landroid/content/res/Resources;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    .line 101
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    .line 102
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    .line 103
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    .line 104
    iput v1, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    .line 105
    iput v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorU:F

    .line 106
    iput v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorV:F

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    .line 108
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    .line 109
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    .line 110
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/Marker;->mPanToView:Z

    .line 111
    iput v0, p0, Lorg/osmdroid/views/overlay/Marker;->mDragOffsetY:F

    .line 112
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    .line 114
    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    .line 115
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->setDefaultIcon()V

    .line 116
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mMapViewRepository:Lorg/osmdroid/views/MapViewRepository;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapViewRepository;->getDefaultMarkerInfoWindow()Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;)V

    .line 117
    return-void
.end method

.method public static cleanDefaults()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 393
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pj"    # Lorg/osmdroid/views/Projection;

    .line 346
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 347
    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    invoke-virtual {p2, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 353
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    neg-float v0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    sub-float/2addr v0, v1

    .line 354
    .local v0, "rotationOnScreen":F
    :goto_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/osmdroid/views/overlay/Marker;->drawAt(Landroid/graphics/Canvas;IIF)V

    .line 355
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->isInfoWindowShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 357
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->draw()V

    .line 359
    :cond_3
    return-void
.end method

.method protected drawAt(Landroid/graphics/Canvas;IIF)V
    .locals 15
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pX"    # I
    .param p3, "pY"    # I
    .param p4, "pOrientation"    # F

    .line 557
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    iget-object v2, v0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 558
    .local v11, "markerWidth":I
    iget-object v2, v0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 559
    .local v12, "markerHeight":I
    int-to-float v2, v11

    iget v3, v0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v13, v8, v2

    .line 560
    .local v13, "offsetX":I
    int-to-float v2, v12

    iget v3, v0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v14, v9, v2

    .line 561
    .local v14, "offsetY":I
    iget-object v2, v0, Lorg/osmdroid/views/overlay/Marker;->mRect:Landroid/graphics/Rect;

    add-int v3, v13, v11

    add-int v4, v14, v12

    invoke-virtual {v2, v13, v14, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 562
    iget-object v2, v0, Lorg/osmdroid/views/overlay/Marker;->mRect:Landroid/graphics/Rect;

    float-to-double v5, v10

    iget-object v7, v0, Lorg/osmdroid/views/overlay/Marker;->mOrientedMarkerRect:Landroid/graphics/Rect;

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/util/RectL;->getBounds(Landroid/graphics/Rect;IIDLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 563
    iget-object v2, v0, Lorg/osmdroid/views/overlay/Marker;->mOrientedMarkerRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    iput-boolean v2, v0, Lorg/osmdroid/views/overlay/Marker;->mDisplayed:Z

    .line 564
    if-nez v2, :cond_0

    .line 565
    return-void

    .line 567
    :cond_0
    iget v2, v0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 568
    return-void

    .line 570
    :cond_1
    cmpl-float v2, v10, v3

    if-eqz v2, :cond_2

    .line 571
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 572
    int-to-float v2, v8

    int-to-float v4, v9

    invoke-virtual {v1, v10, v2, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 590
    :cond_2
    iget-object v2, v0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 591
    iget-object v2, v0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lorg/osmdroid/views/overlay/Marker;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 592
    iget-object v2, v0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 594
    cmpl-float v2, v10, v3

    if-eqz v2, :cond_3

    .line 595
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 597
    :cond_3
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 227
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    return v0
.end method

.method public getDragOffset()F
    .locals 1

    .line 290
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mDragOffsetY:F

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .line 196
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    return v0
.end method

.method public getTextLabelBackgroundColor()I
    .locals 1

    .line 491
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    return v0
.end method

.method public getTextLabelFontSize()I
    .locals 1

    .line 531
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    return v0
.end method

.method public getTextLabelForegroundColor()I
    .locals 1

    .line 511
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    return v0
.end method

.method public hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 396
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mDisplayed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mOrientedMarkerRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisplayed()Z
    .locals 1

    .line 548
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mDisplayed:Z

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 2

    .line 337
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    instance-of v0, v0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    check-cast v0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    .line 339
    .local v0, "iw":Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->getMarkerReference()Lorg/osmdroid/views/overlay/Marker;

    move-result-object v1

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 341
    .end local v0    # "iw":Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;
    :cond_1
    invoke-super {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->isInfoWindowOpen()Z

    move-result v0

    return v0
.end method

.method public moveToEventPosition(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 413
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mDragOffsetY:F

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 414
    .local v0, "offsetY":F
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    .line 415
    .local v1, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0, v2}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 416
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 417
    return-void
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 3
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 366
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/BitmapPool;->asyncRecycle(Landroid/graphics/drawable/Drawable;)V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 368
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/Marker;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lorg/osmdroid/tileprovider/BitmapPool;->asyncRecycle(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    .line 371
    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    .line 372
    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mResources:Landroid/content/res/Resources;

    .line 373
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setRelatedObject(Ljava/lang/Object;)V

    .line 374
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->isInfoWindowShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->closeInfoWindow()V

    .line 378
    :cond_0
    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mMapViewRepository:Lorg/osmdroid/views/MapViewRepository;

    .line 379
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;)V

    .line 380
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->onDestroy()V

    .line 383
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 384
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 421
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 422
    .local v0, "touched":Z
    if-eqz v0, :cond_1

    .line 423
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    if-eqz v1, :cond_1

    .line 425
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    .line 426
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->closeInfoWindow()V

    .line 427
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    if-eqz v1, :cond_0

    .line 428
    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;->onMarkerDragStart(Lorg/osmdroid/views/overlay/Marker;)V

    .line 429
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->moveToEventPosition(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 432
    :cond_1
    return v0
.end method

.method protected onMarkerClickDefault(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "marker"    # Lorg/osmdroid/views/overlay/Marker;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 478
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->showInfoWindow()V

    .line 479
    iget-boolean v0, p1, Lorg/osmdroid/views/overlay/Marker;->mPanToView:Z

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 481
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 401
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 402
    .local v0, "touched":Z
    if-eqz v0, :cond_1

    .line 403
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    if-nez v1, :cond_0

    .line 404
    invoke-virtual {p0, p0, p2}, Lorg/osmdroid/views/overlay/Marker;->onMarkerClickDefault(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    return v1

    .line 406
    :cond_0
    invoke-interface {v1, p0, p2}, Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;->onMarkerClick(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    return v1

    .line 409
    :cond_1
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 437
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    if-eqz v0, :cond_4

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 439
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    .line 440
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0, p0}, Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;->onMarkerDragEnd(Lorg/osmdroid/views/overlay/Marker;)V

    .line 442
    :cond_0
    return v2

    .line 443
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 444
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->moveToEventPosition(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 445
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    if-eqz v0, :cond_2

    .line 446
    invoke-interface {v0, p0}, Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;->onMarkerDrag(Lorg/osmdroid/views/overlay/Marker;)V

    .line 447
    :cond_2
    return v2

    .line 449
    :cond_3
    return v1

    .line 451
    :cond_4
    return v1
.end method

.method public remove(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 254
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .line 223
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    .line 224
    return-void
.end method

.method public setAnchor(FF)V
    .locals 0
    .param p1, "anchorU"    # F
    .param p2, "anchorV"    # F

    .line 213
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    .line 214
    iput p2, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    .line 215
    return-void
.end method

.method public setDefaultIcon()V
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mMapViewRepository:Lorg/osmdroid/views/MapViewRepository;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapViewRepository;->getDefaultMarkerIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 143
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 144
    return-void
.end method

.method public setDragOffset(F)V
    .locals 0
    .param p1, "mmUp"    # F

    .line 283
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mDragOffsetY:F

    .line 284
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .line 231
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    .line 232
    return-void
.end method

.method public setFlat(Z)V
    .locals 0
    .param p1, "flat"    # Z

    .line 239
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    .line 240
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 131
    if-eqz p1, :cond_0

    .line 132
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->setDefaultIcon()V

    .line 136
    :goto_0
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .line 269
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mImage:Landroid/graphics/drawable/Drawable;

    .line 270
    return-void
.end method

.method public setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;)V
    .locals 0
    .param p1, "infoWindow"    # Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    .line 301
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .line 302
    return-void
.end method

.method public setInfoWindowAnchor(FF)V
    .locals 0
    .param p1, "anchorU"    # F
    .param p2, "anchorV"    # F

    .line 218
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorU:F

    .line 219
    iput p2, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorV:F

    .line 220
    return-void
.end method

.method public setOnMarkerClickListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    .line 258
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    .line 259
    return-void
.end method

.method public setOnMarkerDragListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    .line 262
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    .line 263
    return-void
.end method

.method public setPanToView(Z)V
    .locals 0
    .param p1, "panToView"    # Z

    .line 309
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Marker;->mPanToView:Z

    .line 310
    return-void
.end method

.method public setPosition(Lorg/osmdroid/util/GeoPoint;)V
    .locals 10
    .param p1, "position"    # Lorg/osmdroid/util/GeoPoint;

    .line 187
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->clone()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    .line 188
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->closeInfoWindow()V

    .line 190
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->showInfoWindow()V

    .line 192
    :cond_0
    new-instance v0, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mBounds:Lorg/osmdroid/util/BoundingBox;

    .line 193
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .line 205
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    .line 206
    return-void
.end method

.method public setTextIcon(Ljava/lang/String;)V
    .locals 10
    .param p1, "pText"    # Ljava/lang/String;

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 151
    .local v0, "background":Landroid/graphics/Paint;
    iget v1, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 153
    .local v1, "p":Landroid/graphics/Paint;
    iget v2, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 154
    iget v2, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 157
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 158
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 159
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    neg-float v4, v4

    add-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v4, v4

    .line 160
    .local v4, "baseline":F
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v5

    add-float/2addr v5, v4

    add-float/2addr v5, v3

    float-to-int v5, v5

    .line 161
    .local v5, "height":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 162
    .local v6, "image":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    .local v7, "c":Landroid/graphics/Canvas;
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 164
    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 165
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lorg/osmdroid/views/overlay/Marker;->mResources:Landroid/content/res/Resources;

    invoke-direct {v8, v9, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v8, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 166
    invoke-virtual {p0, v3, v3}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 167
    return-void
.end method

.method public setTextLabelBackgroundColor(I)V
    .locals 0
    .param p1, "mTextLabelBackgroundColor"    # I

    .line 501
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    .line 502
    return-void
.end method

.method public setTextLabelFontSize(I)V
    .locals 0
    .param p1, "mTextLabelFontSize"    # I

    .line 541
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    .line 542
    return-void
.end method

.method public setTextLabelForegroundColor(I)V
    .locals 0
    .param p1, "mTextLabelForegroundColor"    # I

    .line 521
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    .line 522
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 455
    if-eqz p1, :cond_0

    .line 456
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setAlpha(F)V

    goto :goto_0

    .line 457
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setAlpha(F)V

    .line 458
    :goto_0
    return-void
.end method

.method public showInfoWindow()V
    .locals 26

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-nez v1, :cond_0

    .line 317
    return-void

    .line 318
    :cond_0
    iget-object v1, v0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 319
    .local v1, "markerWidth":I
    iget-object v2, v0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 320
    .local v2, "markerHeight":I
    int-to-float v3, v1

    iget v4, v0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorU:F

    iget v5, v0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 321
    .local v3, "offsetX":I
    int-to-float v4, v2

    iget v5, v0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorV:F

    iget v6, v0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 322
    .local v4, "offsetY":I
    iget v5, v0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_1

    .line 323
    iget-object v5, v0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    iget-object v6, v0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5, v0, v6, v3, v4}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V

    .line 324
    return-void

    .line 326
    :cond_1
    const/4 v6, 0x0

    .line 327
    .local v6, "centerX":I
    const/4 v7, 0x0

    .line 328
    .local v7, "centerY":I
    neg-float v5, v5

    float-to-double v8, v5

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    .line 329
    .local v8, "radians":D
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    .line 330
    .local v22, "cos":D
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    .line 331
    .local v24, "sin":D
    int-to-long v10, v3

    int-to-long v12, v4

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v22

    move-wide/from16 v20, v24

    invoke-static/range {v10 .. v21}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v10

    long-to-int v5, v10

    .line 332
    .local v5, "rotatedX":I
    int-to-long v10, v3

    int-to-long v12, v4

    invoke-static/range {v10 .. v21}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v10

    long-to-int v10, v10

    .line 333
    .local v10, "rotatedY":I
    iget-object v11, v0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    iget-object v12, v0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v11, v0, v12, v5, v10}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V

    .line 334
    return-void
.end method
