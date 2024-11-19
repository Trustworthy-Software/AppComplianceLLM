.class public Lorg/osmdroid/util/Distance;
.super Ljava/lang/Object;
.source "Distance.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dotProduct(DDDDDD)D
    .locals 6
    .param p0, "pAX"    # D
    .param p2, "pAY"    # D
    .param p4, "pBX"    # D
    .param p6, "pBY"    # D
    .param p8, "pCX"    # D
    .param p10, "pCY"    # D

    .line 102
    sub-double v0, p4, p0

    sub-double v2, p8, p0

    mul-double/2addr v0, v2

    sub-double v2, p6, p2

    sub-double v4, p10, p2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static getProjectionFactorToLine(DDDDDD)D
    .locals 12
    .param p0, "pFromX"    # D
    .param p2, "pFromY"    # D
    .param p4, "pAX"    # D
    .param p6, "pAY"    # D
    .param p8, "pBX"    # D
    .param p10, "pBY"    # D

    .line 70
    cmpl-double v0, p4, p8

    if-nez v0, :cond_0

    cmpl-double v0, p6, p10

    if-nez v0, :cond_0

    .line 71
    const-wide/16 v0, 0x0

    return-wide v0

    .line 73
    :cond_0
    move-wide/from16 v0, p4

    move-wide/from16 v2, p6

    move-wide/from16 v4, p8

    move-wide/from16 v6, p10

    move-wide v8, p0

    move-wide v10, p2

    invoke-static/range {v0 .. v11}, Lorg/osmdroid/util/Distance;->dotProduct(DDDDDD)D

    move-result-wide v0

    .line 74
    invoke-static/range {p4 .. p11}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 73
    return-wide v0
.end method

.method public static getProjectionFactorToSegment(DDDDDD)D
    .locals 5
    .param p0, "pFromX"    # D
    .param p2, "pFromY"    # D
    .param p4, "pAX"    # D
    .param p6, "pAY"    # D
    .param p8, "pBX"    # D
    .param p10, "pBY"    # D

    .line 86
    invoke-static/range {p0 .. p11}, Lorg/osmdroid/util/Distance;->getProjectionFactorToLine(DDDDDD)D

    move-result-wide v0

    .line 87
    .local v0, "result":D
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 88
    return-wide v2

    .line 90
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 91
    return-wide v2

    .line 93
    :cond_1
    return-wide v0
.end method

.method public static getSquaredDistanceToLine(DDDDDD)D
    .locals 14
    .param p0, "pFromX"    # D
    .param p2, "pFromY"    # D
    .param p4, "pAX"    # D
    .param p6, "pAY"    # D
    .param p8, "pBX"    # D
    .param p10, "pBY"    # D

    .line 31
    nop

    .line 32
    invoke-static/range {p0 .. p11}, Lorg/osmdroid/util/Distance;->getProjectionFactorToLine(DDDDDD)D

    move-result-wide v12

    .line 31
    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v13}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToProjection(DDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getSquaredDistanceToPoint(DDDD)D
    .locals 8
    .param p0, "pFromX"    # D
    .param p2, "pFromY"    # D
    .param p4, "pToX"    # D
    .param p6, "pToY"    # D

    .line 19
    sub-double v0, p0, p4

    .line 20
    .local v0, "dX":D
    sub-double v2, p2, p6

    .line 21
    .local v2, "dY":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    return-wide v4
.end method

.method public static getSquaredDistanceToProjection(DDDDDDD)D
    .locals 12
    .param p0, "pFromX"    # D
    .param p2, "pFromY"    # D
    .param p4, "pAX"    # D
    .param p6, "pAY"    # D
    .param p8, "pBX"    # D
    .param p10, "pBY"    # D
    .param p12, "pProjectionFactor"    # D

    .line 55
    sub-double v0, p8, p4

    mul-double v0, v0, p12

    add-double v0, p4, v0

    .line 56
    .local v0, "projectedX":D
    sub-double v2, p10, p6

    mul-double v2, v2, p12

    add-double v10, p6, v2

    .line 57
    .local v10, "projectedY":D
    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, v0

    move-wide v8, v10

    invoke-static/range {v2 .. v9}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method public static getSquaredDistanceToSegment(DDDDDD)D
    .locals 14
    .param p0, "pFromX"    # D
    .param p2, "pFromY"    # D
    .param p4, "pAX"    # D
    .param p6, "pAY"    # D
    .param p8, "pBX"    # D
    .param p10, "pBY"    # D

    .line 42
    nop

    .line 43
    invoke-static/range {p0 .. p11}, Lorg/osmdroid/util/Distance;->getProjectionFactorToSegment(DDDDDD)D

    move-result-wide v12

    .line 42
    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v13}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToProjection(DDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method
