.class public Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneLister;
.source "MilestoneVertexLister.java"


# instance fields
.field private mIndex:I

.field private mLatestOrientation:D

.field private mLatestX:J

.field private mLatestY:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;-><init>()V

    return-void
.end method

.method private innerAdd(JJI)V
    .locals 9
    .param p1, "pX"    # J
    .param p3, "pY"    # J
    .param p5, "pIndex"    # I

    .line 38
    new-instance v8, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    iget-wide v5, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mLatestOrientation:D

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v0, v8

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    invoke-virtual {p0, v8}, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected add(JJJJ)V
    .locals 6
    .param p1, "x0"    # J
    .param p3, "y0"    # J
    .param p5, "x1"    # J
    .param p7, "y1"    # J

    .line 25
    invoke-static/range {p1 .. p8}, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->getOrientation(JJJJ)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mLatestOrientation:D

    .line 26
    iget v5, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mIndex:I

    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mIndex:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->innerAdd(JJI)V

    .line 27
    iput-wide p5, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mLatestX:J

    .line 28
    iput-wide p7, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mLatestY:J

    .line 29
    return-void
.end method

.method public end()V
    .locals 6

    .line 33
    invoke-super {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->end()V

    .line 34
    iget-wide v1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mLatestX:J

    iget-wide v3, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mLatestY:J

    iget v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mIndex:I

    neg-int v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->innerAdd(JJI)V

    .line 35
    return-void
.end method

.method public init()V
    .locals 1

    .line 19
    invoke-super {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->init()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mIndex:I

    .line 21
    return-void
.end method
