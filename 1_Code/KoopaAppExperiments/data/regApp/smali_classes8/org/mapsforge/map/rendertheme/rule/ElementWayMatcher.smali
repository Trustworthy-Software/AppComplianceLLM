.class final Lorg/mapsforge/map/rendertheme/rule/ElementWayMatcher;
.super Ljava/lang/Object;
.source "ElementWayMatcher.java"

# interfaces
.implements Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;


# static fields
.field static final INSTANCE:Lorg/mapsforge/map/rendertheme/rule/ElementWayMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lorg/mapsforge/map/rendertheme/rule/ElementWayMatcher;

    invoke-direct {v0}, Lorg/mapsforge/map/rendertheme/rule/ElementWayMatcher;-><init>()V

    sput-object v0, Lorg/mapsforge/map/rendertheme/rule/ElementWayMatcher;->INSTANCE:Lorg/mapsforge/map/rendertheme/rule/ElementWayMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public isCoveredBy(Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;)Z
    .locals 1
    .param p1, "elementMatcher"    # Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;

    .line 26
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/Element;->WAY:Lorg/mapsforge/map/rendertheme/rule/Element;

    invoke-interface {p1, v0}, Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;->matches(Lorg/mapsforge/map/rendertheme/rule/Element;)Z

    move-result v0

    return v0
.end method

.method public matches(Lorg/mapsforge/map/rendertheme/rule/Element;)Z
    .locals 1
    .param p1, "element"    # Lorg/mapsforge/map/rendertheme/rule/Element;

    .line 31
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/Element;->WAY:Lorg/mapsforge/map/rendertheme/rule/Element;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
