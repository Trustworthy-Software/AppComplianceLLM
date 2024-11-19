.class public Lorg/osmdroid/views/overlay/milestones/MilestonePathDisplayer;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;
.source "MilestonePathDisplayer.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(DZLandroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "pInitialOrientation"    # D
    .param p3, "pFollowTrajectory"    # Z
    .param p4, "pPath"    # Landroid/graphics/Path;
    .param p5, "pPaint"    # Landroid/graphics/Paint;

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;-><init>(DZ)V

    .line 23
    iput-object p4, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePathDisplayer;->mPath:Landroid/graphics/Path;

    .line 24
    iput-object p5, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePathDisplayer;->mPaint:Landroid/graphics/Paint;

    .line 25
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;Ljava/lang/Object;)V
    .locals 2
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pParameter"    # Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePathDisplayer;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePathDisplayer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 30
    return-void
.end method
