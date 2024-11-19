.class public Lorg/osmdroid/util/SegmentIntersection;
.super Ljava/lang/Object;
.source "SegmentIntersection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check(DDDDDDDDLorg/osmdroid/util/PointL;DD)Z
    .locals 20
    .param p0, "pXA"    # D
    .param p2, "pYA"    # D
    .param p4, "pXB"    # D
    .param p6, "pYB"    # D
    .param p8, "pXC"    # D
    .param p10, "pYC"    # D
    .param p12, "pXD"    # D
    .param p14, "pYD"    # D
    .param p16, "pIntersection"    # Lorg/osmdroid/util/PointL;
    .param p17, "pXI"    # D
    .param p19, "pYI"    # D

    .line 93
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    cmpg-double v16, p17, v16

    const/16 v17, 0x0

    if-ltz v16, :cond_8

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    cmpl-double v16, p17, v18

    if-lez v16, :cond_0

    move-object/from16 v0, p16

    goto :goto_3

    .line 96
    :cond_0
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    cmpg-double v16, p17, v18

    if-ltz v16, :cond_7

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    cmpl-double v16, p17, v18

    if-lez v16, :cond_1

    move-object/from16 v0, p16

    goto :goto_2

    .line 99
    :cond_1
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    cmpg-double v16, p19, v18

    if-ltz v16, :cond_6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    cmpl-double v16, p19, v18

    if-lez v16, :cond_2

    move-object/from16 v0, p16

    goto :goto_1

    .line 102
    :cond_2
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    cmpg-double v16, p19, v18

    if-ltz v16, :cond_5

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    cmpl-double v16, p19, v18

    if-lez v16, :cond_3

    move-object/from16 v0, p16

    goto :goto_0

    .line 105
    :cond_3
    move-object/from16 v0, p16

    if-eqz v0, :cond_4

    .line 106
    invoke-static/range {p17 .. p18}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/osmdroid/util/PointL;->x:J

    .line 107
    invoke-static/range {p19 .. p20}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/osmdroid/util/PointL;->y:J

    .line 109
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 102
    :cond_5
    move-object/from16 v0, p16

    .line 103
    :goto_0
    return v17

    .line 99
    :cond_6
    move-object/from16 v0, p16

    .line 100
    :goto_1
    return v17

    .line 96
    :cond_7
    move-object/from16 v0, p16

    .line 97
    :goto_2
    return v17

    .line 93
    :cond_8
    move-object/from16 v0, p16

    .line 94
    :goto_3
    return v17
.end method

