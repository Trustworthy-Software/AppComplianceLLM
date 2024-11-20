.class final Lorg/mapsforge/map/rendertheme/rule/RuleOptimizer;
.super Ljava/lang/Object;
.source "RuleOptimizer.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lorg/mapsforge/map/rendertheme/rule/RuleOptimizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/rendertheme/rule/RuleOptimizer;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static optimize(Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;
    .locals 3
    .param p0, "attributeMatcher"    # Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;",
            "Ljava/util/Stack<",
            "Lorg/mapsforge/map/rendertheme/rule/Rule;",
            ">;)",
            "Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;"
        }
    .end annotation

    .line 24
    .local p1, "ruleStack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/mapsforge/map/rendertheme/rule/Rule;>;"
    instance-of v0, p0, Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;

    if-nez v0, :cond_3

    instance-of v0, p0, Lorg/mapsforge/map/rendertheme/rule/NegativeMatcher;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    instance-of v0, p0, Lorg/mapsforge/map/rendertheme/rule/KeyMatcher;

    if-eqz v0, :cond_1

    .line 27
    invoke-static {p0, p1}, Lorg/mapsforge/map/rendertheme/rule/RuleOptimizer;->optimizeKeyMatcher(Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    move-result-object v0

    return-object v0

    .line 28
    :cond_1
    instance-of v0, p0, Lorg/mapsforge/map/rendertheme/rule/ValueMatcher;

    if-eqz v0, :cond_2

    .line 29
    invoke-static {p0, p1}, Lorg/mapsforge/map/rendertheme/rule/RuleOptimizer;->optimizeValueMatcher(Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    move-result-object v0

    return-object v0

    .line 32
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown AttributeMatcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_3
    :goto_0
    return-object p0
.end method

.method static optimize(Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;Ljava/util/Stack;)Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;
    .locals 4
    .param p0, "closedMatcher"    # Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;",
            "Ljava/util/Stack<",
            "Lorg/mapsforge/map/rendertheme/rule/Rule;",
            ">;)",
            "Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;"
        }
    .end annotation

    .line 36
    .local p1, "ruleStack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/mapsforge/map/rendertheme/rule/Rule;>;"
    instance-of v0, p0, Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;

    if-eqz v0, :cond_0

    .line 37
    return-object p0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 41
    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/rule/Rule;

    iget-object v2, v2, Lorg/mapsforge/map/rendertheme/rule/Rule;->closedMatcher:Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;

    invoke-interface {v2, p0}, Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;->isCoveredBy(Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;->INSTANCE:Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;

    return-object v2

    .line 43
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/rule/Rule;

    iget-object v2, v2, Lorg/mapsforge/map/rendertheme/rule/Rule;->closedMatcher:Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;

    invoke-interface {p0, v2}, Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;->isCoveredBy(Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 44
    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RuleOptimizer;->LOGGER:Ljava/util/logging/Logger;

    const-string v3, "unreachable rule (closed)"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 40
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_3
    return-object p0
.end method

.method static optimize(Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;Ljava/util/Stack;)Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;
    .locals 5
    .param p0, "elementMatcher"    # Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;",
            "Ljava/util/Stack<",
            "Lorg/mapsforge/map/rendertheme/rule/Rule;",
            ">;)",
            "Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;"
        }
    .end annotation

    .line 52
    .local p1, "ruleStack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/mapsforge/map/rendertheme/rule/Rule;>;"
    instance-of v0, p0, Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;

    if-eqz v0, :cond_0

    .line 53
    return-object p0

    .line 56
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 57
    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/rule/Rule;

    .line 58
    .local v2, "rule":Lorg/mapsforge/map/rendertheme/rule/Rule;
    iget-object v3, v2, Lorg/mapsforge/map/rendertheme/rule/Rule;->elementMatcher:Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;

    invoke-interface {v3, p0}, Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;->isCoveredBy(Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    sget-object v3, Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;->INSTANCE:Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;

    return-object v3

    .line 60
    :cond_1
    iget-object v3, v2, Lorg/mapsforge/map/rendertheme/rule/Rule;->elementMatcher:Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;

    invoke-interface {p0, v3}, Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;->isCoveredBy(Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 61
    sget-object v3, Lorg/mapsforge/map/rendertheme/rule/RuleOptimizer;->LOGGER:Ljava/util/logging/Logger;

    const-string v4, "unreachable rule (e)"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 56
    .end local v2    # "rule":Lorg/mapsforge/map/rendertheme/rule/Rule;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_3
    return-object p0
.end method

.method private static optimizeKeyMatcher(Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;
    .locals 4
    .param p0, "attributeMatcher"    # Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;",
            "Ljava/util/Stack<",
            "Lorg/mapsforge/map/rendertheme/rule/Rule;",
            ">;)",
            "Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;"
        }
    .end annotation

    .line 69
    .local p1, "ruleStack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/mapsforge/map/rendertheme/rule/Rule;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 70
    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/mapsforge/map/rendertheme/rule/PositiveRule;

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/rule/PositiveRule;

    .line 72
    .local v2, "positiveRule":Lorg/mapsforge/map/rendertheme/rule/PositiveRule;
    iget-object v3, v2, Lorg/mapsforge/map/rendertheme/rule/PositiveRule;->keyMatcher:Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    invoke-interface {v3, p0}, Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;->isCoveredBy(Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    sget-object v3, Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;->INSTANCE:Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;

    return-object v3

    .line 69
    .end local v2    # "positiveRule":Lorg/mapsforge/map/rendertheme/rule/PositiveRule;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-object p0
.end method

.method private static optimizeValueMatcher(Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;
    .locals 4
    .param p0, "attributeMatcher"    # Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;",
            "Ljava/util/Stack<",
            "Lorg/mapsforge/map/rendertheme/rule/Rule;",
            ">;)",
            "Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;"
        }
    .end annotation

    .line 82
    .local p1, "ruleStack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/mapsforge/map/rendertheme/rule/Rule;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 83
    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/mapsforge/map/rendertheme/rule/PositiveRule;

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {p1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/rule/PositiveRule;

    .line 85
    .local v2, "positiveRule":Lorg/mapsforge/map/rendertheme/rule/PositiveRule;
    iget-object v3, v2, Lorg/mapsforge/map/rendertheme/rule/PositiveRule;->valueMatcher:Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    invoke-interface {v3, p0}, Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;->isCoveredBy(Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    sget-object v3, Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;->INSTANCE:Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;

    return-object v3

    .line 82
    .end local v2    # "positiveRule":Lorg/mapsforge/map/rendertheme/rule/PositiveRule;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-object p0
.end method
