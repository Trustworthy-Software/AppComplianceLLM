.class final Lorg/mapsforge/map/layer/renderer/GeometryUtils;
.super Ljava/lang/Object;
.source "GeometryUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static calculateCenterOfBoundingBox([Lorg/mapsforge/core/model/Point;)Lorg/mapsforge/core/model/Point;
    .locals 15
    .param p0, "coordinates"    # [Lorg/mapsforge/core/model/Point;

    .line 27
    const/4 v0, 0x0

    aget-object v1, p0, v0

    iget-wide v1, v1, Lorg/mapsforge/core/model/Point;->x:D

    .line 28
    .local v1, "pointXMin":D
    aget-object v3, p0, v0

    iget-wide v3, v3, Lorg/mapsforge/core/model/Point;->x:D

    .line 29
    .local v3, "pointXMax":D
    aget-object v5, p0, v0

    iget-wide v5, v5, Lorg/mapsforge/core/model/Point;->y:D

    .line 30
    .local v5, "pointYMin":D
    aget-object v7, p0, v0

    iget-wide v7, v7, Lorg/mapsforge/core/model/Point;->y:D

    .line 32
    .local v7, "pointYMax":D
    array-length v9, p0

    :goto_0
    if-ge v0, v9, :cond_4

    aget-object v10, p0, v0

    .line 33
    .local v10, "immutablePoint":Lorg/mapsforge/core/model/Point;
    iget-wide v11, v10, Lorg/mapsforge/core/model/Point;->x:D

    cmpg-double v11, v11, v1

    if-gez v11, :cond_0

    .line 34
    iget-wide v1, v10, Lorg/mapsforge/core/model/Point;->x:D

    goto :goto_1

    .line 35
    :cond_0
    iget-wide v11, v10, Lorg/mapsforge/core/model/Point;->x:D

    cmpl-double v11, v11, v3

    if-lez v11, :cond_1

    .line 36
    iget-wide v3, v10, Lorg/mapsforge/core/model/Point;->x:D

    .line 39
    :cond_1
    :goto_1
    iget-wide v11, v10, Lorg/mapsforge/core/model/Point;->y:D

    cmpg-double v11, v11, v5

    if-gez v11, :cond_2

    .line 40
    iget-wide v5, v10, Lorg/mapsforge/core/model/Point;->y:D

    goto :goto_2

    .line 41
    :cond_2
    iget-wide v11, v10, Lorg/mapsforge/core/model/Point;->y:D

    cmpl-double v11, v11, v7

    if-lez v11, :cond_3

    .line 42
    iget-wide v7, v10, Lorg/mapsforge/core/model/Point;->y:D

    .line 32
    .end local v10    # "immutablePoint":Lorg/mapsforge/core/model/Point;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_4
    new-instance v0, Lorg/mapsforge/core/model/Point;

    add-double v9, v1, v3

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    add-double v13, v7, v5

    div-double/2addr v13, v11

    invoke-direct {v0, v9, v10, v13, v14}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    return-object v0
.end method
