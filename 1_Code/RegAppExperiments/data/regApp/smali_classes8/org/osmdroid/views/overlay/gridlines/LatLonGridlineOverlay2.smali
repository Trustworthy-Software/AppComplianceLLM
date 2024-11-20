.class public Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "LatLonGridlineOverlay2.java"


# instance fields
.field protected mDecimalFormatter:Ljava/text/DecimalFormat;

.field protected mLinePaint:Landroid/graphics/Paint;

.field protected mMultiplier:F

.field protected mOptimizationGeoPoint:Lorg/osmdroid/util/GeoPoint;

.field protected mOptimizationPoint:Landroid/graphics/Point;

.field protected mTextBackgroundPaint:Landroid/graphics/Paint;

.field protected mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 26
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mDecimalFormatter:Ljava/text/DecimalFormat;

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    .line 29
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    .line 30
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationGeoPoint:Lorg/osmdroid/util/GeoPoint;

    .line 33
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    .line 36
    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 42
    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 43
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->setLineColor(I)V

    .line 44
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->setFontColor(I)V

    .line 45
    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->setBackgroundColor(I)V

    .line 46
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->setLineWidth(F)V

    .line 47
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->setFontSizeDp(S)V

    .line 48
    return-void
.end method

.method private computeStartLatitude(DD)D
    .locals 4
    .param p1, "pLatitude"    # D
    .param p3, "pIncrementor"    # D

    .line 310
    div-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    mul-double/2addr v0, p3

    .line 311
    .local v0, "result":D
    :goto_0
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 312
    sub-double/2addr v0, p3

    goto :goto_0

    .line 314
    :cond_0
    :goto_1
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 315
    add-double/2addr v0, p3

    goto :goto_1

    .line 317
    :cond_1
    return-wide v0
.end method

