.class public Lorg/osmdroid/util/PointReducer;
.super Ljava/lang/Object;
.source "PointReducer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static douglasPeuckerReduction(Ljava/util/ArrayList;[ZDII)V
    .locals 14
    .param p1, "marked"    # [Z
    .param p2, "tolerance"    # D
    .param p4, "firstIdx"    # I
    .param p5, "lastIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;[ZDII)V"
        }
    .end annotation

    .line 87
    .local p0, "shape":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    move-object v6, p0

    move/from16 v7, p4

    move/from16 v8, p5

    add-int/lit8 v0, v7, 0x1

    if-gt v8, v0, :cond_0

    .line 89
    return-void

    .line 95
    :cond_0
    const-wide/16 v0, 0x0

    .line 96
    .local v0, "maxDistance":D
    const/4 v2, 0x0

    .line 98
    .local v2, "indexFarthest":I
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lorg/osmdroid/util/GeoPoint;

    .line 99
    .local v9, "firstPoint":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lorg/osmdroid/util/GeoPoint;

    .line 101
    .local v10, "lastPoint":Lorg/osmdroid/util/GeoPoint;
    add-int/lit8 v3, v7, 0x1

    move-wide v11, v0

    move v13, v2

    .end local v0    # "maxDistance":D
    .end local v2    # "indexFarthest":I
    .local v3, "idx":I
    .local v11, "maxDistance":D
    .local v13, "indexFarthest":I
    :goto_0
    if-ge v3, v8, :cond_2

    .line 102
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 104
    .local v0, "point":Lorg/osmdroid/util/GeoPoint;
    invoke-static {v0, v9, v10}, Lorg/osmdroid/util/PointReducer;->orthogonalDistance(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v1

    .line 107
    .local v1, "distance":D
    cmpl-double v4, v1, v11

    if-lez v4, :cond_1

    .line 108
    move-wide v4, v1

    .line 109
    .end local v11    # "maxDistance":D
    .local v4, "maxDistance":D
    move v11, v3

    move v13, v11

    move-wide v11, v4

    .line 101
    .end local v0    # "point":Lorg/osmdroid/util/GeoPoint;
    .end local v1    # "distance":D
    .end local v4    # "maxDistance":D
    .restart local v11    # "maxDistance":D
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v3    # "idx":I
    :cond_2
    cmpl-double v0, v11, p2

    if-lez v0, :cond_3

    .line 115
    const/4 v0, 0x1

    aput-boolean v0, p1, v13

    .line 118
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move v5, v13

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/PointReducer;->douglasPeuckerReduction(Ljava/util/ArrayList;[ZDII)V

    .line 121
    move v4, v13

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/PointReducer;->douglasPeuckerReduction(Ljava/util/ArrayList;[ZDII)V

    .line 124
    :cond_3
    return-void
.end method

.method public static orthogonalDistance(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)D
    .locals 10
    .param p0, "point"    # Lorg/osmdroid/util/GeoPoint;
    .param p1, "lineStart"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "lineEnd"    # Lorg/osmdroid/util/GeoPoint;

    .line 136
    nop

    .line 138
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 139
    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 140
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 141
    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 142
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 143
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 136
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 147
    .local v0, "area":D
    nop

    .line 148
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 149
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    .line 147
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    .line 152
    .local v4, "bottom":D
    div-double v6, v0, v4

    mul-double/2addr v6, v2

    return-wide v6
.end method

.method public static reduceWithTolerance(Ljava/util/ArrayList;D)Ljava/util/ArrayList;
    .locals 8
    .param p1, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;D)",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 43
    .local p0, "shape":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 45
    .local v0, "n":I
    const-wide/16 v1, 0x0

    cmpg-double v1, p1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 49
    :cond_0
    new-array v1, v0, [Z

    .line 50
    .local v1, "marked":[Z
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 51
    aput-boolean v4, v1, v2

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    aput-boolean v3, v1, v4

    .line 57
    const/4 v6, 0x0

    add-int/lit8 v7, v0, -0x1

    move-object v2, p0

    move-object v3, v1

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/util/PointReducer;->douglasPeuckerReduction(Ljava/util/ArrayList;[ZDII)V

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v2, "newShape":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 68
    aget-boolean v4, v1, v3

    if-eqz v4, :cond_2

    .line 69
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 71
    .end local v3    # "i":I
    :cond_3
    return-object v2

    .line 46
    .end local v1    # "marked":[Z
    .end local v2    # "newShape":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_4
    :goto_2
    return-object p0
.end method
