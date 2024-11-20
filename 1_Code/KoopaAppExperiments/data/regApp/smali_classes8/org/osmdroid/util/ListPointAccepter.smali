.class public Lorg/osmdroid/util/ListPointAccepter;
.super Ljava/lang/Object;
.source "ListPointAccepter.java"

# interfaces
.implements Lorg/osmdroid/util/PointAccepter;


# instance fields
.field private mFirst:Z

.field private final mLatestPoint:Lorg/osmdroid/util/PointL;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveConsecutiveDuplicates:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "pRemoveConsecutiveDuplicates"    # Z

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mList:Ljava/util/List;

    .line 16
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    .line 21
    iput-boolean p1, p0, Lorg/osmdroid/util/ListPointAccepter;->mRemoveConsecutiveDuplicates:Z

    .line 22
    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 2
    .param p1, "pX"    # J
    .param p3, "pY"    # J

    .line 36
    iget-boolean v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mRemoveConsecutiveDuplicates:Z

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mList:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void

    .line 41
    :cond_0
    iget-boolean v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mFirst:Z

    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mFirst:Z

    .line 43
    iget-object v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mList:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_3

    .line 47
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mList:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    .line 51
    :cond_3
    :goto_0
    return-void
.end method

.method public end()V
    .locals 0

    .line 55
    return-void
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/util/ListPointAccepter;->mFirst:Z

    .line 32
    return-void
.end method
