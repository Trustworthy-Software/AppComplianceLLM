.class public Lorg/mapsforge/core/model/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-ltz p1, :cond_1

    .line 28
    if-ltz p2, :cond_0

    .line 32
    iput p1, p0, Lorg/mapsforge/core/model/Dimension;->width:I

    .line 33
    iput p2, p0, Lorg/mapsforge/core/model/Dimension;->height:I

    .line 34
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 38
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 39
    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/core/model/Dimension;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 41
    return v2

    .line 43
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/core/model/Dimension;

    .line 44
    .local v1, "other":Lorg/mapsforge/core/model/Dimension;
    iget v3, p0, Lorg/mapsforge/core/model/Dimension;->width:I

    iget v4, v1, Lorg/mapsforge/core/model/Dimension;->width:I

    if-eq v3, v4, :cond_2

    .line 45
    return v2

    .line 46
    :cond_2
    iget v3, p0, Lorg/mapsforge/core/model/Dimension;->height:I

    iget v4, v1, Lorg/mapsforge/core/model/Dimension;->height:I

    if-eq v3, v4, :cond_3

    .line 47
    return v2

    .line 49
    :cond_3
    return v0
.end method

.method public getCenter()Lorg/mapsforge/core/model/Point;
    .locals 5

    .line 58
    new-instance v0, Lorg/mapsforge/core/model/Point;

    iget v1, p0, Lorg/mapsforge/core/model/Dimension;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    iget v1, p0, Lorg/mapsforge/core/model/Dimension;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 63
    const/16 v0, 0x1f

    .line 64
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 65
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/mapsforge/core/model/Dimension;->width:I

    add-int/2addr v2, v3

    .line 66
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/mapsforge/core/model/Dimension;->height:I

    add-int/2addr v1, v3

    .line 67
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Lorg/mapsforge/core/model/Dimension;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Lorg/mapsforge/core/model/Dimension;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
