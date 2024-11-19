.class public final Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;
.super Ljava/lang/Object;
.source "NumberComparisonHelper.java"


# static fields
.field public static final LONG_EXCLUSIVE_UPPER_BOUND_AS_DOUBLE:D = 9.223372036854776E18

.field public static final LONG_INCLUSIVE_LOWER_BOUND_AS_DOUBLE:D = -9.223372036854776E18

.field public static final MAX_SAFE_LONG:J = 0x20000000000000L

.field public static final MIN_SAFE_LONG:J = -0x20000000000000L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareLongs(JJ)I
    .locals 1
    .param p0, "leftLong"    # J
    .param p2, "rightLong"    # J

    .line 67
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 68
    const/4 v0, -0x1

    return v0

    .line 69
    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    .line 70
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static firestoreCompareDoubleWithLong(DJ)I
    .locals 6
    .param p0, "doubleValue"    # D
    .param p2, "longValue"    # J

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 38
    return v1

    .line 42
    :cond_0
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, p0, v2

    if-gez v0, :cond_1

    .line 43
    return v1

    .line 47
    :cond_1
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_2

    .line 48
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_2
    double-to-long v0, p0

    .line 52
    .local v0, "doubleAsLong":J
    invoke-static {v0, v1, p2, p3}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->compareLongs(JJ)I

    move-result v2

    .line 53
    .local v2, "cmp":I
    if-eqz v2, :cond_3

    .line 54
    return v2

    .line 58
    :cond_3
    long-to-double v3, p2

    .line 59
    .local v3, "longAsDouble":D
    invoke-static {p0, p1, v3, v4}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->firestoreCompareDoubles(DD)I

    move-result v5

    return v5
.end method

.method public static firestoreCompareDoubles(DD)I
    .locals 4
    .param p0, "leftDouble"    # D
    .param p2, "rightDouble"    # D

    .line 85
    cmpg-double v0, p0, p2

    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 86
    return v1

    .line 87
    :cond_0
    cmpl-double v0, p0, p2

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 88
    return v2

    .line 89
    :cond_1
    cmpl-double v0, p0, p2

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 90
    return v3

    .line 93
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    return v1

    .line 96
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    return v2

    .line 101
    :cond_4
    return v3
.end method
