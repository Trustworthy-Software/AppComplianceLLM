.class public final Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;
.super Ljava/lang/Object;
.source "HgtCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/layer/hills/HgtCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TileKey"
.end annotation


# instance fields
.field final east:I

.field final north:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "north"    # I
    .param p2, "east"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;->east:I

    .line 79
    iput p1, p0, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;->north:I

    .line 80
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 60
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 61
    return v0

    .line 62
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;

    .line 67
    .local v2, "tileKey":Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;
    iget v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;->north:I

    iget v4, v2, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;->north:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;->east:I

    iget v4, v2, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;->east:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 63
    .end local v2    # "tileKey":Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 72
    iget v0, p0, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;->north:I

    .line 73
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;->east:I

    add-int/2addr v1, v2

    .line 74
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
