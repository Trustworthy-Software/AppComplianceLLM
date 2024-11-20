.class public final Lorg/mapsforge/core/model/LineSegment;
.super Ljava/lang/Object;
.source "LineSegment.java"


# static fields
.field private static BOTTOM:I

.field private static INSIDE:I

.field private static LEFT:I

.field private static RIGHT:I

.field private static TOP:I


# instance fields
.field public final end:Lorg/mapsforge/core/model/Point;

.field public final start:Lorg/mapsforge/core/model/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput v0, Lorg/mapsforge/core/model/LineSegment;->INSIDE:I

    .line 23
    const/4 v0, 0x1

    sput v0, Lorg/mapsforge/core/model/LineSegment;->LEFT:I

    .line 24
    const/4 v0, 0x2

    sput v0, Lorg/mapsforge/core/model/LineSegment;->RIGHT:I

    .line 25
    const/4 v0, 0x4

    sput v0, Lorg/mapsforge/core/model/LineSegment;->BOTTOM:I

    .line 26
    const/16 v0, 0x8

    sput v0, Lorg/mapsforge/core/model/LineSegment;->TOP:I

    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)V
    .locals 0
    .param p1, "start"    # Lorg/mapsforge/core/model/Point;
    .param p2, "end"    # Lorg/mapsforge/core/model/Point;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    .line 39
    iput-object p2, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;D)V
    .locals 1
    .param p1, "start"    # Lorg/mapsforge/core/model/Point;
    .param p2, "direction"    # Lorg/mapsforge/core/model/Point;
    .param p3, "distance"    # D

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    .line 51
    new-instance v0, Lorg/mapsforge/core/model/LineSegment;

    invoke-direct {v0, p1, p2}, Lorg/mapsforge/core/model/LineSegment;-><init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)V

    invoke-virtual {v0, p3, p4}, Lorg/mapsforge/core/model/LineSegment;->pointAlongLineSegment(D)Lorg/mapsforge/core/model/Point;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    .line 52
    return-void
.end method

