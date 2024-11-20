.class public Lorg/mapsforge/map/datastore/Way;
.super Ljava/lang/Object;
.source "Way.java"


# instance fields
.field public final labelPosition:Lorg/mapsforge/core/model/LatLong;

.field public final latLongs:[[Lorg/mapsforge/core/model/LatLong;

.field public final layer:B

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
.method public constructor <init>(BLjava/util/List;[[Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/LatLong;)V
    .locals 0
    .param p1, "layer"    # B
    .param p3, "latLongs"    # [[Lorg/mapsforge/core/model/LatLong;
    .param p4, "labelPosition"    # Lorg/mapsforge/core/model/LatLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;[[",
            "Lorg/mapsforge/core/model/LatLong;",
            "Lorg/mapsforge/core/model/LatLong;",
            ")V"
        }
    .end annotation

    .line 48
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-byte p1, p0, Lorg/mapsforge/map/datastore/Way;->layer:B

    .line 50
    iput-object p2, p0, Lorg/mapsforge/map/datastore/Way;->tags:Ljava/util/List;

    .line 51
    iput-object p3, p0, Lorg/mapsforge/map/datastore/Way;->latLongs:[[Lorg/mapsforge/core/model/LatLong;

    .line 52
    iput-object p4, p0, Lorg/mapsforge/map/datastore/Way;->labelPosition:Lorg/mapsforge/core/model/LatLong;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 58
    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/map/datastore/Way;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 60
    return v2

    .line 62
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/map/datastore/Way;

    .line 63
    .local v1, "other":Lorg/mapsforge/map/datastore/Way;
    iget-byte v3, p0, Lorg/mapsforge/map/datastore/Way;->layer:B

    iget-byte v4, v1, Lorg/mapsforge/map/datastore/Way;->layer:B

    if-eq v3, v4, :cond_2

    .line 64
    return v2

    .line 65
    :cond_2
    iget-object v3, p0, Lorg/mapsforge/map/datastore/Way;->tags:Ljava/util/List;

    iget-object v4, v1, Lorg/mapsforge/map/datastore/Way;->tags:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 66
    return v2

    .line 67
    :cond_3
    iget-object v3, p0, Lorg/mapsforge/map/datastore/Way;->labelPosition:Lorg/mapsforge/core/model/LatLong;

    if-nez v3, :cond_4

    iget-object v4, v1, Lorg/mapsforge/map/datastore/Way;->labelPosition:Lorg/mapsforge/core/model/LatLong;

    if-eqz v4, :cond_4

    .line 68
    return v2

    .line 69
    :cond_4
    if-eqz v3, :cond_5

    iget-object v4, v1, Lorg/mapsforge/map/datastore/Way;->labelPosition:Lorg/mapsforge/core/model/LatLong;

    invoke-virtual {v3, v4}, Lorg/mapsforge/core/model/LatLong;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 70
    return v2

    .line 71
    :cond_5
    iget-object v3, p0, Lorg/mapsforge/map/datastore/Way;->latLongs:[[Lorg/mapsforge/core/model/LatLong;

    array-length v3, v3

    iget-object v4, v1, Lorg/mapsforge/map/datastore/Way;->latLongs:[[Lorg/mapsforge/core/model/LatLong;

    array-length v4, v4

    if-eq v3, v4, :cond_6

    .line 72
    return v2

    .line 74
    :cond_6
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/mapsforge/map/datastore/Way;->latLongs:[[Lorg/mapsforge/core/model/LatLong;

    array-length v5, v4

    if-ge v3, v5, :cond_a

    .line 75
    aget-object v4, v4, v3

    array-length v4, v4

    iget-object v5, v1, Lorg/mapsforge/map/datastore/Way;->latLongs:[[Lorg/mapsforge/core/model/LatLong;

    aget-object v5, v5, v3

    array-length v5, v5

    if-eq v4, v5, :cond_7

    .line 76
    return v2

    .line 78
    :cond_7
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v5, p0, Lorg/mapsforge/map/datastore/Way;->latLongs:[[Lorg/mapsforge/core/model/LatLong;

    aget-object v5, v5, v3

    array-length v6, v5

    if-ge v4, v6, :cond_9

    .line 79
    aget-object v5, v5, v4

    iget-object v6, v1, Lorg/mapsforge/map/datastore/Way;->latLongs:[[Lorg/mapsforge/core/model/LatLong;

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Lorg/mapsforge/core/model/LatLong;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 80
    return v2

    .line 78
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 74
    .end local v4    # "j":I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    .end local v3    # "i":I
    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 91
    const/16 v0, 0x1f

    .line 92
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 93
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-byte v3, p0, Lorg/mapsforge/map/datastore/Way;->layer:B

    add-int/2addr v2, v3

    .line 94
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/mapsforge/map/datastore/Way;->tags:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 95
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/mapsforge/map/datastore/Way;->latLongs:[[Lorg/mapsforge/core/model/LatLong;

    invoke-static {v3}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 96
    .end local v1    # "result":I
    .restart local v2    # "result":I
    iget-object v1, p0, Lorg/mapsforge/map/datastore/Way;->labelPosition:Lorg/mapsforge/core/model/LatLong;

    if-eqz v1, :cond_0

    .line 97
    mul-int/lit8 v3, v2, 0x1f

    invoke-virtual {v1}, Lorg/mapsforge/core/model/LatLong;->hashCode()I

    move-result v1

    add-int v2, v3, v1

    .line 99
    :cond_0
    return v2
.end method
