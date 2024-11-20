.class public abstract Lorg/osmdroid/views/overlay/PolyOverlayWithIW;
.super Lorg/osmdroid/views/overlay/OverlayWithIW;
.source "PolyOverlayWithIW.java"


# instance fields
.field private final mClosePath:Z

.field protected mDensity:F

.field private mDensityMultiplier:F

.field private final mDowngradeBottomRight:Landroid/graphics/Point;

.field private final mDowngradeCenter:Lorg/osmdroid/util/PointL;

.field private mDowngradeDisplay:Z

.field private mDowngradeMaximumPixelSize:I

.field private mDowngradeMaximumRectanglePixelSize:I

.field private final mDowngradeOffset:Lorg/osmdroid/util/PointL;

.field private mDowngradeSegments:[F

.field private final mDowngradeTopLeft:Landroid/graphics/Point;

.field protected mFillPaint:Landroid/graphics/Paint;

.field protected mHoles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/LinearRing;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

.field private mIsPaintOrPaintList:Z

.field private mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

.field private mMilestoneManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/milestones/MilestoneManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mOutline:Lorg/osmdroid/views/overlay/LinearRing;

.field protected mOutlinePaint:Landroid/graphics/Paint;

.field private final mOutlinePaintLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/PaintList;",
            ">;"
        }
    .end annotation
.end field

.field protected mPath:Landroid/graphics/Path;

.field private final mVisibilityProjectedCenter:Lorg/osmdroid/util/PointL;

.field private final mVisibilityProjectedCorner:Lorg/osmdroid/util/PointL;

.field private final mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

.field private final mVisibilityRectangleCorner:Lorg/osmdroid/util/PointL;


# direct methods
.method protected constructor <init>(Lorg/osmdroid/views/MapView;ZZ)V
    .locals 2
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;
    .param p2, "pUsePath"    # Z
    .param p3, "pClosePath"    # Z

    .line 73
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mHoles:Ljava/util/List;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaintLists:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensity:F

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mIsPaintOrPaintList:Z

    .line 48
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCenter:Lorg/osmdroid/util/PointL;

    .line 49
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCorner:Lorg/osmdroid/util/PointL;

    .line 50
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    .line 51
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCorner:Lorg/osmdroid/util/PointL;

    .line 59
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    .line 60
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    .line 61
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeCenter:Lorg/osmdroid/util/PointL;

    .line 62
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeOffset:Lorg/osmdroid/util/PointL;

    .line 69
    iput v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensityMultiplier:F

    .line 74
    iput-boolean p3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mClosePath:Z

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getRepository()Lorg/osmdroid/views/MapViewRepository;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapViewRepository;->getDefaultPolylineInfoWindow()Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 77
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensity:F

    .line 79
    :cond_0
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->usePath(Z)V

    .line 80
    return-void
.end method