.method private static code(Lorg/mapsforge/core/model/Rectangle;Lorg/mapsforge/core/model/Point;)I
    .locals 5
    .param p0, "r"    # Lorg/mapsforge/core/model/Rectangle;
    .param p1, "p"    # Lorg/mapsforge/core/model/Point;

    .line 229
    sget v0, Lorg/mapsforge/core/model/LineSegment;->INSIDE:I

    .line 230
    .local v0, "code":I
    iget-wide v1, p1, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v3, p0, Lorg/mapsforge/core/model/Rectangle;->left:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 232
    sget v1, Lorg/mapsforge/core/model/LineSegment;->LEFT:I

    or-int/2addr v0, v1

    goto :goto_0

    .line 233
    :cond_0
    iget-wide v1, p1, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v3, p0, Lorg/mapsforge/core/model/Rectangle;->right:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 235
    sget v1, Lorg/mapsforge/core/model/LineSegment;->RIGHT:I

    or-int/2addr v0, v1

    .line 238
    :cond_1
    :goto_0
    iget-wide v1, p1, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v3, p0, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 240
    sget v1, Lorg/mapsforge/core/model/LineSegment;->BOTTOM:I

    or-int/2addr v0, v1

    goto :goto_1

    .line 241
    :cond_2
    iget-wide v1, p1, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v3, p0, Lorg/mapsforge/core/model/Rectangle;->top:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_3

    .line 243
    sget v1, Lorg/mapsforge/core/model/LineSegment;->TOP:I

    or-int/2addr v0, v1

    .line 245
    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public clipToRectangle(Lorg/mapsforge/core/model/Rectangle;)Lorg/mapsforge/core/model/LineSegment;
    .locals 13
    .param p1, "r"    # Lorg/mapsforge/core/model/Rectangle;

    .line 64
    iget-object v0, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    .line 65
    .local v0, "a":Lorg/mapsforge/core/model/Point;
    iget-object v1, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    .line 67
    .local v1, "b":Lorg/mapsforge/core/model/Point;
    invoke-static {p1, v0}, Lorg/mapsforge/core/model/LineSegment;->code(Lorg/mapsforge/core/model/Rectangle;Lorg/mapsforge/core/model/Point;)I

    move-result v2

    .line 68
    .local v2, "codeStart":I
    invoke-static {p1, v1}, Lorg/mapsforge/core/model/LineSegment;->code(Lorg/mapsforge/core/model/Rectangle;Lorg/mapsforge/core/model/Point;)I

    move-result v3

    .line 71
    .local v3, "codeEnd":I
    :goto_0
    or-int v4, v2, v3

    if-nez v4, :cond_0

    .line 73
    new-instance v4, Lorg/mapsforge/core/model/LineSegment;

    invoke-direct {v4, v0, v1}, Lorg/mapsforge/core/model/LineSegment;-><init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)V

    return-object v4

    .line 74
    :cond_0
    and-int v4, v2, v3

    if-eqz v4, :cond_1

    .line 76
    const/4 v4, 0x0

    return-object v4

    .line 81
    :cond_1
    if-eqz v2, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 83
    .local v4, "outsideCode":I
    :goto_1
    sget v5, Lorg/mapsforge/core/model/LineSegment;->TOP:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_3

    .line 85
    iget-wide v5, v0, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v7, v1, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v9, v0, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v7, v9

    iget-wide v9, p1, Lorg/mapsforge/core/model/Rectangle;->top:D

    iget-wide v11, v0, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    iget-wide v9, v1, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v11, v0, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    .line 86
    .local v5, "newX":D
    iget-wide v7, p1, Lorg/mapsforge/core/model/Rectangle;->top:D

    .local v7, "newY":D
    goto :goto_2

    .line 87
    .end local v5    # "newX":D
    .end local v7    # "newY":D
    :cond_3
    sget v5, Lorg/mapsforge/core/model/LineSegment;->BOTTOM:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_4

    .line 89
    iget-wide v5, v0, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v7, v1, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v9, v0, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v7, v9

    iget-wide v9, p1, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    iget-wide v11, v0, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    iget-wide v9, v1, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v11, v0, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    .line 90
    .restart local v5    # "newX":D
    iget-wide v7, p1, Lorg/mapsforge/core/model/Rectangle;->bottom:D

    .restart local v7    # "newY":D
    goto :goto_2

    .line 91
    .end local v5    # "newX":D
    .end local v7    # "newY":D
    :cond_4
    sget v5, Lorg/mapsforge/core/model/LineSegment;->RIGHT:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_5

    .line 93
    iget-wide v5, v0, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v7, v1, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v9, v0, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v7, v9

    iget-wide v9, p1, Lorg/mapsforge/core/model/Rectangle;->right:D

    iget-wide v11, v0, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    iget-wide v9, v1, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v11, v0, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    add-double/2addr v7, v5

    .line 94
    .restart local v7    # "newY":D
    iget-wide v5, p1, Lorg/mapsforge/core/model/Rectangle;->right:D

    .restart local v5    # "newX":D
    goto :goto_2

    .line 95
    .end local v5    # "newX":D
    .end local v7    # "newY":D
    :cond_5
    sget v5, Lorg/mapsforge/core/model/LineSegment;->LEFT:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_7

    .line 97
    iget-wide v5, v0, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v7, v1, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v9, v0, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v7, v9

    iget-wide v9, p1, Lorg/mapsforge/core/model/Rectangle;->left:D

    iget-wide v11, v0, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    iget-wide v9, v1, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v11, v0, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    add-double/2addr v7, v5

    .line 98
    .restart local v7    # "newY":D
    iget-wide v5, p1, Lorg/mapsforge/core/model/Rectangle;->left:D

    .line 104
    .restart local v5    # "newX":D
    :goto_2
    if-ne v4, v2, :cond_6

    .line 105
    new-instance v9, Lorg/mapsforge/core/model/Point;

    invoke-direct {v9, v5, v6, v7, v8}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    move-object v0, v9

    .line 106
    invoke-static {p1, v0}, Lorg/mapsforge/core/model/LineSegment;->code(Lorg/mapsforge/core/model/Rectangle;Lorg/mapsforge/core/model/Point;)I

    move-result v2

    goto :goto_3

    .line 108
    :cond_6
    new-instance v9, Lorg/mapsforge/core/model/Point;

    invoke-direct {v9, v5, v6, v7, v8}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    move-object v1, v9

    .line 109
    invoke-static {p1, v1}, Lorg/mapsforge/core/model/LineSegment;->code(Lorg/mapsforge/core/model/Rectangle;Lorg/mapsforge/core/model/Point;)I

    move-result v3

    .line 111
    .end local v4    # "outsideCode":I
    .end local v5    # "newX":D
    .end local v7    # "newY":D
    :goto_3
    goto/16 :goto_0

    .line 100
    .restart local v4    # "outsideCode":I
    :cond_7
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Should not get here"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 117
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 118
    return v0

    .line 119
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/core/model/LineSegment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 120
    return v2

    .line 122
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/core/model/LineSegment;

    .line 123
    .local v1, "other":Lorg/mapsforge/core/model/LineSegment;
    iget-object v3, v1, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    iget-object v4, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    invoke-virtual {v3, v4}, Lorg/mapsforge/core/model/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    iget-object v4, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    invoke-virtual {v3, v4}, Lorg/mapsforge/core/model/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    return v0

    .line 126
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 131
    const/16 v0, 0x1f

    .line 132
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 133
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    invoke-virtual {v3}, Lorg/mapsforge/core/model/Point;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 134
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    invoke-virtual {v3}, Lorg/mapsforge/core/model/Point;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 135
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public intersectsRectangle(Lorg/mapsforge/core/model/Rectangle;Z)Z
    .locals 3
    .param p1, "r"    # Lorg/mapsforge/core/model/Rectangle;
    .param p2, "bias"    # Z

    .line 148
    iget-object v0, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    invoke-static {p1, v0}, Lorg/mapsforge/core/model/LineSegment;->code(Lorg/mapsforge/core/model/Rectangle;Lorg/mapsforge/core/model/Point;)I

    move-result v0

    .line 149
    .local v0, "codeStart":I
    iget-object v1, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    invoke-static {p1, v1}, Lorg/mapsforge/core/model/LineSegment;->code(Lorg/mapsforge/core/model/Rectangle;Lorg/mapsforge/core/model/Point;)I

    move-result v1

    .line 151
    .local v1, "codeEnd":I
    or-int v2, v0, v1

    if-nez v2, :cond_0

    .line 153
    const/4 v2, 0x1

    return v2

    .line 154
    :cond_0
    and-int v2, v0, v1

    if-eqz v2, :cond_1

    .line 156
    const/4 v2, 0x0

    return v2

    .line 158
    :cond_1
    return p2
