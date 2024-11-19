.class Lorg/mapsforge/map/rendertheme/rule/NegativeRule;
.super Lorg/mapsforge/map/rendertheme/rule/Rule;
.source "NegativeRule.java"


# instance fields
.field private final attributeMatcher:Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;


# direct methods
.method constructor <init>(Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;)V
    .locals 0
    .param p1, "ruleBuilder"    # Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;
    .param p2, "attributeMatcher"    # Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    .line 25
    invoke-direct {p0, p1}, Lorg/mapsforge/map/rendertheme/rule/Rule;-><init>(Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;)V

    .line 27
    iput-object p2, p0, Lorg/mapsforge/map/rendertheme/rule/NegativeRule;->attributeMatcher:Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    .line 28
    return-void
.end method


# virtual methods
.method matchesNode(Ljava/util/List;B)Z
    .locals 2
    .param p2, "zoomLevel"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;B)Z"
        }
    .end annotation

    .line 32
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    iget-byte v0, p0, Lorg/mapsforge/map/rendertheme/rule/NegativeRule;->zoomMin:B

    if-gt v0, p2, :cond_0

    iget-byte v0, p0, Lorg/mapsforge/map/rendertheme/rule/NegativeRule;->zoomMax:B

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/NegativeRule;->elementMatcher:Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;

    sget-object v1, Lorg/mapsforge/map/rendertheme/rule/Element;->NODE:Lorg/mapsforge/map/rendertheme/rule/Element;

    invoke-interface {v0, v1}, Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;->matches(Lorg/mapsforge/map/rendertheme/rule/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/NegativeRule;->attributeMatcher:Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    .line 33
    invoke-interface {v0, p1}, Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;->matches(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method matchesWay(Ljava/util/List;BLorg/mapsforge/map/rendertheme/rule/Closed;)Z
    .locals 2
    .param p2, "zoomLevel"    # B
    .param p3, "closed"    # Lorg/mapsforge/map/rendertheme/rule/Closed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;B",
            "Lorg/mapsforge/map/rendertheme/rule/Closed;",
            ")Z"
        }
    .end annotation

    .line 38
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    iget-byte v0, p0, Lorg/mapsforge/map/rendertheme/rule/NegativeRule;->zoomMin:B

    if-gt v0, p2, :cond_0

    iget-byte v0, p0, Lorg/mapsforge/map/rendertheme/rule/NegativeRule;->zoomMax:B

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/NegativeRule;->elementMatcher:Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;

    sget-object v1, Lorg/mapsforge/map/rendertheme/rule/Element;->WAY:Lorg/mapsforge/map/rendertheme/rule/Element;

    invoke-interface {v0, v1}, Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;->matches(Lorg/mapsforge/map/rendertheme/rule/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/NegativeRule;->closedMatcher:Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;

    .line 39
    invoke-interface {v0, p3}, Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;->matches(Lorg/mapsforge/map/rendertheme/rule/Closed;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/NegativeRule;->attributeMatcher:Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    invoke-interface {v0, p1}, Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;->matches(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0
.end method
