.class public Lorg/osmdroid/util/PathBuilder;
.super Ljava/lang/Object;
.source "PathBuilder.java"

# interfaces
.implements Lorg/osmdroid/util/PointAccepter;


# instance fields
.field private mFirst:Z

.field private final mLatestPoint:Lorg/osmdroid/util/PointL;

.field private final mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "pPath"    # Landroid/graphics/Path;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/PathBuilder;->mLatestPoint:Lorg/osmdroid/util/PointL;

    .line 18
    iput-object p1, p0, Lorg/osmdroid/util/PathBuilder;->mPath:Landroid/graphics/Path;

    .line 19
    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 3
    .param p1, "pX"    # J
    .param p3, "pY"    # J

    .line 28
    iget-boolean v0, p0, Lorg/osmdroid/util/PathBuilder;->mFirst:Z

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/util/PathBuilder;->mFirst:Z

    .line 30
    iget-object v0, p0, Lorg/osmdroid/util/PathBuilder;->mPath:Landroid/graphics/Path;

    long-to-float v1, p1

    long-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 31
    iget-object v0, p0, Lorg/osmdroid/util/PathBuilder;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/PathBuilder;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/util/PathBuilder;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_2

    .line 33
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/util/PathBuilder;->mPath:Landroid/graphics/Path;

    long-to-float v1, p1

    long-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 34
    iget-object v0, p0, Lorg/osmdroid/util/PathBuilder;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    .line 36
    :cond_2
    :goto_0
    return-void
.end method

.method public end()V
    .locals 0

    .line 40
    return-void
.end method

.method public init()V
    .locals 1

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/util/PathBuilder;->mFirst:Z

    .line 24
    return-void
.end method
