.class public Lorg/osmdroid/views/overlay/LinearRing;
.super Ljava/lang/Object;
.source "LinearRing.java"


# instance fields
.field private isHorizontalRepeating:Z

.field private isVerticalRepeating:Z

.field private final mBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field private final mClosed:Z

.field private mDistances:[D

.field private mDistancesPrecomputed:Z

.field private mDowngradePixelSize:I

.field private mDowngradePointList:[F

.field private mGeodesic:Z

.field private final mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

.field private final mOriginalPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mPath:Landroid/graphics/Path;

.field private final mPointAccepter:Lorg/osmdroid/util/PointAccepter;

.field private final mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

.field private final mProjectedCenter:Lorg/osmdroid/util/PointL;

.field private mProjectedHeight:J

.field private mProjectedPoints:[J

.field private mProjectedPrecomputed:Z

.field private mProjectedWidth:J

.field private final mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "pPath"    # Landroid/graphics/Path;

    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/LinearRing;-><init>(Landroid/graphics/Path;Z)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;Z)V
    .locals 2
    .param p1, "pPath"    # Landroid/graphics/Path;
    .param p2, "pClosed"    # Z

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedCenter:Lorg/osmdroid/util/PointL;

    .line 57
    new-instance v0, Lorg/osmdroid/util/SegmentClipper;

    invoke-direct {v0}, Lorg/osmdroid/util/SegmentClipper;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    .line 59
    new-instance v0, Lorg/osmdroid/util/BoundingBox;

    invoke-direct {v0}, Lorg/osmdroid/util/BoundingBox;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->isHorizontalRepeating:Z

    .line 63
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->isVerticalRepeating:Z

    .line 64
    new-instance v0, Lorg/osmdroid/util/ListPointL;

    invoke-direct {v0}, Lorg/osmdroid/util/ListPointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mGeodesic:Z

    .line 119
    iput-object p1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPath:Landroid/graphics/Path;

    .line 120
    new-instance v0, Lorg/osmdroid/util/SideOptimizationPointAccepter;

    new-instance v1, Lorg/osmdroid/util/PathBuilder;

    invoke-direct {v1, p1}, Lorg/osmdroid/util/PathBuilder;-><init>(Landroid/graphics/Path;)V

    invoke-direct {v0, v1}, Lorg/osmdroid/util/SideOptimizationPointAccepter;-><init>(Lorg/osmdroid/util/PointAccepter;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    .line 122
    iput-boolean p2, p0, Lorg/osmdroid/views/overlay/LinearRing;->mClosed:Z

    .line 123
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/LineBuilder;)V
    .locals 1
    .param p1, "pLineBuilder"    # Lorg/osmdroid/util/LineBuilder;

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/LinearRing;-><init>(Lorg/osmdroid/util/LineBuilder;Z)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/LineBuilder;Z)V
    .locals 2
    .param p1, "pLineBuilder"    # Lorg/osmdroid/util/LineBuilder;
    .param p2, "pClosePath"    # Z

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedCenter:Lorg/osmdroid/util/PointL;

    .line 57
    new-instance v0, Lorg/osmdroid/util/SegmentClipper;

    invoke-direct {v0}, Lorg/osmdroid/util/SegmentClipper;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    .line 59
    new-instance v0, Lorg/osmdroid/util/BoundingBox;

    invoke-direct {v0}, Lorg/osmdroid/util/BoundingBox;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->isHorizontalRepeating:Z

    .line 63
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->isVerticalRepeating:Z

    .line 64
    new-instance v0, Lorg/osmdroid/util/ListPointL;

    invoke-direct {v0}, Lorg/osmdroid/util/ListPointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mGeodesic:Z

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPath:Landroid/graphics/Path;

    .line 96
    iput-object p1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    .line 97
    instance-of v1, p1, Lorg/osmdroid/views/overlay/LineDrawer;

    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Lorg/osmdroid/util/IntegerAccepter;

    invoke-virtual {p1}, Lorg/osmdroid/util/LineBuilder;->getLines()[F

    move-result-object v1

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/osmdroid/util/IntegerAccepter;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    .line 99
    move-object v1, p1

    check-cast v1, Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {v1, v0}, Lorg/osmdroid/views/overlay/LineDrawer;->setIntegerAccepter(Lorg/osmdroid/util/IntegerAccepter;)V

    goto :goto_0

    .line 101
    :cond_0
    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    .line 103
    :goto_0
    iput-boolean p2, p0, Lorg/osmdroid/views/overlay/LinearRing;->mClosed:Z

    .line 104
    return-void
.end method

.method private clipAndStore(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;ZZLorg/osmdroid/util/SegmentClipper;)V
    .locals 15
    .param p1, "pProjection"    # Lorg/osmdroid/views/Projection;
    .param p2, "pOffset"    # Lorg/osmdroid/util/PointL;
    .param p3, "pClosePath"    # Z
    .param p4, "pStorePoints"    # Z
    .param p5, "pSegmentClipper"    # Lorg/osmdroid/util/SegmentClipper;

    .line 375
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    iget-object v3, v0, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    invoke-virtual {v3}, Lorg/osmdroid/util/ListPointL;->clear()V

    .line 376
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getProjectedPowerDifference()D

    move-result-wide v10

    .line 377
    .local v10, "powerDifference":D
    new-instance v3, Lorg/osmdroid/util/PointL;

    invoke-direct {v3}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 378
    .local v3, "projected":Lorg/osmdroid/util/PointL;
    new-instance v4, Lorg/osmdroid/util/PointL;

    invoke-direct {v4}, Lorg/osmdroid/util/PointL;-><init>()V

    move-object v12, v4

    .line 379
    .local v12, "point":Lorg/osmdroid/util/PointL;
    new-instance v4, Lorg/osmdroid/util/PointL;

    invoke-direct {v4}, Lorg/osmdroid/util/PointL;-><init>()V

    move-object v13, v4

    .line 380
    .local v13, "first":Lorg/osmdroid/util/PointL;
    const/4 v4, 0x0

    move v14, v4

    .local v14, "i":I
    :goto_0
    iget-object v4, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    array-length v5, v4

    if-ge v14, v5, :cond_3

    .line 381
    aget-wide v5, v4, v14

    add-int/lit8 v7, v14, 0x1

    aget-wide v7, v4, v7

    invoke-virtual {v3, v5, v6, v7, v8}, Lorg/osmdroid/util/PointL;->set(JJ)V

    .line 382
    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object v5, v3

    move-wide v6, v10

    move-object v9, v12

    invoke-virtual/range {v4 .. v9}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    .line 383
    iget-wide v4, v12, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v6, v1, Lorg/osmdroid/util/PointL;->x:J

    add-long/2addr v4, v6

    .line 384
    .local v4, "x":J
    iget-wide v6, v12, Lorg/osmdroid/util/PointL;->y:J

    iget-wide v8, v1, Lorg/osmdroid/util/PointL;->y:J

    add-long/2addr v6, v8

    .line 385
    .local v6, "y":J
    if-eqz p4, :cond_0

    .line 386
    iget-object v8, v0, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    invoke-virtual {v8, v4, v5, v6, v7}, Lorg/osmdroid/util/ListPointL;->add(JJ)V

    .line 388
    :cond_0
    if-eqz v2, :cond_1

    .line 389
    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/osmdroid/util/SegmentClipper;->add(JJ)V

    .line 391
    :cond_1
    if-nez v14, :cond_2

    .line 392
    invoke-virtual {v13, v4, v5, v6, v7}, Lorg/osmdroid/util/PointL;->set(JJ)V

    .line 380
    .end local v4    # "x":J
    .end local v6    # "y":J
    :cond_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    .line 395
    .end local v14    # "i":I
    :cond_3
    if-eqz p3, :cond_5

    .line 396
    if-eqz v2, :cond_4

    .line 397
    iget-wide v4, v13, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v6, v13, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/osmdroid/util/SegmentClipper;->add(JJ)V

    .line 399
    :cond_4
    if-eqz p4, :cond_5

    .line 400
    iget-object v4, v0, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    iget-wide v5, v13, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v7, v13, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/osmdroid/util/ListPointL;->add(JJ)V

    .line 403
    :cond_5
    return-void
.end method

.method private computeDistances()V
    .locals 10

    .line 619
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistancesPrecomputed:Z

    if-eqz v0, :cond_0

    .line 620
    return-void

    .line 622
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistancesPrecomputed:Z

    .line 623
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistances:[D

    if-eqz v0, :cond_1

    array-length v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 624
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistances:[D

    .line 626
    :cond_2
    const/4 v0, 0x0

    .line 627
    .local v0, "index":I
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 628
    .local v1, "previousGeo":Lorg/osmdroid/util/GeoPoint;
    iget-object v4, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    .line 629
    .local v5, "currentGeo":Lorg/osmdroid/util/GeoPoint;
    if-nez v0, :cond_3

    .line 630
    iget-object v6, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistances:[D

    aput-wide v2, v6, v0

    goto :goto_1

    .line 632
    :cond_3
    iget-object v6, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistances:[D

    invoke-virtual {v5, v1}, Lorg/osmdroid/util/GeoPoint;->distanceToAsDouble(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v7

    aput-wide v7, v6, v0

    .line 634
    :goto_1
    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 635
    nop

    .end local v5    # "currentGeo":Lorg/osmdroid/util/GeoPoint;
    add-int/lit8 v0, v0, 0x1

    .line 636
    goto :goto_0

    .line 637
    :cond_4
    return-void
.end method

.method private computeProjected()V
    .locals 42

    .line 555
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPrecomputed:Z

    if-eqz v1, :cond_0

    .line 556
    return-void

    .line 558
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPrecomputed:Z

    .line 559
    iget-object v2, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    if-eqz v2, :cond_1

    array-length v2, v2

    iget-object v3, v0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-eq v2, v3, :cond_2

    .line 560
    :cond_1
    iget-object v2, v0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [J

    iput-object v2, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    .line 562
    :cond_2
    const-wide/16 v2, 0x0

    .line 563
    .local v2, "minX":J
    const-wide/16 v4, 0x0

    .line 564
    .local v4, "maxX":J
    const-wide/16 v6, 0x0

    .line 565
    .local v6, "minY":J
    const-wide/16 v8, 0x0

    .line 566
    .local v8, "maxY":J
    const-wide/16 v10, 0x0

    .line 567
    .local v10, "north":D
    const-wide/16 v12, 0x0

    .line 568
    .local v12, "east":D
    const-wide/16 v14, 0x0

    .line 569
    .local v14, "south":D
    const-wide/16 v16, 0x0

    .line 570
    .local v16, "west":D
    const/16 v18, 0x0

    .line 571
    .local v18, "index":I
    new-instance v19, Lorg/osmdroid/util/PointL;

    invoke-direct/range {v19 .. v19}, Lorg/osmdroid/util/PointL;-><init>()V

    move-object/from16 v20, v19

    .line 572
    .local v20, "previous":Lorg/osmdroid/util/PointL;
    new-instance v19, Lorg/osmdroid/util/PointL;

    invoke-direct/range {v19 .. v19}, Lorg/osmdroid/util/PointL;-><init>()V

    move-object/from16 v30, v19

    .line 573
    .local v30, "current":Lorg/osmdroid/util/PointL;
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v19

    .line 574
    .local v19, "tileSystem":Lorg/osmdroid/util/TileSystem;
    const-wide/high16 v31, 0x43b0000000000000L    # 1.15292150460684698E18

    .line 575
    .local v31, "projectedMapSize":D
    iget-object v1, v0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v37, v14

    move-wide/from16 v39, v16

    move/from16 v41, v18

    .end local v10    # "north":D
    .end local v12    # "east":D
    .end local v14    # "south":D
    .end local v16    # "west":D
    .end local v18    # "index":I
    .local v33, "north":D
    .local v35, "east":D
    .local v37, "south":D
    .local v39, "west":D
    .local v41, "index":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/osmdroid/util/GeoPoint;

    .line 576
    .local v10, "currentGeo":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v11

    .line 577
    .local v11, "latitude":D
    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v13

    .line 578
    .local v13, "longitude":D
    const-wide/high16 v26, 0x43b0000000000000L    # 1.15292150460684698E18

    const/16 v29, 0x0

    move-object/from16 v21, v19

    move-wide/from16 v22, v11

    move-wide/from16 v24, v13

    move-object/from16 v28, v30

    invoke-virtual/range {v21 .. v29}, Lorg/osmdroid/util/TileSystem;->getMercatorFromGeo(DDDLorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;

    .line 579
    if-nez v41, :cond_3

    .line 580
    move-wide/from16 v21, v8

    move-object/from16 v15, v30

    .end local v8    # "maxY":J
    .end local v30    # "current":Lorg/osmdroid/util/PointL;
    .local v15, "current":Lorg/osmdroid/util/PointL;
    .local v21, "maxY":J
    iget-wide v8, v15, Lorg/osmdroid/util/PointL;->x:J

    move-wide v4, v8

    move-wide v2, v8

    .line 581
    iget-wide v8, v15, Lorg/osmdroid/util/PointL;->y:J

    move-wide/from16 v16, v8

    .end local v21    # "maxY":J
    .local v16, "maxY":J
    move-wide v6, v8

    .line 582
    move-wide v8, v11

    .end local v37    # "south":D
    .local v8, "south":D
    move-wide/from16 v21, v11

    .line 583
    .end local v33    # "north":D
    .local v21, "north":D
    move-wide/from16 v23, v13

    .end local v39    # "west":D
    .local v23, "west":D
    move-wide/from16 v25, v13

    move-wide/from16 v37, v8

    move-wide/from16 v8, v16

    move-wide/from16 v33, v21

    move-wide/from16 v39, v23

    move-wide/from16 v35, v25

    move-object/from16 v16, v1

    move-object/from16 v1, v20

    .end local v35    # "east":D
    .local v25, "east":D
    goto :goto_1

    .line 585
    .end local v15    # "current":Lorg/osmdroid/util/PointL;
    .end local v16    # "maxY":J
    .end local v21    # "north":D
    .end local v23    # "west":D
    .end local v25    # "east":D
    .local v8, "maxY":J
    .restart local v30    # "current":Lorg/osmdroid/util/PointL;
    .restart local v33    # "north":D
    .restart local v35    # "east":D
    .restart local v37    # "south":D
    .restart local v39    # "west":D
    :cond_3
    move-wide/from16 v21, v8

    move-object/from16 v15, v30

    .end local v8    # "maxY":J
    .end local v30    # "current":Lorg/osmdroid/util/PointL;
    .restart local v15    # "current":Lorg/osmdroid/util/PointL;
    .local v21, "maxY":J
    const-wide/high16 v8, 0x43b0000000000000L    # 1.15292150460684698E18

    move-object/from16 v16, v1

    move-object/from16 v1, v20

    .end local v20    # "previous":Lorg/osmdroid/util/PointL;
    .local v1, "previous":Lorg/osmdroid/util/PointL;
    invoke-direct {v0, v1, v15, v8, v9}, Lorg/osmdroid/views/overlay/LinearRing;->setCloserPoint(Lorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;D)V

    .line 586
    iget-wide v8, v15, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v8, v2, v8

    if-lez v8, :cond_4

    .line 587
    iget-wide v2, v15, Lorg/osmdroid/util/PointL;->x:J

    .line 588
    move-wide/from16 v39, v13

    .line 590
    :cond_4
    iget-wide v8, v15, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_5

    .line 591
    iget-wide v4, v15, Lorg/osmdroid/util/PointL;->x:J

    .line 592
    move-wide/from16 v35, v13

    .line 594
    :cond_5
    iget-wide v8, v15, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_6

    .line 595
    iget-wide v6, v15, Lorg/osmdroid/util/PointL;->y:J

    .line 596
    move-wide/from16 v33, v11

    .line 598
    :cond_6
    iget-wide v8, v15, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v8, v21, v8

    if-gez v8, :cond_7

    .line 599
    iget-wide v8, v15, Lorg/osmdroid/util/PointL;->y:J

    .line 600
    .end local v21    # "maxY":J
    .restart local v8    # "maxY":J
    move-wide/from16 v17, v11

    move-wide/from16 v37, v17

    .end local v37    # "south":D
    .local v17, "south":D
    goto :goto_1

    .line 598
    .end local v8    # "maxY":J
    .end local v17    # "south":D
    .restart local v21    # "maxY":J
    .restart local v37    # "south":D
    :cond_7
    move-wide/from16 v8, v21

    .line 603
    .end local v21    # "maxY":J
    .restart local v8    # "maxY":J
    :goto_1
    move-wide/from16 v17, v2

    .end local v2    # "minX":J
    .local v17, "minX":J
    iget-object v2, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    mul-int/lit8 v3, v41, 0x2

    move-wide/from16 v20, v4

    .end local v4    # "maxX":J
    .local v20, "maxX":J
    iget-wide v4, v15, Lorg/osmdroid/util/PointL;->x:J

    aput-wide v4, v2, v3

    .line 604
    iget-object v2, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    mul-int/lit8 v3, v41, 0x2

    const/16 v23, 0x1

    add-int/lit8 v3, v3, 0x1

    iget-wide v4, v15, Lorg/osmdroid/util/PointL;->y:J

    aput-wide v4, v2, v3

    .line 605
    iget-wide v2, v15, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v4, v15, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/PointL;->set(JJ)V

    .line 606
    nop

    .end local v10    # "currentGeo":Lorg/osmdroid/util/GeoPoint;
    .end local v11    # "latitude":D
    .end local v13    # "longitude":D
    add-int/lit8 v41, v41, 0x1

    .line 607
    move-object/from16 v30, v15

    move-wide/from16 v2, v17

    move-wide/from16 v4, v20

    move-object/from16 v20, v1

    move-object/from16 v1, v16

    goto/16 :goto_0

    .line 608
    .end local v1    # "previous":Lorg/osmdroid/util/PointL;
    .end local v15    # "current":Lorg/osmdroid/util/PointL;
    .end local v17    # "minX":J
    .restart local v2    # "minX":J
    .restart local v4    # "maxX":J
    .local v20, "previous":Lorg/osmdroid/util/PointL;
    .restart local v30    # "current":Lorg/osmdroid/util/PointL;
    :cond_8
    move-wide/from16 v21, v8

    move-object/from16 v15, v30

    .end local v8    # "maxY":J
    .end local v30    # "current":Lorg/osmdroid/util/PointL;
    .restart local v15    # "current":Lorg/osmdroid/util/PointL;
    .restart local v21    # "maxY":J
    sub-long v8, v4, v2

    iput-wide v8, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedWidth:J

    .line 609
    sub-long v8, v21, v6

    iput-wide v8, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedHeight:J

    .line 610
    iget-object v8, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedCenter:Lorg/osmdroid/util/PointL;

    add-long v9, v2, v4

    const-wide/16 v11, 0x2

    div-long/2addr v9, v11

    add-long v13, v6, v21

    div-long/2addr v13, v11

    invoke-virtual {v8, v9, v10, v13, v14}, Lorg/osmdroid/util/PointL;->set(JJ)V

    .line 611
    iget-object v10, v0, Lorg/osmdroid/views/overlay/LinearRing;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    move-wide/from16 v11, v33

    move-wide/from16 v13, v35

    move-object v8, v15

    .end local v15    # "current":Lorg/osmdroid/util/PointL;
    .local v8, "current":Lorg/osmdroid/util/PointL;
    move-wide/from16 v15, v37

    move-wide/from16 v17, v39

    invoke-virtual/range {v10 .. v18}, Lorg/osmdroid/util/BoundingBox;->set(DDDD)V

    .line 612
    return-void
.end method

.method private getBestOffset(DDDDJJ)I
    .locals 13
    .param p1, "pPolyCenterX"    # D
    .param p3, "pPolyCenterY"    # D
    .param p5, "pScreenCenterX"    # D
    .param p7, "pScreenCenterY"    # D
    .param p9, "pDeltaX"    # J
    .param p11, "pDeltaY"    # J

    .line 353
    const-wide/16 v0, 0x0

    .line 354
    .local v0, "squaredDistance":D
    const/4 v2, 0x0

    .line 356
    .local v2, "i":I
    :goto_0
    int-to-long v3, v2

    mul-long v3, v3, p9

    long-to-double v3, v3

    add-double v5, p1, v3

    int-to-long v3, v2

    mul-long v3, v3, p11

    long-to-double v3, v3

    add-double v7, p3, v3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    invoke-static/range {v5 .. v12}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v3

    .line 359
    .local v3, "tmpSquaredDistance":D
    if-eqz v2, :cond_1

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_1

    .line 366
    .end local v3    # "tmpSquaredDistance":D
    :cond_0
    add-int/lit8 v3, v2, -0x1

    return v3

    .line 360
    .restart local v3    # "tmpSquaredDistance":D
    :cond_1
    :goto_1
    move-wide v0, v3

    .line 361
    nop

    .end local v3    # "tmpSquaredDistance":D
    add-int/lit8 v2, v2, 0x1

    .line 365
    goto :goto_0
.end method

.method private getBestOffset(DDDDDLorg/osmdroid/util/PointL;)V
    .locals 21
    .param p1, "pPolyCenterX"    # D
    .param p3, "pPolyCenterY"    # D
    .param p5, "pScreenCenterX"    # D
    .param p7, "pScreenCenterY"    # D
    .param p9, "pWorldSize"    # D
    .param p11, "pOffset"    # Lorg/osmdroid/util/PointL;

    .line 320
    move-object/from16 v13, p0

    move-object/from16 v14, p11

    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    .line 323
    .local v11, "worldSize":J
    iget-boolean v0, v13, Lorg/osmdroid/views/overlay/LinearRing;->isVerticalRepeating:Z

    if-nez v0, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "deltaPositive":I
    const/4 v1, 0x0

    move v15, v0

    move-wide v13, v11

    move v11, v1

    .local v1, "deltaNegative":I
    goto :goto_0

    .line 327
    .end local v0    # "deltaPositive":I
    .end local v1    # "deltaNegative":I
    :cond_0
    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide v15, v11

    .end local v11    # "worldSize":J
    .local v15, "worldSize":J
    invoke-direct/range {v0 .. v12}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(DDDDJJ)I

    move-result v17

    .line 329
    .local v17, "deltaPositive":I
    nop

    .end local v15    # "worldSize":J
    .restart local v11    # "worldSize":J
    neg-long v7, v11

    move-wide v15, v7

    move-wide/from16 v7, p7

    move-wide v13, v11

    .end local v11    # "worldSize":J
    .local v13, "worldSize":J
    move-wide v11, v15

    invoke-direct/range {v0 .. v12}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(DDDDJJ)I

    move-result v1

    move v11, v1

    move/from16 v15, v17

    .line 333
    .end local v17    # "deltaPositive":I
    .local v11, "deltaNegative":I
    .local v15, "deltaPositive":I
    :goto_0
    if-le v15, v11, :cond_1

    move v0, v15

    goto :goto_1

    :cond_1
    neg-int v0, v11

    :goto_1
    int-to-long v0, v0

    mul-long/2addr v0, v13

    move-wide v7, v13

    move-object/from16 v13, p11

    .end local v13    # "worldSize":J
    .local v7, "worldSize":J
    iput-wide v0, v13, Lorg/osmdroid/util/PointL;->y:J

    .line 334
    move-object/from16 v14, p0

    iget-boolean v0, v14, Lorg/osmdroid/views/overlay/LinearRing;->isHorizontalRepeating:Z

    if-nez v0, :cond_2

    .line 335
    const/4 v0, 0x0

    .line 336
    .end local v15    # "deltaPositive":I
    .restart local v0    # "deltaPositive":I
    const/4 v1, 0x0

    move-wide/from16 v18, v7

    .end local v11    # "deltaNegative":I
    .restart local v1    # "deltaNegative":I
    goto :goto_2

    .line 338
    .end local v0    # "deltaPositive":I
    .end local v1    # "deltaNegative":I
    .restart local v11    # "deltaNegative":I
    .restart local v15    # "deltaPositive":I
    :cond_2
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v18, v7

    .end local v7    # "worldSize":J
    .local v18, "worldSize":J
    move-wide/from16 v7, p7

    move-wide/from16 v9, v18

    move/from16 v20, v11

    .end local v11    # "deltaNegative":I
    .local v20, "deltaNegative":I
    move-wide/from16 v11, v16

    invoke-direct/range {v0 .. v12}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(DDDDJJ)I

    move-result v15

    .line 340
    move-wide/from16 v11, v18

    .end local v18    # "worldSize":J
    .local v11, "worldSize":J
    neg-long v9, v11

    .end local v11    # "worldSize":J
    .restart local v18    # "worldSize":J
    move-wide/from16 v11, v16

    invoke-direct/range {v0 .. v12}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(DDDDJJ)I

    move-result v1

    move v0, v15

    .line 344
    .end local v15    # "deltaPositive":I
    .end local v20    # "deltaNegative":I
    .restart local v0    # "deltaPositive":I
    .restart local v1    # "deltaNegative":I
    :goto_2
    if-le v0, v1, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    neg-int v2, v1

    :goto_3
    int-to-long v2, v2

    mul-long v11, v18, v2

    iput-wide v11, v13, Lorg/osmdroid/util/PointL;->x:J

    .line 345
    return-void
.end method

.method private getBestOffset(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;)V
    .locals 8
    .param p1, "pProjection"    # Lorg/osmdroid/views/Projection;
    .param p2, "pOffset"    # Lorg/osmdroid/util/PointL;

    .line 297
    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getProjectedPowerDifference()D

    move-result-wide v6

    .line 298
    .local v6, "powerDifference":D
    iget-object v1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedCenter:Lorg/osmdroid/util/PointL;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-wide v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object v0

    .line 300
    .local v0, "center":Lorg/osmdroid/util/PointL;
    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;)V

    .line 301
    return-void
.end method

.method public static getCloserValue(DDD)D
    .locals 4
    .param p0, "pPrevious"    # D
    .param p2, "pNext"    # D
    .param p4, "pWorldSize"    # D

    .line 409
    nop

    :goto_0
    sub-double v0, p2, p4

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v2, p2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 410
    sub-double/2addr p2, p4

    goto :goto_0

    .line 412
    :cond_0
    :goto_1
    add-double v0, p2, p4

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v2, p2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 413
    add-double/2addr p2, p4

    goto :goto_1

    .line 415
    :cond_1
    return-wide p2
.end method

.method private resetPrecomputations()V
    .locals 1

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPrecomputed:Z

    .line 185
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistancesPrecomputed:Z

    .line 186
    iput v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDowngradePixelSize:I

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDowngradePointList:[F

    .line 188
    return-void
.end method

.method private setCloserPoint(Lorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;D)V
    .locals 8
    .param p1, "pPrevious"    # Lorg/osmdroid/util/PointL;
    .param p2, "pNext"    # Lorg/osmdroid/util/PointL;
    .param p3, "pWorldSize"    # D

    .line 424
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->isHorizontalRepeating:Z

    if-eqz v0, :cond_0

    .line 425
    iget-wide v0, p1, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v2, v0

    iget-wide v0, p2, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v4, v0

    move-wide v6, p3

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/osmdroid/util/PointL;->x:J

    .line 427
    :cond_0
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->isVerticalRepeating:Z

    if-eqz v0, :cond_1

    .line 428
    iget-wide v0, p1, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v2, v0

    iget-wide v0, p2, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v4, v0

    move-wide v6, p3

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/osmdroid/util/PointL;->y:J

    .line 430
    :cond_1
    return-void
.end method


# virtual methods
.method protected addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V
    .locals 37
    .param p1, "startPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "endPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p3, "numberOfPoints"    # I

    .line 138
    move/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    const-wide v3, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v1, v3

    .line 139
    .local v1, "lat1":D
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    mul-double/2addr v5, v3

    .line 140
    .local v5, "lon1":D
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v7

    mul-double/2addr v7, v3

    .line 141
    .local v7, "lat2":D
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v9

    mul-double/2addr v9, v3

    .line 143
    .local v9, "lon2":D
    sub-double v3, v1, v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    sub-double v15, v5, v9

    div-double/2addr v15, v11

    .line 144
    move-wide/from16 v17, v9

    .end local v9    # "lon2":D
    .local v17, "lon2":D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v13, v9

    add-double/2addr v3, v13

    .line 143
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    mul-double/2addr v3, v11

    .line 152
    .local v3, "d":D
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    if-gt v9, v0, :cond_0

    .line 153
    int-to-double v13, v9

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v13, v15

    add-int/lit8 v10, v0, 0x1

    int-to-double v11, v10

    div-double/2addr v13, v11

    .line 154
    .local v13, "f":D
    sub-double/2addr v15, v13

    mul-double/2addr v15, v3

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    div-double/2addr v10, v15

    .line 155
    .local v10, "A":D
    mul-double v15, v13, v3

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    div-double v15, v15, v21

    .line 156
    .local v15, "B":D
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v21, v21, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v23, v23, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    move-wide/from16 v25, v3

    .end local v3    # "d":D
    .local v25, "d":D
    add-double v3, v21, v23

    .line 157
    .local v3, "x":D
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v21, v21, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v23, v23, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v23, v23, v27

    move-wide/from16 v27, v5

    .end local v5    # "lon1":D
    .local v27, "lon1":D
    add-double v5, v21, v23

    .line 158
    .local v5, "y":D
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v21, v21, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v23, v23, v15

    move-wide/from16 v29, v1

    .end local v1    # "lat1":D
    .local v29, "lat1":D
    add-double v0, v21, v23

    .line 160
    .local v0, "z":D
    move-wide/from16 v21, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .end local v7    # "lat2":D
    .local v21, "lat2":D
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    add-double v19, v19, v23

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    .line 161
    .local v7, "latN":D
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v19

    .line 162
    .local v19, "lonN":D
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    const-wide v31, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    move-wide/from16 v33, v0

    .end local v0    # "z":D
    .local v33, "z":D
    mul-double v0, v7, v31

    move-wide/from16 v35, v3

    .end local v3    # "x":D
    .local v35, "x":D
    mul-double v3, v19, v31

    invoke-direct {v2, v0, v1, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v0, v2

    .line 163
    .local v0, "p":Lorg/osmdroid/util/GeoPoint;
    move-object/from16 v1, p0

    iget-object v2, v1, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v0    # "p":Lorg/osmdroid/util/GeoPoint;
    .end local v5    # "y":D
    .end local v7    # "latN":D
    .end local v10    # "A":D
    .end local v13    # "f":D
    .end local v15    # "B":D
    .end local v19    # "lonN":D
    .end local v33    # "z":D
    .end local v35    # "x":D
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p3

    move-wide/from16 v7, v21

    move-wide/from16 v3, v25

    move-wide/from16 v5, v27

    move-wide/from16 v1, v29

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    goto/16 :goto_0

    .line 165
    .end local v9    # "i":I
    .end local v21    # "lat2":D
    .end local v25    # "d":D
    .end local v27    # "lon1":D
    .end local v29    # "lat1":D
    .restart local v1    # "lat1":D
    .local v3, "d":D
    .local v5, "lon1":D
    .local v7, "lat2":D
    :cond_0
    return-void
.end method

.method public addPoint(Lorg/osmdroid/util/GeoPoint;)V
    .locals 3
    .param p1, "p"    # Lorg/osmdroid/util/GeoPoint;

    .line 168
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mGeodesic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 171
    .local v0, "prev":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v0, p1}, Lorg/osmdroid/util/GeoPoint;->distanceToAsDouble(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v1

    double-to-int v1, v1

    .line 173
    .local v1, "greatCircleLength":I
    const v2, 0x186a0

    div-int v2, v1, v2

    .line 174
    .local v2, "numberOfPoints":I
    invoke-virtual {p0, v0, p1, v2}, Lorg/osmdroid/views/overlay/LinearRing;->addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V

    .line 176
    .end local v0    # "prev":Lorg/osmdroid/util/GeoPoint;
    .end local v1    # "greatCircleLength":I
    .end local v2    # "numberOfPoints":I
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->resetPrecomputations()V

    .line 178
    return-void
.end method

.method buildLinePortion(Lorg/osmdroid/views/Projection;Z)V
    .locals 8
    .param p1, "pProjection"    # Lorg/osmdroid/views/Projection;
    .param p2, "pStorePoints"    # Z

    .line 270
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 271
    .local v0, "size":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 272
    return-void

    .line 274
    :cond_0
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->computeProjected()V

    .line 275
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->computeDistances()V

    .line 276
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 277
    .local v1, "offset":Lorg/osmdroid/util/PointL;
    invoke-direct {p0, p1, v1}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;)V

    .line 278
    iget-object v2, p0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    invoke-virtual {v2}, Lorg/osmdroid/util/SegmentClipper;->init()V

    .line 279
    iget-boolean v5, p0, Lorg/osmdroid/views/overlay/LinearRing;->mClosed:Z

    iget-object v7, p0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/osmdroid/views/overlay/LinearRing;->clipAndStore(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;ZZLorg/osmdroid/util/SegmentClipper;)V

    .line 280
    iget-object v2, p0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    invoke-virtual {v2}, Lorg/osmdroid/util/SegmentClipper;->end()V

    .line 281
    return-void
.end method

.method buildPathPortion(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;
    .locals 8
    .param p1, "pProjection"    # Lorg/osmdroid/views/Projection;
    .param p2, "pOffset"    # Lorg/osmdroid/util/PointL;
    .param p3, "pStorePoints"    # Z

    .line 241
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 242
    .local v0, "size":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 243
    return-object p2

    .line 245
    :cond_0
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->computeProjected()V

    .line 246
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->computeDistances()V

    .line 248
    if-eqz p2, :cond_1

    .line 249
    move-object v1, p2

    .local v1, "offset":Lorg/osmdroid/util/PointL;
    goto :goto_0

    .line 251
    .end local v1    # "offset":Lorg/osmdroid/util/PointL;
    :cond_1
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 252
    .restart local v1    # "offset":Lorg/osmdroid/util/PointL;
    invoke-direct {p0, p1, v1}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;)V

    .line 254
    :goto_0
    iget-object v2, p0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    invoke-virtual {v2}, Lorg/osmdroid/util/SegmentClipper;->init()V

    .line 255
    iget-boolean v5, p0, Lorg/osmdroid/views/overlay/LinearRing;->mClosed:Z

    iget-object v7, p0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/osmdroid/views/overlay/LinearRing;->clipAndStore(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;ZZLorg/osmdroid/util/SegmentClipper;)V

    .line 256
    iget-object v2, p0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    invoke-virtual {v2}, Lorg/osmdroid/util/SegmentClipper;->end()V

    .line 257
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/LinearRing;->mClosed:Z

    if-eqz v2, :cond_2

    .line 258
    iget-object v2, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 260
    :cond_2
    return-object v1
.end method

.method public clear()V
    .locals 1

    .line 653
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 654
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 658
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    invoke-virtual {v0}, Lorg/osmdroid/util/ListPointL;->clear()V

    .line 659
    return-void
.end method

.method clearPath()V
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    .line 128
    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistances:[D

    .line 129
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->resetPrecomputations()V

    .line 130
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0}, Lorg/osmdroid/util/PointAccepter;->init()V

    .line 131
    return-void
.end method

.method computeDowngradePointList(I)[F
    .locals 18
    .param p1, "pSize"    # I

    .line 668
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 669
    return-object v2

    .line 671
    :cond_0
    iget v3, v0, Lorg/osmdroid/views/overlay/LinearRing;->mDowngradePixelSize:I

    if-ne v3, v1, :cond_1

    .line 672
    iget-object v2, v0, Lorg/osmdroid/views/overlay/LinearRing;->mDowngradePointList:[F

    return-object v2

    .line 674
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/overlay/LinearRing;->computeProjected()V

    .line 675
    iget-wide v3, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedWidth:J

    iget-wide v5, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedHeight:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    goto :goto_0

    :cond_2
    move-wide v3, v5

    .line 676
    .local v3, "projectedSize":J
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_3

    .line 677
    return-object v2

    .line 679
    :cond_3
    new-instance v2, Lorg/osmdroid/util/ListPointAccepter;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Lorg/osmdroid/util/ListPointAccepter;-><init>(Z)V

    .line 680
    .local v2, "listPointAccepter":Lorg/osmdroid/util/ListPointAccepter;
    new-instance v5, Lorg/osmdroid/util/SideOptimizationPointAccepter;

    invoke-direct {v5, v2}, Lorg/osmdroid/util/SideOptimizationPointAccepter;-><init>(Lorg/osmdroid/util/PointAccepter;)V

    .line 681
    .local v5, "pointAccepter":Lorg/osmdroid/util/PointAccepter;
    long-to-double v6, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v8

    int-to-double v8, v1

    div-double/2addr v6, v8

    .line 682
    .local v6, "factor":D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v9, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    array-length v10, v9

    if-ge v8, v10, :cond_4

    .line 683
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "i":I
    .local v10, "i":I
    aget-wide v11, v9, v8

    .line 684
    .local v11, "x":J
    add-int/lit8 v8, v10, 0x1

    .end local v10    # "i":I
    .restart local v8    # "i":I
    aget-wide v13, v9, v10

    .line 685
    .local v13, "y":J
    iget-object v9, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedCenter:Lorg/osmdroid/util/PointL;

    iget-wide v9, v9, Lorg/osmdroid/util/PointL;->x:J

    sub-long v9, v11, v9

    long-to-double v9, v9

    div-double/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    .line 686
    .local v9, "squareX":J
    iget-object v15, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedCenter:Lorg/osmdroid/util/PointL;

    move-wide/from16 v16, v3

    .end local v3    # "projectedSize":J
    .local v16, "projectedSize":J
    iget-wide v3, v15, Lorg/osmdroid/util/PointL;->y:J

    sub-long v3, v13, v3

    long-to-double v3, v3

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 687
    .local v3, "squareY":J
    invoke-interface {v5, v9, v10, v3, v4}, Lorg/osmdroid/util/PointAccepter;->add(JJ)V

    .line 688
    .end local v3    # "squareY":J
    .end local v9    # "squareX":J
    .end local v11    # "x":J
    .end local v13    # "y":J
    move-wide/from16 v3, v16

    goto :goto_1

    .line 682
    .end local v16    # "projectedSize":J
    .local v3, "projectedSize":J
    :cond_4
    move-wide/from16 v16, v3

    .line 689
    .end local v3    # "projectedSize":J
    .end local v8    # "i":I
    .restart local v16    # "projectedSize":J
    iput v1, v0, Lorg/osmdroid/views/overlay/LinearRing;->mDowngradePixelSize:I

    .line 690
    invoke-virtual {v2}, Lorg/osmdroid/util/ListPointAccepter;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, v0, Lorg/osmdroid/views/overlay/LinearRing;->mDowngradePointList:[F

    .line 691
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v4, v0, Lorg/osmdroid/views/overlay/LinearRing;->mDowngradePointList:[F

    array-length v8, v4

    if-ge v3, v8, :cond_5

    .line 692
    invoke-virtual {v2}, Lorg/osmdroid/util/ListPointAccepter;->getList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v8, v8

    aput v8, v4, v3

    .line 691
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 694
    .end local v3    # "i":I
    :cond_5
    return-object v4
.end method

.method public getBestOffset(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;)V
    .locals 20
    .param p1, "pProjection"    # Lorg/osmdroid/views/Projection;
    .param p2, "pOffset"    # Lorg/osmdroid/util/PointL;
    .param p3, "pPixel"    # Lorg/osmdroid/util/PointL;

    .line 307
    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getIntrinsicScreenRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 308
    .local v1, "screenRect":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 309
    .local v2, "screenCenterX":D
    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    int-to-double v6, v6

    div-double v4, v6, v4

    .line 310
    .local v4, "screenCenterY":D
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v18

    .line 311
    .local v18, "worldSize":D
    iget-wide v6, v0, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v7, v6

    iget-wide v9, v0, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v9, v9

    move-object/from16 v6, p0

    move-wide v11, v2

    move-wide v13, v4

    move-wide/from16 v15, v18

    move-object/from16 v17, p2

    invoke-direct/range {v6 .. v17}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(DDDDDLorg/osmdroid/util/PointL;)V

    .line 312
    return-void
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 643
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPrecomputed:Z

    if-nez v0, :cond_0

    .line 644
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->computeProjected()V

    .line 646
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public getCenter(Lorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 4
    .param p1, "pReuse"    # Lorg/osmdroid/util/GeoPoint;

    .line 543
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 544
    .local v0, "out":Lorg/osmdroid/util/GeoPoint;
    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/LinearRing;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v1

    .line 545
    .local v1, "boundingBox":Lorg/osmdroid/util/BoundingBox;
    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getCenterLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 546
    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getCenterLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 547
    return-object v0
.end method

.method getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/Projection;Z)Lorg/osmdroid/util/GeoPoint;
    .locals 58
    .param p1, "pPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "tolerance"    # D
    .param p4, "pProjection"    # Lorg/osmdroid/views/Projection;
    .param p5, "pClosePath"    # Z

    .line 451
    move-object/from16 v6, p0

    move-object/from16 v7, p4

    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/overlay/LinearRing;->computeProjected()V

    .line 452
    const/4 v8, 0x0

    move-object/from16 v9, p1

    invoke-virtual {v7, v9, v8}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v10

    .line 453
    .local v10, "pixel":Landroid/graphics/Point;
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    move-object v11, v0

    .line 454
    .local v11, "offset":Lorg/osmdroid/util/PointL;
    invoke-direct {v6, v7, v11}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;)V

    .line 455
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v11

    move/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/overlay/LinearRing;->clipAndStore(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;ZZLorg/osmdroid/util/SegmentClipper;)V

    .line 456
    invoke-virtual/range {p4 .. p4}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v0

    .line 457
    .local v0, "mapSize":D
    invoke-virtual/range {p4 .. p4}, Lorg/osmdroid/views/Projection;->getIntrinsicScreenRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 458
    .local v2, "screenRect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 459
    .local v3, "screenWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 460
    .local v4, "screenHeight":I
    iget v5, v10, Landroid/graphics/Point;->x:I

    int-to-double v12, v5

    .line 461
    .local v12, "startX":D
    :goto_0
    sub-double v14, v12, v0

    const-wide/16 v16, 0x0

    cmpl-double v5, v14, v16

    if-ltz v5, :cond_0

    .line 462
    sub-double/2addr v12, v0

    goto :goto_0

    .line 464
    :cond_0
    iget v5, v10, Landroid/graphics/Point;->y:I

    int-to-double v14, v5

    .line 465
    .local v14, "startY":D
    :goto_1
    sub-double v18, v14, v0

    cmpl-double v5, v18, v16

    if-ltz v5, :cond_1

    .line 466
    sub-double/2addr v14, v0

    goto :goto_1

    .line 468
    :cond_1
    mul-double v16, p2, p2

    .line 469
    .local v16, "squaredTolerance":D
    new-instance v5, Lorg/osmdroid/util/PointL;

    invoke-direct {v5}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 470
    .local v5, "point0":Lorg/osmdroid/util/PointL;
    new-instance v18, Lorg/osmdroid/util/PointL;

    invoke-direct/range {v18 .. v18}, Lorg/osmdroid/util/PointL;-><init>()V

    move-object/from16 v19, v18

    .line 471
    .local v19, "point1":Lorg/osmdroid/util/PointL;
    const/16 v18, 0x1

    .line 472
    .local v18, "first":Z
    const/16 v20, 0x0

    .line 473
    .local v20, "index":I
    iget-object v8, v6, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    invoke-virtual {v8}, Lorg/osmdroid/util/ListPointL;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v2

    .end local v2    # "screenRect":Landroid/graphics/Rect;
    .local v22, "screenRect":Landroid/graphics/Rect;
    move-object/from16 v2, v21

    check-cast v2, Lorg/osmdroid/util/PointL;

    .line 474
    .local v2, "point":Lorg/osmdroid/util/PointL;
    move-object/from16 v7, v19

    .end local v19    # "point1":Lorg/osmdroid/util/PointL;
    .local v7, "point1":Lorg/osmdroid/util/PointL;
    invoke-virtual {v7, v2}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    .line 475
    if-eqz v18, :cond_2

    .line 476
    const/16 v18, 0x0

    move-object/from16 v39, v2

    move/from16 v21, v3

    move/from16 v46, v4

    move-object/from16 v47, v5

    move-object/from16 v19, v8

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    move-wide/from16 v42, v12

    move-wide/from16 v44, v14

    move-object v12, v7

    goto/16 :goto_5

    .line 478
    :cond_2
    move-wide/from16 v23, v12

    .local v23, "x":D
    :goto_3
    move-object/from16 v19, v8

    int-to-double v8, v3

    cmpg-double v8, v23, v8

    if-gez v8, :cond_5

    .line 479
    move-wide v8, v14

    .local v8, "y":D
    :goto_4
    move-object/from16 v39, v2

    move/from16 v21, v3

    .end local v2    # "point":Lorg/osmdroid/util/PointL;
    .end local v3    # "screenWidth":I
    .local v21, "screenWidth":I
    .local v39, "point":Lorg/osmdroid/util/PointL;
    int-to-double v2, v4

    cmpg-double v2, v8, v2

    if-gez v2, :cond_4

    .line 480
    iget-wide v2, v5, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v2, v2

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    .end local v10    # "pixel":Landroid/graphics/Point;
    .end local v11    # "offset":Lorg/osmdroid/util/PointL;
    .local v40, "pixel":Landroid/graphics/Point;
    .local v41, "offset":Lorg/osmdroid/util/PointL;
    iget-wide v10, v5, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v10, v10

    move-wide/from16 v42, v12

    .end local v12    # "startX":D
    .local v42, "startX":D
    iget-wide v12, v7, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v12, v12

    move-wide/from16 v44, v14

    .end local v14    # "startY":D
    .local v44, "startY":D
    iget-wide v14, v7, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v14, v14

    move-wide/from16 v25, v23

    move-wide/from16 v27, v8

    move-wide/from16 v29, v2

    move-wide/from16 v31, v10

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    invoke-static/range {v25 .. v36}, Lorg/osmdroid/util/Distance;->getProjectionFactorToSegment(DDDDDD)D

    move-result-wide v2

    .line 481
    .local v2, "projectionFactor":D
    iget-wide v10, v5, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v10, v10

    iget-wide v12, v5, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v12, v12

    iget-wide v14, v7, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v14, v14

    move/from16 v46, v4

    move-object/from16 v47, v5

    .end local v4    # "screenHeight":I
    .end local v5    # "point0":Lorg/osmdroid/util/PointL;
    .local v46, "screenHeight":I
    .local v47, "point0":Lorg/osmdroid/util/PointL;
    iget-wide v4, v7, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v4, v4

    move-wide/from16 v29, v10

    move-wide/from16 v31, v12

    move-wide/from16 v33, v14

    move-wide/from16 v35, v4

    move-wide/from16 v37, v2

    invoke-static/range {v25 .. v38}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToProjection(DDDDDDD)D

    move-result-wide v4

    .line 482
    .local v4, "squaredDistance":D
    cmpl-double v10, v16, v4

    if-lez v10, :cond_3

    .line 483
    iget-object v10, v6, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    add-int/lit8 v11, v20, -0x1

    mul-int/lit8 v11, v11, 0x2

    aget-wide v11, v10, v11

    .line 484
    .local v11, "pointAX":J
    add-int/lit8 v13, v20, -0x1

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    aget-wide v13, v10, v13

    .line 485
    .local v13, "pointAY":J
    mul-int/lit8 v15, v20, 0x2

    aget-wide v25, v10, v15

    .line 486
    .local v25, "pointBX":J
    mul-int/lit8 v15, v20, 0x2

    add-int/lit8 v15, v15, 0x1

    aget-wide v27, v10, v15

    .line 487
    .local v27, "pointBY":J
    move-wide/from16 v29, v4

    .end local v4    # "squaredDistance":D
    .local v29, "squaredDistance":D
    long-to-double v4, v11

    move-object v10, v7

    .end local v7    # "point1":Lorg/osmdroid/util/PointL;
    .local v10, "point1":Lorg/osmdroid/util/PointL;
    sub-long v6, v25, v11

    long-to-double v6, v6

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-long v4, v4

    .line 488
    .local v4, "projectionX":J
    long-to-double v6, v13

    move-wide/from16 v31, v11

    move-object v12, v10

    .end local v10    # "point1":Lorg/osmdroid/util/PointL;
    .end local v11    # "pointAX":J
    .local v12, "point1":Lorg/osmdroid/util/PointL;
    .local v31, "pointAX":J
    sub-long v10, v27, v13

    long-to-double v10, v10

    mul-double/2addr v10, v2

    add-double/2addr v6, v10

    double-to-long v6, v6

    .line 489
    .local v6, "projectionY":J
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v48

    const-wide/high16 v53, 0x43b0000000000000L    # 1.15292150460684698E18

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    move-wide/from16 v49, v4

    move-wide/from16 v51, v6

    invoke-virtual/range {v48 .. v57}, Lorg/osmdroid/util/TileSystem;->getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;

    move-result-object v10

    return-object v10

    .line 482
    .end local v6    # "projectionY":J
    .end local v12    # "point1":Lorg/osmdroid/util/PointL;
    .end local v13    # "pointAY":J
    .end local v25    # "pointBX":J
    .end local v27    # "pointBY":J
    .end local v29    # "squaredDistance":D
    .end local v31    # "pointAX":J
    .local v4, "squaredDistance":D
    .restart local v7    # "point1":Lorg/osmdroid/util/PointL;
    :cond_3
    move-wide/from16 v29, v4

    move-object v12, v7

    .line 479
    .end local v2    # "projectionFactor":D
    .end local v4    # "squaredDistance":D
    .end local v7    # "point1":Lorg/osmdroid/util/PointL;
    .restart local v12    # "point1":Lorg/osmdroid/util/PointL;
    add-double/2addr v8, v0

    move-object/from16 v6, p0

    move/from16 v3, v21

    move-object/from16 v2, v39

    move-object/from16 v10, v40

    move-object/from16 v11, v41

    move-wide/from16 v12, v42

    move-wide/from16 v14, v44

    move/from16 v4, v46

    move-object/from16 v5, v47

    goto/16 :goto_4

    .end local v40    # "pixel":Landroid/graphics/Point;
    .end local v41    # "offset":Lorg/osmdroid/util/PointL;
    .end local v42    # "startX":D
    .end local v44    # "startY":D
    .end local v46    # "screenHeight":I
    .end local v47    # "point0":Lorg/osmdroid/util/PointL;
    .local v4, "screenHeight":I
    .restart local v5    # "point0":Lorg/osmdroid/util/PointL;
    .restart local v7    # "point1":Lorg/osmdroid/util/PointL;
    .local v10, "pixel":Landroid/graphics/Point;
    .local v11, "offset":Lorg/osmdroid/util/PointL;
    .local v12, "startX":D
    .restart local v14    # "startY":D
    :cond_4
    move/from16 v46, v4

    move-object/from16 v47, v5

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    move-wide/from16 v42, v12

    move-wide/from16 v44, v14

    move-object v12, v7

    .line 478
    .end local v4    # "screenHeight":I
    .end local v5    # "point0":Lorg/osmdroid/util/PointL;
    .end local v7    # "point1":Lorg/osmdroid/util/PointL;
    .end local v8    # "y":D
    .end local v10    # "pixel":Landroid/graphics/Point;
    .end local v11    # "offset":Lorg/osmdroid/util/PointL;
    .end local v14    # "startY":D
    .local v12, "point1":Lorg/osmdroid/util/PointL;
    .restart local v40    # "pixel":Landroid/graphics/Point;
    .restart local v41    # "offset":Lorg/osmdroid/util/PointL;
    .restart local v42    # "startX":D
    .restart local v44    # "startY":D
    .restart local v46    # "screenHeight":I
    .restart local v47    # "point0":Lorg/osmdroid/util/PointL;
    add-double v23, v23, v0

    move-object/from16 v6, p0

    move-object/from16 v9, p1

    move-object/from16 v8, v19

    move/from16 v3, v21

    move-object/from16 v2, v39

    move-wide/from16 v12, v42

    goto/16 :goto_3

    .end local v21    # "screenWidth":I
    .end local v39    # "point":Lorg/osmdroid/util/PointL;
    .end local v40    # "pixel":Landroid/graphics/Point;
    .end local v41    # "offset":Lorg/osmdroid/util/PointL;
    .end local v42    # "startX":D
    .end local v44    # "startY":D
    .end local v46    # "screenHeight":I
    .end local v47    # "point0":Lorg/osmdroid/util/PointL;
    .local v2, "point":Lorg/osmdroid/util/PointL;
    .restart local v3    # "screenWidth":I
    .restart local v4    # "screenHeight":I
    .restart local v5    # "point0":Lorg/osmdroid/util/PointL;
    .restart local v7    # "point1":Lorg/osmdroid/util/PointL;
    .restart local v10    # "pixel":Landroid/graphics/Point;
    .restart local v11    # "offset":Lorg/osmdroid/util/PointL;
    .local v12, "startX":D
    .restart local v14    # "startY":D
    :cond_5
    move-object/from16 v39, v2

    move/from16 v21, v3

    move/from16 v46, v4

    move-object/from16 v47, v5

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    move-wide/from16 v42, v12

    move-wide/from16 v44, v14

    move-object v12, v7

    .line 496
    .end local v2    # "point":Lorg/osmdroid/util/PointL;
    .end local v3    # "screenWidth":I
    .end local v4    # "screenHeight":I
    .end local v5    # "point0":Lorg/osmdroid/util/PointL;
    .end local v7    # "point1":Lorg/osmdroid/util/PointL;
    .end local v10    # "pixel":Landroid/graphics/Point;
    .end local v11    # "offset":Lorg/osmdroid/util/PointL;
    .end local v14    # "startY":D
    .end local v23    # "x":D
    .local v12, "point1":Lorg/osmdroid/util/PointL;
    .restart local v21    # "screenWidth":I
    .restart local v39    # "point":Lorg/osmdroid/util/PointL;
    .restart local v40    # "pixel":Landroid/graphics/Point;
    .restart local v41    # "offset":Lorg/osmdroid/util/PointL;
    .restart local v42    # "startX":D
    .restart local v44    # "startY":D
    .restart local v46    # "screenHeight":I
    .restart local v47    # "point0":Lorg/osmdroid/util/PointL;
    :goto_5
    move-object v3, v12

    move-object/from16 v2, v47

    .end local v12    # "point1":Lorg/osmdroid/util/PointL;
    .end local v47    # "point0":Lorg/osmdroid/util/PointL;
    .local v2, "point0":Lorg/osmdroid/util/PointL;
    .local v3, "point1":Lorg/osmdroid/util/PointL;
    invoke-virtual {v2, v3}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    .line 497
    nop

    .end local v39    # "point":Lorg/osmdroid/util/PointL;
    add-int/lit8 v20, v20, 0x1

    .line 498
    move-object/from16 v6, p0

    move-object/from16 v9, p1

    move-object/from16 v7, p4

    move-object v5, v2

    move-object/from16 v8, v19

    move-object/from16 v2, v22

    move-object/from16 v10, v40

    move-object/from16 v11, v41

    move-wide/from16 v12, v42

    move-wide/from16 v14, v44

    move/from16 v4, v46

    move-object/from16 v19, v3

    move/from16 v3, v21

    goto/16 :goto_2

    .line 499
    .end local v21    # "screenWidth":I
    .end local v22    # "screenRect":Landroid/graphics/Rect;
    .end local v40    # "pixel":Landroid/graphics/Point;
    .end local v41    # "offset":Lorg/osmdroid/util/PointL;
    .end local v42    # "startX":D
    .end local v44    # "startY":D
    .end local v46    # "screenHeight":I
    .local v2, "screenRect":Landroid/graphics/Rect;
    .local v3, "screenWidth":I
    .restart local v4    # "screenHeight":I
    .restart local v5    # "point0":Lorg/osmdroid/util/PointL;
    .restart local v10    # "pixel":Landroid/graphics/Point;
    .restart local v11    # "offset":Lorg/osmdroid/util/PointL;
    .local v12, "startX":D
    .restart local v14    # "startY":D
    .restart local v19    # "point1":Lorg/osmdroid/util/PointL;
    :cond_6
    move/from16 v46, v4

    .end local v4    # "screenHeight":I
    .restart local v46    # "screenHeight":I
    const/4 v4, 0x0

    return-object v4
.end method

.method public getDistance()D
    .locals 7

    .line 210
    const-wide/16 v0, 0x0

    .line 211
    .local v0, "result":D
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/LinearRing;->getDistances()[D

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-wide v5, v2, v4

    .line 212
    .local v5, "distance":D
    add-double/2addr v0, v5

    .line 211
    .end local v5    # "distance":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 214
    :cond_0
    return-wide v0
.end method

.method getDistances()[D
    .locals 1

    .line 202
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->computeDistances()V

    .line 203
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistances:[D

    return-object v0
.end method

.method public getPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPointsForMilestones()Lorg/osmdroid/util/ListPointL;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    return-object v0
.end method

.method isCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/Projection;Z)Z
    .locals 1
    .param p1, "pPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "tolerance"    # D
    .param p4, "pProjection"    # Lorg/osmdroid/views/Projection;
    .param p5, "pClosePath"    # Z

    .line 440
    invoke-virtual/range {p0 .. p5}, Lorg/osmdroid/views/overlay/LinearRing;->getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/Projection;Z)Lorg/osmdroid/util/GeoPoint;

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

    .line 222
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mGeodesic:Z

    return v0
.end method

.method public setClipArea(JJJJ)V
    .locals 13
    .param p1, "pXMin"    # J
    .param p3, "pYMin"    # J
    .param p5, "pXMax"    # J
    .param p7, "pYMax"    # J

    .line 507
    move-object v0, p0

    iget-object v1, v0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    iget-object v10, v0, Lorg/osmdroid/views/overlay/LinearRing;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    iget-object v11, v0, Lorg/osmdroid/views/overlay/LinearRing;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/LinearRing;->mPath:Landroid/graphics/Path;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v12, v2

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v12}, Lorg/osmdroid/util/SegmentClipper;->set(JJJJLorg/osmdroid/util/PointAccepter;Lorg/osmdroid/util/IntegerAccepter;Z)V

    .line 508
    return-void
.end method

.method public setClipArea(Lorg/osmdroid/views/Projection;)V
    .locals 20
    .param p1, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 515
    move-object/from16 v9, p0

    const-wide v10, 0x3fb999999999999aL    # 0.1

    .line 516
    .local v10, "border":D
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getIntrinsicScreenRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 517
    .local v12, "rect":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v13, v0, 0x2

    .line 518
    .local v13, "halfWidth":I
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v14, v0, 0x2

    .line 522
    .local v14, "halfHeight":I
    mul-int v0, v13, v13

    mul-int v1, v14, v14

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    .line 528
    .local v15, "radius":D
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v17, v15, v0

    .line 529
    .local v17, "doubleRadius":D
    const-wide v0, 0x3ff199999999999aL    # 1.1

    mul-double v0, v0, v17

    double-to-int v7, v0

    .line 530
    .local v7, "scaledRadius":I
    sub-int v0, v13, v7

    int-to-long v1, v0

    sub-int v0, v14, v7

    int-to-long v3, v0

    add-int v0, v13, v7

    int-to-long v5, v0

    add-int v0, v14, v7

    move/from16 v19, v7

    .end local v7    # "scaledRadius":I
    .local v19, "scaledRadius":I
    int-to-long v7, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/views/overlay/LinearRing;->setClipArea(JJJJ)V

    .line 535
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->isHorizontalWrapEnabled()Z

    move-result v0

    iput-boolean v0, v9, Lorg/osmdroid/views/overlay/LinearRing;->isHorizontalRepeating:Z

    .line 536
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->isVerticalWrapEnabled()Z

    move-result v0

    iput-boolean v0, v9, Lorg/osmdroid/views/overlay/LinearRing;->isVerticalRepeating:Z

    .line 537
    return-void
.end method

.method public setGeodesic(Z)V
    .locals 0
    .param p1, "geodesic"    # Z

    .line 218
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mGeodesic:Z

    .line 219
    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/LinearRing;->clearPath()V

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 193
    .local v1, "p":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/LinearRing;->addPoint(Lorg/osmdroid/util/GeoPoint;)V

    .line 194
    .end local v1    # "p":Lorg/osmdroid/util/GeoPoint;
    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method
