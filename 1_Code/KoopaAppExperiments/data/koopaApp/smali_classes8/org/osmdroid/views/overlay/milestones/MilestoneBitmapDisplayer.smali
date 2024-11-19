.class public Lorg/osmdroid/views/overlay/milestones/MilestoneBitmapDisplayer;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;
.source "MilestoneBitmapDisplayer.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mOffsetX:I

.field private final mOffsetY:I


# direct methods
.method public constructor <init>(DZLandroid/graphics/Bitmap;II)V
    .locals 0
    .param p1, "pInitialOrientation"    # D
    .param p3, "pFollowTrajectory"    # Z
    .param p4, "pBitmap"    # Landroid/graphics/Bitmap;
    .param p5, "pOffsetX"    # I
    .param p6, "pOffsetY"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;-><init>(DZ)V

    .line 23
    iput-object p4, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneBitmapDisplayer;->mBitmap:Landroid/graphics/Bitmap;

    .line 24
    iput p5, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneBitmapDisplayer;->mOffsetX:I

    .line 25
    iput p6, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneBitmapDisplayer;->mOffsetY:I

    .line 26
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;Ljava/lang/Object;)V
    .locals 4
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pParameter"    # Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneBitmapDisplayer;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneBitmapDisplayer;->mOffsetX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneBitmapDisplayer;->mOffsetY:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 31
    return-void
.end method
