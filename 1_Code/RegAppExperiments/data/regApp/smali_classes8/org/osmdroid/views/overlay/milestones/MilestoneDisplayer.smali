.class public abstract Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;
.super Ljava/lang/Object;
.source "MilestoneDisplayer.java"


# instance fields
.field private final mFollowTrajectory:Z

.field private final mInitialOrientation:D


# direct methods
.method public constructor <init>(DZ)V
    .locals 0
    .param p1, "pInitialOrientation"    # D
    .param p3, "pFollowTrajectory"    # Z

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->mInitialOrientation:D

    .line 32
    iput-boolean p3, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->mFollowTrajectory:Z

    .line 33
    return-void
.end method


# virtual methods
.method protected abstract draw(Landroid/graphics/Canvas;Ljava/lang/Object;)V
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V
    .locals 6
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pStep"    # Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    .line 36
    iget-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->mInitialOrientation:D

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->mFollowTrajectory:Z

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->getOrientation()D

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    add-double/2addr v0, v2

    .line 37
    .local v0, "orientation":D
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    double-to-float v2, v0

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->getX()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->getY()J

    move-result-wide v4

    long-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 39
    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->getX()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->getY()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->draw(Landroid/graphics/Canvas;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    return-void
.end method

.method public drawBegin(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;

    .line 53
    return-void
.end method

.method public drawEnd(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;

    .line 59
    return-void
.end method
