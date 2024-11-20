.class public Lorg/osmdroid/util/SpeechBalloonHelper;
.super Ljava/lang/Object;
.source "SpeechBalloonHelper.java"


# static fields
.field public static final CORNER_BOTTOM:I = 0x8

.field public static final CORNER_INSIDE:I = -0x1

.field public static final CORNER_LEFT:I = 0x1

.field public static final CORNER_NONE:I = 0x0

.field public static final CORNER_RIGHT:I = 0x2

.field public static final CORNER_TOP:I = 0x4


# instance fields
.field private mPoint:Lorg/osmdroid/util/PointL;

.field private mRect:Lorg/osmdroid/util/RectL;

.field private final mTrianglePoint:Lorg/osmdroid/util/PointL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    return-void
.end method

.method private checkIntersection(Lorg/osmdroid/util/PointL;)I
    .locals 4
    .param p1, "pIntersection"    # Lorg/osmdroid/util/PointL;

    .line 55
    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    iget-object v2, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v2, v2, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v0, v0, Lorg/osmdroid/util/RectL;->top:J

    invoke-direct {p0, v0, v1, p1}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersectionY(JLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x4

    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    iget-object v2, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v2, v2, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v0, v0, Lorg/osmdroid/util/RectL;->bottom:J

    invoke-direct {p0, v0, v1, p1}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersectionY(JLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const/16 v0, 0x8

    return v0

    .line 61
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v2, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v2, v2, Lorg/osmdroid/util/RectL;->left:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v0, v0, Lorg/osmdroid/util/RectL;->left:J

    invoke-direct {p0, v0, v1, p1}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersectionX(JLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v2, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v2, v2, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v0, v0, Lorg/osmdroid/util/RectL;->right:J

    invoke-direct {p0, v0, v1, p1}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersectionX(JLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    const/4 v0, 0x2

    return v0

    .line 67
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private checkIntersectionX(JLorg/osmdroid/util/PointL;)Z
    .locals 22
    .param p1, "pX"    # J
    .param p3, "pIntersection"    # Lorg/osmdroid/util/PointL;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v19, p3

    .line 71
    iget-object v3, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v3, v3

    iget-object v5, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v5, v5, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v5, v5

    iget-object v7, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    iget-wide v7, v7, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v7, v7

    iget-object v9, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    iget-wide v9, v9, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v9, v9

    long-to-double v11, v1

    iget-object v13, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v13, v13, Lorg/osmdroid/util/RectL;->top:J

    long-to-double v13, v13

    move-wide/from16 v20, v3

    long-to-double v3, v1

    move-wide v15, v3

    iget-object v3, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v3, v3, Lorg/osmdroid/util/RectL;->bottom:J

    long-to-double v3, v3

    move-wide/from16 v17, v3

    move-wide/from16 v3, v20

    invoke-static/range {v3 .. v19}, Lorg/osmdroid/util/SegmentIntersection;->intersection(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v3

    return v3
.end method

.method private checkIntersectionY(JLorg/osmdroid/util/PointL;)Z
    .locals 22
    .param p1, "pY"    # J
    .param p3, "pIntersection"    # Lorg/osmdroid/util/PointL;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v19, p3

    .line 78
    iget-object v3, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v3, v3

    iget-object v5, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v5, v5, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v5, v5

    iget-object v7, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    iget-wide v7, v7, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v7, v7

    iget-object v9, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    iget-wide v9, v9, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v9, v9

    iget-object v11, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v11, v11, Lorg/osmdroid/util/RectL;->left:J

    long-to-double v11, v11

    long-to-double v13, v1

    iget-object v15, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    move-wide/from16 v20, v3

    iget-wide v3, v15, Lorg/osmdroid/util/RectL;->right:J

    long-to-double v3, v3

    move-wide v15, v3

    long-to-double v3, v1

    move-wide/from16 v17, v3

    move-wide/from16 v3, v20

    invoke-static/range {v3 .. v19}, Lorg/osmdroid/util/SegmentIntersection;->intersection(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v3

    return v3
.end method

.method private computeCirclePoint(Lorg/osmdroid/util/PointL;DDZ)V
    .locals 11
    .param p1, "pDestination"    # Lorg/osmdroid/util/PointL;
    .param p2, "pRadius"    # D
    .param p4, "pAngle"    # D
    .param p6, "pFirst"    # Z

    .line 86
    move-object v0, p0

    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    invoke-virtual {v1}, Lorg/osmdroid/util/RectL;->centerX()J

    move-result-wide v2

    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    invoke-virtual {v1}, Lorg/osmdroid/util/RectL;->centerY()J

    move-result-wide v4

    .line 87
    if-eqz p6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    int-to-double v6, v1

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v6, v8

    add-double v8, p4, v6

    .line 86
    move-wide v6, p2

    move-object v10, p1

    invoke-static/range {v2 .. v10}, Lorg/osmdroid/util/MyMath;->computeCirclePoint(JJDDLorg/osmdroid/util/PointL;)V

    .line 88
    return-void
.end method


# virtual methods
.method public compute(Lorg/osmdroid/util/RectL;Lorg/osmdroid/util/PointL;DLorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;)I
    .locals 18
    .param p1, "pInputRect"    # Lorg/osmdroid/util/RectL;
    .param p2, "pInputPoint"    # Lorg/osmdroid/util/PointL;
    .param p3, "pInputRadius"    # D
    .param p5, "pOutputIntersection1"    # Lorg/osmdroid/util/PointL;
    .param p6, "pOutputIntersection2"    # Lorg/osmdroid/util/PointL;

    .line 35
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iput-object v8, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    .line 36
    iput-object v9, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    .line 38
    iget-wide v0, v9, Lorg/osmdroid/util/PointL;->x:J

    iget-object v2, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v8, v0, v1, v2, v3}, Lorg/osmdroid/util/RectL;->contains(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, -0x1

    return v0

    .line 42
    :cond_0
    iget-object v0, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    invoke-virtual {v0}, Lorg/osmdroid/util/RectL;->centerX()J

    move-result-wide v10

    iget-object v0, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    invoke-virtual {v0}, Lorg/osmdroid/util/RectL;->centerY()J

    move-result-wide v12

    iget-object v0, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v14, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v0, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    move-wide/from16 v16, v0

    invoke-static/range {v10 .. v17}, Lorg/osmdroid/util/MyMath;->computeAngle(JJJJ)D

    move-result-wide v10

    .line 44
    .local v10, "angle":D
    iget-object v1, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v2, p3

    move-wide v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/util/SpeechBalloonHelper;->computeCirclePoint(Lorg/osmdroid/util/PointL;DDZ)V

    .line 45
    move-object/from16 v12, p5

    invoke-direct {v7, v12}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersection(Lorg/osmdroid/util/PointL;)I

    move-result v13

    .line 46
    .local v13, "corner1":I
    iget-object v1, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/util/SpeechBalloonHelper;->computeCirclePoint(Lorg/osmdroid/util/PointL;DDZ)V

    .line 47
    move-object/from16 v0, p6

    invoke-direct {v7, v0}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersection(Lorg/osmdroid/util/PointL;)I

    move-result v1

    .line 48
    .local v1, "corner2":I
    if-ne v13, v1, :cond_1

    .line 49
    const/4 v2, 0x0

    return v2

    .line 51
    :cond_1
    or-int v2, v13, v1

    return v2
.end method
