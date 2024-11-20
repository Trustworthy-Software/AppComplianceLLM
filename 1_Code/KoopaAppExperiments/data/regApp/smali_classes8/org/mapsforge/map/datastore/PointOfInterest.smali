.class public Lorg/mapsforge/map/datastore/PointOfInterest;
.super Ljava/lang/Object;
.source "PointOfInterest.java"


# instance fields
.field public final layer:B

.field public final position:Lorg/mapsforge/core/model/LatLong;

.field public final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(BLjava/util/List;Lorg/mapsforge/core/model/LatLong;)V
    .locals 0
    .param p1, "layer"    # B
    .param p3, "position"    # Lorg/mapsforge/core/model/LatLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;",
            "Lorg/mapsforge/core/model/LatLong;",
            ")V"
        }
    .end annotation

    .line 42
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-byte p1, p0, Lorg/mapsforge/map/datastore/PointOfInterest;->layer:B

    .line 44
    iput-object p2, p0, Lorg/mapsforge/map/datastore/PointOfInterest;->tags:Ljava/util/List;

    .line 45
    iput-object p3, p0, Lorg/mapsforge/map/datastore/PointOfInterest;->position:Lorg/mapsforge/core/model/LatLong;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 50
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 51
    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/map/datastore/PointOfInterest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 53
    return v2

    .line 55
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/map/datastore/PointOfInterest;

    .line 56
    .local v1, "other":Lorg/mapsforge/map/datastore/PointOfInterest;
    iget-byte v3, p0, Lorg/mapsforge/map/datastore/PointOfInterest;->layer:B

    iget-byte v4, v1, Lorg/mapsforge/map/datastore/PointOfInterest;->layer:B

    if-eq v3, v4, :cond_2

    .line 57
    return v2

    .line 58
    :cond_2
    iget-object v3, p0, Lorg/mapsforge/map/datastore/PointOfInterest;->tags:Ljava/util/List;

    iget-object v4, v1, Lorg/mapsforge/map/datastore/PointOfInterest;->tags:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 59
    return v2

    .line 60
    :cond_3
    iget-object v3, p0, Lorg/mapsforge/map/datastore/PointOfInterest;->position:Lorg/mapsforge/core/model/LatLong;

    iget-object v4, v1, Lorg/mapsforge/map/datastore/PointOfInterest;->position:Lorg/mapsforge/core/model/LatLong;

    invoke-virtual {v3, v4}, Lorg/mapsforge/core/model/LatLong;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 61
    return v2

    .line 63
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 68
    const/16 v0, 0x1f

    .line 69
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 70
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-byte v3, p0, Lorg/mapsforge/map/datastore/PointOfInterest;->layer:B

    add-int/2addr v2, v3

    .line 71
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/mapsforge/map/datastore/PointOfInterest;->tags:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 72
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/mapsforge/map/datastore/PointOfInterest;->position:Lorg/mapsforge/core/model/LatLong;

    invoke-virtual {v3}, Lorg/mapsforge/core/model/LatLong;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 73
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method
