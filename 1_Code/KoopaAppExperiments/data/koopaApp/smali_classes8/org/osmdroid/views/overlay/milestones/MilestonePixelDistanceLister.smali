.class public Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneLister;
.source "MilestonePixelDistanceLister.java"


# instance fields
.field private mDistance:D

.field private final mNbPixelsInit:D

.field private final mNbPixelsRecurrence:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .param p1, "pNbPixelsInit"    # D
    .param p3, "pNbPixelsRecurrence"    # D

    .line 19
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;-><init>()V

    .line 20
    iput-wide p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mNbPixelsInit:D

    .line 21
    iput-wide p3, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mNbPixelsRecurrence:D

    .line 22
    return-void
.end method


# virtual methods
.method protected add(JJJJ)V
    .locals 22
    .param p1, "x0"    # J
    .param p3, "y0"    # J
    .param p5, "x1"    # J
    .param p7, "y1"    # J

    .line 32
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    long-to-double v5, v1

    long-to-double v7, v3

    move-wide/from16 v13, p5

    long-to-double v9, v13

    move-wide/from16 v11, p7

    long-to-double v13, v11

    move-wide v11, v13

    invoke-static/range {v5 .. v12}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 33
    .local v5, "currentDistance":D
    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-nez v7, :cond_0

    .line 34
    return-void

    .line 36
    :cond_0
    invoke-static/range {p1 .. p8}, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->getOrientation(JJJJ)D

    move-result-wide v16

    .line 37
    .local v16, "orientation":D
    long-to-double v7, v1

    .line 38
    .local v7, "x":D
    long-to-double v9, v3

    .line 40
    .local v9, "y":D
    :goto_0
    iget-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mDistance:D

    iget-wide v13, v0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mNbPixelsRecurrence:D

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    iget-wide v13, v0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mNbPixelsRecurrence:D

    mul-double v18, v11, v13

    .line 41
    .local v18, "latestMilestone":D
    add-double v13, v18, v13

    iget-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mDistance:D

    sub-double v20, v13, v11

    .line 42
    .local v20, "neededForNext":D
    cmpg-double v13, v5, v20

    if-gez v13, :cond_1

    .line 43
    add-double/2addr v11, v5

    iput-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mDistance:D

    .line 44
    return-void

    .line 46
    :cond_1
    add-double v11, v11, v20

    iput-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mDistance:D

    .line 47
    sub-double v5, v5, v20

    .line 48
    const-wide v11, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v13, v16, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v13, v13, v20

    add-double/2addr v13, v7

    .line 49
    .end local v7    # "x":D
    .local v13, "x":D
    mul-double v11, v11, v16

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v7, v7, v20

    add-double v11, v9, v7

    .line 50
    .end local v9    # "y":D
    .local v11, "y":D
    new-instance v7, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    double-to-long v9, v13

    double-to-long v1, v11

    iget-wide v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mDistance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    move-object v8, v7

    move-wide v3, v11

    .end local v11    # "y":D
    .local v3, "y":D
    move-wide v11, v1

    move-wide v1, v13

    .end local v13    # "x":D
    .local v1, "x":D
    move-wide/from16 v13, v16

    invoke-direct/range {v8 .. v15}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    invoke-virtual {v0, v7}, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    .line 51
    .end local v18    # "latestMilestone":D
    .end local v20    # "neededForNext":D
    move-wide v7, v1

    move-wide v9, v3

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .line 26
    invoke-super {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->init()V

    .line 27
    iget-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mNbPixelsRecurrence:D

    iget-wide v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mNbPixelsInit:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mDistance:D

    .line 28
    return-void
.end method
