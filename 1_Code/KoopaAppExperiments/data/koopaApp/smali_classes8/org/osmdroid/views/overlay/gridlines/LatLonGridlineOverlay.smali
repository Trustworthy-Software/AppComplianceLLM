.class public Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;
.super Ljava/lang/Object;
.source "LatLonGridlineOverlay.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static DEBUG:Z

.field public static DEBUG2:Z

.field public static backgroundColor:I

.field static final df:Ljava/text/DecimalFormat;

.field public static fontColor:I

.field public static fontSizeDp:S

.field public static lineColor:I

.field public static lineWidth:F

.field private static multiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    .line 31
    const/high16 v0, -0x1000000

    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    .line 32
    const/4 v1, -0x1

    sput v1, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontColor:I

    .line 33
    const/16 v1, 0x18

    sput-short v1, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontSizeDp:S

    .line 34
    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->backgroundColor:I

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    .line 37
    const/4 v1, 0x0

    sput-boolean v1, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    .line 38
    sput-boolean v1, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    .line 41
    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 1
    .param p0, "m"    # Lorg/osmdroid/views/overlay/Marker;

    .line 44
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->backgroundColor:I

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setTextLabelBackgroundColor(I)V

    .line 45
    sget-short v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontSizeDp:S

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setTextLabelFontSize(I)V

    .line 46
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontColor:I

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setTextLabelForegroundColor(I)V

    .line 47
    return-void
.end method

.method private static getIncrementor(I)D
    .locals 4
    .param p0, "zoom"    # I

    .line 401
    packed-switch p0, :pswitch_data_0

    .line 449
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3ef999999999999aL    # 2.44140625E-5

    mul-double/2addr v0, v2

    return-wide v0

    .line 447
    :pswitch_0
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f0999999999999aL    # 4.8828125E-5

    mul-double/2addr v0, v2

    return-wide v0

    .line 445
    :pswitch_1
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f1999999999999aL    # 9.765625E-5

    mul-double/2addr v0, v2

    return-wide v0

    .line 443
    :pswitch_2
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f2999999999999aL    # 1.953125E-4

    mul-double/2addr v0, v2

    return-wide v0

    .line 441
    :pswitch_3
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f3999999999999aL    # 3.90625E-4

    mul-double/2addr v0, v2

    return-wide v0

    .line 439
    :pswitch_4
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f4999999999999aL    # 7.8125E-4

    mul-double/2addr v0, v2

    return-wide v0

    .line 437
    :pswitch_5
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f5999999999999aL    # 0.0015625

    mul-double/2addr v0, v2

    return-wide v0

    .line 435
    :pswitch_6
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f6999999999999aL    # 0.003125

    mul-double/2addr v0, v2

    return-wide v0

    .line 433
    :pswitch_7
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f7999999999999aL    # 0.00625

    mul-double/2addr v0, v2

    return-wide v0

    .line 431
    :pswitch_8
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f8999999999999aL    # 0.0125

    mul-double/2addr v0, v2

    return-wide v0

    .line 429
    :pswitch_9
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3f9999999999999aL    # 0.025

    mul-double/2addr v0, v2

    return-wide v0

    .line 427
    :pswitch_a
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v0, v2

    return-wide v0

    .line 425
    :pswitch_b
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v0, v2

    return-wide v0

    .line 421
    :pswitch_c
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v2

    return-wide v0

    .line 419
    :pswitch_d
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    return-wide v0

    .line 417
    :pswitch_e
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    return-wide v0

    .line 415
    :pswitch_f
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    return-wide v0

    .line 412
    :pswitch_10
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    return-wide v0

    .line 410
    :pswitch_11
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double/2addr v0, v2

    return-wide v0

    .line 408
    :pswitch_12
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    mul-double/2addr v0, v2

    return-wide v0

    .line 406
    :pswitch_13
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    mul-double/2addr v0, v2

    return-wide v0

    .line 404
    :pswitch_14
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    mul-double/2addr v0, v2

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
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

