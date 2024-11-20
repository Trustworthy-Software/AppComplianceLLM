.class public Lorg/osmdroid/util/MyMath;
.super Ljava/lang/Object;
.source "MyMath.java"

# interfaces
.implements Lorg/osmdroid/views/util/constants/MathConstants;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static cleanPositiveAngle(D)D
    .locals 3
    .param p0, "pAngle"    # D

    .line 143
    nop

    :goto_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    const-wide v1, 0x4076800000000000L    # 360.0

    if-gez v0, :cond_0

    .line 144
    add-double/2addr p0, v1

    goto :goto_0

    .line 146
    :cond_0
    :goto_1
    cmpl-double v0, p0, v1

    if-ltz v0, :cond_1

    .line 147
    sub-double/2addr p0, v1

    goto :goto_1

    .line 149
    :cond_1
    return-wide p0
.end method

.method public static computeAngle(JJJJ)D
    .locals 4
    .param p0, "pX1"    # J
    .param p2, "pY1"    # J
    .param p4, "pX2"    # J
    .param p6, "pY2"    # J

    .line 157
    sub-long v0, p6, p2

    long-to-double v0, v0

    sub-long v2, p4, p0

    long-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static computeCirclePoint(JJDDLorg/osmdroid/util/PointL;)V
    .locals 2
    .param p0, "pCenterX"    # J
    .param p2, "pCenterY"    # J
    .param p4, "pRadius"    # D
    .param p6, "pAngle"    # D
    .param p8, "pOutput"    # Lorg/osmdroid/util/PointL;

    .line 167
    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p4

    double-to-long v0, v0

    add-long/2addr v0, p0

    iput-wide v0, p8, Lorg/osmdroid/util/PointL;->x:J

    .line 168
    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, p4

    double-to-long v0, v0

    add-long/2addr v0, p2

    iput-wide v0, p8, Lorg/osmdroid/util/PointL;->y:J

    .line 169
    return-void
.end method

.method public static floorToInt(D)I
    .locals 3
    .param p0, "pValue"    # D

    .line 77
    double-to-int v0, p0

    .line 78
    .local v0, "result":I
    int-to-double v1, v0

    cmpg-double v1, v1, p0

    if-gtz v1, :cond_0

    .line 79
    return v0

    .line 81
    :cond_0
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method public static floorToLong(D)J
    .locals 4
    .param p0, "pValue"    # D

    .line 66
    double-to-long v0, p0

    .line 67
    .local v0, "result":J
    long-to-double v2, v0

    cmpg-double v2, v2, p0

    if-gtz v2, :cond_0

    .line 68
    return-wide v0

    .line 70
    :cond_0
    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public static getAngleDifference(DDLjava/lang/Boolean;)D
    .locals 6
    .param p0, "pStart"    # D
    .param p2, "pEnd"    # D
    .param p4, "pClockwise"    # Ljava/lang/Boolean;

    .line 123
    sub-double v0, p2, p0

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->cleanPositiveAngle(D)D

    move-result-wide v0

    .line 124
    .local v0, "difference":D
    const-wide v2, 0x4076800000000000L    # 360.0

    if-eqz p4, :cond_1

    .line 125
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    return-wide v0

    .line 128
    :cond_0
    sub-double v2, v0, v2

    return-wide v2

    .line 131
    :cond_1
    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_2

    .line 132
    return-wide v0

    .line 134
    :cond_2
    sub-double v2, v0, v2

    return-wide v2
.end method

.method public static getNextSquareNumberAbove(F)I
    .locals 4
    .param p0, "factor"    # F

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "out":I
    const/4 v1, 0x1

    .line 103
    .local v1, "cur":I
    const/4 v2, 0x1

    .line 105
    .local v2, "i":I
    :goto_0
    int-to-float v3, v1

    cmpl-float v3, v3, p0

    if-lez v3, :cond_0

    .line 106
    return v0

    .line 108
    :cond_0
    move v0, v2

    .line 109
    mul-int/lit8 v1, v1, 0x2

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static gudermann(D)D
    .locals 4
    .param p0, "y"    # D

    .line 45
    invoke-static {p0, p1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static gudermannInverse(D)D
    .locals 4
    .param p0, "aLatitude"    # D

    .line 41
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mod(II)I
    .locals 1
    .param p0, "number"    # I
    .param p1, "modulus"    # I

    .line 49
    if-lez p0, :cond_0

    .line 50
    rem-int v0, p0, p1

    return v0

    .line 52
    :cond_0
    :goto_0
    if-gez p0, :cond_1

    .line 53
    add-int/2addr p0, p1

    goto :goto_0

    .line 55
    :cond_1
    return p0
.end method
