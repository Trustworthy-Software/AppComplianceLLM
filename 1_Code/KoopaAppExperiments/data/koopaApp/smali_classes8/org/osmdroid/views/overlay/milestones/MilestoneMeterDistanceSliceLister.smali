.class public Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneLister;
.source "MilestoneMeterDistanceSliceLister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;
    }
.end annotation


# instance fields
.field private mDistance:D

.field private mIndex:I

.field private mNbMetersEnd:D

.field private mNbMetersStart:D

.field private mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;-><init>()V

    return-void
.end method


# virtual methods
.method protected add(JJJJ)V
    .locals 32
    .param p1, "x0"    # J
    .param p3, "y0"    # J
    .param p5, "x1"    # J
    .param p7, "y1"    # J

    .line 42
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-object v5, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    sget-object v6, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_ENDED:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    if-ne v5, v6, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    iget v5, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mIndex:I

    invoke-virtual {v0, v5}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->getDistance(I)D

    move-result-wide v5

    .line 46
    .local v5, "currentDistance":D
    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-nez v7, :cond_1

    .line 47
    return-void

    .line 49
    :cond_1
    long-to-double v8, v1

    long-to-double v10, v3

    move-wide/from16 v14, p5

    long-to-double v12, v14

    move-wide/from16 v3, p7

    long-to-double v14, v3

    invoke-static/range {v8 .. v15}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 50
    .local v7, "pixelDistance":D
    div-double v9, v7, v5

    .line 51
    .local v9, "metersToPixels":D
    invoke-static/range {p1 .. p8}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->getOrientation(JJJJ)D

    move-result-wide v20

    .line 52
    .local v20, "orientation":D
    long-to-double v11, v1

    .line 53
    .local v11, "x":D
    move-wide/from16 v3, p3

    long-to-double v13, v3

    .line 54
    .local v13, "y":D
    iget-object v15, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    sget-object v1, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_INIT:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    const-wide v22, 0x3f91df46a2529d39L    # 0.017453292519943295

    if-ne v15, v1, :cond_4

    .line 55
    iget-wide v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersStart:D

    iget-wide v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    sub-double/2addr v1, v3

    .line 56
    .local v1, "neededForNext":D
    cmpl-double v15, v1, v5

    if-lez v15, :cond_2

    .line 57
    add-double/2addr v3, v5

    iput-wide v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    .line 58
    return-void

    .line 60
    :cond_2
    sget-object v3, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_STARTED:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    iput-object v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    .line 61
    iget-wide v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    add-double/2addr v3, v1

    iput-wide v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    .line 62
    sub-double/2addr v5, v1

    .line 63
    mul-double v3, v20, v22

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    mul-double/2addr v3, v9

    add-double/2addr v3, v11

    .line 64
    .end local v11    # "x":D
    .local v3, "x":D
    mul-double v11, v20, v22

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v1

    mul-double/2addr v11, v9

    add-double v14, v13, v11

    .line 65
    .end local v13    # "y":D
    .local v14, "y":D
    new-instance v12, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    move-wide/from16 v24, v1

    .end local v1    # "neededForNext":D
    .local v24, "neededForNext":D
    double-to-long v1, v3

    move-wide/from16 v26, v3

    .end local v3    # "x":D
    .local v26, "x":D
    double-to-long v3, v14

    const/16 v18, 0x0

    move-object v11, v12

    move-wide/from16 v28, v5

    move-object v5, v12

    .end local v5    # "currentDistance":D
    .local v28, "currentDistance":D
    move-wide v12, v1

    move-wide v1, v14

    .end local v14    # "y":D
    .local v1, "y":D
    move-wide v14, v3

    move-wide/from16 v16, v20

    invoke-direct/range {v11 .. v18}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    invoke-virtual {v0, v5}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    .line 66
    iget-wide v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersStart:D

    iget-wide v5, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersEnd:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    .line 67
    sget-object v3, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_ENDED:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    iput-object v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    .line 68
    return-void

    .line 66
    :cond_3
    move-wide/from16 v5, v28

    goto :goto_0

    .line 54
    .end local v1    # "y":D
    .end local v24    # "neededForNext":D
    .end local v26    # "x":D
    .end local v28    # "currentDistance":D
    .restart local v5    # "currentDistance":D
    .restart local v11    # "x":D
    .restart local v13    # "y":D
    :cond_4
    move-wide/from16 v26, v11

    move-wide v1, v13

    .line 71
    .end local v11    # "x":D
    .end local v13    # "y":D
    .restart local v1    # "y":D
    .restart local v26    # "x":D
    :goto_0
    iget-object v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    sget-object v4, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_STARTED:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    if-ne v3, v4, :cond_6

    .line 72
    iget-wide v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersEnd:D

    iget-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    sub-double/2addr v3, v11

    .line 73
    .local v3, "neededForNext":D
    cmpl-double v13, v3, v5

    if-lez v13, :cond_5

    .line 74
    add-double/2addr v11, v5

    iput-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    .line 75
    new-instance v11, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    const/16 v19, 0x0

    move-object v12, v11

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-wide/from16 v17, v20

    invoke-direct/range {v12 .. v19}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    invoke-virtual {v0, v11}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    .line 76
    return-void

    .line 78
    :cond_5
    sget-object v11, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_ENDED:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    iput-object v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    .line 79
    mul-double v11, v20, v22

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v3

    mul-double/2addr v11, v9

    add-double v14, v26, v11

    .line 80
    .end local v26    # "x":D
    .local v14, "x":D
    mul-double v22, v22, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v3

    mul-double/2addr v11, v9

    add-double/2addr v1, v11

    .line 81
    new-instance v12, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    move-wide/from16 v22, v3

    .end local v3    # "neededForNext":D
    .local v22, "neededForNext":D
    double-to-long v3, v14

    move-wide/from16 v24, v5

    .end local v5    # "currentDistance":D
    .local v24, "currentDistance":D
    double-to-long v5, v1

    const/16 v18, 0x0

    move-object v11, v12

    move-wide/from16 v26, v1

    move-object v1, v12

    .end local v1    # "y":D
    .local v26, "y":D
    move-wide v12, v3

    move-wide v2, v14

    .end local v14    # "x":D
    .local v2, "x":D
    move-wide v14, v5

    move-wide/from16 v16, v20

    invoke-direct/range {v11 .. v18}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    move-wide/from16 v30, v2

    move-wide/from16 v1, v26

    move-wide/from16 v26, v30

    goto :goto_1

    .line 71
    .end local v2    # "x":D
    .end local v22    # "neededForNext":D
    .end local v24    # "currentDistance":D
    .restart local v1    # "y":D
    .restart local v5    # "currentDistance":D
    .local v26, "x":D
    :cond_6
    move-wide/from16 v24, v5

    .line 83
    .end local v5    # "currentDistance":D
    .restart local v24    # "currentDistance":D
    :goto_1
    return-void
.end method

.method public init()V
    .locals 2

    .line 34
    invoke-super {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->init()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mIndex:I

    .line 37
    sget-object v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_INIT:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    .line 38
    return-void
.end method

.method public setMeterDistanceSlice(DD)V
    .locals 0
    .param p1, "pNbMetersStart"    # D
    .param p3, "pNbMetersEnd"    # D

    .line 28
    iput-wide p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersStart:D

    .line 29
    iput-wide p3, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersEnd:D

    .line 30
    return-void
.end method
