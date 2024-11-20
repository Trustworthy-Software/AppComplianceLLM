.class public Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneLister;
.source "MilestoneMeterDistanceLister.java"


# instance fields
.field private mDistance:D

.field private mIndex:I

.field private final mMilestoneMeters:[D

.field private mMilestoneMetersIndex:I

.field private final mNbMetersRecurrence:D

.field private mNeededForNext:D

.field private mSideEffectLastEpsilon:D

.field private mSideEffectLastFlag:Z

.field private mSideEffectLastOrientation:D

.field private mSideEffectLastX:J

.field private mSideEffectLastY:J


# direct methods
.method public constructor <init>(D)V
    .locals 2
    .param p1, "pNbMetersRecurrence"    # D

    .line 36
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;-><init>()V

    .line 28
    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastEpsilon:D

    .line 37
    iput-wide p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNbMetersRecurrence:D

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mMilestoneMeters:[D

    .line 39
    return-void
.end method

.method public constructor <init>([D)V
    .locals 2
    .param p1, "pMilestoneMeters"    # [D

    .line 47
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;-><init>()V

    .line 28
    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastEpsilon:D

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNbMetersRecurrence:D

    .line 49
    iput-object p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mMilestoneMeters:[D

    .line 50
    return-void
.end method

.method private add(JJD)V
    .locals 9
    .param p1, "pX"    # J
    .param p3, "pY"    # J
    .param p5, "pOrientation"    # D

    .line 141
    new-instance v8, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    iget-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mDistance:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object v0, v8

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    invoke-virtual {p0, v8}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    .line 142
    return-void
.end method

.method private getNewNeededForNext()D
    .locals 8

    .line 105
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mMilestoneMeters:[D

    if-nez v0, :cond_0

    .line 106
    iget-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNbMetersRecurrence:D

    return-wide v0

    .line 108
    :cond_0
    iget v1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mMilestoneMetersIndex:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 109
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 111
    :cond_1
    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    move-wide v4, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v0, v4

    .line 112
    .local v4, "before":D
    :goto_0
    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mMilestoneMetersIndex:I

    aget-wide v6, v0, v1

    sub-double/2addr v6, v4

    .line 113
    .local v6, "needed":D
    cmpg-double v0, v6, v2

    if-ltz v0, :cond_3

    .line 116
    return-wide v6

    .line 114
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected add(JJJJ)V
    .locals 28
    .param p1, "x0"    # J
    .param p3, "y0"    # J
    .param p5, "x1"    # J
    .param p7, "y1"    # J

    .line 66
    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    const/4 v0, 0x0

    iput-boolean v0, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastFlag:Z

    .line 67
    iget-wide v0, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNeededForNext:D

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v16

    if-nez v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    iget v0, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mIndex:I

    const/4 v5, 0x1

    add-int/2addr v0, v5

    iput v0, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mIndex:I

    invoke-virtual {v7, v0}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->getDistance(I)D

    move-result-wide v0

    .line 71
    .local v0, "currentDistance":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_1

    .line 72
    return-void

    .line 74
    :cond_1
    long-to-double v2, v8

    long-to-double v5, v10

    long-to-double v10, v12

    long-to-double v12, v14

    move-wide/from16 v18, v2

    move-wide/from16 v20, v5

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    invoke-static/range {v18 .. v25}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 75
    .local v10, "pixelDistance":D
    div-double v12, v10, v0

    .line 76
    .local v12, "metersToPixels":D
    invoke-static/range {p1 .. p8}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->getOrientation(JJJJ)D

    move-result-wide v5

    .line 77
    .local v5, "orientation":D
    long-to-double v2, v8

    .line 78
    .local v2, "x":D
    move-wide/from16 v8, p3

    move-wide/from16 v18, v0

    .end local v0    # "currentDistance":D
    .local v18, "currentDistance":D
    long-to-double v0, v8

    move-wide/from16 v26, v0

    move-wide/from16 v0, v18

    move-wide/from16 v18, v2

    move-wide/from16 v2, v26

    .line 80
    .restart local v0    # "currentDistance":D
    .local v2, "y":D
    .local v18, "x":D
    :goto_0
    iget-wide v8, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNeededForNext:D

    cmpg-double v4, v0, v8

    if-gez v4, :cond_2

    .line 81
    move-wide/from16 v20, v10

    .end local v10    # "pixelDistance":D
    .local v20, "pixelDistance":D
    iget-wide v10, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mDistance:D

    add-double/2addr v10, v0

    iput-wide v10, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mDistance:D

    .line 82
    sub-double/2addr v8, v0

    iput-wide v8, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNeededForNext:D

    .line 83
    const/4 v10, 0x1

    iput-boolean v10, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastFlag:Z

    .line 84
    move-wide/from16 v8, p5

    iput-wide v8, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastX:J

    .line 85
    iput-wide v14, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastY:J

    .line 86
    iput-wide v5, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastOrientation:D

    .line 87
    return-void

    .line 89
    .end local v20    # "pixelDistance":D
    .restart local v10    # "pixelDistance":D
    :cond_2
    move-wide/from16 v20, v10

    const/4 v10, 0x1

    .end local v10    # "pixelDistance":D
    .restart local v20    # "pixelDistance":D
    iget-wide v10, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mDistance:D

    add-double/2addr v10, v8

    iput-wide v10, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mDistance:D

    .line 90
    sub-double v10, v0, v8

    .line 91
    .end local v0    # "currentDistance":D
    .local v10, "currentDistance":D
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v22, v5, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v8, v8, v22

    mul-double/2addr v8, v12

    add-double v8, v18, v8

    .line 92
    .end local v18    # "x":D
    .local v8, "x":D
    move-wide/from16 v18, v10

    .end local v10    # "currentDistance":D
    .local v18, "currentDistance":D
    iget-wide v10, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNeededForNext:D

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v10, v0

    mul-double/2addr v10, v12

    add-double/2addr v10, v2

    .line 93
    .end local v2    # "y":D
    .local v10, "y":D
    double-to-long v1, v8

    double-to-long v3, v10

    move-object/from16 v0, p0

    move-wide/from16 v22, v5

    const/16 v24, 0x1

    .end local v5    # "orientation":D
    .local v22, "orientation":D
    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->add(JJD)V

    .line 94
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->getNewNeededForNext()D

    move-result-wide v0

    iput-wide v0, v7, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNeededForNext:D

    .line 95
    cmpl-double v0, v0, v16

    if-nez v0, :cond_3

    .line 96
    return-void

    .line 95
    :cond_3
    move-wide v2, v10

    move-wide/from16 v0, v18

    move-wide/from16 v10, v20

    move-wide/from16 v5, v22

    move-wide/from16 v18, v8

    move-wide/from16 v8, p3

    goto :goto_0
.end method

.method public end()V
    .locals 8

    .line 124
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastFlag:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNeededForNext:D

    iget-wide v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastEpsilon:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 125
    iget-wide v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastX:J

    iget-wide v4, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastY:J

    iget-wide v6, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastOrientation:D

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->add(JJD)V

    .line 127
    :cond_0
    invoke-super {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->end()V

    .line 128
    return-void
.end method

.method public init()V
    .locals 3

    .line 54
    invoke-super {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->init()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mDistance:D

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mIndex:I

    .line 57
    iget-object v1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mMilestoneMeters:[D

    if-eqz v1, :cond_0

    .line 58
    iput v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mMilestoneMetersIndex:I

    .line 60
    :cond_0
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->getNewNeededForNext()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNeededForNext:D

    .line 61
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastFlag:Z

    .line 62
    return-void
.end method

.method public setSideEffectLastEpsilon(D)V
    .locals 0
    .param p1, "pSideEffectLastEpsilon"    # D

    .line 134
    iput-wide p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastEpsilon:D

    .line 135
    return-void
.end method
