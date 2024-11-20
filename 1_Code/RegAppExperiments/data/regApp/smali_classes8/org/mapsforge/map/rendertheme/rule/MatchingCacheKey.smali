.class Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;
.super Ljava/lang/Object;
.source "MatchingCacheKey.java"


# instance fields
.field private final closed:Lorg/mapsforge/map/rendertheme/rule/Closed;

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private final tagsWithoutName:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private final zoomLevel:B


# direct methods
.method constructor <init>(Ljava/util/List;BLorg/mapsforge/map/rendertheme/rule/Closed;)V
    .locals 4
    .param p2, "zoomLevel"    # B
    .param p3, "closed"    # Lorg/mapsforge/map/rendertheme/rule/Closed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;B",
            "Lorg/mapsforge/map/rendertheme/rule/Closed;",
            ")V"
        }
    .end annotation

    .line 30
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;->tags:Ljava/util/List;

    .line 32
    iput-byte p2, p0, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;->zoomLevel:B

    .line 33
    iput-object p3, p0, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;->closed:Lorg/mapsforge/map/rendertheme/rule/Closed;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;->tagsWithoutName:Ljava/util/Set;

    .line 35
    if-eqz p1, :cond_1

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/core/model/Tag;

    .line 37
    .local v1, "tag":Lorg/mapsforge/core/model/Tag;
    const-string v2, "name"

    iget-object v3, v1, Lorg/mapsforge/core/model/Tag;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;->tagsWithoutName:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    .end local v1    # "tag":Lorg/mapsforge/core/model/Tag;
    :cond_0
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 47
    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 49
    return v2

    .line 51
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;

    .line 52
    .local v1, "other":Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;->closed:Lorg/mapsforge/map/rendertheme/rule/Closed;

    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;->closed:Lorg/mapsforge/map/rendertheme/rule/Closed;

    if-eq v3, v4, :cond_2

    .line 53
    return v2

    .line 55
    :cond_2
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;->tagsWithoutName:Ljava/util/Set;

    if-nez v3, :cond_3

    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;->tagsWithoutName:Ljava/util/Set;

    if-eqz v4, :cond_3

    .line 56
    return v2

    .line 57
    :cond_3
    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;->tagsWithoutName:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 58
    return v2

    .line 60
    :cond_4
    iget-byte v3, p0, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;->zoomLevel:B

    iget-byte v4, v1, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;->zoomLevel:B

    if-eq v3, v4, :cond_5

    .line 61
    return v2

    .line 63
    :cond_5
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

    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;->closed:Lorg/mapsforge/map/rendertheme/rule/Closed;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/mapsforge/map/rendertheme/rule/Closed;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 71
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;->tagsWithoutName:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 72
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-byte v3, p0, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;->zoomLevel:B

    add-int/2addr v2, v3

    .line 73
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method