.end method

.method public length()D
    .locals 2

    .line 167
    iget-object v0, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    iget-object v1, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    invoke-virtual {v0, v1}, Lorg/mapsforge/core/model/Point;->distance(Lorg/mapsforge/core/model/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public pointAlongLineSegment(D)Lorg/mapsforge/core/model/Point;
    .locals 11
    .param p1, "distance"    # D

    .line 178
    iget-object v0, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    iget-wide v0, v0, Lorg/mapsforge/core/model/Point;->x:D

    iget-object v2, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    iget-wide v2, v2, Lorg/mapsforge/core/model/Point;->x:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    iget-wide v0, v0, Lorg/mapsforge/core/model/Point;->y:D

    iget-object v2, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    iget-wide v2, v2, Lorg/mapsforge/core/model/Point;->y:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 181
    new-instance v0, Lorg/mapsforge/core/model/Point;

    iget-object v1, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    iget-wide v1, v1, Lorg/mapsforge/core/model/Point;->x:D

    iget-object v3, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    iget-wide v3, v3, Lorg/mapsforge/core/model/Point;->y:D

    add-double/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    return-object v0

    .line 183
    :cond_0
    new-instance v0, Lorg/mapsforge/core/model/Point;

    iget-object v1, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    iget-wide v1, v1, Lorg/mapsforge/core/model/Point;->x:D

    iget-object v3, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    iget-wide v3, v3, Lorg/mapsforge/core/model/Point;->y:D

    add-double/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    return-object v0

    .line 186
    :cond_1
    iget-object v0, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    iget-wide v0, v0, Lorg/mapsforge/core/model/Point;->y:D

    iget-object v2, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    iget-wide v2, v2, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    iget-wide v2, v2, Lorg/mapsforge/core/model/Point;->x:D

    iget-object v4, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    iget-wide v4, v4, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 187
    .local v0, "slope":D
    mul-double v2, p1, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v6, v0, v0

    add-double/2addr v6, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 188
    .local v2, "dx":D
    iget-object v4, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    iget-wide v4, v4, Lorg/mapsforge/core/model/Point;->x:D

    iget-object v6, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    iget-wide v6, v6, Lorg/mapsforge/core/model/Point;->x:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 189
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v4

    .line 191
    :cond_2
    new-instance v4, Lorg/mapsforge/core/model/Point;

    iget-object v5, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    iget-wide v5, v5, Lorg/mapsforge/core/model/Point;->x:D

    add-double/2addr v5, v2

    iget-object v7, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    iget-wide v7, v7, Lorg/mapsforge/core/model/Point;->y:D

    mul-double v9, v0, v2

    add-double/2addr v7, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    return-object v4
.end method

.method public reverse()Lorg/mapsforge/core/model/LineSegment;
    .locals 3

    .line 201
    new-instance v0, Lorg/mapsforge/core/model/LineSegment;

    iget-object v1, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    iget-object v2, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/core/model/LineSegment;-><init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)V

    return-object v0
.end method

.method public subSegment(DD)Lorg/mapsforge/core/model/LineSegment;
    .locals 3
    .param p1, "offset"    # D
    .param p3, "length"    # D

    .line 212
    invoke-virtual {p0, p1, p2}, Lorg/mapsforge/core/model/LineSegment;->pointAlongLineSegment(D)Lorg/mapsforge/core/model/Point;

    move-result-object v0

    .line 213
    .local v0, "subSegmentStart":Lorg/mapsforge/core/model/Point;
    add-double v1, p1, p3

    invoke-virtual {p0, v1, v2}, Lorg/mapsforge/core/model/LineSegment;->pointAlongLineSegment(D)Lorg/mapsforge/core/model/Point;

    move-result-object v1

    .line 214
    .local v1, "subSegmentEnd":Lorg/mapsforge/core/model/Point;
    new-instance v2, Lorg/mapsforge/core/model/LineSegment;

    invoke-direct {v2, v0, v1}, Lorg/mapsforge/core/model/LineSegment;-><init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Point;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/mapsforge/core/model/LineSegment;->start:Lorg/mapsforge/core/model/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mapsforge/core/model/LineSegment;->end:Lorg/mapsforge/core/model/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
