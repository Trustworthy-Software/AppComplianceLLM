.class public Lorg/osmdroid/util/SegmentClipper;
.super Ljava/lang/Object;
.source "SegmentClipper.java"

# interfaces
.implements Lorg/osmdroid/util/PointAccepter;


# instance fields
.field private final cornerX:[J

.field private final cornerY:[J

.field private mCurrentSegmentIndex:I

.field private mFirstPoint:Z

.field private mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

.field private final mOptimIntersection:Lorg/osmdroid/util/PointL;

.field private final mOptimIntersection1:Lorg/osmdroid/util/PointL;

.field private final mOptimIntersection2:Lorg/osmdroid/util/PointL;

.field private mPathMode:Z

.field private final mPoint0:Lorg/osmdroid/util/PointL;

.field private final mPoint1:Lorg/osmdroid/util/PointL;

.field private mPointAccepter:Lorg/osmdroid/util/PointAccepter;

.field private mXMax:J

.field private mXMin:J

.field private mYMax:J

.field private mYMin:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    .line 14
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    .line 15
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    .line 23
    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Lorg/osmdroid/util/SegmentClipper;->cornerX:[J

    .line 24
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->cornerY:[J

    .line 25
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint0:Lorg/osmdroid/util/PointL;

    .line 26
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint1:Lorg/osmdroid/util/PointL;

    return-void
.end method

.method private static clip(JJJ)J
    .locals 2
    .param p0, "pValue"    # J
    .param p2, "pMin"    # J
    .param p4, "pMax"    # J

    .line 187
    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    cmp-long v0, p0, p4

    if-ltz v0, :cond_1

    move-wide v0, p4

    goto :goto_0

    :cond_1
    move-wide v0, p0

    :goto_0
    return-wide v0
.end method

.method private clipX(J)J
    .locals 6
    .param p1, "pX"    # J

    .line 191
    iget-wide v2, p0, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    iget-wide v4, p0, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/SegmentClipper;->clip(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private clipY(J)J
    .locals 6
    .param p1, "pY"    # J

    .line 195
    iget-wide v2, p0, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    iget-wide v4, p0, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/SegmentClipper;->clip(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getClosestCorner(JJJJ)I
    .locals 23
    .param p1, "pX0"    # J
    .param p3, "pY0"    # J
    .param p5, "pX1"    # J
    .param p7, "pY1"    # J

    .line 243
    move-object/from16 v0, p0

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 244
    .local v1, "min":D
    const/4 v3, 0x0

    .line 245
    .local v3, "corner":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v0, Lorg/osmdroid/util/SegmentClipper;->cornerX:[J

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 246
    aget-wide v6, v5, v4

    long-to-double v8, v6

    iget-object v5, v0, Lorg/osmdroid/util/SegmentClipper;->cornerY:[J

    aget-wide v6, v5, v4

    long-to-double v10, v6

    move-wide/from16 v5, p1

    long-to-double v12, v5

    move-wide/from16 v14, p3

    long-to-double v5, v14

    move-wide/from16 v21, v1

    move v7, v3

    move/from16 v20, v4

    move-wide/from16 v3, p5

    .end local v1    # "min":D
    .end local v3    # "corner":I
    .end local v4    # "i":I
    .local v7, "corner":I
    .local v20, "i":I
    .local v21, "min":D
    long-to-double v0, v3

    move-wide/from16 v2, p7

    move-wide/from16 v16, v0

    long-to-double v0, v2

    move-wide v14, v5

    move-wide/from16 v18, v0

    invoke-static/range {v8 .. v19}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToSegment(DDDDDD)D

    move-result-wide v0

    .line 249
    .local v0, "distance":D
    cmpl-double v4, v21, v0

    if-lez v4, :cond_0

    .line 250
    move-wide v4, v0

    .line 251
    .end local v21    # "min":D
    .local v4, "min":D
    move/from16 v6, v20

    move v7, v6

    .end local v7    # "corner":I
    .local v6, "corner":I
    goto :goto_1

    .line 249
    .end local v4    # "min":D
    .end local v6    # "corner":I
    .restart local v7    # "corner":I
    .restart local v21    # "min":D
    :cond_0
    move-wide/from16 v4, v21

    .line 245
    .end local v0    # "distance":D
    .end local v21    # "min":D
    .restart local v4    # "min":D
    :goto_1
    add-int/lit8 v0, v20, 0x1

    move-wide v1, v4

    move v3, v7

    move v4, v0

    move-object/from16 v0, p0

    .end local v20    # "i":I
    .local v0, "i":I
    goto :goto_0

    .end local v0    # "i":I
    .end local v7    # "corner":I
    .restart local v1    # "min":D
    .restart local v3    # "corner":I
    .local v4, "i":I
    :cond_1
    move v7, v3

    .line 254
    .end local v3    # "corner":I
    .end local v4    # "i":I
    .restart local v7    # "corner":I
    return v7
.end method

.method private intersection(JJJJ)Z
    .locals 20
    .param p1, "pX0"    # J
    .param p3, "pY0"    # J
    .param p5, "pX1"    # J
    .param p7, "pY1"    # J

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 221
    iget-wide v9, v15, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    move-wide v13, v9

    iget-wide v11, v15, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    move-object/from16 v17, v0

    move-wide/from16 v18, v1

    iget-wide v0, v15, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    move-object v2, v15

    move-wide v15, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-direct/range {v0 .. v16}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v0

    if-nez v0, :cond_1

    move-object/from16 v7, p0

    iget-wide v13, v7, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    move-wide v9, v13

    iget-wide v11, v7, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    iget-wide v0, v7, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    move-wide v15, v0

    .line 222
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v16}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v0

    if-nez v0, :cond_1

    move-object/from16 v7, p0

    iget-wide v9, v7, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    iget-wide v11, v7, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    move-wide v15, v11

    iget-wide v13, v7, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    .line 223
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v16}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v0

    if-nez v0, :cond_1

    move-object/from16 v7, p0

    iget-wide v9, v7, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    iget-wide v11, v7, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    move-wide v15, v11

    iget-wide v13, v7, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    .line 224
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v16}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 221
    :goto_1
    return v0
.end method

.method private intersection(JJJJJJJJ)Z
    .locals 21
    .param p1, "pX0"    # J
    .param p3, "pY0"    # J
    .param p5, "pX1"    # J
    .param p7, "pY1"    # J
    .param p9, "pX2"    # J
    .param p11, "pY2"    # J
    .param p13, "pX3"    # J
    .param p15, "pY3"    # J

    .line 212
    move-wide/from16 v0, p1

    long-to-double v2, v0

    move-wide/from16 v14, p3

    long-to-double v4, v14

    move-wide/from16 v12, p5

    long-to-double v6, v12

    move-wide/from16 v10, p7

    long-to-double v8, v10

    move-wide/from16 v0, p9

    long-to-double v10, v0

    move-wide/from16 v0, p11

    long-to-double v12, v0

    move-wide/from16 v0, p13

    long-to-double v14, v0

    move-wide/from16 v0, p15

    move-wide/from16 v19, v2

    long-to-double v2, v0

    move-wide/from16 v16, v2

    move-object/from16 v2, p0

    iget-object v3, v2, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    move-object/from16 v18, v3

    move-wide/from16 v2, v19

    invoke-static/range {v2 .. v18}, Lorg/osmdroid/util/SegmentIntersection;->intersection(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v2

    return v2
.end method

.method private isOnTheSameSideOut(JJJJ)Z
    .locals 3
    .param p1, "pX0"    # J
    .param p3, "pY0"    # J
    .param p5, "pX1"    # J
    .param p7, "pY1"    # J

    .line 265
    iget-wide v0, p0, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_3

    :cond_0
    iget-wide v0, p0, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    cmp-long v0, p5, v0

    if-gtz v0, :cond_3

    :cond_1
    iget-wide v0, p0, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_2

    cmp-long v0, p7, v0

    if-ltz v0, :cond_3

    :cond_2
    iget-wide v0, p0, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    cmp-long v2, p3, v0

    if-lez v2, :cond_4

    cmp-long v0, p7, v0

    if-lez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nextVertex(JJ)V
    .locals 2
    .param p1, "pX"    # J
    .param p3, "pY"    # J

    .line 199
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    if-eqz v0, :cond_0

    .line 200
    iget v1, p0, Lorg/osmdroid/util/SegmentClipper;->mCurrentSegmentIndex:I

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/IntegerAccepter;->add(I)V

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointAccepter;->add(JJ)V

    .line 203
    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 10
    .param p1, "pX"    # J
    .param p3, "pY"    # J

    .line 66
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint1:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    .line 67
    iget-boolean v0, p0, Lorg/osmdroid/util/SegmentClipper;->mFirstPoint:Z

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/util/SegmentClipper;->mFirstPoint:Z

    .line 69
    iput v0, p0, Lorg/osmdroid/util/SegmentClipper;->mCurrentSegmentIndex:I

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint0:Lorg/osmdroid/util/PointL;

    iget-wide v2, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint0:Lorg/osmdroid/util/PointL;

    iget-wide v4, v0, Lorg/osmdroid/util/PointL;->y:J

    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint1:Lorg/osmdroid/util/PointL;

    iget-wide v6, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint1:Lorg/osmdroid/util/PointL;

    iget-wide v8, v0, Lorg/osmdroid/util/PointL;->y:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/osmdroid/util/SegmentClipper;->clip(JJJJ)V

    .line 72
    iget v0, p0, Lorg/osmdroid/util/SegmentClipper;->mCurrentSegmentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/util/SegmentClipper;->mCurrentSegmentIndex:I

    .line 74
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint0:Lorg/osmdroid/util/PointL;

    iget-object v1, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint1:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    .line 75
    return-void
.end method

.method public clip(JJJJ)V
    .locals 22
    .param p1, "pX0"    # J
    .param p3, "pY0"    # J
    .param p5, "pX1"    # J
    .param p7, "pY1"    # J

    .line 89
    move-object/from16 v7, p0

    move-wide/from16 v5, p1

    move-wide/from16 v3, p3

    move-wide/from16 v1, p5

    move-wide/from16 v13, p7

    iget-boolean v0, v7, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    if-nez v0, :cond_0

    .line 90
    invoke-direct/range {p0 .. p8}, Lorg/osmdroid/util/SegmentClipper;->isOnTheSameSideOut(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    return-void

    .line 94
    :cond_0
    invoke-virtual/range {p0 .. p4}, Lorg/osmdroid/util/SegmentClipper;->isInClipArea(JJ)Z

    move-result v0

    const-string v8, "Cannot find expected mOptimIntersection for "

    if-eqz v0, :cond_4

    .line 95
    invoke-virtual {v7, v1, v2, v13, v14}, Lorg/osmdroid/util/SegmentClipper;->isInClipArea(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-direct/range {p0 .. p4}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 97
    invoke-direct {v7, v1, v2, v13, v14}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 98
    return-void

    .line 100
    :cond_1
    invoke-direct/range {p0 .. p8}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    invoke-direct/range {p0 .. p4}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 102
    iget-object v0, v7, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    iget-wide v8, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v0, v7, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    iget-wide v10, v0, Lorg/osmdroid/util/PointL;->y:J

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 103
    iget-boolean v0, v7, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    if-eqz v0, :cond_2

    .line 104
    invoke-direct {v7, v1, v2}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v8

    invoke-direct {v7, v13, v14}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 106
    :cond_2
    return-void

    .line 108
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v11, Lorg/osmdroid/util/RectL;

    move-object v8, v11

    move-wide/from16 v9, p1

    move-object v5, v11

    move-wide/from16 v11, p3

    move-wide v3, v13

    move-wide/from16 v13, p5

    move-object v6, v15

    move-wide/from16 v15, p7

    invoke-direct/range {v8 .. v16}, Lorg/osmdroid/util/RectL;-><init>(JJJJ)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_4
    move-wide v3, v13

    invoke-virtual {v7, v1, v2, v3, v4}, Lorg/osmdroid/util/SegmentClipper;->isInClipArea(JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    invoke-direct/range {p0 .. p8}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    iget-boolean v0, v7, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    if-eqz v0, :cond_5

    .line 113
    invoke-direct/range {p0 .. p2}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v5

    move-wide v13, v3

    move-wide/from16 v3, p3

    invoke-direct {v7, v3, v4}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v8

    invoke-direct {v7, v5, v6, v8, v9}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    goto :goto_0

    .line 112
    :cond_5
    move-wide v13, v3

    move-wide/from16 v3, p3

    .line 115
    :goto_0
    iget-object v0, v7, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    iget-wide v5, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v0, v7, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    iget-wide v8, v0, Lorg/osmdroid/util/PointL;->y:J

    invoke-direct {v7, v5, v6, v8, v9}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 116
    invoke-direct {v7, v1, v2, v13, v14}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 117
    return-void

    .line 119
    :cond_6
    move-wide v13, v3

    move-wide/from16 v3, p3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Lorg/osmdroid/util/RectL;

    move-object v8, v6

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    invoke-direct/range {v8 .. v16}, Lorg/osmdroid/util/RectL;-><init>(JJJJ)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_7
    move-wide/from16 v3, p3

    const/16 v17, 0x0

    .line 123
    .local v17, "count":I
    iget-wide v13, v7, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    move-wide v9, v13

    iget-wide v11, v7, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    iget-wide v5, v7, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    move-wide v15, v5

    move-object/from16 v0, p0

    move-wide v5, v1

    move-wide/from16 v1, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v16}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 124
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "count":I
    .local v0, "count":I
    if-nez v17, :cond_8

    move-object/from16 v7, p0

    iget-object v1, v7, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    goto :goto_1

    :cond_8
    move-object/from16 v7, p0

    iget-object v1, v7, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    .line 125
    .local v1, "point":Lorg/osmdroid/util/PointL;
    :goto_1
    iget-object v2, v7, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    invoke-virtual {v1, v2}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    move/from16 v17, v0

    goto :goto_2

    .line 123
    .end local v0    # "count":I
    .end local v1    # "point":Lorg/osmdroid/util/PointL;
    .restart local v17    # "count":I
    :cond_9
    move-object/from16 v7, p0

    .line 127
    :goto_2
    iget-wide v13, v7, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    move-wide v9, v13

    iget-wide v11, v7, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    iget-wide v0, v7, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    move-wide v15, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v16}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 128
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "count":I
    .restart local v0    # "count":I
    if-nez v17, :cond_a

    move-object/from16 v7, p0

    iget-object v1, v7, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    goto :goto_3

    :cond_a
    move-object/from16 v7, p0

    iget-object v1, v7, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    .line 129
    .restart local v1    # "point":Lorg/osmdroid/util/PointL;
    :goto_3
    iget-object v2, v7, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    invoke-virtual {v1, v2}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    move/from16 v17, v0

    goto :goto_4

    .line 127
    .end local v0    # "count":I
    .end local v1    # "point":Lorg/osmdroid/util/PointL;
    .restart local v17    # "count":I
    :cond_b
    move-object/from16 v7, p0

    .line 131
    :goto_4
    iget-wide v9, v7, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    iget-wide v11, v7, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    move-wide v15, v11

    iget-wide v13, v7, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v16}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 132
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "count":I
    .restart local v0    # "count":I
    if-nez v17, :cond_c

    move-object/from16 v7, p0

    iget-object v1, v7, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    goto :goto_5

    :cond_c
    move-object/from16 v7, p0

    iget-object v1, v7, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    .line 133
    .restart local v1    # "point":Lorg/osmdroid/util/PointL;
    :goto_5
    iget-object v2, v7, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    invoke-virtual {v1, v2}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    move/from16 v17, v0

    goto :goto_6

    .line 131
    .end local v0    # "count":I
    .end local v1    # "point":Lorg/osmdroid/util/PointL;
    .restart local v17    # "count":I
    :cond_d
    move-object/from16 v7, p0

    .line 135
    :goto_6
    iget-wide v9, v7, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    iget-wide v11, v7, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    move-wide v15, v11

    iget-wide v13, v7, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v16}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 136
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "count":I
    .restart local v0    # "count":I
    if-nez v17, :cond_e

    move-object/from16 v1, p0

    iget-object v2, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    goto :goto_7

    :cond_e
    move-object/from16 v1, p0

    iget-object v2, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    .line 137
    .local v2, "point":Lorg/osmdroid/util/PointL;
    :goto_7
    iget-object v3, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    invoke-virtual {v2, v3}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    goto :goto_8

    .line 135
    .end local v0    # "count":I
    .end local v2    # "point":Lorg/osmdroid/util/PointL;
    .restart local v17    # "count":I
    :cond_f
    move-object/from16 v1, p0

    move/from16 v0, v17

    .line 139
    .end local v17    # "count":I
    .restart local v0    # "count":I
    :goto_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    .line 140
    iget-object v2, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v4, v2

    iget-object v2, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v6, v2

    move-wide/from16 v2, p1

    long-to-double v8, v2

    move-wide/from16 v12, p3

    long-to-double v10, v12

    invoke-static/range {v4 .. v11}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v4

    .line 142
    .local v4, "distance1":D
    iget-object v6, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    iget-wide v6, v6, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v14, v6

    iget-object v6, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    iget-wide v6, v6, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v6, v6

    long-to-double v8, v2

    long-to-double v10, v12

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-wide/from16 v20, v10

    invoke-static/range {v14 .. v21}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v6

    .line 144
    .local v6, "distance2":D
    cmpg-double v8, v4, v6

    if-gez v8, :cond_10

    iget-object v8, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    goto :goto_9

    :cond_10
    iget-object v8, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    .line 145
    .local v8, "start":Lorg/osmdroid/util/PointL;
    :goto_9
    cmpg-double v9, v4, v6

    if-gez v9, :cond_11

    iget-object v9, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    goto :goto_a

    :cond_11
    iget-object v9, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    .line 146
    .local v9, "end":Lorg/osmdroid/util/PointL;
    :goto_a
    iget-boolean v10, v1, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    if-eqz v10, :cond_12

    .line 147
    invoke-direct/range {p0 .. p2}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v10

    invoke-direct {v1, v12, v13}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v14

    invoke-direct {v1, v10, v11, v14, v15}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 149
    :cond_12
    iget-wide v10, v8, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v14, v8, Lorg/osmdroid/util/PointL;->y:J

    invoke-direct {v1, v10, v11, v14, v15}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 150
    iget-wide v10, v9, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v14, v9, Lorg/osmdroid/util/PointL;->y:J

    invoke-direct {v1, v10, v11, v14, v15}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 151
    iget-boolean v10, v1, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    if-eqz v10, :cond_13

    .line 152
    move-wide/from16 v10, p5

    invoke-direct {v1, v10, v11}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v14

    move-wide/from16 v2, p7

    move-wide/from16 v16, v4

    .end local v4    # "distance1":D
    .local v16, "distance1":D
    invoke-direct {v1, v2, v3}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v4

    invoke-direct {v1, v14, v15, v4, v5}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    goto :goto_b

    .line 151
    .end local v16    # "distance1":D
    .restart local v4    # "distance1":D
    :cond_13
    move-wide/from16 v10, p5

    move-wide/from16 v2, p7

    move-wide/from16 v16, v4

    .line 154
    .end local v4    # "distance1":D
    .restart local v16    # "distance1":D
    :goto_b
    return-void

    .line 156
    .end local v6    # "distance2":D
    .end local v8    # "start":Lorg/osmdroid/util/PointL;
    .end local v9    # "end":Lorg/osmdroid/util/PointL;
    .end local v16    # "distance1":D
    :cond_14
    move-wide/from16 v12, p3

    move-wide/from16 v10, p5

    move-wide/from16 v2, p7

    const/4 v4, 0x1

    if-ne v0, v4, :cond_16

    .line 157
    iget-boolean v4, v1, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    if-eqz v4, :cond_15

    .line 158
    invoke-direct/range {p0 .. p2}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v4

    invoke-direct {v1, v12, v13}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v6

    invoke-direct {v1, v4, v5, v6, v7}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 159
    iget-object v4, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->x:J

    iget-object v6, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    iget-wide v6, v6, Lorg/osmdroid/util/PointL;->y:J

    invoke-direct {v1, v4, v5, v6, v7}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 160
    invoke-direct {v1, v10, v11}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v4

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v6

    invoke-direct {v1, v4, v5, v6, v7}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 162
    :cond_15
    return-void

    .line 164
    :cond_16
    if-nez v0, :cond_18

    .line 165
    iget-boolean v4, v1, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    if-eqz v4, :cond_17

    .line 166
    invoke-direct/range {p0 .. p2}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v4

    invoke-direct {v1, v12, v13}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v6

    invoke-direct {v1, v4, v5, v6, v7}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 167
    invoke-direct/range {p0 .. p8}, Lorg/osmdroid/util/SegmentClipper;->getClosestCorner(JJJJ)I

    move-result v4

    .line 168
    .local v4, "corner":I
    iget-object v5, v1, Lorg/osmdroid/util/SegmentClipper;->cornerX:[J

    aget-wide v6, v5, v4

    iget-object v5, v1, Lorg/osmdroid/util/SegmentClipper;->cornerY:[J

    aget-wide v8, v5, v4

    invoke-direct {v1, v6, v7, v8, v9}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 169
    invoke-direct {v1, v10, v11}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v5

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v7

    invoke-direct {v1, v5, v6, v7, v8}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 171
    .end local v4    # "corner":I
    :cond_17
    return-void

    .line 173
    :cond_18
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Impossible mOptimIntersection count ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public end()V
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lorg/osmdroid/util/IntegerAccepter;->end()V

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0}, Lorg/osmdroid/util/PointAccepter;->end()V

    .line 83
    return-void
.end method

.method public init()V
    .locals 1

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/util/SegmentClipper;->mFirstPoint:Z

    .line 58
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lorg/osmdroid/util/IntegerAccepter;->init()V

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0}, Lorg/osmdroid/util/PointAccepter;->init()V

    .line 62
    return-void
.end method

.method public isInClipArea(JJ)Z
    .locals 2
    .param p1, "pX"    # J
    .param p3, "pY"    # J

    .line 180
    iget-wide v0, p0, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(JJJJLorg/osmdroid/util/PointAccepter;Lorg/osmdroid/util/IntegerAccepter;Z)V
    .locals 14
    .param p1, "pXMin"    # J
    .param p3, "pYMin"    # J
    .param p5, "pXMax"    # J
    .param p7, "pYMax"    # J
    .param p9, "pPointAccepter"    # Lorg/osmdroid/util/PointAccepter;
    .param p10, "pIntegerAccepter"    # Lorg/osmdroid/util/IntegerAccepter;
    .param p11, "pPathMode"    # Z

    .line 37
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    iput-wide v1, v0, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    .line 38
    iput-wide v3, v0, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    .line 39
    iput-wide v5, v0, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    .line 40
    iput-wide v7, v0, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    .line 41
    iget-object v9, v0, Lorg/osmdroid/util/SegmentClipper;->cornerX:[J

    const/4 v10, 0x1

    aput-wide v1, v9, v10

    const/4 v11, 0x0

    aput-wide v1, v9, v11

    .line 42
    const/4 v12, 0x3

    aput-wide v5, v9, v12

    const/4 v13, 0x2

    aput-wide v5, v9, v13

    .line 43
    iget-object v9, v0, Lorg/osmdroid/util/SegmentClipper;->cornerY:[J

    aput-wide v3, v9, v13

    aput-wide v3, v9, v11

    .line 44
    aput-wide v7, v9, v12

    aput-wide v7, v9, v10

    .line 45
    move-object/from16 v9, p9

    iput-object v9, v0, Lorg/osmdroid/util/SegmentClipper;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    .line 46
    move-object/from16 v10, p10

    iput-object v10, v0, Lorg/osmdroid/util/SegmentClipper;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    .line 47
    move/from16 v11, p11

    iput-boolean v11, v0, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    .line 48
    return-void
.end method

.method public set(JJJJLorg/osmdroid/util/PointAccepter;Z)V
    .locals 12
    .param p1, "pXMin"    # J
    .param p3, "pYMin"    # J
    .param p5, "pXMax"    # J
    .param p7, "pYMax"    # J
    .param p9, "pPointAccepter"    # Lorg/osmdroid/util/PointAccepter;
    .param p10, "pPathMode"    # Z

    .line 52
    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lorg/osmdroid/util/SegmentClipper;->set(JJJJLorg/osmdroid/util/PointAccepter;Lorg/osmdroid/util/IntegerAccepter;Z)V

    .line 53
    return-void
.end method