.method private static divisionByZeroSideEffect(DDDDDDDDLorg/osmdroid/util/PointL;)Z
    .locals 17
    .param p0, "pXA"    # D
    .param p2, "pYA"    # D
    .param p4, "pXB"    # D
    .param p6, "pYB"    # D
    .param p8, "pXC"    # D
    .param p10, "pYC"    # D
    .param p12, "pXD"    # D
    .param p14, "pYD"    # D
    .param p16, "pIntersection"    # Lorg/osmdroid/util/PointL;

    .line 141
    invoke-static/range {p0 .. p16}, Lorg/osmdroid/util/SegmentIntersection;->divisionByZeroSideEffectX(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    move-wide/from16 v0, p8

    move-wide/from16 v2, p10

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    move-object/from16 v16, p16

    invoke-static/range {v0 .. v16}, Lorg/osmdroid/util/SegmentIntersection;->divisionByZeroSideEffectX(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    invoke-static/range {p0 .. p16}, Lorg/osmdroid/util/SegmentIntersection;->divisionByZeroSideEffectY(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    move-wide/from16 v0, p8

    move-wide/from16 v2, p10

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    move-object/from16 v16, p16

    invoke-static/range {v0 .. v16}, Lorg/osmdroid/util/SegmentIntersection;->divisionByZeroSideEffectY(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 141
    :goto_1
    return v0
.end method

.method private static divisionByZeroSideEffectX(DDDDDDDDLorg/osmdroid/util/PointL;)Z
    .locals 25
    .param p0, "pXA"    # D
    .param p2, "pYA"    # D
    .param p4, "pXB"    # D
    .param p6, "pYB"    # D
    .param p8, "pXC"    # D
    .param p10, "pYC"    # D
    .param p12, "pXD"    # D
    .param p14, "pYD"    # D
    .param p16, "pIntersection"    # Lorg/osmdroid/util/PointL;

    .line 152
    cmpl-double v0, p0, p4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 153
    return v1

    .line 155
    :cond_0
    cmpl-double v0, p8, p12

    if-nez v0, :cond_1

    .line 156
    return v1

    .line 158
    :cond_1
    sub-double v0, p0, p8

    sub-double v2, p12, p8

    div-double v21, v0, v2

    .line 159
    .local v21, "k":D
    sub-double v0, p14, p10

    mul-double v0, v0, v21

    add-double v23, v0, p10

    .local v23, "yi":D
    move-wide/from16 v19, v23

    .line 160
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move-wide/from16 v17, p0

    invoke-static/range {v0 .. v20}, Lorg/osmdroid/util/SegmentIntersection;->check(DDDDDDDDLorg/osmdroid/util/PointL;DD)Z

    move-result v0

    return v0
.end method

.method private static divisionByZeroSideEffectY(DDDDDDDDLorg/osmdroid/util/PointL;)Z
    .locals 25
    .param p0, "pXA"    # D
    .param p2, "pYA"    # D
    .param p4, "pXB"    # D
    .param p6, "pYB"    # D
    .param p8, "pXC"    # D
    .param p10, "pYC"    # D
    .param p12, "pXD"    # D
    .param p14, "pYD"    # D
    .param p16, "pIntersection"    # Lorg/osmdroid/util/PointL;

    .line 168
    cmpl-double v0, p2, p6

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 169
    return v1

    .line 171
    :cond_0
    cmpl-double v0, p10, p14

    if-nez v0, :cond_1

    .line 172
    return v1

    .line 174
    :cond_1
    sub-double v0, p2, p10

    sub-double v2, p14, p10

    div-double v21, v0, v2

    .line 175
    .local v21, "k":D
    sub-double v0, p12, p8

    mul-double v0, v0, v21

    add-double v23, v0, p8

    .local v23, "xi":D
    move-wide/from16 v17, v23

    .line 176
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move-wide/from16 v19, p2

    invoke-static/range {v0 .. v20}, Lorg/osmdroid/util/SegmentIntersection;->check(DDDDDDDDLorg/osmdroid/util/PointL;DD)Z

    move-result v0

    return v0
.end method

.method public static intersection(DDDDDDDDLorg/osmdroid/util/PointL;)Z
    .locals 27
    .param p0, "pXA"    # D
    .param p2, "pYA"    # D
    .param p4, "pXB"    # D
    .param p6, "pYB"    # D
    .param p8, "pXC"    # D
    .param p10, "pYC"    # D
    .param p12, "pXD"    # D
    .param p14, "pYD"    # D
    .param p16, "pIntersection"    # Lorg/osmdroid/util/PointL;

    .line 30
    invoke-static/range {p0 .. p16}, Lorg/osmdroid/util/SegmentIntersection;->parallelSideEffect(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 31
    return v1

    .line 33
    :cond_0
    invoke-static/range {p0 .. p16}, Lorg/osmdroid/util/SegmentIntersection;->divisionByZeroSideEffect(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    return v1

    .line 36
    :cond_1
    sub-double v0, p0, p4

    sub-double v2, p10, p14

    mul-double/2addr v0, v2

    sub-double v2, p2, p6

    sub-double v4, p8, p12

    mul-double/2addr v2, v4

    sub-double v21, v0, v2

    .line 37
    .local v21, "d":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v21, v0

    if-nez v0, :cond_2

    .line 38
    const/4 v0, 0x0

    return v0

    .line 40
    :cond_2
    sub-double v0, p8, p12

    mul-double v2, p0, p6

    mul-double v4, p2, p4

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    sub-double v2, p0, p4

    mul-double v4, p8, p14

    mul-double v6, p10, p12

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    div-double v23, v0, v21

    .local v23, "xi":D
    move-wide/from16 v17, v23

    .line 41
    sub-double v0, p10, p14

    mul-double v2, p0, p6

    mul-double v4, p2, p4

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    sub-double v2, p2, p6

    mul-double v4, p8, p14

    mul-double v6, p10, p12

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    div-double v25, v0, v21

    .local v25, "yi":D
    move-wide/from16 v19, v25

    .line 42
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    invoke-static/range {v0 .. v20}, Lorg/osmdroid/util/SegmentIntersection;->check(DDDDDDDDLorg/osmdroid/util/PointL;DD)Z

    move-result v0

    return v0
.end method

.method private static middle(DDDD)D
    .locals 6
    .param p0, "pA"    # D
    .param p2, "pB"    # D
    .param p4, "pC"    # D
    .param p6, "pD"    # D

    .line 76
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 77
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 76
    return-wide v0
.end method

.method private static parallelSideEffect(DDDDDDDDLorg/osmdroid/util/PointL;)Z
    .locals 33
    .param p0, "pXA"    # D
    .param p2, "pYA"    # D
    .param p4, "pXB"    # D
    .param p6, "pYB"    # D
    .param p8, "pXC"    # D
    .param p10, "pYC"    # D
    .param p12, "pXD"    # D
    .param p14, "pYD"    # D
    .param p16, "pIntersection"    # Lorg/osmdroid/util/PointL;

    .line 53
    cmpl-double v0, p0, p4

    if-nez v0, :cond_0

    .line 54
    invoke-static/range {p0 .. p16}, Lorg/osmdroid/util/SegmentIntersection;->parallelSideEffectSameX(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    return v0

    .line 56
    :cond_0
    cmpl-double v0, p8, p12

    if-nez v0, :cond_1

    .line 57
    move-wide/from16 v0, p8

    move-wide/from16 v2, p10

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    move-object/from16 v16, p16

    invoke-static/range {v0 .. v16}, Lorg/osmdroid/util/SegmentIntersection;->parallelSideEffectSameX(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    return v0

    .line 60
    :cond_1
    sub-double v0, p6, p2

    sub-double v2, p4, p0

    div-double v21, v0, v2

    .line 61
    .local v21, "k1":D
    sub-double v0, p14, p10

    sub-double v2, p12, p8

    div-double v23, v0, v2

    .line 62
    .local v23, "k2":D
    cmpl-double v0, v21, v23

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 63
    return v1

    .line 65
    :cond_2
    mul-double v2, v21, p0

    sub-double v25, p2, v2

    .line 66
    .local v25, "b1":D
    mul-double v2, v23, p8

    sub-double v27, p10, v2

    .line 67
    .local v27, "b2":D
    cmpl-double v0, v25, v27

    if-eqz v0, :cond_3

    .line 68
    return v1

    .line 70
    :cond_3
    move-wide/from16 v0, p0

    move-wide/from16 v2, p4

    move-wide/from16 v4, p8

    move-wide/from16 v6, p12

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/SegmentIntersection;->middle(DDDD)D

    move-result-wide v29

    .local v29, "xi":D
    move-wide/from16 v17, v29

    .line 71
    move-wide/from16 v0, p2

    move-wide/from16 v2, p6

    move-wide/from16 v4, p10

    move-wide/from16 v6, p14

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/SegmentIntersection;->middle(DDDD)D

    move-result-wide v31

    .local v31, "yi":D
    move-wide/from16 v19, v31

    .line 72
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    invoke-static/range {v0 .. v20}, Lorg/osmdroid/util/SegmentIntersection;->check(DDDDDDDDLorg/osmdroid/util/PointL;DD)Z

    move-result v0

    return v0
.end method

.method private static parallelSideEffectSameX(DDDDDDDDLorg/osmdroid/util/PointL;)Z
    .locals 23
    .param p0, "pXA"    # D
    .param p2, "pYA"    # D
    .param p4, "pXB"    # D
    .param p6, "pYB"    # D
    .param p8, "pXC"    # D
    .param p10, "pYC"    # D
    .param p12, "pXD"    # D
    .param p14, "pYD"    # D
    .param p16, "pIntersection"    # Lorg/osmdroid/util/PointL;

    .line 120
    cmpl-double v0, p0, p4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    return v1

    .line 123
    :cond_0
    cmpl-double v0, p8, p12

    if-eqz v0, :cond_1

    .line 124
    return v1

    .line 126
    :cond_1
    cmpl-double v0, p0, p8

    if-eqz v0, :cond_2

    .line 127
    return v1

    .line 129
    :cond_2
    move-wide/from16 v0, p2

    move-wide/from16 v2, p6

    move-wide/from16 v4, p10

    move-wide/from16 v6, p14

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/SegmentIntersection;->middle(DDDD)D

    move-result-wide v21

    .local v21, "yi":D
    move-wide/from16 v19, v21

    .line 130
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move-wide/from16 v17, p0

    invoke-static/range {v0 .. v20}, Lorg/osmdroid/util/SegmentIntersection;->check(DDDDDDDDLorg/osmdroid/util/PointL;DD)Z

    move-result v0

    return v0
.end method
