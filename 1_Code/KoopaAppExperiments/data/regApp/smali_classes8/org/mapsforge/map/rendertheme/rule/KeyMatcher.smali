.class Lorg/mapsforge/map/rendertheme/rule/KeyMatcher;
.super Ljava/lang/Object;
.source "KeyMatcher.java"

# interfaces
.implements Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;


# instance fields
.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/mapsforge/map/rendertheme/rule/KeyMatcher;->keys:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public isCoveredBy(Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;)Z
    .locals 6
    .param p1, "attributeMatcher"    # Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    .line 31
    if-ne p1, p0, :cond_0

    .line 32
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/KeyMatcher;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .local v0, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/KeyMatcher;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 37
    new-instance v3, Lorg/mapsforge/core/model/Tag;

    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/rule/KeyMatcher;->keys:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/mapsforge/core/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    invoke-interface {p1, v0}, Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;->matches(Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public matches(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;)Z"
        }
    .end annotation

    .line 44
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 45
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/KeyMatcher;->keys:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapsforge/core/model/Tag;

    iget-object v3, v3, Lorg/mapsforge/core/model/Tag;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const/4 v2, 0x1

    return v2

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
