.class Lorg/mapsforge/map/layer/renderer/RendererUtils;
.super Ljava/lang/Object;
.source "RendererUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static parallelPath([Lorg/mapsforge/core/model/Point;D)[Lorg/mapsforge/core/model/Point;
    .locals 16
    .param p0, "p"    # [Lorg/mapsforge/core/model/Point;
    .param p1, "dy"    # D

    .line 27
    move-object/from16 v0, p0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 28
    .local v1, "n":I
    new-array v2, v1, [Lorg/mapsforge/core/model/Point;

    .line 29
    .local v2, "u":[Lorg/mapsforge/core/model/Point;
    array-length v3, v0

    new-array v3, v3, [Lorg/mapsforge/core/model/Point;

    .line 32
    .local v3, "h":[Lorg/mapsforge/core/model/Point;
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 33
    add-int/lit8 v5, v4, 0x1

    aget-object v5, v0, v5

    iget-wide v5, v5, Lorg/mapsforge/core/model/Point;->x:D

    aget-object v7, v0, v4

    iget-wide v7, v7, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v5, v7

    .line 34
    .local v5, "c":D
    add-int/lit8 v7, v4, 0x1

    aget-object v7, v0, v7

    iget-wide v7, v7, Lorg/mapsforge/core/model/Point;->y:D

    aget-object v9, v0, v4

    iget-wide v9, v9, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v7, v9

    .line 35
    .local v7, "s":D
    mul-double v9, v5, v5

    mul-double v11, v7, v7

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 36
    .local v9, "l":D
    const-wide/16 v11, 0x0

    cmpl-double v13, v9, v11

    if-nez v13, :cond_0

    .line 37
    new-instance v13, Lorg/mapsforge/core/model/Point;

    invoke-direct {v13, v11, v12, v11, v12}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    aput-object v13, v2, v4

    goto :goto_1

    .line 39
    :cond_0
    new-instance v11, Lorg/mapsforge/core/model/Point;

    div-double v12, v5, v9

    div-double v14, v7, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    aput-object v11, v2, v4

    .line 32
    .end local v5    # "c":D
    .end local v7    # "s":D
    .end local v9    # "l":D
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    .end local v4    # "k":I
    :cond_1
    new-instance v4, Lorg/mapsforge/core/model/Point;

    const/4 v5, 0x0

    aget-object v6, v0, v5

    iget-wide v6, v6, Lorg/mapsforge/core/model/Point;->x:D

    aget-object v8, v2, v5

    iget-wide v8, v8, Lorg/mapsforge/core/model/Point;->y:D

    mul-double v8, v8, p1

    sub-double/2addr v6, v8

    aget-object v8, v0, v5

    iget-wide v8, v8, Lorg/mapsforge/core/model/Point;->y:D

    aget-object v10, v2, v5

    iget-wide v10, v10, Lorg/mapsforge/core/model/Point;->x:D

    mul-double v10, v10, p1

    add-double/2addr v8, v10

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    aput-object v4, v3, v5

    .line 47
    const/4 v4, 0x1

    .restart local v4    # "k":I
    :goto_2
    if-ge v4, v1, :cond_2

    .line 48
    aget-object v5, v2, v4

    iget-wide v5, v5, Lorg/mapsforge/core/model/Point;->x:D

    add-int/lit8 v7, v4, -0x1

    aget-object v7, v2, v7

    iget-wide v7, v7, Lorg/mapsforge/core/model/Point;->x:D

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    aget-object v7, v2, v4

    iget-wide v7, v7, Lorg/mapsforge/core/model/Point;->y:D

    add-int/lit8 v9, v4, -0x1

    aget-object v9, v2, v9

    iget-wide v9, v9, Lorg/mapsforge/core/model/Point;->y:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    div-double v5, p1, v5

    .line 49
    .local v5, "l":D
    new-instance v7, Lorg/mapsforge/core/model/Point;

    aget-object v8, v0, v4

    iget-wide v8, v8, Lorg/mapsforge/core/model/Point;->x:D

    aget-object v10, v2, v4

    iget-wide v10, v10, Lorg/mapsforge/core/model/Point;->y:D

    add-int/lit8 v12, v4, -0x1

    aget-object v12, v2, v12

    iget-wide v12, v12, Lorg/mapsforge/core/model/Point;->y:D

    add-double/2addr v10, v12

    mul-double/2addr v10, v5

    sub-double/2addr v8, v10

    aget-object v10, v0, v4

    iget-wide v10, v10, Lorg/mapsforge/core/model/Point;->y:D

    aget-object v12, v2, v4

    iget-wide v12, v12, Lorg/mapsforge/core/model/Point;->x:D

    add-int/lit8 v14, v4, -0x1

    aget-object v14, v2, v14

    iget-wide v14, v14, Lorg/mapsforge/core/model/Point;->x:D

    add-double/2addr v12, v14

    mul-double/2addr v12, v5

    add-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    aput-object v7, v3, v4

    .line 47
    .end local v5    # "l":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 53
    .end local v4    # "k":I
    :cond_2
    new-instance v4, Lorg/mapsforge/core/model/Point;

    aget-object v5, v0, v1

    iget-wide v5, v5, Lorg/mapsforge/core/model/Point;->x:D

    add-int/lit8 v7, v1, -0x1

    aget-object v7, v2, v7

    iget-wide v7, v7, Lorg/mapsforge/core/model/Point;->y:D

    mul-double v7, v7, p1

    sub-double/2addr v5, v7

    aget-object v7, v0, v1

    iget-wide v7, v7, Lorg/mapsforge/core/model/Point;->y:D

    add-int/lit8 v9, v1, -0x1

    aget-object v9, v2, v9

    iget-wide v9, v9, Lorg/mapsforge/core/model/Point;->x:D

    mul-double v9, v9, p1

    add-double/2addr v7, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    aput-object v4, v3, v1

    .line 55
    return-object v3
.end method
