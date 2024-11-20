.class final Lorg/mapsforge/map/rendertheme/rule/LinearWayMatcher;
.super Ljava/lang/Object;
.source "LinearWayMatcher.java"

# interfaces
.implements Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;


# static fields
.field static final INSTANCE:Lorg/mapsforge/map/rendertheme/rule/LinearWayMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lorg/mapsforge/map/rendertheme/rule/LinearWayMatcher;

    invoke-direct {v0}, Lorg/mapsforge/map/rendertheme/rule/LinearWayMatcher;-><init>()V

    sput-object v0, Lorg/mapsforge/map/rendertheme/rule/LinearWayMatcher;->INSTANCE:Lorg/mapsforge/map/rendertheme/rule/LinearWayMatcher;

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
.method public isCoveredBy(Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;)Z
    .locals 1
    .param p1, "closedMatcher"    # Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;

    .line 26
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/Closed;->NO:Lorg/mapsforge/map/rendertheme/rule/Closed;

    invoke-interface {p1, v0}, Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;->matches(Lorg/mapsforge/map/rendertheme/rule/Closed;)Z

    move-result v0

    return v0
.end method

.method public matches(Lorg/mapsforge/map/rendertheme/rule/Closed;)Z
    .locals 1
    .param p1, "closed"    # Lorg/mapsforge/map/rendertheme/rule/Closed;

    .line 31
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/Closed;->NO:Lorg/mapsforge/map/rendertheme/rule/Closed;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