.method private formatCoordinate(DZ)Ljava/lang/String;
    .locals 4
    .param p1, "pValue"    # D
    .param p3, "pLatitudeOrLongitude"    # Z

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mDecimalFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v1, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    cmpl-double v1, p1, v1

    if-lez v1, :cond_2

    .line 325
    if-eqz p3, :cond_1

    const-string v1, "N"

    goto :goto_0

    :cond_1
    const-string v1, "E"

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const-string v1, "S"

    goto :goto_0

    :cond_3
    const-string v1, "W"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 60
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 52
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->getIncrementor(I)D

    move-result-wide v8

    .line 55
    .local v8, "incrementor":D
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getCurrentCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v10

    .line 56
    .local v10, "mapCenter":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    div-double/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    mul-double v11, v8, v1

    .line 57
    .local v11, "startLongitude":D
    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v8, v9}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->computeStartLatitude(DD)D

    move-result-wide v13

    .line 58
    .local v13, "startLatitude":D
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v15

    .line 59
    .local v15, "worldMapSize":D
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getWidth()I

    move-result v1

    int-to-float v5, v1

    .line 60
    .local v5, "screenWidth":F
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getHeight()I

    move-result v1

    int-to-float v6, v1

    .line 61
    .local v6, "screenHeight":F
    const/high16 v17, 0x40000000    # 2.0f

    div-float v18, v5, v17

    .line 62
    .local v18, "screenCenterX":F
    div-float v19, v6, v17

    .line 63
    .local v19, "screenCenterY":F
    mul-float v1, v5, v5

    mul-float v2, v6, v6

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v3, v1

    .line 64
    .local v3, "screenDiagonal":F
    div-float v1, v3, v17

    float-to-double v1, v1

    .line 65
    .local v1, "screenRadius":D
    mul-double v20, v1, v1

    .line 66
    .local v20, "squaredScreenRadius":D
    const/high16 v4, 0x40a00000    # 5.0f

    div-float v22, v5, v4

    .line 67
    .local v22, "textOffsetX":F
    div-float v23, v6, v4

    .line 68
    .local v23, "textOffsetY":F
    iget-object v4, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    neg-float v4, v4

    const/high16 v24, 0x3f000000    # 0.5f

    add-float v25, v4, v24

    .line 69
    .local v25, "textBaseline":F
    iget-object v4, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    add-float v26, v4, v24

    .line 70
    .local v26, "textDescent":F
    add-float v27, v25, v26

    .line 72
    .local v27, "textHeight":F
    const/4 v4, 0x0

    .local v4, "lineOrText":I
    :goto_0
    move-object/from16 v28, v10

    .end local v10    # "mapCenter":Lorg/osmdroid/util/GeoPoint;
    .local v28, "mapCenter":Lorg/osmdroid/util/GeoPoint;
    const/4 v10, 0x1

    if-gt v4, v10, :cond_1c

    .line 73
    const/16 v29, 0x0

    move/from16 v7, v29

    .local v7, "latOrLon":I
    :goto_1
    if-gt v7, v10, :cond_1b

    .line 74
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v10

    neg-float v10, v10

    const/16 v30, 0x0

    if-nez v7, :cond_1

    move-wide/from16 v32, v1

    move/from16 v1, v30

    goto :goto_2

    :cond_1
    const/16 v31, 0x5a

    move-wide/from16 v32, v1

    move/from16 v1, v31

    .end local v1    # "screenRadius":D
    .local v32, "screenRadius":D
    :goto_2
    int-to-float v1, v1

    add-float/2addr v10, v1

    .line 75
    .local v10, "orientation":F
    const/4 v1, 0x0

    .local v1, "increaseOrDecrease":I
    :goto_3
    const/4 v2, 0x1

    if-gt v1, v2, :cond_1a

    .line 76
    move/from16 v31, v1

    if-nez v1, :cond_2

    move-wide v1, v8

    goto :goto_4

    .end local v1    # "increaseOrDecrease":I
    .local v31, "increaseOrDecrease":I
    :cond_2
    neg-double v1, v8

    :goto_4
    move-wide/from16 v34, v1

    .line 77
    .local v34, "delta":D
    if-nez v7, :cond_3

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_5

    :cond_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 78
    .local v1, "latest":I
    :goto_5
    const/4 v2, 0x1

    .line 79
    .local v2, "stillVisible":Z
    move-wide/from16 v36, v11

    .line 80
    .local v36, "longitude":D
    move-wide/from16 v38, v13

    .line 81
    .local v38, "latitude":D
    const/16 v40, 0x0

    move/from16 v41, v40

    move-wide/from16 v39, v38

    move-wide/from16 v37, v36

    move/from16 v36, v2

    .end local v2    # "stillVisible":Z
    .end local v38    # "latitude":D
    .local v36, "stillVisible":Z
    .local v37, "longitude":D
    .local v39, "latitude":D
    .local v41, "i":I
    :goto_6
    if-eqz v36, :cond_19

    .line 82
    if-lez v41, :cond_9

    .line 83
    const/4 v2, 0x1

    if-ne v7, v2, :cond_6

    .line 84
    add-double v37, v37, v34

    .line 85
    :goto_7
    const-wide v42, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v37, v42

    const-wide v42, 0x4076800000000000L    # 360.0

    if-gez v2, :cond_4

    .line 86
    add-double v37, v37, v42

    goto :goto_7

    .line 88
    :cond_4
    :goto_8
    const-wide v44, 0x4066800000000000L    # 180.0

    cmpl-double v2, v37, v44

    if-lez v2, :cond_5

    .line 89
    sub-double v37, v37, v42

    goto :goto_8

    .line 88
    :cond_5
    move/from16 v42, v3

    move-wide/from16 v43, v8

    move-wide/from16 v2, v37

    move-wide/from16 v8, v39

    goto :goto_9

    .line 92
    :cond_6
    add-double v39, v39, v34

    .line 93
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v42

    cmpl-double v2, v39, v42

    if-lez v2, :cond_7

    .line 94
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    move/from16 v42, v3

    .end local v3    # "screenDiagonal":F
    .local v42, "screenDiagonal":F
    invoke-virtual {v2}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v2

    invoke-direct {v0, v2, v3, v8, v9}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->computeStartLatitude(DD)D

    move-result-wide v2

    move-wide/from16 v43, v8

    move-wide v8, v2

    move-wide/from16 v2, v37

    .end local v39    # "latitude":D
    .local v2, "latitude":D
    goto :goto_9

    .line 95
    .end local v2    # "latitude":D
    .end local v42    # "screenDiagonal":F
    .restart local v3    # "screenDiagonal":F
    .restart local v39    # "latitude":D
    :cond_7
    move/from16 v42, v3

    .end local v3    # "screenDiagonal":F
    .restart local v42    # "screenDiagonal":F
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v2

    cmpg-double v2, v39, v2

    if-gez v2, :cond_8

    .line 96
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v2

    invoke-direct {v0, v2, v3, v8, v9}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->computeStartLatitude(DD)D

    move-result-wide v2

    move-wide/from16 v43, v8

    move-wide v8, v2

    move-wide/from16 v2, v37

    .end local v39    # "latitude":D
    .restart local v2    # "latitude":D
    goto :goto_9

    .line 95
    .end local v2    # "latitude":D
    .restart local v39    # "latitude":D
    :cond_8
    move-wide/from16 v43, v8

    move-wide/from16 v2, v37

    move-wide/from16 v8, v39

    goto :goto_9

    .line 82
    .end local v42    # "screenDiagonal":F
    .restart local v3    # "screenDiagonal":F
    :cond_9
    move/from16 v42, v3

    .end local v3    # "screenDiagonal":F
    .restart local v42    # "screenDiagonal":F
    move-wide/from16 v43, v8

    move-wide/from16 v2, v37

    move-wide/from16 v8, v39

    .line 100
    .end local v37    # "longitude":D
    .end local v39    # "latitude":D
    .local v2, "longitude":D
    .local v8, "latitude":D
    .local v43, "incrementor":D
    :goto_9
    move/from16 v45, v4

    .end local v4    # "lineOrText":I
    .local v45, "lineOrText":I
    iget-object v4, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationGeoPoint:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4, v8, v9, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 101
    iget-object v4, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationGeoPoint:Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v37, v2

    .end local v2    # "longitude":D
    .restart local v37    # "longitude":D
    iget-object v2, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    move-object/from16 v3, p2

    invoke-virtual {v3, v4, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 102
    if-nez v7, :cond_c

    .line 103
    iget-object v4, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    int-to-double v2, v1

    move/from16 v46, v1

    .end local v1    # "latest":I
    .local v46, "latest":I
    iget v1, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v39, v4

    move/from16 v47, v5

    .end local v5    # "screenWidth":F
    .local v47, "screenWidth":F
    int-to-double v4, v1

    move-wide/from16 v48, v8

    move/from16 v8, v31

    move-wide/from16 v31, v32

    move/from16 v9, v46

    .end local v32    # "screenRadius":D
    .end local v46    # "latest":I
    .local v8, "increaseOrDecrease":I
    .local v9, "latest":I
    .local v31, "screenRadius":D
    .local v48, "latitude":D
    move-wide v1, v2

    move/from16 v33, v42

    move/from16 v42, v45

    move-wide/from16 v45, v11

    move-object/from16 v11, v39

    .end local v11    # "startLongitude":D
    .local v33, "screenDiagonal":F
    .local v42, "lineOrText":I
    .local v45, "startLongitude":D
    move-wide v3, v4

    move/from16 v12, v47

    move/from16 v47, v6

    .end local v6    # "screenHeight":F
    .local v12, "screenWidth":F
    .local v47, "screenHeight":F
    move-wide v5, v15

    invoke-static/range {v1 .. v6}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v11, Landroid/graphics/Point;->y:I

    .line 105
    if-lez v41, :cond_b

    .line 106
    const-wide/16 v1, 0x0

    cmpg-double v1, v34, v1

    if-gez v1, :cond_a

    .line 107
    :goto_a
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v1, v9, :cond_b

    .line 108
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    add-double/2addr v2, v15

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_a

    .line 111
    :cond_a
    :goto_b
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v1, v9, :cond_b

    .line 112
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    sub-double/2addr v2, v15

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_b

    .line 116
    :cond_b
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    move v9, v1

    .end local v9    # "latest":I
    .restart local v1    # "latest":I
    goto :goto_c

    .line 118
    .end local v12    # "screenWidth":F
    .end local v33    # "screenDiagonal":F
    .end local v47    # "screenHeight":F
    .end local v48    # "latitude":D
    .restart local v5    # "screenWidth":F
    .restart local v6    # "screenHeight":F
    .local v8, "latitude":D
    .restart local v11    # "startLongitude":D
    .local v31, "increaseOrDecrease":I
    .restart local v32    # "screenRadius":D
    .local v42, "screenDiagonal":F
    .local v45, "lineOrText":I
    :cond_c
    move/from16 v47, v6

    move-wide/from16 v48, v8

    move/from16 v8, v31

    move-wide/from16 v31, v32

    move/from16 v33, v42

    move/from16 v42, v45

    move v9, v1

    move-wide/from16 v45, v11

    move v12, v5

    .end local v1    # "latest":I
    .end local v5    # "screenWidth":F
    .end local v6    # "screenHeight":F
    .end local v11    # "startLongitude":D
    .end local v32    # "screenRadius":D
    .local v8, "increaseOrDecrease":I
    .restart local v9    # "latest":I
    .restart local v12    # "screenWidth":F
    .local v31, "screenRadius":D
    .restart local v33    # "screenDiagonal":F
    .local v42, "lineOrText":I
    .local v45, "startLongitude":D
    .restart local v47    # "screenHeight":F
    .restart local v48    # "latitude":D
    iget-object v11, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    int-to-double v1, v9

    iget v3, v11, Landroid/graphics/Point;->x:I

    int-to-double v3, v3

    move-wide v5, v15

    invoke-static/range {v1 .. v6}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v11, Landroid/graphics/Point;->x:I

    .line 119
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    move v9, v1

    .line 121
    :goto_c
    if-nez v41, :cond_d

    const/4 v11, 0x1

    if-ne v8, v11, :cond_e

    .line 122
    move/from16 v55, v7

    move/from16 v57, v9

    move-object/from16 v7, p1

    goto/16 :goto_14

    .line 121
    :cond_d
    const/4 v11, 0x1

    .line 129
    :cond_e
    if-nez v7, :cond_f

    .line 130
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    move v2, v1

    .line 131
    .local v1, "yA":F
    .local v2, "yB":F
    sub-float v3, v18, v33

    .line 132
    .local v3, "xA":F
    add-float v4, v18, v33

    .line 133
    .local v4, "xB":F
    iget-object v5, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    sub-float v5, v5, v19

    iget-object v6, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    sub-float v6, v6, v19

    mul-float/2addr v5, v6

    float-to-double v5, v5

    move/from16 v29, v1

    move/from16 v39, v2

    move/from16 v40, v3

    move/from16 v50, v4

    move-wide/from16 v51, v5

    .local v5, "squaredDistanceToCenter":D
    goto :goto_d

    .line 135
    .end local v1    # "yA":F
    .end local v2    # "yB":F
    .end local v3    # "xA":F
    .end local v4    # "xB":F
    .end local v5    # "squaredDistanceToCenter":D
    :cond_f
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    move v4, v1

    .restart local v4    # "xB":F
    move v3, v1

    .line 136
    .restart local v3    # "xA":F
    sub-float v1, v19, v33

    .line 137
    .restart local v1    # "yA":F
    add-float v2, v19, v33

    .line 138
    .restart local v2    # "yB":F
    iget-object v5, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sub-float v5, v5, v18

    iget-object v6, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sub-float v6, v6, v18

    mul-float/2addr v5, v6

    float-to-double v5, v5

    move/from16 v29, v1

    move/from16 v39, v2

    move/from16 v40, v3

    move/from16 v50, v4

    move-wide/from16 v51, v5

    .line 140
    .end local v1    # "yA":F
    .end local v2    # "yB":F
    .end local v3    # "xA":F
    .end local v4    # "xB":F
    .local v29, "yA":F
    .local v39, "yB":F
    .local v40, "xA":F
    .local v50, "xB":F
    .local v51, "squaredDistanceToCenter":D
    :goto_d
    cmpg-double v1, v51, v20

    if-gtz v1, :cond_10

    move v2, v11

    goto :goto_e

    :cond_10
    move/from16 v2, v30

    :goto_e
    move/from16 v36, v2

    .line 141
    if-eqz v36, :cond_17

    .line 142
    if-nez v42, :cond_11

    .line 143
    iget-object v6, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v40

    move/from16 v3, v29

    move/from16 v4, v50

    move/from16 v5, v39

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v55, v7

    move/from16 v57, v9

    move-object/from16 v7, p1

    goto/16 :goto_14

    .line 145
    :cond_11
    if-nez v7, :cond_12

    move-wide/from16 v2, v48

    goto :goto_f

    :cond_12
    move-wide/from16 v2, v37

    :goto_f
    if-nez v7, :cond_13

    move v1, v11

    goto :goto_10

    :cond_13
    move/from16 v1, v30

    :goto_10
    invoke-direct {v0, v2, v3, v1}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->formatCoordinate(DZ)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "text":Ljava/lang/String;
    if-nez v7, :cond_14

    move/from16 v1, v22

    goto :goto_11

    :cond_14
    move/from16 v1, v40

    :goto_11
    move v5, v1

    .line 147
    .local v5, "textCenterX":F
    if-nez v7, :cond_15

    move/from16 v1, v29

    goto :goto_12

    :cond_15
    sub-float v1, v47, v23

    :goto_12
    move v4, v1

    .line 148
    .local v4, "textCenterY":F
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float v53, v1, v24

    .line 150
    .local v53, "textWidth":F
    const/16 v54, 0x0

    cmpl-float v1, v10, v54

    if-eqz v1, :cond_16

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 152
    move/from16 v55, v7

    move-object/from16 v7, p1

    .end local v7    # "latOrLon":I
    .local v55, "latOrLon":I
    invoke-virtual {v7, v10, v5, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_13

    .line 150
    .end local v55    # "latOrLon":I
    .restart local v7    # "latOrLon":I
    :cond_16
    move/from16 v55, v7

    move-object/from16 v7, p1

    .line 154
    .end local v7    # "latOrLon":I
    .restart local v55    # "latOrLon":I
    :goto_13
    div-float v1, v53, v17

    sub-float v2, v5, v1

    div-float v1, v27, v17

    sub-float v3, v4, v1

    div-float v1, v53, v17

    add-float v56, v5, v1

    div-float v1, v27, v17

    add-float v57, v4, v1

    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v58, v1

    move-object/from16 v1, p1

    move/from16 v59, v4

    .end local v4    # "textCenterY":F
    .local v59, "textCenterY":F
    move/from16 v4, v56

    move v11, v5

    .end local v5    # "textCenterX":F
    .local v11, "textCenterX":F
    move/from16 v5, v57

    move/from16 v57, v9

    move-object v9, v6

    .end local v6    # "text":Ljava/lang/String;
    .local v9, "text":Ljava/lang/String;
    .local v57, "latest":I
    move-object/from16 v6, v58

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 157
    div-float v1, v27, v17

    add-float v4, v59, v1

    sub-float v4, v4, v26

    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v11, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 158
    cmpl-float v1, v10, v54

    if-eqz v1, :cond_18

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_14

    .line 141
    .end local v11    # "textCenterX":F
    .end local v53    # "textWidth":F
    .end local v55    # "latOrLon":I
    .end local v57    # "latest":I
    .end local v59    # "textCenterY":F
    .restart local v7    # "latOrLon":I
    .local v9, "latest":I
    :cond_17
    move/from16 v55, v7

    move/from16 v57, v9

    move-object/from16 v7, p1

    .line 81
    .end local v7    # "latOrLon":I
    .end local v9    # "latest":I
    .end local v29    # "yA":F
    .end local v39    # "yB":F
    .end local v40    # "xA":F
    .end local v50    # "xB":F
    .end local v51    # "squaredDistanceToCenter":D
    .restart local v55    # "latOrLon":I
    .restart local v57    # "latest":I
    :cond_18
    :goto_14
    add-int/lit8 v41, v41, 0x1

    move v5, v12

    move/from16 v3, v33

    move/from16 v4, v42

    move-wide/from16 v11, v45

    move/from16 v6, v47

    move-wide/from16 v39, v48

    move/from16 v7, v55

    move/from16 v1, v57

    move-wide/from16 v32, v31

    move/from16 v31, v8

    move-wide/from16 v8, v43

    goto/16 :goto_6

    .end local v12    # "screenWidth":F
    .end local v33    # "screenDiagonal":F
    .end local v42    # "lineOrText":I
    .end local v43    # "incrementor":D
    .end local v45    # "startLongitude":D
    .end local v47    # "screenHeight":F
    .end local v48    # "latitude":D
    .end local v55    # "latOrLon":I
    .end local v57    # "latest":I
    .local v1, "latest":I
    .local v3, "screenDiagonal":F
    .local v4, "lineOrText":I
    .local v5, "screenWidth":F
    .local v6, "screenHeight":F
    .restart local v7    # "latOrLon":I
    .local v8, "incrementor":D
    .local v11, "startLongitude":D
    .local v31, "increaseOrDecrease":I
    .restart local v32    # "screenRadius":D
    .local v39, "latitude":D
    :cond_19
    move/from16 v42, v4

    move/from16 v47, v6

    move/from16 v55, v7

    move-wide/from16 v43, v8

    move-wide/from16 v45, v11

    move/from16 v8, v31

    move-wide/from16 v31, v32

    move-object/from16 v7, p1

    move v9, v1

    move/from16 v33, v3

    move v12, v5

    .line 75
    .end local v1    # "latest":I
    .end local v3    # "screenDiagonal":F
    .end local v4    # "lineOrText":I
    .end local v5    # "screenWidth":F
    .end local v6    # "screenHeight":F
    .end local v7    # "latOrLon":I
    .end local v11    # "startLongitude":D
    .end local v32    # "screenRadius":D
    .end local v34    # "delta":D
    .end local v36    # "stillVisible":Z
    .end local v37    # "longitude":D
    .end local v39    # "latitude":D
    .end local v41    # "i":I
    .local v8, "increaseOrDecrease":I
    .restart local v12    # "screenWidth":F
    .local v31, "screenRadius":D
    .restart local v33    # "screenDiagonal":F
    .restart local v42    # "lineOrText":I
    .restart local v43    # "incrementor":D
    .restart local v45    # "startLongitude":D
    .restart local v47    # "screenHeight":F
    .restart local v55    # "latOrLon":I
    add-int/lit8 v1, v8, 0x1

    move-wide/from16 v8, v43

    move-wide/from16 v11, v45

    move/from16 v7, v55

    move-wide/from16 v32, v31

    .end local v8    # "increaseOrDecrease":I
    .local v1, "increaseOrDecrease":I
    goto/16 :goto_3

    .end local v12    # "screenWidth":F
    .end local v31    # "screenRadius":D
    .end local v33    # "screenDiagonal":F
    .end local v42    # "lineOrText":I
    .end local v43    # "incrementor":D
    .end local v45    # "startLongitude":D
    .end local v47    # "screenHeight":F
    .end local v55    # "latOrLon":I
    .restart local v3    # "screenDiagonal":F
    .restart local v4    # "lineOrText":I
    .restart local v5    # "screenWidth":F
    .restart local v6    # "screenHeight":F
    .restart local v7    # "latOrLon":I
    .local v8, "incrementor":D
    .restart local v11    # "startLongitude":D
    .restart local v32    # "screenRadius":D
    :cond_1a
    move/from16 v42, v4

    move/from16 v47, v6

    move/from16 v55, v7

    move-wide/from16 v43, v8

    move-wide/from16 v45, v11

    move-wide/from16 v31, v32

    move-object/from16 v7, p1

    move v8, v1

    move/from16 v33, v3

    move v12, v5

    .line 73
    .end local v1    # "increaseOrDecrease":I
    .end local v3    # "screenDiagonal":F
    .end local v4    # "lineOrText":I
    .end local v5    # "screenWidth":F
    .end local v6    # "screenHeight":F
    .end local v7    # "latOrLon":I
    .end local v8    # "incrementor":D
    .end local v10    # "orientation":F
    .end local v11    # "startLongitude":D
    .end local v32    # "screenRadius":D
    .restart local v12    # "screenWidth":F
    .restart local v31    # "screenRadius":D
    .restart local v33    # "screenDiagonal":F
    .restart local v42    # "lineOrText":I
    .restart local v43    # "incrementor":D
    .restart local v45    # "startLongitude":D
    .restart local v47    # "screenHeight":F
    .restart local v55    # "latOrLon":I
    add-int/lit8 v1, v55, 0x1

    move v7, v1

    move-wide/from16 v1, v31

    move-wide/from16 v8, v43

    move-wide/from16 v11, v45

    const/4 v10, 0x1

    .end local v55    # "latOrLon":I
    .local v1, "latOrLon":I
    goto/16 :goto_1

    .end local v12    # "screenWidth":F
    .end local v31    # "screenRadius":D
    .end local v33    # "screenDiagonal":F
    .end local v42    # "lineOrText":I
    .end local v43    # "incrementor":D
    .end local v45    # "startLongitude":D
    .end local v47    # "screenHeight":F
    .local v1, "screenRadius":D
    .restart local v3    # "screenDiagonal":F
    .restart local v4    # "lineOrText":I
    .restart local v5    # "screenWidth":F
    .restart local v6    # "screenHeight":F
    .restart local v7    # "latOrLon":I
    .restart local v8    # "incrementor":D
    .restart local v11    # "startLongitude":D
    :cond_1b
    move-wide/from16 v31, v1

    move/from16 v33, v3

    move/from16 v42, v4

    move/from16 v47, v6

    move/from16 v55, v7

    move-wide/from16 v43, v8

    move-wide/from16 v45, v11

    move-object/from16 v7, p1

    move v12, v5

    .line 72
    .end local v1    # "screenRadius":D
    .end local v3    # "screenDiagonal":F
    .end local v4    # "lineOrText":I
    .end local v5    # "screenWidth":F
    .end local v6    # "screenHeight":F
    .end local v7    # "latOrLon":I
    .end local v8    # "incrementor":D
    .end local v11    # "startLongitude":D
    .restart local v12    # "screenWidth":F
    .restart local v31    # "screenRadius":D
    .restart local v33    # "screenDiagonal":F
    .restart local v42    # "lineOrText":I
    .restart local v43    # "incrementor":D
    .restart local v45    # "startLongitude":D
    .restart local v47    # "screenHeight":F
    add-int/lit8 v4, v42, 0x1

    move-object/from16 v10, v28

    move-wide/from16 v11, v45

    .end local v42    # "lineOrText":I
    .restart local v4    # "lineOrText":I
    goto/16 :goto_0

    .line 167
    .end local v4    # "lineOrText":I
    .end local v12    # "screenWidth":F
    .end local v31    # "screenRadius":D
    .end local v33    # "screenDiagonal":F
    .end local v43    # "incrementor":D
    .end local v45    # "startLongitude":D
    .end local v47    # "screenHeight":F
    .restart local v1    # "screenRadius":D
    .restart local v3    # "screenDiagonal":F
    .restart local v5    # "screenWidth":F
    .restart local v6    # "screenHeight":F
    .restart local v8    # "incrementor":D
    .restart local v11    # "startLongitude":D
    :cond_1c
    return-void
.end method

.method protected getIncrementor(I)D
    .locals 4
    .param p1, "zoom"    # I

    .line 240
    packed-switch p1, :pswitch_data_0

    .line 300
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3e8999999999999aL    # 1.9073486328125E-7

    mul-double/2addr v0, v2

    return-wide v0

    .line 297
    :pswitch_0
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3e9999999999999aL    # 3.814697265625E-7

    mul-double/2addr v0, v2

    return-wide v0

    .line 295
    :pswitch_1
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3ea999999999999aL    # 7.62939453125E-7

    mul-double/2addr v0, v2

    return-wide v0

    .line 293
    :pswitch_2
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3eb999999999999aL    # 1.52587890625E-6

    mul-double/2addr v0, v2

    return-wide v0

    .line 291
    :pswitch_3
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3ec999999999999aL    # 3.0517578125E-6

    mul-double/2addr v0, v2

    return-wide v0

    .line 289
    :pswitch_4
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3ed999999999999aL    # 6.103515625E-6

    mul-double/2addr v0, v2

    return-wide v0

    .line 287
    :pswitch_5
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3ee999999999999aL    # 1.220703125E-5

    mul-double/2addr v0, v2

    return-wide v0

    .line 285
    :pswitch_6
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3ef999999999999aL    # 2.44140625E-5

    mul-double/2addr v0, v2

    return-wide v0

    .line 283
    :pswitch_7
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f0999999999999aL    # 4.8828125E-5

    mul-double/2addr v0, v2

    return-wide v0

    .line 281
    :pswitch_8
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f1999999999999aL    # 9.765625E-5

    mul-double/2addr v0, v2

    return-wide v0

    .line 279
    :pswitch_9
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f2999999999999aL    # 1.953125E-4

    mul-double/2addr v0, v2

    return-wide v0

    .line 277
    :pswitch_a
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f3999999999999aL    # 3.90625E-4

    mul-double/2addr v0, v2

    return-wide v0

    .line 275
    :pswitch_b
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f4999999999999aL    # 7.8125E-4

    mul-double/2addr v0, v2

    return-wide v0

    .line 273
    :pswitch_c
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f5999999999999aL    # 0.0015625

    mul-double/2addr v0, v2

    return-wide v0

    .line 271
    :pswitch_d
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f6999999999999aL    # 0.003125

    mul-double/2addr v0, v2

    return-wide v0

    .line 269
    :pswitch_e
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f7999999999999aL    # 0.00625

    mul-double/2addr v0, v2

    return-wide v0

    .line 267
    :pswitch_f
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f8999999999999aL    # 0.0125

    mul-double/2addr v0, v2

    return-wide v0

    .line 265
    :pswitch_10
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f9999999999999aL    # 0.025

    mul-double/2addr v0, v2

    return-wide v0

    .line 263
    :pswitch_11
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v0, v2

    return-wide v0

    .line 261
    :pswitch_12
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v0, v2

    return-wide v0

    .line 259
    :pswitch_13
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v2

    return-wide v0

    .line 257
    :pswitch_14
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    return-wide v0

    .line 255
    :pswitch_15
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    return-wide v0

    .line 253
    :pswitch_16
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    return-wide v0

    .line 251
    :pswitch_17
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    return-wide v0

    .line 249
    :pswitch_18
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double/2addr v0, v2

    return-wide v0

    .line 247
    :pswitch_19
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    mul-double/2addr v0, v2

    return-wide v0

    .line 245
    :pswitch_1a
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    mul-double/2addr v0, v2

    return-wide v0

    .line 243
    :pswitch_1b
    iget v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    mul-double/2addr v0, v2

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "backgroundColor"    # I

    .line 216
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    return-void
.end method

.method public setDecimalFormatter(Ljava/text/DecimalFormat;)V
    .locals 0
    .param p1, "df"    # Ljava/text/DecimalFormat;

    .line 170
    iput-object p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mDecimalFormatter:Ljava/text/DecimalFormat;

    .line 171
    return-void
.end method

.method public setFontColor(I)V
    .locals 1
    .param p1, "fontColor"    # I

    .line 178
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    return-void
.end method

.method public setFontSizeDp(S)V
    .locals 2
    .param p1, "fontSizeDp"    # S

    .line 182
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 183
    return-void
.end method

.method public setLineColor(I)V
    .locals 1
    .param p1, "lineColor"    # I

    .line 174
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    return-void
.end method

.method public setLineWidth(F)V
    .locals 1
    .param p1, "lineWidth"    # F

    .line 220
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 221
    return-void
.end method

.method public setMultiplier(F)V
    .locals 0
    .param p1, "multiplier"    # F

    .line 227
    iput p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    .line 228
    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 199
    iput-object p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setTextStyle(Landroid/graphics/Paint$Style;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint$Style;

    .line 191
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
