.class public Lorg/mapsforge/core/model/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final bottom:D

.field public final left:D

.field public final right:D

.field public final top:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 3
    .param p1, "left"    # D
    .param p3, "top"    # D
    .param p5, "right"    # D
    .param p7, "bottom"    # D

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    cmpl-double v0, p1, p5

    if-gtz v0, :cond_1

    .line 33
    cmpl-double v0, p3, p7

    if-gtz v0, :cond_0

    .line 37
    iput-wide p1, p0, Lorg/mapsforge/core/model/Rectangle;->left:D

    .line 38
    iput-wide p3, p0, Lorg/mapsforge/core/model/Rectangle;->top:D

    .line 39
    iput-wide p5, p0, Lorg/mapsforge/core/model/Rectangle;->right:D

    .line 40
    iput-wide p7, p0, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    .line 41
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public contains(Lorg/mapsforge/core/model/Point;)Z
    .locals 4
    .param p1, "point"    # Lorg/mapsforge/core/model/Point;

    .line 47
    iget-wide v0, p0, Lorg/mapsforge/core/model/Rectangle;->left:D

    iget-wide v2, p1, Lorg/mapsforge/core/model/Point;->x:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/mapsforge/core/model/Rectangle;->right:D

    iget-wide v2, p1, Lorg/mapsforge/core/model/Point;->x:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/mapsforge/core/model/Rectangle;->top:D

    iget-wide v2, p1, Lorg/mapsforge/core/model/Point;->y:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    iget-wide v2, p1, Lorg/mapsforge/core/model/Point;->y:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public enlarge(DDDD)Lorg/mapsforge/core/model/Rectangle;
    .locals 11
    .param p1, "left"    # D
    .param p3, "top"    # D
    .param p5, "right"    # D
    .param p7, "bottom"    # D

    .line 59
    move-object v0, p0

    new-instance v10, Lorg/mapsforge/core/model/Rectangle;

    iget-wide v1, v0, Lorg/mapsforge/core/model/Rectangle;->left:D

    sub-double v2, v1, p1

    iget-wide v4, v0, Lorg/mapsforge/core/model/Rectangle;->top:D

    sub-double/2addr v4, p3

    iget-wide v6, v0, Lorg/mapsforge/core/model/Rectangle;->right:D

    add-double v6, v6, p5

    iget-wide v8, v0, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    add-double v8, v8, p7

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    return-object v10
.end method

.method public envelope(D)Lorg/mapsforge/core/model/Rectangle;
    .locals 10
    .param p1, "padding"    # D

    .line 63
    new-instance v9, Lorg/mapsforge/core/model/Rectangle;

    iget-wide v0, p0, Lorg/mapsforge/core/model/Rectangle;->left:D

    sub-double v1, v0, p1

    iget-wide v3, p0, Lorg/mapsforge/core/model/Rectangle;->top:D

    sub-double/2addr v3, p1

    iget-wide v5, p0, Lorg/mapsforge/core/model/Rectangle;->right:D

    add-double/2addr v5, p1

    iget-wide v7, p0, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    add-double/2addr v7, p1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 68
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 69
    return v0

    .line 70
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/core/model/Rectangle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 71
    return v2

    .line 73
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/core/model/Rectangle;

    .line 74
    .local v1, "other":Lorg/mapsforge/core/model/Rectangle;
    iget-wide v3, p0, Lorg/mapsforge/core/model/Rectangle;->left:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v1, Lorg/mapsforge/core/model/Rectangle;->left:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 75
    return v2

    .line 76
    :cond_2
    iget-wide v3, p0, Lorg/mapsforge/core/model/Rectangle;->top:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v1, Lorg/mapsforge/core/model/Rectangle;->top:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 77
    return v2

    .line 78
    :cond_3
    iget-wide v3, p0, Lorg/mapsforge/core/model/Rectangle;->right:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v1, Lorg/mapsforge/core/model/Rectangle;->right:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 79
    return v2

    .line 80
    :cond_4
    iget-wide v3, p0, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v1, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 81
    return v2

    .line 83
    :cond_5
    return v0
.end method

.method public getCenter()Lorg/mapsforge/core/model/Point;
    .locals 5

    .line 90
    new-instance v0, Lorg/mapsforge/core/model/Point;

    invoke-virtual {p0}, Lorg/mapsforge/core/model/Rectangle;->getCenterX()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/mapsforge/core/model/Rectangle;->getCenterY()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    return-object v0
.end method