.method public static getLatLonGrid(Landroid/content/Context;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/overlay/FolderOverlay;
    .locals 47
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 50
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v1

    .line 51
    .local v1, "box":Lorg/osmdroid/util/BoundingBox;
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v2

    .line 53
    .local v2, "zoom":I
    sget-boolean v3, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 54
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "######### getLatLonGrid "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    :cond_0
    new-instance v3, Lorg/osmdroid/views/overlay/FolderOverlay;

    invoke-direct {v3}, Lorg/osmdroid/views/overlay/FolderOverlay;-><init>()V

    .line 57
    .local v3, "gridlines":Lorg/osmdroid/views/overlay/FolderOverlay;
    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    move-object v9, v0

    move-object/from16 v16, v1

    move v8, v2

    move-object v11, v3

    goto/16 :goto_10

    .line 93
    :cond_1
    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    .line 94
    .local v4, "north":D
    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v6

    .line 95
    .local v6, "south":D
    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v8

    .line 96
    .local v8, "east":D
    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v10

    .line 98
    .local v10, "west":D
    const-wide/16 v12, 0x0

    .line 100
    .local v12, "north_south_delta":D
    cmpg-double v14, v4, v6

    if-gez v14, :cond_2

    .line 102
    return-object v3

    .line 104
    :cond_2
    sget-boolean v14, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v14, :cond_3

    .line 105
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    .end local v1    # "box":Lorg/osmdroid/util/BoundingBox;
    .local v16, "box":Lorg/osmdroid/util/BoundingBox;
    const-string v1, "N "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " S "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, ", "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v16    # "box":Lorg/osmdroid/util/BoundingBox;
    .restart local v1    # "box":Lorg/osmdroid/util/BoundingBox;
    :cond_3
    move-object/from16 v16, v1

    .line 108
    .end local v1    # "box":Lorg/osmdroid/util/BoundingBox;
    .restart local v16    # "box":Lorg/osmdroid/util/BoundingBox;
    :goto_0
    const/4 v1, 0x0

    .line 109
    .local v1, "dateLineVisible":Z
    const-wide/16 v14, 0x0

    cmpg-double v17, v8, v14

    if-gez v17, :cond_4

    cmpl-double v17, v10, v14

    if-lez v17, :cond_4

    .line 111
    const/4 v1, 0x1

    .line 114
    :cond_4
    sget-boolean v17, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v17, :cond_5

    .line 115
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v1

    .end local v1    # "dateLineVisible":Z
    .local v19, "dateLineVisible":Z
    const-string v1, "delta "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    .end local v19    # "dateLineVisible":Z
    .restart local v1    # "dateLineVisible":Z
    :cond_5
    move/from16 v19, v1

    .line 119
    .end local v1    # "dateLineVisible":Z
    .restart local v19    # "dateLineVisible":Z
    :goto_1
    invoke-static {v2}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v14

    .line 126
    .local v14, "incrementor":D
    invoke-static {v4, v5, v6, v7, v2}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getStartEndPointsNS(DDI)[D

    move-result-object v1

    .line 127
    .local v1, "startend":[D
    const/16 v20, 0x0

    aget-wide v21, v1, v20

    .line 128
    .local v21, "sn_start_point":D
    const/16 v23, 0x1

    aget-wide v24, v1, v23

    .line 131
    .local v24, "sn_stop_point":D
    move-wide/from16 v26, v21

    move-wide/from16 v28, v12

    move-wide/from16 v12, v26

    .local v12, "i":D
    .local v28, "north_south_delta":D
    :goto_2
    cmpg-double v26, v12, v24

    move-object/from16 v27, v1

    .end local v1    # "startend":[D
    .local v27, "startend":[D
    const-string v1, ", zoom "

    move-wide/from16 v30, v6

    .end local v6    # "south":D
    .local v30, "south":D
    const-string v6, " to "

    const-string v7, ","

    if-gtz v26, :cond_8

    .line 132
    new-instance v26, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct/range {v26 .. v26}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    move-object/from16 v32, v26

    .line 133
    .local v32, "p":Lorg/osmdroid/views/overlay/Polyline;
    move-wide/from16 v33, v4

    .end local v4    # "north":D
    .local v33, "north":D
    invoke-virtual/range {v32 .. v32}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v4

    sget v5, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    invoke-virtual/range {v32 .. v32}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v4

    sget v5, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v4, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v5, v12, v13, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 139
    .local v5, "gx":Lorg/osmdroid/util/GeoPoint;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    move-object/from16 v26, v5

    .end local v5    # "gx":Lorg/osmdroid/util/GeoPoint;
    .local v26, "gx":Lorg/osmdroid/util/GeoPoint;
    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v5, v12, v13, v10, v11}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 141
    .end local v26    # "gx":Lorg/osmdroid/util/GeoPoint;
    .restart local v5    # "gx":Lorg/osmdroid/util/GeoPoint;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-boolean v26, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v26, :cond_6

    .line 143
    move-object/from16 v26, v5

    .end local v5    # "gx":Lorg/osmdroid/util/GeoPoint;
    .restart local v26    # "gx":Lorg/osmdroid/util/GeoPoint;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-wide/from16 v35, v14

    .end local v14    # "incrementor":D
    .local v35, "incrementor":D
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "drawing NS "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 142
    .end local v26    # "gx":Lorg/osmdroid/util/GeoPoint;
    .end local v35    # "incrementor":D
    .restart local v5    # "gx":Lorg/osmdroid/util/GeoPoint;
    .restart local v14    # "incrementor":D
    :cond_6
    move-object/from16 v26, v5

    move-wide/from16 v35, v14

    .line 146
    .end local v5    # "gx":Lorg/osmdroid/util/GeoPoint;
    .end local v14    # "incrementor":D
    .restart local v26    # "gx":Lorg/osmdroid/util/GeoPoint;
    .restart local v35    # "incrementor":D
    :goto_3
    move-object/from16 v1, v32

    .end local v32    # "p":Lorg/osmdroid/views/overlay/Polyline;
    .local v1, "p":Lorg/osmdroid/views/overlay/Polyline;
    invoke-virtual {v1, v4}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 148
    invoke-virtual {v3, v1}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 151
    new-instance v5, Lorg/osmdroid/views/overlay/Marker;

    invoke-direct {v5, v0}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 152
    .local v5, "m":Lorg/osmdroid/views/overlay/Marker;
    invoke-static {v5}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v7, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v14, 0x0

    cmpl-double v7, v12, v14

    if-lez v7, :cond_7

    const-string v7, "N"

    goto :goto_4

    :cond_7
    const-string v7, "S"

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {v5, v6}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v5, v6}, Lorg/osmdroid/views/overlay/Marker;->setTextIcon(Ljava/lang/String;)V

    .line 156
    new-instance v7, Lorg/osmdroid/util/GeoPoint;

    add-double v14, v10, v35

    invoke-direct {v7, v12, v13, v14, v15}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v5, v7}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 157
    invoke-virtual {v3, v5}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 131
    .end local v1    # "p":Lorg/osmdroid/views/overlay/Polyline;
    .end local v4    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .end local v5    # "m":Lorg/osmdroid/views/overlay/Marker;
    .end local v6    # "title":Ljava/lang/String;
    .end local v26    # "gx":Lorg/osmdroid/util/GeoPoint;
    add-double v12, v12, v35

    move-object/from16 v1, v27

    move-wide/from16 v6, v30

    move-wide/from16 v4, v33

    move-wide/from16 v14, v35

    goto/16 :goto_2

    .end local v33    # "north":D
    .end local v35    # "incrementor":D
    .local v4, "north":D
    .restart local v14    # "incrementor":D
    :cond_8
    move-wide/from16 v33, v4

    move-wide/from16 v35, v14

    .line 160
    .end local v4    # "north":D
    .end local v12    # "i":D
    .end local v14    # "incrementor":D
    .restart local v33    # "north":D
    .restart local v35    # "incrementor":D
    invoke-static {v10, v11, v8, v9, v2}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getStartEndPointsWE(DDI)[D

    move-result-object v4

    .line 161
    .local v4, "ew":[D
    aget-wide v12, v4, v23

    .line 162
    .local v12, "we_startpoint":D
    aget-wide v14, v4, v20

    .line 165
    .local v14, "ws_stoppoint":D
    move-wide/from16 v37, v12

    move-object/from16 v20, v4

    move-wide/from16 v4, v37

    .local v4, "i":D
    .local v20, "ew":[D
    :goto_5
    cmpg-double v23, v4, v14

    const-string v26, "E"

    const-string v32, "W"

    move-wide/from16 v37, v8

    .end local v8    # "east":D
    .local v37, "east":D
    if-gtz v23, :cond_b

    .line 166
    new-instance v9, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v9}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 167
    .local v9, "p":Lorg/osmdroid/views/overlay/Polyline;
    invoke-virtual {v9}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v8

    move-wide/from16 v39, v10

    .end local v10    # "west":D
    .local v39, "west":D
    sget v10, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    invoke-virtual {v9}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v8

    sget v10, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v8, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v10, Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v41, v14

    move-wide/from16 v14, v33

    .end local v33    # "north":D
    .local v14, "north":D
    .local v41, "ws_stoppoint":D
    invoke-direct {v10, v14, v15, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 171
    .local v10, "gx":Lorg/osmdroid/util/GeoPoint;
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v11, Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v33, v12

    move-wide/from16 v12, v30

    .end local v30    # "south":D
    .local v12, "south":D
    .local v33, "we_startpoint":D
    invoke-direct {v11, v12, v13, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v10, v11

    .line 173
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {v9, v8}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 176
    sget-boolean v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v11, :cond_9

    .line 177
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v30, v8

    .end local v8    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .local v30, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v10

    .end local v10    # "gx":Lorg/osmdroid/util/GeoPoint;
    .local v31, "gx":Lorg/osmdroid/util/GeoPoint;
    const-string v10, "drawing EW "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 176
    .end local v30    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .end local v31    # "gx":Lorg/osmdroid/util/GeoPoint;
    .restart local v8    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .restart local v10    # "gx":Lorg/osmdroid/util/GeoPoint;
    :cond_9
    move-object/from16 v30, v8

    move-object/from16 v31, v10

    .line 179
    .end local v8    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .end local v10    # "gx":Lorg/osmdroid/util/GeoPoint;
    .restart local v30    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .restart local v31    # "gx":Lorg/osmdroid/util/GeoPoint;
    :goto_6
    invoke-virtual {v3, v9}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 182
    new-instance v8, Lorg/osmdroid/views/overlay/Marker;

    invoke-direct {v8, v0}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 183
    .local v8, "m":Lorg/osmdroid/views/overlay/Marker;
    invoke-static {v8}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    .line 184
    const/high16 v10, -0x3d4c0000    # -90.0f

    invoke-virtual {v8, v10}, Lorg/osmdroid/views/overlay/Marker;->setRotation(F)V

    .line 185
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v11, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v17, 0x0

    cmpl-double v11, v4, v17

    if-lez v11, :cond_a

    move-object/from16 v11, v26

    goto :goto_7

    :cond_a
    move-object/from16 v11, v32

    :goto_7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 186
    .local v10, "title":Ljava/lang/String;
    invoke-virtual {v8, v10}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v8, v10}, Lorg/osmdroid/views/overlay/Marker;->setTextIcon(Ljava/lang/String;)V

    .line 188
    new-instance v11, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v23, v9

    move-object/from16 v26, v10

    .end local v9    # "p":Lorg/osmdroid/views/overlay/Polyline;
    .end local v10    # "title":Ljava/lang/String;
    .local v23, "p":Lorg/osmdroid/views/overlay/Polyline;
    .local v26, "title":Ljava/lang/String;
    add-double v9, v12, v35

    invoke-direct {v11, v9, v10, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v8, v11}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 189
    invoke-virtual {v3, v8}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 165
    .end local v8    # "m":Lorg/osmdroid/views/overlay/Marker;
    .end local v23    # "p":Lorg/osmdroid/views/overlay/Polyline;
    .end local v26    # "title":Ljava/lang/String;
    .end local v30    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .end local v31    # "gx":Lorg/osmdroid/util/GeoPoint;
    add-double v4, v4, v35

    move-wide/from16 v30, v12

    move-wide/from16 v12, v33

    move-wide/from16 v8, v37

    move-wide/from16 v10, v39

    move-wide/from16 v33, v14

    move-wide/from16 v14, v41

    goto/16 :goto_5

    .end local v39    # "west":D
    .end local v41    # "ws_stoppoint":D
    .local v10, "west":D
    .local v12, "we_startpoint":D
    .local v14, "ws_stoppoint":D
    .local v30, "south":D
    .local v33, "north":D
    :cond_b
    move-wide/from16 v39, v10

    move-wide/from16 v41, v14

    move-wide/from16 v14, v33

    move-wide/from16 v33, v12

    move-wide/from16 v12, v30

    .line 191
    .end local v4    # "i":D
    .end local v10    # "west":D
    .end local v30    # "south":D
    .local v12, "south":D
    .local v14, "north":D
    .local v33, "we_startpoint":D
    .restart local v39    # "west":D
    .restart local v41    # "ws_stoppoint":D
    if-eqz v19, :cond_13

    .line 193
    sget-boolean v4, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 194
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DATELINE zoom "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v9, v33

    .end local v33    # "we_startpoint":D
    .local v9, "we_startpoint":D
    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v8, v2

    move-object v11, v3

    move-wide/from16 v2, v41

    .end local v3    # "gridlines":Lorg/osmdroid/views/overlay/FolderOverlay;
    .end local v41    # "ws_stoppoint":D
    .local v2, "ws_stoppoint":D
    .local v8, "zoom":I
    .local v11, "gridlines":Lorg/osmdroid/views/overlay/FolderOverlay;
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 193
    .end local v8    # "zoom":I
    .end local v9    # "we_startpoint":D
    .end local v11    # "gridlines":Lorg/osmdroid/views/overlay/FolderOverlay;
    .local v2, "zoom":I
    .restart local v3    # "gridlines":Lorg/osmdroid/views/overlay/FolderOverlay;
    .restart local v33    # "we_startpoint":D
    .restart local v41    # "ws_stoppoint":D
    :cond_c
    move v8, v2

    move-object v11, v3

    move-wide/from16 v9, v33

    move-wide/from16 v2, v41

    .line 198
    .end local v3    # "gridlines":Lorg/osmdroid/views/overlay/FolderOverlay;
    .end local v33    # "we_startpoint":D
    .end local v41    # "ws_stoppoint":D
    .local v2, "ws_stoppoint":D
    .restart local v8    # "zoom":I
    .restart local v9    # "we_startpoint":D
    .restart local v11    # "gridlines":Lorg/osmdroid/views/overlay/FolderOverlay;
    :goto_8
    move-wide v4, v9

    .restart local v4    # "i":D
    :goto_9
    const-wide v30, 0x4066800000000000L    # 180.0

    cmpg-double v33, v4, v30

    if-gtz v33, :cond_e

    .line 199
    new-instance v30, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct/range {v30 .. v30}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    move-object/from16 v31, v30

    .line 200
    .local v31, "p":Lorg/osmdroid/views/overlay/Polyline;
    move-wide/from16 v33, v9

    .end local v9    # "we_startpoint":D
    .restart local v33    # "we_startpoint":D
    invoke-virtual/range {v31 .. v31}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v9

    sget v10, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 201
    invoke-virtual/range {v31 .. v31}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v9

    sget v10, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v9, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v10, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v10, v14, v15, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 204
    .local v10, "gx":Lorg/osmdroid/util/GeoPoint;
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    move-object/from16 v30, v10

    .end local v10    # "gx":Lorg/osmdroid/util/GeoPoint;
    .local v30, "gx":Lorg/osmdroid/util/GeoPoint;
    new-instance v10, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v10, v12, v13, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 206
    .end local v30    # "gx":Lorg/osmdroid/util/GeoPoint;
    .restart local v10    # "gx":Lorg/osmdroid/util/GeoPoint;
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    move-object/from16 v30, v10

    move-object/from16 v10, v31

    .end local v31    # "p":Lorg/osmdroid/views/overlay/Polyline;
    .local v10, "p":Lorg/osmdroid/views/overlay/Polyline;
    .restart local v30    # "gx":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v10, v9}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 209
    sget-boolean v31, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    if-eqz v31, :cond_d

    .line 210
    move-object/from16 v31, v9

    .end local v9    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .local v31, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v41, v2

    .end local v2    # "ws_stoppoint":D
    .restart local v41    # "ws_stoppoint":D
    const-string v2, "DATELINE drawing NS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 209
    .end local v31    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .end local v41    # "ws_stoppoint":D
    .restart local v2    # "ws_stoppoint":D
    .restart local v9    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_d
    move-wide/from16 v41, v2

    move-object/from16 v31, v9

    .line 213
    .end local v2    # "ws_stoppoint":D
    .end local v9    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .restart local v31    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .restart local v41    # "ws_stoppoint":D
    :goto_a
    invoke-virtual {v11, v10}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 198
    .end local v10    # "p":Lorg/osmdroid/views/overlay/Polyline;
    .end local v30    # "gx":Lorg/osmdroid/util/GeoPoint;
    .end local v31    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    add-double v4, v4, v35

    move-object/from16 v0, p1

    move-wide/from16 v9, v33

    move-wide/from16 v2, v41

    goto/16 :goto_9

    .end local v33    # "we_startpoint":D
    .end local v41    # "ws_stoppoint":D
    .restart local v2    # "ws_stoppoint":D
    .local v9, "we_startpoint":D
    :cond_e
    move-wide/from16 v41, v2

    move-wide/from16 v33, v9

    .line 216
    .end local v2    # "ws_stoppoint":D
    .end local v4    # "i":D
    .end local v9    # "we_startpoint":D
    .restart local v33    # "we_startpoint":D
    .restart local v41    # "ws_stoppoint":D
    const-wide v2, -0x3f99800000000000L    # -180.0

    .local v2, "i":D
    :goto_b
    cmpg-double v0, v2, v41

    if-gtz v0, :cond_11

    .line 217
    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 218
    .local v0, "p":Lorg/osmdroid/views/overlay/Polyline;
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v4

    sget v5, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v4

    sget v5, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v4, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v5, v14, v15, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 222
    .local v5, "gx":Lorg/osmdroid/util/GeoPoint;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v9, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v9, v12, v13, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v5, v9

    .line 224
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {v0, v4}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 227
    sget-boolean v9, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    if-eqz v9, :cond_f

    .line 228
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v43, v4

    .end local v4    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .local v43, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    const-string v4, "DATELINE drawing EW"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 227
    .end local v43    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .restart local v4    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_f
    move-object/from16 v43, v4

    .line 231
    .end local v4    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .restart local v43    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :goto_c
    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 233
    new-instance v4, Lorg/osmdroid/views/overlay/Marker;

    move-object/from16 v9, p1

    invoke-direct {v4, v9}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 234
    .local v4, "m":Lorg/osmdroid/views/overlay/Marker;
    invoke-static {v4}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    .line 235
    const/high16 v10, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v10}, Lorg/osmdroid/views/overlay/Marker;->setRotation(F)V

    .line 236
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v44, v0

    .end local v0    # "p":Lorg/osmdroid/views/overlay/Polyline;
    .local v44, "p":Lorg/osmdroid/views/overlay/Polyline;
    sget-object v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v17, 0x0

    cmpl-double v10, v2, v17

    if-lez v10, :cond_10

    move-object/from16 v10, v26

    goto :goto_d

    :cond_10
    move-object/from16 v10, v32

    :goto_d
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {v4, v0}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v4, v0}, Lorg/osmdroid/views/overlay/Marker;->setTextIcon(Ljava/lang/String;)V

    .line 239
    new-instance v10, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v46, v0

    move-object/from16 v45, v1

    .end local v0    # "title":Ljava/lang/String;
    .local v46, "title":Ljava/lang/String;
    add-double v0, v12, v35

    invoke-direct {v10, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v4, v10}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 240
    invoke-virtual {v11, v4}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 216
    .end local v4    # "m":Lorg/osmdroid/views/overlay/Marker;
    .end local v5    # "gx":Lorg/osmdroid/util/GeoPoint;
    .end local v43    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .end local v44    # "p":Lorg/osmdroid/views/overlay/Polyline;
    .end local v46    # "title":Ljava/lang/String;
    add-double v2, v2, v35

    move-object/from16 v1, v45

    goto/16 :goto_b

    :cond_11
    move-object/from16 v9, p1

    .line 244
    .end local v2    # "i":D
    move-wide/from16 v0, v33

    .local v0, "i":D
    :goto_e
    cmpg-double v2, v0, v30

    if-gez v2, :cond_14

    .line 246
    new-instance v2, Lorg/osmdroid/views/overlay/Marker;

    invoke-direct {v2, v9}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 248
    .local v2, "m":Lorg/osmdroid/views/overlay/Marker;
    invoke-static {v2}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    .line 249
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Marker;->setRotation(F)V

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmpl-double v7, v0, v5

    if-lez v7, :cond_12

    move-object/from16 v7, v26

    goto :goto_f

    :cond_12
    move-object/from16 v7, v32

    :goto_f
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2, v4}, Lorg/osmdroid/views/overlay/Marker;->setTextIcon(Ljava/lang/String;)V

    .line 253
    new-instance v7, Lorg/osmdroid/util/GeoPoint;

    move-object v10, v4

    .end local v4    # "title":Ljava/lang/String;
    .local v10, "title":Ljava/lang/String;
    add-double v3, v12, v35

    invoke-direct {v7, v3, v4, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v2, v7}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 254
    invoke-virtual {v11, v2}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 244
    .end local v2    # "m":Lorg/osmdroid/views/overlay/Marker;
    .end local v10    # "title":Ljava/lang/String;
    add-double v0, v0, v35

    goto :goto_e

    .line 191
    .end local v0    # "i":D
    .end local v8    # "zoom":I
    .end local v11    # "gridlines":Lorg/osmdroid/views/overlay/FolderOverlay;
    .local v2, "zoom":I
    .restart local v3    # "gridlines":Lorg/osmdroid/views/overlay/FolderOverlay;
    :cond_13
    move-object v9, v0

    move v8, v2

    move-object v11, v3

    .line 260
    .end local v2    # "zoom":I
    .end local v3    # "gridlines":Lorg/osmdroid/views/overlay/FolderOverlay;
    .end local v12    # "south":D
    .end local v14    # "north":D
    .end local v19    # "dateLineVisible":Z
    .end local v20    # "ew":[D
    .end local v21    # "sn_start_point":D
    .end local v24    # "sn_stop_point":D
    .end local v27    # "startend":[D
    .end local v28    # "north_south_delta":D
    .end local v33    # "we_startpoint":D
    .end local v35    # "incrementor":D
    .end local v37    # "east":D
    .end local v39    # "west":D
    .end local v41    # "ws_stoppoint":D
    .restart local v8    # "zoom":I
    .restart local v11    # "gridlines":Lorg/osmdroid/views/overlay/FolderOverlay;
    :cond_14
    :goto_10
    return-object v11
.end method

.method private static getStartEndPointsNS(DDI)[D
    .locals 15
    .param p0, "north"    # D
    .param p2, "south"    # D
    .param p4, "zoom"    # I

    .line 273
    move/from16 v0, p4

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v0, v1, :cond_4

    .line 274
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    .line 275
    .local v5, "sn_start_point":D
    invoke-static/range {p4 .. p4}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v7

    .line 278
    .local v7, "incrementor":D
    const-wide v9, -0x3fa9800000000000L    # -90.0

    .line 279
    .local v9, "x":D
    :goto_0
    cmpg-double v1, v9, v5

    if-gez v1, :cond_0

    .line 280
    add-double/2addr v9, v7

    goto :goto_0

    .line 281
    :cond_0
    move-wide v5, v9

    .line 283
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    .line 284
    .local v11, "sn_stop_point":D
    const-wide v9, 0x4056800000000000L    # 90.0

    .line 285
    :goto_1
    cmpl-double v1, v9, v11

    if-lez v1, :cond_1

    .line 286
    sub-double/2addr v9, v7

    goto :goto_1

    .line 287
    :cond_1
    move-wide v11, v9

    .line 289
    const-wide v13, 0x4056800000000000L    # 90.0

    cmpl-double v1, v11, v13

    if-lez v1, :cond_2

    .line 290
    const-wide v11, 0x4056800000000000L    # 90.0

    .line 292
    :cond_2
    const-wide v13, -0x3fa9800000000000L    # -90.0

    cmpg-double v1, v5, v13

    if-gez v1, :cond_3

    .line 293
    const-wide v5, -0x3fa9800000000000L    # -90.0

    .line 295
    :cond_3
    new-array v1, v3, [D

    aput-wide v5, v1, v2

    aput-wide v11, v1, v4

    return-object v1

    .line 298
    .end local v5    # "sn_start_point":D
    .end local v7    # "incrementor":D
    .end local v9    # "x":D
    .end local v11    # "sn_stop_point":D
    :cond_4
    const-wide v5, -0x3fa9800000000000L    # -90.0

    .line 299
    .restart local v5    # "sn_start_point":D
    const-wide/16 v7, 0x0

    cmpl-double v1, p2, v7

    if-lez v1, :cond_5

    .line 300
    const-wide/16 v5, 0x0

    .line 302
    :cond_5
    const-wide v9, 0x4056800000000000L    # 90.0

    .line 303
    .local v9, "sn_stop_point":D
    cmpg-double v1, p0, v7

    if-gez v1, :cond_6

    .line 304
    const-wide/16 v9, 0x0

    .line 307
    :cond_6
    const/4 v1, 0x2

    .local v1, "xx":I
    :goto_2
    if-gt v1, v0, :cond_a

    .line 308
    invoke-static {v1}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v7

    .line 309
    .local v7, "inc":D
    :cond_7
    :goto_3
    sub-double v11, p2, v7

    cmpg-double v11, v5, v11

    if-gez v11, :cond_8

    .line 310
    add-double/2addr v5, v7

    .line 311
    sget-boolean v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v11, :cond_7

    .line 312
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "south "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 316
    :cond_8
    :goto_4
    add-double v11, p0, v7

    cmpl-double v11, v9, v11

    if-lez v11, :cond_9

    .line 317
    sub-double/2addr v9, v7

    .line 318
    sget-boolean v11, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v11, :cond_8

    .line 319
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "north "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 307
    .end local v7    # "inc":D
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 324
    .end local v1    # "xx":I
    :cond_a
    new-array v1, v3, [D

    aput-wide v5, v1, v2

    aput-wide v9, v1, v4

    return-object v1
.end method

.method private static getStartEndPointsWE(DDI)[D
    .locals 16
    .param p0, "west"    # D
    .param p2, "east"    # D
    .param p4, "zoom"    # I

    .line 339
    move/from16 v0, p4

    invoke-static/range {p4 .. p4}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v1

    .line 341
    .local v1, "incrementor":D
    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v0, v3, :cond_4

    .line 342
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    .line 343
    .local v7, "we_startpoint":D
    const-wide v9, 0x4066800000000000L    # 180.0

    .line 344
    .local v9, "x":D
    :goto_0
    cmpl-double v3, v9, v7

    if-lez v3, :cond_0

    .line 345
    sub-double/2addr v9, v1

    goto :goto_0

    .line 346
    :cond_0
    move-wide v7, v9

    .line 348
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    .line 349
    .local v11, "ws_stoppoint":D
    const-wide v9, -0x3f99800000000000L    # -180.0

    .line 350
    :goto_1
    cmpg-double v3, v9, v11

    if-gez v3, :cond_1

    .line 351
    add-double/2addr v9, v1

    goto :goto_1

    .line 352
    :cond_1
    const-wide v13, -0x3f99800000000000L    # -180.0

    cmpg-double v3, v7, v13

    if-gez v3, :cond_2

    .line 353
    const-wide v7, -0x3f99800000000000L    # -180.0

    .line 355
    :cond_2
    const-wide v13, 0x4066800000000000L    # 180.0

    cmpl-double v3, v11, v13

    if-lez v3, :cond_3

    .line 356
    const-wide v11, 0x4066800000000000L    # 180.0

    .line 358
    :cond_3
    new-array v3, v5, [D

    aput-wide v11, v3, v4

    aput-wide v7, v3, v6

    return-object v3

    .line 361
    .end local v7    # "we_startpoint":D
    .end local v9    # "x":D
    .end local v11    # "ws_stoppoint":D
    :cond_4
    const-wide v7, -0x3f99800000000000L    # -180.0

    .line 362
    .local v7, "west_start_point":D
    const-wide/16 v9, 0x0

    cmpl-double v3, p0, v9

    if-lez v3, :cond_5

    .line 363
    const-wide/16 v7, 0x0

    .line 365
    :cond_5
    const-wide v11, 0x4066800000000000L    # 180.0

    .line 366
    .local v11, "easter_stop_point":D
    cmpg-double v3, p2, v9

    if-gez v3, :cond_6

    .line 367
    const-wide/16 v11, 0x0

    .line 370
    :cond_6
    const/4 v3, 0x2

    .local v3, "xx":I
    :goto_2
    if-gt v3, v0, :cond_9

    .line 371
    invoke-static {v3}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v9

    .line 372
    .local v9, "inc":D
    :goto_3
    add-double v13, p2, v9

    cmpl-double v13, v11, v13

    if-lez v13, :cond_7

    .line 373
    sub-double/2addr v11, v9

    goto :goto_3

    .line 377
    :cond_7
    :goto_4
    sub-double v13, p0, v9

    cmpg-double v13, v7, v13

    if-gez v13, :cond_8

    .line 378
    add-double/2addr v7, v9

    .line 379
    sget-boolean v13, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v13, :cond_7

    .line 380
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "west "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 370
    .end local v9    # "inc":D
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 384
    .end local v3    # "xx":I
    :cond_9
    sget-boolean v3, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v3, :cond_a

    .line 385
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "return EW set as "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    :cond_a
    new-array v3, v5, [D

    aput-wide v11, v3, v4

    aput-wide v7, v3, v6

    return-object v3
.end method

.method public static setDefaults()V
    .locals 2

    .line 460
    const/high16 v0, -0x1000000

    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    .line 461
    const/4 v1, -0x1

    sput v1, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontColor:I

    .line 462
    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->backgroundColor:I

    .line 463
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    .line 464
    const/16 v0, 0x20

    sput-short v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontSizeDp:S

    .line 465
    const/4 v0, 0x0

    sput-boolean v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    .line 466
    sput-boolean v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    .line 467
    return-void
.end method
