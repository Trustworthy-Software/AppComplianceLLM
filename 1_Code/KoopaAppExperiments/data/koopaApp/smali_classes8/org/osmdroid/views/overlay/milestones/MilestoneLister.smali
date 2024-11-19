.class public abstract Lorg/osmdroid/views/overlay/milestones/MilestoneLister;
.super Ljava/lang/Object;
.source "MilestoneLister.java"

# interfaces
.implements Lorg/osmdroid/util/PointAccepter;


# instance fields
.field private mDistances:[D

.field private mFirst:Z

.field private final mLatestPoint:Lorg/osmdroid/util/PointL;

.field private final mMilestones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/milestones/MilestoneStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mMilestones:Ljava/util/List;

    .line 20
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mLatestPoint:Lorg/osmdroid/util/PointL;

    return-void
.end method

.method public static getOrientation(JJJJ)D
    .locals 8
    .param p0, "x0"    # J
    .param p2, "y0"    # J
    .param p4, "x1"    # J
    .param p6, "y1"    # J

    .line 68
    cmp-long v0, p0, p4

    if-nez v0, :cond_2

    .line 69
    cmp-long v0, p2, p6

    if-nez v0, :cond_0

    .line 70
    const-wide/16 v0, 0x0

    return-wide v0

    .line 72
    :cond_0
    cmp-long v0, p2, p6

    if-lez v0, :cond_1

    .line 73
    const-wide v0, -0x3fa9800000000000L    # -90.0

    return-wide v0

    .line 75
    :cond_1
    const-wide v0, 0x4056800000000000L    # 90.0

    return-wide v0

    .line 77
    :cond_2
    sub-long v0, p6, p2

    long-to-double v0, v0

    sub-long v2, p4, p0

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 78
    .local v0, "slope":D
    cmp-long v2, p4, p0

    const/4 v3, 0x0

    if-gez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    .line 79
    .local v2, "isBeyondHalfPI":Z
    :goto_0
    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    if-eqz v2, :cond_4

    const/16 v3, 0xb4

    :cond_4
    int-to-double v3, v3

    add-double/2addr v6, v3

    return-wide v6
.end method


# virtual methods
.method public add(JJ)V
    .locals 10
    .param p1, "pX"    # J
    .param p3, "pY"    # J

    .line 44
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mFirst:Z

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mFirst:Z

    .line 46
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v0, Lorg/osmdroid/util/PointL;->y:J

    move-object v1, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v1 .. v9}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->add(JJJJ)V

    .line 49
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    .line 51
    :goto_0
    return-void
.end method

.method protected abstract add(JJJJ)V
.end method

.method protected add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V
    .locals 1
    .param p1, "pMilestoneStep"    # Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    .line 58
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mMilestones:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public end()V
    .locals 0

    .line 55
    return-void
.end method

.method protected getDistance(I)D
    .locals 3
    .param p1, "pIndex"    # I

    .line 33
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mDistances:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getMilestones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/milestones/MilestoneStep;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mMilestones:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mMilestones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mFirst:Z

    .line 40
    return-void
.end method

.method public setDistances([D)V
    .locals 0
    .param p1, "pDistances"    # [D

    .line 29
    iput-object p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mDistances:[D

    .line 30
    return-void
.end method
