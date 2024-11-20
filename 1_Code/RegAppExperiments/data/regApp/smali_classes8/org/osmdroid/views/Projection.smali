.class public Lorg/osmdroid/views/Projection;
.super Ljava/lang/Object;
.source "Projection.java"

# interfaces
.implements Lorg/osmdroid/api/IProjection;


# static fields
.field public static final mProjectedMapSize:D = 1.15292150460684698E18


# instance fields
.field private horizontalWrapEnabled:Z

.field private final mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

.field private final mCurrentCenter:Lorg/osmdroid/util/GeoPoint;

.field private final mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

.field private final mMapCenterOffsetX:I

.field private final mMapCenterOffsetY:I

.field private final mMercatorMapSize:D

.field private mOffsetX:J

.field private mOffsetY:J

.field private final mOrientation:F

.field private final mRotateAndScaleMatrix:Landroid/graphics/Matrix;

.field private final mRotateScalePoints:[F

.field private final mScreenRectProjection:Landroid/graphics/Rect;

.field private mScrollX:J

.field private mScrollY:J

.field private final mTileSize:D

.field private final mTileSystem:Lorg/osmdroid/util/TileSystem;

.field private final mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

.field private final mZoomLevelProjection:D

.field private verticalWrapEnabled:Z


# direct methods
.method public constructor <init>(DIILorg/osmdroid/util/GeoPoint;FZZII)V
    .locals 16
    .param p1, "pZoomLevel"    # D
    .param p3, "pWidth"    # I
    .param p4, "pHeight"    # I
    .param p5, "pCenter"    # Lorg/osmdroid/util/GeoPoint;
    .param p6, "pOrientation"    # F
    .param p7, "pHorizontalWrapEnabled"    # Z
    .param p8, "pVerticalWrapEnabled"    # Z
    .param p9, "pMapCenterOffsetX"    # I
    .param p10, "pMapCenterOffsetY"    # I

    .line 123
    new-instance v3, Landroid/graphics/Rect;

    const/4 v0, 0x0

    move/from16 v15, p3

    move/from16 v14, p4

    invoke-direct {v3, v0, v0, v15, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    .line 129
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v12

    .line 123
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v4, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-direct/range {v0 .. v14}, Lorg/osmdroid/views/Projection;-><init>(DLandroid/graphics/Rect;Lorg/osmdroid/util/GeoPoint;JJFZZLorg/osmdroid/util/TileSystem;II)V

    .line 131
    return-void
.end method

.method public constructor <init>(DLandroid/graphics/Rect;Lorg/osmdroid/util/GeoPoint;JJFZZLorg/osmdroid/util/TileSystem;II)V
    .locals 20
    .param p1, "pZoomLevel"    # D
    .param p3, "pScreenRect"    # Landroid/graphics/Rect;
    .param p4, "pCenter"    # Lorg/osmdroid/util/GeoPoint;
    .param p5, "pScrollX"    # J
    .param p7, "pScrollY"    # J
    .param p9, "pOrientation"    # F
    .param p10, "pHorizontalWrapEnabled"    # Z
    .param p11, "pVerticalWrapEnabled"    # Z
    .param p12, "pTileSystem"    # Lorg/osmdroid/util/TileSystem;
    .param p13, "pMapCenterOffsetX"    # I
    .param p14, "pMapCenterOffsetY"    # I

    .line 93
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    .line 47
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    .line 48
    const/4 v4, 0x2

    new-array v4, v4, [F

    iput-object v4, v0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    .line 50
    new-instance v4, Lorg/osmdroid/util/BoundingBox;

    invoke-direct {v4}, Lorg/osmdroid/util/BoundingBox;-><init>()V

    iput-object v4, v0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    .line 52
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    .line 61
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v4, v0, Lorg/osmdroid/views/Projection;->mCurrentCenter:Lorg/osmdroid/util/GeoPoint;

    .line 94
    move/from16 v4, p13

    iput v4, v0, Lorg/osmdroid/views/Projection;->mMapCenterOffsetX:I

    .line 95
    move/from16 v7, p14

    iput v7, v0, Lorg/osmdroid/views/Projection;->mMapCenterOffsetY:I

    .line 96
    move-wide/from16 v8, p1

    iput-wide v8, v0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    .line 97
    move/from16 v10, p10

    iput-boolean v10, v0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    .line 98
    move/from16 v11, p11

    iput-boolean v11, v0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    .line 99
    move-object/from16 v15, p12

    iput-object v15, v0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    .line 100
    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v13

    iput-wide v13, v0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    .line 101
    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/TileSystem;->getTileSize(D)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/osmdroid/views/Projection;->mTileSize:D

    .line 102
    move-object/from16 v5, p3

    iput-object v5, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    .line 103
    if-eqz p4, :cond_0

    move-object/from16 v6, p4

    goto :goto_0

    :cond_0
    new-instance v6, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v4, 0x0

    invoke-direct {v6, v4, v5, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    :goto_0
    move-object v4, v6

    .line 104
    .local v4, "center":Lorg/osmdroid/util/GeoPoint;
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lorg/osmdroid/views/Projection;->mScrollX:J

    .line 105
    move-wide/from16 v5, p7

    iput-wide v5, v0, Lorg/osmdroid/views/Projection;->mScrollY:J

    .line 106
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getScreenCenterX()I

    move-result v12

    int-to-long v5, v12

    iget-wide v7, v0, Lorg/osmdroid/views/Projection;->mScrollX:J

    sub-long/2addr v5, v7

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    iget-boolean v9, v0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    move-object/from16 v12, p12

    move-wide/from16 v18, v13

    move-wide v13, v7

    move-wide/from16 v15, v18

    move/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Lorg/osmdroid/util/TileSystem;->getMercatorXFromLongitude(DDZ)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    .line 107
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getScreenCenterY()I

    move-result v5

    int-to-long v5, v5

    iget-wide v7, v0, Lorg/osmdroid/views/Projection;->mScrollY:J

    sub-long/2addr v5, v7

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v13

    iget-boolean v7, v0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    move/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Lorg/osmdroid/util/TileSystem;->getMercatorYFromLatitude(DDZ)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    .line 108
    iput v1, v0, Lorg/osmdroid/views/Projection;->mOrientation:F

    .line 109
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getScreenCenterX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getScreenCenterY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v1, v5, v6}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 110
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 111
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->refresh()V

    .line 112
    return-void
.end method

.method constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 16
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 72
    nop

    .line 73
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v1

    const/4 v0, 0x0

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Lorg/osmdroid/views/MapView;->getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 74
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getExpectedCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    .line 75
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getMapScrollX()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getMapScrollY()J

    move-result-wide v7

    .line 76
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v9

    .line 77
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->isHorizontalMapRepetitionEnabled()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->isVerticalMapRepetitionEnabled()Z

    move-result v11

    .line 78
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v12

    .line 79
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getMapCenterOffsetX()I

    move-result v13

    .line 80
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getMapCenterOffsetY()I

    move-result v14

    .line 72
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v14}, Lorg/osmdroid/views/Projection;-><init>(DLandroid/graphics/Rect;Lorg/osmdroid/util/GeoPoint;JJFZZLorg/osmdroid/util/TileSystem;II)V

    .line 81
    return-void
.end method

.method private applyMatrixToPoint(IILandroid/graphics/Point;Landroid/graphics/Matrix;Z)Landroid/graphics/Point;
    .locals 5
    .param p1, "pX"    # I
    .param p2, "pY"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;
    .param p4, "pMatrix"    # Landroid/graphics/Matrix;
    .param p5, "pCondition"    # Z

    .line 391
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 392
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    if-eqz p5, :cond_1

    .line 393
    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 394
    int-to-float v2, p2

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 395
    invoke-virtual {p4, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 396
    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v1, v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 397
    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v1, v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 399
    :cond_1
    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 400
    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 402
    :goto_1
    return-object v0
.end method

.method private getCloserPixel(JIID)J
    .locals 8
    .param p1, "pPixel"    # J
    .param p3, "pScreenLimitFirst"    # I
    .param p4, "pScreenLimitLast"    # I
    .param p5, "pMapSize"    # D

    .line 482
    add-int v0, p3, p4

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    .line 483
    .local v0, "center":J
    const-wide/16 v2, 0x0

    .line 484
    .local v2, "previous":J
    int-to-long v4, p3

    cmp-long v4, p1, v4

    if-gez v4, :cond_3

    .line 485
    :goto_0
    int-to-long v4, p3

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    .line 486
    move-wide v2, p1

    .line 487
    long-to-double v4, p1

    add-double/2addr v4, p5

    double-to-long p1, v4

    goto :goto_0

    .line 489
    :cond_0
    int-to-long v4, p4

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    .line 490
    return-wide p1

    .line 492
    :cond_1
    sub-long v4, v0, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long v6, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 493
    return-wide p1

    .line 495
    :cond_2
    return-wide v2

    .line 498
    :cond_3
    :goto_1
    int-to-long v4, p3

    cmp-long v4, p1, v4

    if-ltz v4, :cond_4

    .line 499
    move-wide v2, p1

    .line 500
    long-to-double v4, p1

    sub-double/2addr v4, p5

    double-to-long p1, v4

    goto :goto_1

    .line 502
    :cond_4
    int-to-long v4, p4

    cmp-long v4, v2, v4

    if-gez v4, :cond_5

    .line 503
    return-wide v2

    .line 505
    :cond_5
    sub-long v4, v0, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long v6, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    .line 506
    return-wide p1

    .line 508
    :cond_6
    return-wide v2
.end method

.method private getLongPixelFromMercator(JZJII)J
    .locals 10
    .param p1, "pMercator"    # J
    .param p3, "pCloser"    # Z
    .param p4, "pOffset"    # J
    .param p6, "pScreenLimitFirst"    # I
    .param p7, "pScreenLimitLast"    # I

    .line 529
    add-long v7, p1, p4

    .line 530
    .local v7, "result":J
    if-eqz p3, :cond_0

    .line 531
    move-object v9, p0

    iget-wide v5, v9, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    move-object v0, p0

    move-wide v1, v7

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/Projection;->getCloserPixel(JIID)J

    move-result-wide v7

    goto :goto_0

    .line 530
    :cond_0
    move-object v9, p0

    .line 533
    :goto_0
    return-wide v7
.end method

.method private getLongPixelXFromMercator(JZ)J
    .locals 8
    .param p1, "pMercatorX"    # J
    .param p3, "pCloser"    # Z

    .line 515
    iget-wide v4, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->right:I

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/views/Projection;->getLongPixelFromMercator(JZJII)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLongPixelYFromMercator(JZ)J
    .locals 8
    .param p1, "pMercatorY"    # J
    .param p3, "pCloser"    # Z

    .line 522
    iget-wide v4, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/views/Projection;->getLongPixelFromMercator(JZJII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getScrollableOffset(JJDII)J
    .locals 8
    .param p0, "pPixelMin"    # J
    .param p2, "pPixelMax"    # J
    .param p4, "pWorldSize"    # D
    .param p6, "pScreenSize"    # I
    .param p7, "pExtraSize"    # I

    .line 793
    nop

    :goto_0
    sub-long v0, p2, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 794
    long-to-double v0, p2

    add-double/2addr v0, p4

    double-to-long p2, v0

    goto :goto_0

    .line 798
    :cond_0
    sub-long v0, p2, p0

    mul-int/lit8 v4, p7, 0x2

    sub-int v4, p6, v4

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 799
    sub-long v0, p2, p0

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    .line 800
    .local v0, "half":J
    div-int/lit8 v4, p6, 0x2

    int-to-long v4, v4

    sub-long/2addr v4, v0

    sub-long/2addr v4, p0

    move-wide v6, v4

    .local v6, "delta":J
    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 801
    return-wide v6

    .line 803
    :cond_1
    div-int/lit8 v4, p6, 0x2

    int-to-long v4, v4

    add-long/2addr v4, v0

    sub-long/2addr v4, p2

    move-wide v6, v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    .line 804
    return-wide v6

    .line 806
    :cond_2
    return-wide v2

    .line 808
    .end local v0    # "half":J
    .end local v6    # "delta":J
    :cond_3
    int-to-long v0, p7

    sub-long/2addr v0, p0

    move-wide v4, v0

    .local v4, "delta":J
    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 809
    return-wide v4

    .line 811
    :cond_4
    sub-int v0, p6, p7

    int-to-long v0, v0

    sub-long/2addr v0, p2

    move-wide v4, v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 812
    return-wide v4

    .line 814
    :cond_5
    return-wide v2
.end method

.method private refresh()V
    .locals 12

    .line 666
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterX()I

    move-result v0

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterY()I

    move-result v1

    iget-object v2, p0, Lorg/osmdroid/views/Projection;->mCurrentCenter:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    .line 668
    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    .line 670
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterX()I

    move-result v1

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterY()I

    move-result v2

    iget v3, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    iget-object v4, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    .line 669
    invoke-static {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_0

    .line 675
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 676
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 677
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 678
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 681
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    .line 683
    .local v0, "neGeoPoint":Lorg/osmdroid/api/IGeoPoint;
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v1

    .line 684
    .local v1, "tileSystem":Lorg/osmdroid/util/TileSystem;
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 685
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v5

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v0, v4

    .line 687
    :cond_1
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 688
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v5

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v0, v4

    .line 690
    :cond_2
    iget-object v4, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4, v5, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    .line 692
    .local v2, "swGeoPoint":Lorg/osmdroid/api/IGeoPoint;
    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    .line 693
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v4

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v2, v3

    .line 695
    :cond_3
    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_4

    .line 696
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v4

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v2, v3

    .line 699
    :cond_4
    iget-object v3, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    .line 700
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v6

    .line 701
    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v10

    .line 699
    invoke-virtual/range {v3 .. v11}, Lorg/osmdroid/util/BoundingBox;->set(DDDD)V

    .line 702
    return-void
.end method


# virtual methods
.method adjustOffsets(DDZI)V
    .locals 25
    .param p1, "pNorthOrWest"    # D
    .param p3, "pSouthOrEast"    # D
    .param p5, "isLatitude"    # Z
    .param p6, "pExtraSize"    # I

    .line 753
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    if-eqz p5, :cond_0

    .line 754
    invoke-virtual/range {p0 .. p2}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v11

    .line 755
    .local v11, "min":J
    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v13

    .line 756
    .local v13, "max":J
    const-wide/16 v15, 0x0

    .line 757
    .local v15, "deltaX":J
    iget-wide v7, v0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    iget-object v3, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-wide v3, v11

    move-wide v5, v13

    move/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lorg/osmdroid/views/Projection;->getScrollableOffset(JJDII)J

    move-result-wide v3

    move-wide v5, v15

    .local v3, "deltaY":J
    goto :goto_0

    .line 759
    .end local v3    # "deltaY":J
    .end local v11    # "min":J
    .end local v13    # "max":J
    .end local v15    # "deltaX":J
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v11

    .line 760
    .restart local v11    # "min":J
    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v13

    .line 761
    .restart local v13    # "max":J
    iget-wide v3, v0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    iget-object v5, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v23

    move-wide/from16 v17, v11

    move-wide/from16 v19, v13

    move-wide/from16 v21, v3

    move/from16 v24, p6

    invoke-static/range {v17 .. v24}, Lorg/osmdroid/views/Projection;->getScrollableOffset(JJDII)J

    move-result-wide v15

    .line 762
    .restart local v15    # "deltaX":J
    const-wide/16 v3, 0x0

    move-wide v5, v15

    .line 764
    .end local v15    # "deltaX":J
    .restart local v3    # "deltaY":J
    .local v5, "deltaX":J
    :goto_0
    invoke-virtual {v0, v5, v6, v3, v4}, Lorg/osmdroid/views/Projection;->adjustOffsets(JJ)V

    .line 765
    return-void
.end method

.method adjustOffsets(JJ)V
    .locals 3
    .param p1, "pDeltaX"    # J
    .param p3, "pDeltaY"    # J

    .line 771
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 772
    return-void

    .line 774
    :cond_0
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    .line 775
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    .line 776
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mScrollX:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/views/Projection;->mScrollX:J

    .line 777
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mScrollY:J

    sub-long/2addr v0, p3

    iput-wide v0, p0, Lorg/osmdroid/views/Projection;->mScrollY:J

    .line 778
    invoke-direct {p0}, Lorg/osmdroid/views/Projection;->refresh()V

    .line 779
    return-void
.end method

.method public adjustOffsets(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/PointF;)V
    .locals 6
    .param p1, "pGeoPoint"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "pPixel"    # Landroid/graphics/PointF;

    .line 710
    if-nez p2, :cond_0

    .line 711
    return-void

    .line 713
    :cond_0
    if-nez p1, :cond_1

    .line 714
    return-void

    .line 716
    :cond_1
    iget v0, p2, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 717
    .local v0, "unRotatedExpectedPixel":Landroid/graphics/Point;
    invoke-virtual {p0, p1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 718
    .local v1, "unRotatedActualPixel":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 719
    .local v2, "deltaX":J
    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    .line 720
    .local v4, "deltaY":J
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/osmdroid/views/Projection;->adjustOffsets(JJ)V

    .line 721
    return-void
.end method

.method public adjustOffsets(Lorg/osmdroid/util/BoundingBox;)V
    .locals 14
    .param p1, "pBoundingBox"    # Lorg/osmdroid/util/BoundingBox;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 733
    if-nez p1, :cond_0

    .line 734
    return-void

    .line 736
    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/osmdroid/views/Projection;->adjustOffsets(DDZI)V

    .line 737
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getActualNorth()D

    move-result-wide v8

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getActualSouth()D

    move-result-wide v10

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lorg/osmdroid/views/Projection;->adjustOffsets(DDZI)V

    .line 738
    return-void
.end method

.method public detach()V
    .locals 0

    .line 409
    return-void
.end method

.method public fromPixels(II)Lorg/osmdroid/api/IGeoPoint;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 164
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;
    .locals 1
    .param p1, "pPixelX"    # I
    .param p2, "pPixelY"    # I
    .param p3, "pReuse"    # Lorg/osmdroid/util/GeoPoint;

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;
    .locals 11
    .param p1, "pPixelX"    # I
    .param p2, "pPixelY"    # I
    .param p3, "pReuse"    # Lorg/osmdroid/util/GeoPoint;
    .param p4, "forceWrap"    # Z

    .line 200
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/Projection;->getMercatorXFromPixel(I)J

    move-result-wide v1

    iget-boolean v3, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    invoke-virtual {p0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->getCleanMercator(JZ)J

    move-result-wide v1

    .line 201
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/Projection;->getMercatorYFromPixel(I)J

    move-result-wide v3

    iget-boolean v5, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    invoke-virtual {p0, v3, v4, v5}, Lorg/osmdroid/views/Projection;->getCleanMercator(JZ)J

    move-result-wide v3

    iget-wide v5, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    iget-boolean v7, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move v10, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v10, v9

    :goto_1
    iget-boolean v7, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    if-nez v7, :cond_3

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move v9, v8

    .line 200
    :cond_3
    :goto_2
    move-object v7, p3

    move v8, v10

    invoke-virtual/range {v0 .. v9}, Lorg/osmdroid/util/TileSystem;->getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public getCleanMercator(JZ)J
    .locals 6
    .param p1, "pMercator"    # J
    .param p3, "wrapEnabled"    # Z

    .line 623
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    iget-wide v3, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    move-wide v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getCleanMercator(JDZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentCenter()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mCurrentCenter:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 860
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicScreenRect()Landroid/graphics/Rect;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getLongPixelXFromLongitude(D)J
    .locals 6
    .param p1, "pLongitude"    # D

    .line 230
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    iget-wide v3, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    const/4 v5, 0x0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorXFromLongitude(DDZ)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongPixelXFromLongitude(DZ)J
    .locals 6
    .param p1, "pLongitude"    # D
    .param p3, "forceWrap"    # Z

    .line 222
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    iget-wide v3, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    iget-boolean v1, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v5, v1

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorXFromLongitude(DDZ)J

    move-result-wide v0

    iget-boolean v2, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    invoke-direct {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongPixelYFromLatitude(D)J
    .locals 6
    .param p1, "pLatitude"    # D

    .line 246
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    iget-wide v3, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    const/4 v5, 0x0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorYFromLatitude(DDZ)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongPixelYFromLatitude(DZ)J
    .locals 6
    .param p1, "pLatitude"    # D
    .param p3, "forceWrap"    # Z

    .line 238
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    iget-wide v3, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    iget-boolean v1, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v5, v1

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorYFromLatitude(DDZ)J

    move-result-wide v0

    iget-boolean v2, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    invoke-direct {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 3
    .param p1, "in"    # Lorg/osmdroid/util/PointL;
    .param p2, "powerDifference"    # D
    .param p4, "pCloser"    # Z
    .param p5, "reuse"    # Lorg/osmdroid/util/PointL;

    .line 467
    if-eqz p5, :cond_0

    move-object v0, p5

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 468
    .local v0, "out":Lorg/osmdroid/util/PointL;
    :goto_0
    iget-wide v1, p1, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v1, v1

    div-double/2addr v1, p2

    double-to-long v1, v1

    invoke-direct {p0, v1, v2, p4}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/osmdroid/util/PointL;->x:J

    .line 469
    iget-wide v1, p1, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v1, v1

    div-double/2addr v1, p2

    double-to-long v1, v1

    invoke-direct {p0, v1, v2, p4}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/osmdroid/util/PointL;->y:J

    .line 470
    return-object v0
.end method

.method public getMercatorFromTile(I)J
    .locals 2
    .param p1, "pTile"    # I

    .line 427
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mTileSize:D

    invoke-static {p1, v0, v1}, Lorg/osmdroid/util/TileSystem;->getMercatorFromTile(ID)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMercatorViewPort(Lorg/osmdroid/util/RectL;)Lorg/osmdroid/util/RectL;
    .locals 9
    .param p1, "pReuse"    # Lorg/osmdroid/util/RectL;

    .line 547
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/osmdroid/util/RectL;

    invoke-direct {v0}, Lorg/osmdroid/util/RectL;-><init>()V

    .line 550
    .local v0, "out":Lorg/osmdroid/util/RectL;
    :goto_0
    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 551
    .local v1, "left":F
    iget-object v2, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 552
    .local v2, "right":F
    iget-object v3, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 553
    .local v3, "top":F
    iget-object v4, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    .line 556
    .local v4, "bottom":F
    iget v5, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_5

    .line 557
    const/16 v5, 0x8

    new-array v6, v5, [F

    .line 558
    .local v6, "scaleRotatePoints":[F
    iget-object v7, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    const/4 v8, 0x0

    aput v7, v6, v8

    .line 559
    iget-object v7, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    const/4 v8, 0x1

    aput v7, v6, v8

    .line 560
    iget-object v7, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    const/4 v8, 0x2

    aput v7, v6, v8

    .line 561
    iget-object v7, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    const/4 v8, 0x3

    aput v7, v6, v8

    .line 562
    iget-object v7, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    const/4 v8, 0x4

    aput v7, v6, v8

    .line 563
    iget-object v7, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    const/4 v8, 0x5

    aput v7, v6, v8

    .line 564
    iget-object v7, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    const/4 v8, 0x6

    aput v7, v6, v8

    .line 565
    iget-object v7, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    const/4 v8, 0x7

    aput v7, v6, v8

    .line 566
    iget-object v7, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 568
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_5

    .line 569
    aget v8, v6, v7

    cmpl-float v8, v1, v8

    if-lez v8, :cond_1

    .line 570
    aget v1, v6, v7

    .line 572
    :cond_1
    aget v8, v6, v7

    cmpg-float v8, v2, v8

    if-gez v8, :cond_2

    .line 573
    aget v2, v6, v7

    .line 575
    :cond_2
    add-int/lit8 v8, v7, 0x1

    aget v8, v6, v8

    cmpl-float v8, v3, v8

    if-lez v8, :cond_3

    .line 576
    add-int/lit8 v8, v7, 0x1

    aget v3, v6, v8

    .line 578
    :cond_3
    add-int/lit8 v8, v7, 0x1

    aget v8, v6, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_4

    .line 579
    add-int/lit8 v8, v7, 0x1

    aget v4, v6, v8

    .line 568
    :cond_4
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 584
    .end local v6    # "scaleRotatePoints":[F
    .end local v7    # "i":I
    :cond_5
    float-to-int v5, v1

    invoke-virtual {p0, v5}, Lorg/osmdroid/views/Projection;->getMercatorXFromPixel(I)J

    move-result-wide v5

    iput-wide v5, v0, Lorg/osmdroid/util/RectL;->left:J

    .line 585
    float-to-int v5, v3

    invoke-virtual {p0, v5}, Lorg/osmdroid/views/Projection;->getMercatorYFromPixel(I)J

    move-result-wide v5

    iput-wide v5, v0, Lorg/osmdroid/util/RectL;->top:J

    .line 586
    float-to-int v5, v2

    invoke-virtual {p0, v5}, Lorg/osmdroid/views/Projection;->getMercatorXFromPixel(I)J

    move-result-wide v5

    iput-wide v5, v0, Lorg/osmdroid/util/RectL;->right:J

    .line 587
    float-to-int v5, v4

    invoke-virtual {p0, v5}, Lorg/osmdroid/views/Projection;->getMercatorYFromPixel(I)J

    move-result-wide v5

    iput-wide v5, v0, Lorg/osmdroid/util/RectL;->bottom:J

    .line 588
    return-object v0
.end method

.method public getMercatorXFromPixel(I)J
    .locals 4
    .param p1, "pPixelX"    # I

    .line 609
    int-to-long v0, p1

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getMercatorYFromPixel(I)J
    .locals 4
    .param p1, "pPixelY"    # I

    .line 616
    int-to-long v0, p1

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getNorthEast()Lorg/osmdroid/api/IGeoPoint;
    .locals 4

    .line 355
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getOffsetX()J
    .locals 2

    .line 634
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    return-wide v0
.end method

.method public getOffsetY()J
    .locals 2

    .line 638
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    return-wide v0
.end method

.method public getOffspring(DLandroid/graphics/Rect;)Lorg/osmdroid/views/Projection;
    .locals 17
    .param p1, "pZoomLevel"    # D
    .param p3, "pScreenRect"    # Landroid/graphics/Rect;

    .line 137
    move-object/from16 v0, p0

    new-instance v16, Lorg/osmdroid/views/Projection;

    iget-object v5, v0, Lorg/osmdroid/views/Projection;->mCurrentCenter:Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    iget v10, v0, Lorg/osmdroid/views/Projection;->mOrientation:F

    iget-boolean v11, v0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    iget-boolean v12, v0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    iget-object v13, v0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, v16

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v15}, Lorg/osmdroid/views/Projection;-><init>(DLandroid/graphics/Rect;Lorg/osmdroid/util/GeoPoint;JJFZZLorg/osmdroid/util/TileSystem;II)V

    return-object v16
.end method

.method public getOrientation()F
    .locals 1

    .line 846
    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    return v0
.end method

.method public getPixelFromTile(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "pTileX"    # I
    .param p2, "pTileY"    # I
    .param p3, "pReuse"    # Landroid/graphics/Rect;

    .line 415
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 416
    .local v0, "out":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 417
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 418
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 419
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 420
    return-object v0
.end method

.method public getPixelsFromProjected(Lorg/osmdroid/util/PointL;DLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .param p1, "in"    # Lorg/osmdroid/util/PointL;
    .param p2, "powerDifference"    # D
    .param p4, "reuse"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 451
    if-eqz p4, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 452
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 453
    .local v1, "tmp":Lorg/osmdroid/util/PointL;
    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    .line 454
    iget-wide v2, v1, Lorg/osmdroid/util/PointL;->x:J

    invoke-static {v2, v3}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 455
    iget-wide v2, v1, Lorg/osmdroid/util/PointL;->y:J

    invoke-static {v2, v3}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 456
    return-object v0
.end method

.method public getProjectedPowerDifference()D
    .locals 4

    .line 442
    const-wide/high16 v0, 0x43b0000000000000L    # 1.15292150460684698E18

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getScaleRotateCanvasMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getScreenCenterX()I
    .locals 2

    .line 595
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/osmdroid/views/Projection;->mMapCenterOffsetX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getScreenCenterY()I
    .locals 2

    .line 602
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/osmdroid/views/Projection;->mMapCenterOffsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getScreenRect()Landroid/graphics/Rect;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSouthWest()Lorg/osmdroid/api/IGeoPoint;
    .locals 4

    .line 360
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getTileFromMercator(J)I
    .locals 2
    .param p1, "pMercator"    # J

    .line 540
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mTileSize:D

    invoke-static {p1, p2, v0, v1}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 853
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getWorldMapSize()D
    .locals 2

    .line 867
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    return-wide v0
.end method

.method public getZoomLevel()D
    .locals 2

    .line 147
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    return-wide v0
.end method

.method public isHorizontalWrapEnabled()Z
    .locals 1

    .line 832
    iget-boolean v0, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    return v0
.end method

.method public isVerticalWrapEnabled()Z
    .locals 1

    .line 839
    iget-boolean v0, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    return v0
.end method

.method public metersToEquatorPixels(F)F
    .locals 6
    .param p1, "meters"    # F

    .line 331
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->metersToPixels(FDD)F

    move-result v0

    return v0
.end method

.method public metersToPixels(F)F
    .locals 7
    .param p1, "meters"    # F

    .line 343
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getCenterWithDateLine()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    iget-wide v5, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/Projection;->metersToPixels(FDD)F

    move-result v0

    return v0
.end method

.method public metersToPixels(FDD)F
    .locals 4
    .param p1, "meters"    # F
    .param p2, "latitude"    # D
    .param p4, "zoomLevel"    # D

    .line 350
    float-to-double v0, p1

    invoke-static {p2, p3, p4, p5}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public restore(Landroid/graphics/Canvas;Z)V
    .locals 2
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pForce"    # Z

    .line 655
    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 656
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 658
    :cond_1
    return-void
.end method

.method public rotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;

    .line 384
    iget-object v4, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->applyMatrixToPoint(IILandroid/graphics/Point;Landroid/graphics/Matrix;Z)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public save(Landroid/graphics/Canvas;ZZ)V
    .locals 2
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pMapRotation"    # Z
    .param p3, "pForce"    # Z

    .line 645
    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    if-eqz p3, :cond_2

    .line 646
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 647
    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 649
    :cond_2
    return-void
.end method

.method setMapScroll(Lorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 821
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMapScrollX()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mScrollX:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMapScrollY()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mScrollY:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 822
    const/4 v0, 0x0

    return v0

    .line 824
    :cond_0
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mScrollX:J

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mScrollY:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/osmdroid/views/MapView;->setMapScroll(JJ)V

    .line 825
    const/4 v0, 0x1

    return v0
.end method

.method public toMercatorPixels(IILorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 4
    .param p1, "pPixelX"    # I
    .param p2, "pPixelY"    # I
    .param p3, "reuse"    # Lorg/osmdroid/util/PointL;

    .line 323
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 324
    .local v0, "out":Lorg/osmdroid/util/PointL;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/Projection;->getMercatorXFromPixel(I)J

    move-result-wide v1

    iget-boolean v3, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    invoke-virtual {p0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->getCleanMercator(JZ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/osmdroid/util/PointL;->x:J

    .line 325
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/Projection;->getMercatorYFromPixel(I)J

    move-result-wide v1

    iget-boolean v3, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    invoke-virtual {p0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->getCleanMercator(JZ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/osmdroid/util/PointL;->y:J

    .line 326
    return-object v0
.end method

.method public toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1
    .param p1, "in"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "reuse"    # Landroid/graphics/Point;

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 3
    .param p1, "in"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "reuse"    # Landroid/graphics/Point;
    .param p3, "forceWrap"    # Z

    .line 211
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 212
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p3}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(DZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 213
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p3}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(DZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 214
    return-object v0
.end method

.method public toPixelsFromMercator(JJLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p1, "pMercatorX"    # J
    .param p3, "pMercatorY"    # J
    .param p5, "reuse"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    if-eqz p5, :cond_0

    move-object v0, p5

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 317
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 318
    invoke-direct {p0, p3, p4, v1}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 319
    return-object v0
.end method

.method public toPixelsFromProjected(Lorg/osmdroid/util/PointL;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10
    .param p1, "in"    # Lorg/osmdroid/util/PointL;
    .param p2, "reuse"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 303
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getProjectedPowerDifference()D

    move-result-wide v7

    .line 304
    .local v7, "power":D
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    move-object v9, v1

    .line 305
    .local v9, "tmp":Lorg/osmdroid/util/PointL;
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v3, v7

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    .line 306
    iget-wide v1, v9, Lorg/osmdroid/util/PointL;->x:J

    invoke-static {v1, v2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 307
    iget-wide v1, v9, Lorg/osmdroid/util/PointL;->y:J

    invoke-static {v1, v2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 308
    return-object v0
.end method

.method public toProjectedPixels(DDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "reuse"    # Lorg/osmdroid/util/PointL;

    .line 281
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object v0

    return-object v0
.end method

.method public toProjectedPixels(DDZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "pWrapEnabled"    # Z
    .param p6, "reuse"    # Lorg/osmdroid/util/PointL;

    .line 288
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    const-wide/high16 v5, 0x43b0000000000000L    # 1.15292150460684698E18

    move-wide v1, p1

    move-wide v3, p3

    move-object v7, p6

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/util/TileSystem;->getMercatorFromGeo(DDDLorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;

    move-result-object v0

    return-object v0
.end method

.method public toProjectedPixels(JJLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 10
    .param p1, "latituteE6"    # J
    .param p3, "longitudeE6"    # J
    .param p5, "reuse"    # Lorg/osmdroid/util/PointL;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    long-to-double v0, p1

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v5, v0, v2

    long-to-double v0, p3

    mul-double v7, v0, v2

    move-object v4, p0

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object v0

    return-object v0
.end method

.method public toProjectedPixels(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 6
    .param p1, "geoPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "reuse"    # Lorg/osmdroid/util/PointL;

    .line 253
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object v0

    return-object v0
.end method

.method public unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;

    .line 376
    iget-object v4, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->applyMatrixToPoint(IILandroid/graphics/Point;Landroid/graphics/Matrix;Z)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method