.method public getCenterX()D
    .locals 4

    .line 97
    iget-wide v0, p0, Lorg/mapsforge/core/model/Rectangle;->left:D

    iget-wide v2, p0, Lorg/mapsforge/core/model/Rectangle;->right:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getCenterY()D
    .locals 4

    .line 104
    iget-wide v0, p0, Lorg/mapsforge/core/model/Rectangle;->top:D

    iget-wide v2, p0, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getHeight()D
    .locals 4

    .line 108
    iget-wide v0, p0, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    iget-wide v2, p0, Lorg/mapsforge/core/model/Rectangle;->top:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getWidth()D
    .locals 4

    .line 112
    iget-wide v0, p0, Lorg/mapsforge/core/model/Rectangle;->right:D

    iget-wide v2, p0, Lorg/mapsforge/core/model/Rectangle;->left:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .line 117
    const/16 v0, 0x1f

    .line 118
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 120
    .local v1, "result":I
    iget-wide v2, p0, Lorg/mapsforge/core/model/Rectangle;->left:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 121
    .local v2, "temp":J
    mul-int/lit8 v4, v1, 0x1f

    const/16 v5, 0x20

    ushr-long v6, v2, v5

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v4, v6

    .line 122
    .end local v1    # "result":I
    .local v4, "result":I
    iget-wide v6, p0, Lorg/mapsforge/core/model/Rectangle;->top:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 123
    .end local v2    # "temp":J
    .local v1, "temp":J
    mul-int/lit8 v3, v4, 0x1f

    ushr-long v6, v1, v5

    xor-long/2addr v6, v1

    long-to-int v6, v6

    add-int/2addr v3, v6

    .line 124
    .end local v4    # "result":I
    .local v3, "result":I
    iget-wide v6, p0, Lorg/mapsforge/core/model/Rectangle;->right:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 125
    mul-int/lit8 v4, v3, 0x1f

    ushr-long v6, v1, v5

    xor-long/2addr v6, v1

    long-to-int v6, v6

    add-int/2addr v4, v6

    .line 126
    .end local v3    # "result":I
    .restart local v4    # "result":I
    iget-wide v6, p0, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 127
    mul-int/lit8 v3, v4, 0x1f

    ushr-long v5, v1, v5

    xor-long/2addr v5, v1

    long-to-int v5, v5

    add-int/2addr v3, v5

    .line 128
    .end local v4    # "result":I
    .restart local v3    # "result":I
    return v3
.end method

.method public intersects(Lorg/mapsforge/core/model/Rectangle;)Z
    .locals 5
    .param p1, "rectangle"    # Lorg/mapsforge/core/model/Rectangle;

    .line 135
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 136
    return v0

    .line 139
    :cond_0
    iget-wide v1, p0, Lorg/mapsforge/core/model/Rectangle;->left:D

    iget-wide v3, p1, Lorg/mapsforge/core/model/Rectangle;->right:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    iget-wide v1, p1, Lorg/mapsforge/core/model/Rectangle;->left:D

    iget-wide v3, p0, Lorg/mapsforge/core/model/Rectangle;->right:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    iget-wide v1, p0, Lorg/mapsforge/core/model/Rectangle;->top:D

    iget-wide v3, p1, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    iget-wide v1, p1, Lorg/mapsforge/core/model/Rectangle;->top:D

    iget-wide v3, p0, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public intersectsCircle(DDD)Z
    .locals 19
    .param p1, "pointX"    # D
    .param p3, "pointY"    # D
    .param p5, "radius"    # D

    .line 144
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/core/model/Rectangle;->getWidth()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 145
    .local v0, "halfWidth":D
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/core/model/Rectangle;->getHeight()D

    move-result-wide v4

    div-double/2addr v4, v2

    .line 147
    .local v4, "halfHeight":D
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/core/model/Rectangle;->getCenterX()D

    move-result-wide v2

    sub-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 148
    .local v2, "centerDistanceX":D
    invoke-virtual/range {p0 .. p0}, Lorg/mapsforge/core/model/Rectangle;->getCenterY()D

    move-result-wide v6

    sub-double v6, p3, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 151
    .local v6, "centerDistanceY":D
    add-double v8, v0, p5

    cmpl-double v8, v2, v8

    const/4 v9, 0x0

    if-lez v8, :cond_0

    .line 152
    return v9

    .line 153
    :cond_0
    add-double v10, v4, p5

    cmpl-double v8, v6, v10

    if-lez v8, :cond_1

    .line 154
    return v9

    .line 158
    :cond_1
    cmpg-double v8, v2, v0

    const/4 v10, 0x1

    if-gtz v8, :cond_2

    .line 159
    return v10

    .line 160
    :cond_2
    cmpg-double v8, v6, v4

    if-gtz v8, :cond_3

    .line 161
    return v10

    .line 164
    :cond_3
    sub-double v11, v2, v0

    .line 165
    .local v11, "cornerDistanceX":D
    sub-double v13, v6, v4

    .line 166
    .local v13, "cornerDistanceY":D
    mul-double v15, v11, v11

    mul-double v17, v13, v13

    add-double v15, v15, v17

    mul-double v17, p5, p5

    cmpg-double v8, v15, v17

    if-gtz v8, :cond_4

    move v9, v10

    :cond_4
    return v9
.end method

.method public shift(Lorg/mapsforge/core/model/Point;)Lorg/mapsforge/core/model/Rectangle;
    .locals 12
    .param p1, "origin"    # Lorg/mapsforge/core/model/Point;

    .line 170
    iget-wide v0, p1, Lorg/mapsforge/core/model/Point;->x:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lorg/mapsforge/core/model/Point;->y:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 171
    return-object p0

    .line 173
    :cond_0
    new-instance v0, Lorg/mapsforge/core/model/Rectangle;

    iget-wide v1, p0, Lorg/mapsforge/core/model/Rectangle;->left:D

    iget-wide v3, p1, Lorg/mapsforge/core/model/Point;->x:D

    add-double v2, v1, v3

    iget-wide v4, p0, Lorg/mapsforge/core/model/Rectangle;->top:D

    iget-wide v6, p1, Lorg/mapsforge/core/model/Point;->y:D

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/mapsforge/core/model/Rectangle;->right:D

    iget-wide v8, p1, Lorg/mapsforge/core/model/Point;->x:D

    add-double/2addr v6, v8

    iget-wide v8, p0, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    iget-wide v10, p1, Lorg/mapsforge/core/model/Point;->y:D

    add-double/2addr v8, v10

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-wide v1, p0, Lorg/mapsforge/core/model/Rectangle;->left:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-wide v1, p0, Lorg/mapsforge/core/model/Rectangle;->top:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-wide v1, p0, Lorg/mapsforge/core/model/Rectangle;->right:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-wide v1, p0, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
