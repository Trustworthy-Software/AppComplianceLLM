.class final Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;
.super Ljava/lang/Object;
.source "AnyMatcher.java"

# interfaces
.implements Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;
.implements Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;
.implements Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;


# static fields
.field static final INSTANCE:Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;

    invoke-direct {v0}, Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;-><init>()V

    sput-object v0, Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;->INSTANCE:Lorg/mapsforge/map/rendertheme/rule/AnyMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public isCoveredBy(Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;)Z
    .locals 1
    .param p1, "attributeMatcher"    # Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;

    .line 30
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCoveredBy(Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;)Z
    .locals 1
    .param p1, "closedMatcher"    # Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;

    .line 35
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCoveredBy(Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;)Z
    .locals 1
    .param p1, "elementMatcher"    # Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;

    .line 40
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matches(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;)Z"
        }
    .end annotation

    .line 55
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public matches(Lorg/mapsforge/map/rendertheme/rule/Closed;)Z
    .locals 1
    .param p1, "closed"    # Lorg/mapsforge/map/rendertheme/rule/Closed;

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public matches(Lorg/mapsforge/map/rendertheme/rule/Element;)Z
    .locals 1
    .param p1, "element"    # Lorg/mapsforge/map/rendertheme/rule/Element;

    .line 50
    const/4 v0, 0x1

    return v0
.end method