.method private displayDowngrade(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 35
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/LinearRing;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v2

    .line 463
    .local v2, "boundingBox":Lorg/osmdroid/util/BoundingBox;
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v4}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 464
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v4

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v4}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 465
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v3

    .line 466
    .local v3, "worldSize":D
    iget-object v5, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-long v11, v5

    .line 467
    .local v11, "left":J
    iget-object v5, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-long v13, v5

    .line 468
    .local v13, "top":J
    long-to-double v5, v11

    iget-object v7, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-double v7, v7

    move-wide v9, v3

    invoke-static/range {v5 .. v10}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    .line 469
    .local v15, "right":J
    long-to-double v5, v13

    iget-object v7, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-double v7, v7

    invoke-static/range {v5 .. v10}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    .line 471
    .local v5, "bottom":J
    cmp-long v7, v11, v15

    if-nez v7, :cond_0

    .line 472
    const-wide/16 v7, 0x1

    .local v7, "width":J
    goto :goto_0

    .line 473
    .end local v7    # "width":J
    :cond_0
    cmp-long v7, v11, v15

    if-lez v7, :cond_1

    .line 474
    sub-long v7, v11, v15

    .line 475
    .restart local v7    # "width":J
    move-wide v11, v15

    goto :goto_0

    .line 477
    .end local v7    # "width":J
    :cond_1
    sub-long v7, v15, v11

    .line 480
    .restart local v7    # "width":J
    :goto_0
    cmp-long v9, v13, v5

    if-nez v9, :cond_2

    .line 481
    const-wide/16 v9, 0x1

    .local v9, "height":J
    goto :goto_1

    .line 482
    .end local v9    # "height":J
    :cond_2
    cmp-long v9, v13, v5

    if-lez v9, :cond_3

    .line 483
    sub-long v9, v13, v5

    .line 484
    .restart local v9    # "height":J
    move-wide v13, v5

    goto :goto_1

    .line 486
    .end local v9    # "height":J
    :cond_3
    sub-long v9, v5, v13

    .line 488
    .restart local v9    # "height":J
    :goto_1
    move-object/from16 v17, v2

    .end local v2    # "boundingBox":Lorg/osmdroid/util/BoundingBox;
    .local v17, "boundingBox":Lorg/osmdroid/util/BoundingBox;
    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeCenter:Lorg/osmdroid/util/PointL;

    const-wide/16 v18, 0x2

    div-long v20, v7, v18

    move-wide/from16 v22, v3

    .end local v3    # "worldSize":D
    .local v22, "worldSize":D
    add-long v3, v11, v20

    div-long v18, v9, v18

    move-wide/from16 v20, v5

    .end local v5    # "bottom":J
    .local v20, "bottom":J
    add-long v5, v13, v18

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/osmdroid/util/PointL;->set(JJ)V

    .line 489
    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    iget-object v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeOffset:Lorg/osmdroid/util/PointL;

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeCenter:Lorg/osmdroid/util/PointL;

    invoke-virtual {v2, v1, v3, v4}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;)V

    .line 490
    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeOffset:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->x:J

    add-long/2addr v11, v2

    .line 491
    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeOffset:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->y:J

    add-long/2addr v13, v2

    .line 493
    const/4 v2, 0x0

    .line 494
    .local v2, "paint":Landroid/graphics/Paint;
    iget-boolean v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mIsPaintOrPaintList:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 495
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v2

    goto :goto_2

    .line 496
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getOutlinePaintLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 497
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getOutlinePaintLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/PaintList;

    .line 498
    .local v3, "paintList":Lorg/osmdroid/views/overlay/PaintList;
    invoke-interface {v3}, Lorg/osmdroid/views/overlay/PaintList;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 499
    if-nez v2, :cond_5

    .line 500
    const/16 v25, 0x0

    long-to-float v5, v11

    long-to-float v6, v13

    move/from16 v19, v5

    add-long v4, v11, v7

    long-to-float v4, v4

    move-object v5, v2

    .end local v2    # "paint":Landroid/graphics/Paint;
    .local v5, "paint":Landroid/graphics/Paint;
    add-long v1, v13, v9

    long-to-float v1, v1

    move-object/from16 v24, v3

    move/from16 v26, v19

    move/from16 v27, v6

    move/from16 v28, v4

    move/from16 v29, v1

    invoke-interface/range {v24 .. v29}, Lorg/osmdroid/views/overlay/PaintList;->getPaint(IFFFF)Landroid/graphics/Paint;

    move-result-object v2

    .end local v5    # "paint":Landroid/graphics/Paint;
    .restart local v2    # "paint":Landroid/graphics/Paint;
    goto :goto_2

    .line 499
    :cond_5
    move-object v5, v2

    .line 503
    .end local v3    # "paintList":Lorg/osmdroid/views/overlay/PaintList;
    :cond_6
    :goto_2
    invoke-direct {v0, v2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isVisible(Landroid/graphics/Paint;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 504
    return-void

    .line 507
    :cond_7
    cmp-long v1, v7, v9

    if-lez v1, :cond_8

    move-wide v3, v7

    goto :goto_3

    :cond_8
    move-wide v3, v9

    .line 508
    .local v3, "maxWidthHeight":J
    :goto_3
    iget v1, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumRectanglePixelSize:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-gtz v1, :cond_9

    .line 509
    long-to-float v1, v11

    long-to-float v5, v13

    move-wide/from16 v30, v3

    .end local v3    # "maxWidthHeight":J
    .local v30, "maxWidthHeight":J
    add-long v3, v11, v7

    long-to-float v3, v3

    move-wide/from16 v32, v7

    .end local v7    # "width":J
    .local v32, "width":J
    add-long v6, v13, v9

    long-to-float v4, v6

    move-object/from16 v24, p1

    move/from16 v25, v1

    move/from16 v26, v5

    move/from16 v27, v3

    move/from16 v28, v4

    move-object/from16 v29, v2

    invoke-virtual/range {v24 .. v29}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 510
    return-void

    .line 513
    .end local v30    # "maxWidthHeight":J
    .end local v32    # "width":J
    .restart local v3    # "maxWidthHeight":J
    .restart local v7    # "width":J
    :cond_9
    move-wide/from16 v30, v3

    move-wide/from16 v32, v7

    .end local v3    # "maxWidthHeight":J
    .end local v7    # "width":J
    .restart local v30    # "maxWidthHeight":J
    .restart local v32    # "width":J
    iget-object v1, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    iget v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    invoke-virtual {v1, v3}, Lorg/osmdroid/views/overlay/LinearRing;->computeDowngradePointList(I)[F

    move-result-object v1

    .line 514
    .local v1, "downgradeList":[F
    if-eqz v1, :cond_10

    array-length v3, v1

    if-nez v3, :cond_a

    move-object/from16 v4, p1

    move-wide/from16 v25, v9

    goto/16 :goto_6

    .line 517
    :cond_a
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    .line 518
    .local v3, "size":I
    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeSegments:[F

    if-eqz v4, :cond_b

    array-length v4, v4

    if-ge v4, v3, :cond_c

    .line 519
    :cond_b
    new-array v4, v3, [F

    iput-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeSegments:[F

    .line 521
    :cond_c
    move-wide/from16 v4, v30

    .end local v30    # "maxWidthHeight":J
    .local v4, "maxWidthHeight":J
    long-to-float v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    iget v7, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 522
    .local v6, "factor":F
    const/4 v7, 0x0

    .line 523
    .local v7, "index":I
    const/4 v8, 0x0

    .line 524
    .local v8, "firstX":F
    const/16 v19, 0x0

    .line 525
    .local v19, "firstY":F
    const/16 v24, 0x0

    move/from16 v34, v24

    move/from16 v24, v3

    move/from16 v3, v34

    .local v3, "i":I
    .local v24, "size":I
    :goto_4
    move-wide/from16 v30, v4

    .end local v4    # "maxWidthHeight":J
    .restart local v30    # "maxWidthHeight":J
    array-length v4, v1

    if-ge v3, v4, :cond_e

    .line 526
    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeCenter:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->x:J

    long-to-float v4, v4

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    aget v3, v1, v3

    mul-float/2addr v3, v6

    add-float/2addr v4, v3

    .line 527
    .local v4, "currentX":F
    iget-object v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeCenter:Lorg/osmdroid/util/PointL;

    move-wide/from16 v25, v9

    .end local v9    # "height":J
    .local v25, "height":J
    iget-wide v9, v3, Lorg/osmdroid/util/PointL;->y:J

    long-to-float v3, v9

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .local v9, "i":I
    aget v5, v1, v5

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 528
    .local v3, "currentY":F
    if-nez v7, :cond_d

    .line 529
    move v5, v4

    .line 530
    .end local v8    # "firstX":F
    .local v5, "firstX":F
    move v8, v3

    move/from16 v19, v8

    move v8, v5

    .end local v19    # "firstY":F
    .local v8, "firstY":F
    goto :goto_5

    .line 532
    .end local v5    # "firstX":F
    .local v8, "firstX":F
    .restart local v19    # "firstY":F
    :cond_d
    iget-object v5, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeSegments:[F

    add-int/lit8 v10, v7, 0x1

    .end local v7    # "index":I
    .local v10, "index":I
    aput v4, v5, v7

    .line 533
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "index":I
    .restart local v7    # "index":I
    aput v3, v5, v10

    .line 535
    :goto_5
    iget-object v5, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeSegments:[F

    add-int/lit8 v10, v7, 0x1

    .end local v7    # "index":I
    .restart local v10    # "index":I
    aput v4, v5, v7

    .line 536
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "index":I
    .restart local v7    # "index":I
    aput v3, v5, v10

    .line 537
    .end local v3    # "currentY":F
    .end local v4    # "currentX":F
    move v3, v9

    move-wide/from16 v9, v25

    move-wide/from16 v4, v30

    goto :goto_4

    .line 525
    .end local v25    # "height":J
    .local v3, "i":I
    .local v9, "height":J
    :cond_e
    move-wide/from16 v25, v9

    .line 539
    .end local v3    # "i":I
    .end local v9    # "height":J
    .restart local v25    # "height":J
    iget-object v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeSegments:[F

    add-int/lit8 v4, v7, 0x1

    .end local v7    # "index":I
    .local v4, "index":I
    aput v8, v3, v7

    .line 540
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aput v19, v3, v4

    .line 541
    const/4 v4, 0x4

    if-gt v5, v4, :cond_f

    .line 542
    return-void

    .line 544
    :cond_f
    move-object/from16 v4, p1

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7, v5, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 545
    return-void

    .line 514
    .end local v5    # "index":I
    .end local v6    # "factor":F
    .end local v8    # "firstX":F
    .end local v19    # "firstY":F
    .end local v24    # "size":I
    .end local v25    # "height":J
    .restart local v9    # "height":J
    :cond_10
    move-object/from16 v4, p1

    move-wide/from16 v25, v9

    .line 515
    .end local v9    # "height":J
    .restart local v25    # "height":J
    :goto_6
    return-void
.end method

.method private drawWithLines(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 9
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 320
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/LineDrawer;->setCanvas(Landroid/graphics/Canvas;)V

    .line 321
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0, p2}, Lorg/osmdroid/views/overlay/LinearRing;->setClipArea(Lorg/osmdroid/views/Projection;)V

    .line 322
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 323
    .local v0, "storePoints":Z
    :goto_0
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mIsPaintOrPaintList:Z

    if-eqz v1, :cond_1

    .line 324
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 325
    .local v1, "paint":Landroid/graphics/Paint;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {v2, v1}, Lorg/osmdroid/views/overlay/LineDrawer;->setPaint(Landroid/graphics/Paint;)V

    .line 326
    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v2, p2, v0}, Lorg/osmdroid/views/overlay/LinearRing;->buildLinePortion(Lorg/osmdroid/views/Projection;Z)V

    .line 327
    .end local v1    # "paint":Landroid/graphics/Paint;
    goto :goto_2

    .line 328
    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getOutlinePaintLists()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/PaintList;

    .line 329
    .local v2, "paintList":Lorg/osmdroid/views/overlay/PaintList;
    iget-object v3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {v3, v2}, Lorg/osmdroid/views/overlay/LineDrawer;->setPaint(Lorg/osmdroid/views/overlay/PaintList;)V

    .line 330
    iget-object v3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v3, p2, v0}, Lorg/osmdroid/views/overlay/LinearRing;->buildLinePortion(Lorg/osmdroid/views/Projection;Z)V

    .line 331
    const/4 v0, 0x0

    .line 332
    .end local v2    # "paintList":Lorg/osmdroid/views/overlay/PaintList;
    goto :goto_1

    .line 334
    :cond_2
    :goto_2
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;

    .line 335
    .local v2, "milestoneManager":Lorg/osmdroid/views/overlay/milestones/MilestoneManager;
    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->init()V

    .line 336
    iget-object v3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v3}, Lorg/osmdroid/views/overlay/LinearRing;->getDistances()[D

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->setDistances([D)V

    .line 337
    iget-object v3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v3}, Lorg/osmdroid/views/overlay/LinearRing;->getPointsForMilestones()Lorg/osmdroid/util/ListPointL;

    move-result-object v3

    invoke-virtual {v3}, Lorg/osmdroid/util/ListPointL;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/PointL;

    .line 338
    .local v4, "point":Lorg/osmdroid/util/PointL;
    iget-wide v5, v4, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v7, v4, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v2, v5, v6, v7, v8}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->add(JJ)V

    .line 339
    .end local v4    # "point":Lorg/osmdroid/util/PointL;
    goto :goto_4

    .line 340
    :cond_3
    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->end()V

    .line 341
    .end local v2    # "milestoneManager":Lorg/osmdroid/views/overlay/milestones/MilestoneManager;
    goto :goto_3

    .line 343
    :cond_4
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;

    .line 344
    .restart local v2    # "milestoneManager":Lorg/osmdroid/views/overlay/milestones/MilestoneManager;
    invoke-virtual {v2, p1}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->draw(Landroid/graphics/Canvas;)V

    .line 345
    .end local v2    # "milestoneManager":Lorg/osmdroid/views/overlay/milestones/MilestoneManager;
    goto :goto_5

    .line 346
    :cond_5
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isInfoWindowOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->getRelatedObject()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_6

    .line 347
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->draw()V

    .line 349
    :cond_6
    return-void
.end method

.method private drawWithPath(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 11
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 282
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 284
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0, p2}, Lorg/osmdroid/views/overlay/LinearRing;->setClipArea(Lorg/osmdroid/views/Projection;)V

    .line 285
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4, v1}, Lorg/osmdroid/views/overlay/LinearRing;->buildPathPortion(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;

    move-result-object v0

    .line 286
    .local v0, "offset":Lorg/osmdroid/util/PointL;
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;

    .line 287
    .local v4, "milestoneManager":Lorg/osmdroid/views/overlay/milestones/MilestoneManager;
    invoke-virtual {v4}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->init()V

    .line 288
    iget-object v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v5}, Lorg/osmdroid/views/overlay/LinearRing;->getDistances()[D

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->setDistances([D)V

    .line 289
    iget-object v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v5}, Lorg/osmdroid/views/overlay/LinearRing;->getPointsForMilestones()Lorg/osmdroid/util/ListPointL;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/util/ListPointL;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/osmdroid/util/PointL;

    .line 290
    .local v6, "point":Lorg/osmdroid/util/PointL;
    iget-wide v7, v6, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v9, v6, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v4, v7, v8, v9, v10}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->add(JJ)V

    .line 291
    .end local v6    # "point":Lorg/osmdroid/util/PointL;
    goto :goto_2

    .line 292
    :cond_1
    invoke-virtual {v4}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->end()V

    .line 293
    .end local v4    # "milestoneManager":Lorg/osmdroid/views/overlay/milestones/MilestoneManager;
    goto :goto_1

    .line 295
    :cond_2
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mHoles:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 296
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/views/overlay/LinearRing;

    .line 297
    .local v4, "hole":Lorg/osmdroid/views/overlay/LinearRing;
    invoke-virtual {v4, p2}, Lorg/osmdroid/views/overlay/LinearRing;->setClipArea(Lorg/osmdroid/views/Projection;)V

    .line 298
    iget-object v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    move v5, v2

    goto :goto_4

    :cond_3
    move v5, v3

    :goto_4
    invoke-virtual {v4, p2, v0, v5}, Lorg/osmdroid/views/overlay/LinearRing;->buildPathPortion(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;

    .line 299
    .end local v4    # "hole":Lorg/osmdroid/views/overlay/LinearRing;
    goto :goto_3

    .line 300
    :cond_4
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 303
    :cond_5
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mFillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isVisible(Landroid/graphics/Paint;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 304
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 306
    :cond_6
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isVisible(Landroid/graphics/Paint;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 307
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 310
    :cond_7
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;

    .line 311
    .local v2, "milestoneManager":Lorg/osmdroid/views/overlay/milestones/MilestoneManager;
    invoke-virtual {v2, p1}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->draw(Landroid/graphics/Canvas;)V

    .line 312
    .end local v2    # "milestoneManager":Lorg/osmdroid/views/overlay/milestones/MilestoneManager;
    goto :goto_5

    .line 314
    :cond_8
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isInfoWindowOpen()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->getRelatedObject()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_9

    .line 315
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->draw()V

    .line 317
    :cond_9
    return-void
.end method

.method private isVisible(Landroid/graphics/Paint;)Z
    .locals 1
    .param p1, "pPaint"    # Landroid/graphics/Paint;

    .line 455
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVisible(Lorg/osmdroid/views/Projection;)Z
    .locals 16
    .param p1, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 255
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getBounds()Lorg/osmdroid/util/BoundingBox;

    move-result-object v1

    .line 256
    .local v1, "boundingBox":Lorg/osmdroid/util/BoundingBox;
    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getCenterLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getCenterLongitude()D

    move-result-wide v5

    iget-object v7, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCenter:Lorg/osmdroid/util/PointL;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    .line 258
    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v9

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v11

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCorner:Lorg/osmdroid/util/PointL;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    .line 260
    iget-object v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCenter:Lorg/osmdroid/util/PointL;

    .line 261
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getProjectedPowerDifference()D

    move-result-wide v4

    const/4 v6, 0x1

    iget-object v7, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    .line 260
    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    .line 262
    iget-object v9, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCorner:Lorg/osmdroid/util/PointL;

    .line 263
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getProjectedPowerDifference()D

    move-result-wide v10

    const/4 v12, 0x1

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCorner:Lorg/osmdroid/util/PointL;

    .line 262
    invoke-virtual/range {v8 .. v13}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    .line 266
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 267
    .local v2, "screenCenterX":I
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 268
    .local v3, "screenCenterY":I
    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v6, v4

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v8, v4

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCorner:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v10, v4

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCorner:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v12, v4

    invoke-static/range {v6 .. v13}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 271
    .local v4, "radius":D
    iget-object v6, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    iget-wide v6, v6, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v8, v6

    iget-object v6, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    iget-wide v6, v6, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v10, v6

    int-to-double v12, v2

    int-to-double v14, v3

    invoke-static/range {v8 .. v15}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 274
    .local v6, "distanceBetweenCenters":D
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    int-to-double v12, v2

    int-to-double v14, v3

    invoke-static/range {v8 .. v15}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 278
    .local v8, "screenRadius":D
    add-double v10, v4, v8

    cmpg-double v10, v6, v10

    if-gtz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    return v10
.end method

.method private isWorthDisplaying(Lorg/osmdroid/views/Projection;)Z
    .locals 13
    .param p1, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 430
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getBounds()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    .line 431
    .local v0, "boundingBox":Lorg/osmdroid/util/BoundingBox;
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    invoke-virtual {p1, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 432
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    invoke-virtual {p1, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 433
    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v1

    .line 434
    .local v1, "worldSize":D
    iget-object v3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-double v3, v3

    iget-object v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v5, v5

    move-wide v7, v1

    invoke-static/range {v3 .. v8}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    .line 435
    .local v9, "right":J
    iget-object v3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-double v3, v3

    iget-object v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-double v5, v5

    invoke-static/range {v3 .. v8}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 436
    .local v3, "bottom":J
    iget-object v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    const/4 v7, 0x0

    if-ge v5, v6, :cond_0

    .line 437
    return v7

    .line 439
    :cond_0
    iget-object v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-long v5, v5

    sub-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    iget v8, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    int-to-long v11, v8

    cmp-long v5, v5, v11

    if-gez v5, :cond_1

    .line 440
    return v7

    .line 442
    :cond_1
    iget-object v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    if-ge v5, v6, :cond_2

    .line 443
    return v7

    .line 445
    :cond_2
    iget-object v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-long v5, v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    iget v8, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    int-to-long v11, v8

    cmp-long v5, v5, v11

    if-gez v5, :cond_3

    .line 446
    return v7

    .line 448
    :cond_3
    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method public addPoint(Lorg/osmdroid/util/GeoPoint;)V
    .locals 1
    .param p1, "p"    # Lorg/osmdroid/util/GeoPoint;

    .line 390
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/LinearRing;->addPoint(Lorg/osmdroid/util/GeoPoint;)V

    .line 391
    return-void
.end method

.method protected abstract click(Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
.end method

.method public contains(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "pEvent"    # Landroid/view/MotionEvent;

    .line 568
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const/4 v0, 0x0

    return v0

    .line 571
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 572
    .local v0, "bounds":Landroid/graphics/RectF;
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 573
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 575
    .local v1, "region":Landroid/graphics/Region;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Region;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    return v2
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 1
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 226
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isVisible(Lorg/osmdroid/views/Projection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    return-void

    .line 230
    :cond_0
    iget v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    if-lez v0, :cond_2

    .line 231
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isWorthDisplaying(Lorg/osmdroid/views/Projection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeDisplay:Z

    if-eqz v0, :cond_1

    .line 233
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->displayDowngrade(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 235
    :cond_1
    return-void

    .line 239
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_3

    .line 240
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->drawWithPath(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    goto :goto_0

    .line 242
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->drawWithLines(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 244
    :goto_0
    return-void
.end method

.method public getActualPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBounds()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 367
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Lorg/osmdroid/util/GeoPoint;
    .locals 6
    .param p1, "pPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "pTolerance"    # D
    .param p4, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 599
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {p4}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    iget-boolean v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mClosePath:Z

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/overlay/LinearRing;->getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/Projection;Z)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    .line 204
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method protected getFillPaint()Landroid/graphics/Paint;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mFillPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getInfoWindowLocation()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getOutlinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mIsPaintOrPaintList:Z

    .line 120
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOutlinePaintLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/PaintList;",
            ">;"
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mIsPaintOrPaintList:Z

    .line 129
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaintLists:Ljava/util/List;

    return-object v0
.end method

.method public isCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "pPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "pTolerance"    # D
    .param p4, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 588
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->isGeodesic()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 353
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->clear()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mHoles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 358
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 359
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->onDestroy()V

    .line 360
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 611
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 612
    .local v0, "projection":Lorg/osmdroid/views/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 614
    .local v1, "eventPos":Lorg/osmdroid/util/GeoPoint;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    if-eqz v2, :cond_1

    .line 615
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->contains(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 616
    .local v2, "tapped":Z
    if-eqz v2, :cond_0

    .line 617
    move-object v3, v1

    .local v3, "geoPoint":Lorg/osmdroid/util/GeoPoint;
    goto :goto_0

    .line 619
    .end local v3    # "geoPoint":Lorg/osmdroid/util/GeoPoint;
    :cond_0
    const/4 v3, 0x0

    .line 621
    .end local v2    # "tapped":Z
    .restart local v3    # "geoPoint":Lorg/osmdroid/util/GeoPoint;
    :goto_0
    goto :goto_1

    .line 622
    .end local v3    # "geoPoint":Lorg/osmdroid/util/GeoPoint;
    :cond_1
    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    iget v3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensity:F

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensityMultiplier:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    .line 623
    .local v2, "tolerance":D
    invoke-virtual {p0, v1, v2, v3, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    move-object v3, v4

    .line 625
    .end local v2    # "tolerance":D
    .restart local v3    # "geoPoint":Lorg/osmdroid/util/GeoPoint;
    :goto_1
    if-eqz v3, :cond_2

    .line 626
    invoke-virtual {p0, p2, v3}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->click(Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result v2

    return v2

    .line 628
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method protected setDefaultInfoWindowLocation()V
    .locals 4

    .line 213
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 214
    .local v0, "s":I
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 215
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v3, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    .line 216
    return-void

    .line 218
    :cond_0
    iget-object v3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    if-nez v3, :cond_1

    .line 219
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v3, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    .line 221
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/LinearRing;->getCenter(Lorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    .line 222
    return-void
.end method

.method public setDensityMultiplier(F)V
    .locals 0
    .param p1, "pDensityMultiplier"    # F

    .line 557
    iput p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensityMultiplier:F

    .line 558
    return-void
.end method

.method public setDowngradeDisplay(Z)V
    .locals 0
    .param p1, "pDowngradeDisplay"    # Z

    .line 408
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeDisplay:Z

    .line 409
    return-void
.end method

.method public setDowngradePixelSizes(II)V
    .locals 1
    .param p1, "pPolySize"    # I
    .param p2, "pRectangleSize"    # I

    .line 422
    iput p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumRectanglePixelSize:I

    .line 423
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    .line 424
    return-void
.end method

.method public setGeodesic(Z)V
    .locals 1
    .param p1, "geodesic"    # Z

    .line 144
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/LinearRing;->setGeodesic(Z)V

    .line 145
    return-void
.end method

.method public setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V
    .locals 2
    .param p1, "infoWindow"    # Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .line 158
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->getRelatedObject()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->setRelatedObject(Ljava/lang/Object;)V

    .line 162
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .line 163
    return-void
.end method

.method public setInfoWindowLocation(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0
    .param p1, "location"    # Lorg/osmdroid/util/GeoPoint;

    .line 179
    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    .line 180
    return-void
.end method

.method public setMilestoneManagers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/milestones/MilestoneManager;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "pMilestoneManagers":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/views/overlay/milestones/MilestoneManager;>;"
    if-nez p1, :cond_0

    .line 192
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 193
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 196
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    .line 198
    :cond_1
    :goto_0
    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 379
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/LinearRing;->setPoints(Ljava/util/List;)V

    .line 380
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->setDefaultInfoWindowLocation()V

    .line 381
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 108
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->setEnabled(Z)V

    .line 109
    return-void
.end method

.method public showInfoWindow()V
    .locals 3

    .line 171
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V

    .line 173
    :cond_0
    return-void
.end method

.method public usePath(Z)V
    .locals 4
    .param p1, "pUsePath"    # Z

    .line 91
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    .line 92
    .local v0, "previousPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 93
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    .line 94
    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    .line 95
    new-instance v1, Lorg/osmdroid/views/overlay/LinearRing;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    iget-boolean v3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mClosePath:Z

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/views/overlay/LinearRing;-><init>(Landroid/graphics/Path;Z)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    goto :goto_1

    .line 97
    :cond_1
    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    .line 98
    new-instance v1, Lorg/osmdroid/views/overlay/LineDrawer;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/osmdroid/views/overlay/LineDrawer;-><init>(I)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    .line 99
    new-instance v1, Lorg/osmdroid/views/overlay/LinearRing;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    iget-boolean v3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mClosePath:Z

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/views/overlay/LinearRing;-><init>(Lorg/osmdroid/util/LineBuilder;Z)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    .line 100
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/LineDrawer;->setPaint(Landroid/graphics/Paint;)V

    .line 102
    :goto_1
    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->setPoints(Ljava/util/List;)V

    .line 105
    :cond_2
    return-void
.end method
