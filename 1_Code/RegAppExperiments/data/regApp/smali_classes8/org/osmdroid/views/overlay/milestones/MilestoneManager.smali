.class public Lorg/osmdroid/views/overlay/milestones/MilestoneManager;
.super Ljava/lang/Object;
.source "MilestoneManager.java"

# interfaces
.implements Lorg/osmdroid/util/PointAccepter;


# instance fields
.field private final mDisplayer:Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;

.field private final mLister:Lorg/osmdroid/views/overlay/milestones/MilestoneLister;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/milestones/MilestoneLister;Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;)V
    .locals 0
    .param p1, "pLister"    # Lorg/osmdroid/views/overlay/milestones/MilestoneLister;
    .param p2, "pDisplayer"    # Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mLister:Lorg/osmdroid/views/overlay/milestones/MilestoneLister;

    .line 20
    iput-object p2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mDisplayer:Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;

    .line 21
    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 1
    .param p1, "pX"    # J
    .param p3, "pY"    # J

    .line 38
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mLister:Lorg/osmdroid/views/overlay/milestones/MilestoneLister;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->add(JJ)V

    .line 39
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;

    .line 24
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mDisplayer:Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->drawBegin(Landroid/graphics/Canvas;)V

    .line 25
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mLister:Lorg/osmdroid/views/overlay/milestones/MilestoneLister;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->getMilestones()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    .line 26
    .local v1, "step":Lorg/osmdroid/views/overlay/milestones/MilestoneStep;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mDisplayer:Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;

    invoke-virtual {v2, p1, v1}, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    .line 27
    .end local v1    # "step":Lorg/osmdroid/views/overlay/milestones/MilestoneStep;
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mDisplayer:Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->drawEnd(Landroid/graphics/Canvas;)V

    .line 29
    return-void
.end method

.method public end()V
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mLister:Lorg/osmdroid/views/overlay/milestones/MilestoneLister;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->end()V

    .line 44
    return-void
.end method

.method public init()V
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mLister:Lorg/osmdroid/views/overlay/milestones/MilestoneLister;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->init()V

    .line 34
    return-void
.end method

.method public setDistances([D)V
    .locals 1
    .param p1, "pDistances"    # [D

    .line 47
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mLister:Lorg/osmdroid/views/overlay/milestones/MilestoneLister;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->setDistances([D)V

    .line 48
    return-void
.end method
