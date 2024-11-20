.class public Lorg/mapsforge/map/rendertheme/rule/Rule$RuleVisitor;
.super Ljava/lang/Object;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/rendertheme/rule/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RuleVisitor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/mapsforge/map/rendertheme/rule/Rule;)V
    .locals 2
    .param p1, "r"    # Lorg/mapsforge/map/rendertheme/rule/Rule;

    .line 39
    iget-object v0, p1, Lorg/mapsforge/map/rendertheme/rule/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/rendertheme/rule/Rule;

    .line 40
    .local v1, "subRule":Lorg/mapsforge/map/rendertheme/rule/Rule;
    invoke-virtual {p0, v1}, Lorg/mapsforge/map/rendertheme/rule/Rule$RuleVisitor;->apply(Lorg/mapsforge/map/rendertheme/rule/Rule;)V

    .line 41
    .end local v1    # "subRule":Lorg/mapsforge/map/rendertheme/rule/Rule;
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method
