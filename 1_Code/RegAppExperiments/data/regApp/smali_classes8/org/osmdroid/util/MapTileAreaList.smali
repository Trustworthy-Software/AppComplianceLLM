.class public Lorg/osmdroid/util/MapTileAreaList;
.super Ljava/lang/Object;
.source "MapTileAreaList.java"

# interfaces
.implements Lorg/osmdroid/util/MapTileContainer;
.implements Lorg/osmdroid/util/IterableWithSize;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/osmdroid/util/MapTileContainer;",
        "Lorg/osmdroid/util/IterableWithSize<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/util/MapTileArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/MapTileAreaList;->mList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/util/MapTileAreaList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/util/MapTileAreaList;

    .line 14
    iget-object v0, p0, Lorg/osmdroid/util/MapTileAreaList;->mList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public contains(J)Z
    .locals 3
    .param p1, "pTileIndex"    # J

    .line 72
    iget-object v0, p0, Lorg/osmdroid/util/MapTileAreaList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/MapTileArea;

    .line 73
    .local v1, "area":Lorg/osmdroid/util/MapTileArea;
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/util/MapTileArea;->contains(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const/4 v0, 0x1

    return v0

    .line 76
    .end local v1    # "area":Lorg/osmdroid/util/MapTileArea;
    :cond_0
    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/MapTileArea;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/osmdroid/util/MapTileAreaList;->mList:Ljava/util/List;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/osmdroid/util/MapTileAreaList$1;

    invoke-direct {v0, p0}, Lorg/osmdroid/util/MapTileAreaList$1;-><init>(Lorg/osmdroid/util/MapTileAreaList;)V

    return-object v0
.end method

.method public size()I
    .locals 4

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "size":I
    iget-object v1, p0, Lorg/osmdroid/util/MapTileAreaList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/MapTileArea;

    .line 26
    .local v2, "area":Lorg/osmdroid/util/MapTileArea;
    invoke-virtual {v2}, Lorg/osmdroid/util/MapTileArea;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 27
    .end local v2    # "area":Lorg/osmdroid/util/MapTileArea;
    goto :goto_0

    .line 28
    :cond_0
    return v0
.end method
