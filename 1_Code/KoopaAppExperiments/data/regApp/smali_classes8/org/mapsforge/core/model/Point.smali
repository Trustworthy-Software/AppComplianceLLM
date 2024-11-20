.class public Lorg/mapsforge/core/model/Point;
.super Ljava/lang/Object;
.source "Point.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/mapsforge/core/model/Point;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final x:D

.field public final y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lorg/mapsforge/core/model/Point;->x:D

    .line 41
    iput-wide p3, p0, Lorg/mapsforge/core/model/Point;->y:D

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lorg/mapsforge/core/model/Point;

    invoke-virtual {p0, p1}, Lorg/mapsforge/core/model/Point;->compareTo(Lorg/mapsforge/core/model/Point;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/mapsforge/core/model/Point;)I
    .locals 8
    .param p1, "point"    # Lorg/mapsforge/core/model/Point;

    .line 46
    iget-wide v0, p0, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v2, p1, Lorg/mapsforge/core/model/Point;->x:D

    cmpl-double v4, v0, v2

    const/4 v5, 0x1

    if-lez v4, :cond_0

    .line 47
    return v5

    .line 48
    :cond_0
    cmpg-double v0, v0, v2

    const/4 v1, -0x1

    if-gez v0, :cond_1

    .line 49
    return v1

    .line 50
    :cond_1
    iget-wide v2, p0, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v6, p1, Lorg/mapsforge/core/model/Point;->y:D

    cmpl-double v0, v2, v6

    if-lez v0, :cond_2

    .line 51
    return v5

    .line 52
    :cond_2
    cmpg-double v0, v2, v6

    if-gez v0, :cond_3

    .line 53
    return v1

    .line 55
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public distance(Lorg/mapsforge/core/model/Point;)D
    .locals 6
    .param p1, "point"    # Lorg/mapsforge/core/model/Point;

    .line 62
    iget-wide v0, p0, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v2, p1, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v4, p1, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 67
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 68
    return v0

    .line 69
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/core/model/Point;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 70
    return v2

    .line 72
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/core/model/Point;

    .line 73
    .local v1, "other":Lorg/mapsforge/core/model/Point;
    iget-wide v3, p0, Lorg/mapsforge/core/model/Point;->x:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v1, Lorg/mapsforge/core/model/Point;->x:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 74
    return v2

    .line 75
    :cond_2
    iget-wide v3, p0, Lorg/mapsforge/core/model/Point;->y:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v1, Lorg/mapsforge/core/model/Point;->y:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 76
    return v2

    .line 78
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 83
    const/16 v0, 0x1f

    .line 84
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 86
    .local v1, "result":I
    iget-wide v2, p0, Lorg/mapsforge/core/model/Point;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 87
    .local v2, "temp":J
    mul-int/lit8 v4, v1, 0x1f

    const/16 v5, 0x20

    ushr-long v6, v2, v5

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v4, v6

    .line 88
    .end local v1    # "result":I
    .local v4, "result":I
    iget-wide v6, p0, Lorg/mapsforge/core/model/Point;->y:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 89
    .end local v2    # "temp":J
    .local v1, "temp":J
    mul-int/lit8 v3, v4, 0x1f

    ushr-long v5, v1, v5

    xor-long/2addr v5, v1

    long-to-int v5, v5

    add-int/2addr v3, v5

    .line 90
    .end local v4    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public offset(DD)Lorg/mapsforge/core/model/Point;
    .locals 5
    .param p1, "dx"    # D
    .param p3, "dy"    # D

    .line 94
    const-wide/16 v0, 0x0

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    cmpl-double v0, v0, p3

    if-nez v0, :cond_0

    .line 95
    return-object p0

    .line 97
    :cond_0
    new-instance v0, Lorg/mapsforge/core/model/Point;

    iget-wide v1, p0, Lorg/mapsforge/core/model/Point;->x:D

    add-double/2addr v1, p1

    iget-wide v3, p0, Lorg/mapsforge/core/model/Point;->y:D

    add-double/2addr v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-wide v1, p0, Lorg/mapsforge/core/model/Point;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-wide v1, p0, Lorg/mapsforge/core/model/Point;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
