.class public Lorg/osmdroid/views/overlay/milestones/MilestoneMiddleLister;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneLister;
.source "MilestoneMiddleLister.java"


# instance fields
.field private final mMinimumSquaredPixelDistance:D


# direct methods
.method public constructor <init>(D)V
    .locals 2
    .param p1, "pMinimumPixelDistance"    # D

    .line 16
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;-><init>()V

    .line 17
    mul-double v0, p1, p1

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMiddleLister;->mMinimumSquaredPixelDistance:D

    .line 18
    return-void
.end method


# virtual methods
.method protected add(JJJJ)V
    .locals 20
    .param p1, "x0"    # J
    .param p3, "y0"    # J
    .param p5, "x1"    # J
    .param p7, "y1"    # J

    .line 22
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    long-to-double v9, v1

    long-to-double v11, v3

    long-to-double v13, v5

    long-to-double v3, v7

    move-wide v15, v3

    invoke-static/range {v9 .. v16}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v3

    iget-wide v9, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMiddleLister;->mMinimumSquaredPixelDistance:D

    cmpg-double v3, v3, v9

    if-gtz v3, :cond_0

    .line 23
    return-void

    .line 26
    :cond_0
    add-long v3, v1, v5

    const-wide/16 v9, 0x2

    div-long/2addr v3, v9

    .line 27
    .local v3, "centerX":J
    add-long v11, p3, v7

    div-long v9, v11, v9

    .line 28
    .local v9, "centerY":J
    invoke-static/range {p1 .. p8}, Lorg/osmdroid/views/overlay/milestones/MilestoneMiddleLister;->getOrientation(JJJJ)D

    move-result-wide v18

    .line 29
    .local v18, "orientation":D
    new-instance v14, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    move-object v11, v14

    move-wide v12, v3

    move-object v1, v14

    move-wide v14, v9

    move-wide/from16 v16, v18

    invoke-direct/range {v11 .. v17}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/milestones/MilestoneMiddleLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    .line 30
    return-void
.end method
