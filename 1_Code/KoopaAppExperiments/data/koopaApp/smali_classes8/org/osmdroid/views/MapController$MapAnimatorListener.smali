.class Lorg/osmdroid/views/MapController$MapAnimatorListener;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapAnimatorListener"
.end annotation


# instance fields
.field private final mCenter:Lorg/osmdroid/util/GeoPoint;

.field private final mCenterEnd:Lorg/osmdroid/api/IGeoPoint;

.field private final mCenterStart:Lorg/osmdroid/api/IGeoPoint;

.field private final mMapController:Lorg/osmdroid/views/MapController;

.field private final mOrientationSpan:Ljava/lang/Float;

.field private final mOrientationStart:Ljava/lang/Float;

.field private final mZoomEnd:Ljava/lang/Double;

.field private final mZoomStart:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapController;Ljava/lang/Double;Ljava/lang/Double;Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "pMapController"    # Lorg/osmdroid/views/MapController;
    .param p2, "pZoomStart"    # Ljava/lang/Double;
    .param p3, "pZoomEnd"    # Ljava/lang/Double;
    .param p4, "pCenterStart"    # Lorg/osmdroid/api/IGeoPoint;
    .param p5, "pCenterEnd"    # Lorg/osmdroid/api/IGeoPoint;
    .param p6, "pOrientationStart"    # Ljava/lang/Float;
    .param p7, "pOrientationEnd"    # Ljava/lang/Float;
    .param p8, "pClockwise"    # Ljava/lang/Boolean;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenter:Lorg/osmdroid/util/GeoPoint;

    .line 479
    iput-object p1, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    .line 480
    iput-object p2, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mZoomStart:Ljava/lang/Double;

    .line 481
    iput-object p3, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mZoomEnd:Ljava/lang/Double;

    .line 482
    iput-object p4, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenterStart:Lorg/osmdroid/api/IGeoPoint;

    .line 483
    iput-object p5, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenterEnd:Lorg/osmdroid/api/IGeoPoint;

    .line 484
    if-nez p7, :cond_0

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mOrientationStart:Ljava/lang/Float;

    .line 486
    iput-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mOrientationSpan:Ljava/lang/Float;

    goto :goto_0

    .line 488
    :cond_0
    iput-object p6, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mOrientationStart:Ljava/lang/Float;

    .line 489
    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3, p8}, Lorg/osmdroid/util/MyMath;->getAngleDifference(DDLjava/lang/Boolean;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mOrientationSpan:Ljava/lang/Float;

    .line 491
    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 505
    iget-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapController;->onAnimationEnd()V

    .line 506
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 500
    iget-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapController;->onAnimationEnd()V

    .line 501
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 511
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 495
    iget-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapController;->onAnimationStart()V

    .line 496
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 17
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 515
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 516
    .local v1, "value":F
    iget-object v2, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mZoomEnd:Ljava/lang/Double;

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mZoomStart:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mZoomEnd:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mZoomStart:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    float-to-double v6, v1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 519
    .local v2, "zoom":D
    iget-object v4, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    iget-object v4, v4, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v4, v2, v3}, Lorg/osmdroid/views/MapView;->setZoomLevel(D)D

    .line 521
    .end local v2    # "zoom":D
    :cond_0
    iget-object v2, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mOrientationSpan:Ljava/lang/Float;

    if-eqz v2, :cond_1

    .line 522
    iget-object v2, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mOrientationStart:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mOrientationSpan:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    .line 524
    .local v2, "orientation":F
    iget-object v3, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    iget-object v3, v3, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3, v2}, Lorg/osmdroid/views/MapView;->setMapOrientation(F)V

    .line 526
    .end local v2    # "orientation":F
    :cond_1
    iget-object v2, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenterEnd:Lorg/osmdroid/api/IGeoPoint;

    if-eqz v2, :cond_2

    .line 527
    iget-object v2, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    iget-object v2, v2, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    .line 528
    .local v2, "tileSystem":Lorg/osmdroid/util/TileSystem;
    iget-object v3, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenterStart:Lorg/osmdroid/api/IGeoPoint;

    invoke-interface {v3}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide v3

    .line 529
    .local v3, "longitudeStart":D
    iget-object v5, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenterEnd:Lorg/osmdroid/api/IGeoPoint;

    invoke-interface {v5}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide v5

    .line 530
    .local v5, "longitudeEnd":D
    sub-double v7, v5, v3

    float-to-double v9, v1

    mul-double/2addr v7, v9

    add-double/2addr v7, v3

    invoke-virtual {v2, v7, v8}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide v7

    .line 531
    .local v7, "longitude":D
    iget-object v9, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenterStart:Lorg/osmdroid/api/IGeoPoint;

    invoke-interface {v9}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lorg/osmdroid/util/TileSystem;->cleanLatitude(D)D

    move-result-wide v9

    .line 532
    .local v9, "latitudeStart":D
    iget-object v11, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenterEnd:Lorg/osmdroid/api/IGeoPoint;

    invoke-interface {v11}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lorg/osmdroid/util/TileSystem;->cleanLatitude(D)D

    move-result-wide v11

    .line 533
    .local v11, "latitudeEnd":D
    sub-double v13, v11, v9

    move-wide v15, v3

    .end local v3    # "longitudeStart":D
    .local v15, "longitudeStart":D
    float-to-double v3, v1

    mul-double/2addr v13, v3

    add-double/2addr v13, v9

    invoke-virtual {v2, v13, v14}, Lorg/osmdroid/util/TileSystem;->cleanLatitude(D)D

    move-result-wide v3

    .line 534
    .local v3, "latitude":D
    iget-object v13, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenter:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v13, v3, v4, v7, v8}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 535
    iget-object v13, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    iget-object v13, v13, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v14, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenter:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v13, v14}, Lorg/osmdroid/views/MapView;->setExpectedCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 537
    .end local v2    # "tileSystem":Lorg/osmdroid/util/TileSystem;
    .end local v3    # "latitude":D
    .end local v5    # "longitudeEnd":D
    .end local v7    # "longitude":D
    .end local v9    # "latitudeStart":D
    .end local v11    # "latitudeEnd":D
    .end local v15    # "longitudeStart":D
    :cond_2
    iget-object v2, v0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    iget-object v2, v2, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 538
    return-void
.end method
