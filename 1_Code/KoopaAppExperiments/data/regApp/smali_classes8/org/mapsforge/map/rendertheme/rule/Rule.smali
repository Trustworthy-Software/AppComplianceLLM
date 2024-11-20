.class public abstract Lorg/mapsforge/map/rendertheme/rule/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/rendertheme/rule/Rule$RuleVisitor;
    }
.end annotation


# static fields
.field static final MATCHERS_CACHE_KEY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;",
            ">;"
        }
    .end annotation
.end field

.field static final MATCHERS_CACHE_VALUE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/mapsforge/map/rendertheme/rule/AttributeMatcher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field cat:Ljava/lang/String;

.field final closedMatcher:Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;

.field final elementMatcher:Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;

.field public final renderInstructions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;",
            ">;"
        }
    .end annotation
.end field

.field public final subRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mapsforge/map/rendertheme/rule/Rule;",
            ">;"
        }
    .end annotation
.end field

.field final zoomMax:B

.field final zoomMin:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mapsforge/map/rendertheme/rule/Rule;->MATCHERS_CACHE_KEY:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mapsforge/map/rendertheme/rule/Rule;->MATCHERS_CACHE_VALUE:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;)V
    .locals 2
    .param p1, "ruleBuilder"    # Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-object v0, p1, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->cat:Ljava/lang/String;

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->cat:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->closedMatcher:Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->closedMatcher:Lorg/mapsforge/map/rendertheme/rule/ClosedMatcher;

    .line 56
    iget-object v0, p1, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->elementMatcher:Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->elementMatcher:Lorg/mapsforge/map/rendertheme/rule/ElementMatcher;

    .line 57
    iget-byte v0, p1, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->zoomMax:B

    iput-byte v0, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->zoomMax:B

    .line 58
    iget-byte v0, p1, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->zoomMin:B

    iput-byte v0, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->zoomMin:B

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->renderInstructions:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->subRules:Ljava/util/ArrayList;

    .line 62
    return-void
.end method


# virtual methods
.method addRenderingInstruction(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)V
    .locals 1
    .param p1, "renderInstruction"    # Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;

    .line 65
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method addSubRule(Lorg/mapsforge/map/rendertheme/rule/Rule;)V
    .locals 1
    .param p1, "rule"    # Lorg/mapsforge/map/rendertheme/rule/Rule;

    .line 69
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method apply(Lorg/mapsforge/map/rendertheme/rule/Rule$RuleVisitor;)V
    .locals 0
    .param p1, "v"    # Lorg/mapsforge/map/rendertheme/rule/Rule$RuleVisitor;

    .line 73
    invoke-virtual {p1, p0}, Lorg/mapsforge/map/rendertheme/rule/Rule$RuleVisitor;->apply(Lorg/mapsforge/map/rendertheme/rule/Rule;)V

    .line 74
    return-void
.end method

.method destroy()V
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;

    .line 78
    .local v1, "ri":Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;
    invoke-virtual {v1}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;->destroy()V

    .line 79
    .end local v1    # "ri":Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;
    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/rendertheme/rule/Rule;

    .line 81
    .local v1, "sr":Lorg/mapsforge/map/rendertheme/rule/Rule;
    invoke-virtual {v1}, Lorg/mapsforge/map/rendertheme/rule/Rule;->destroy()V

    .line 82
    .end local v1    # "sr":Lorg/mapsforge/map/rendertheme/rule/Rule;
    goto :goto_1

    .line 83
    :cond_1
    return-void
.end method

.method matchNode(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Ljava/util/List;Lorg/mapsforge/map/datastore/PointOfInterest;)V
    .locals 3
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p4, "pointOfInterest"    # Lorg/mapsforge/map/datastore/PointOfInterest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/map/rendertheme/RenderCallback;",
            "Lorg/mapsforge/map/rendertheme/RenderContext;",
            "Ljava/util/List<",
            "Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;",
            ">;",
            "Lorg/mapsforge/map/datastore/PointOfInterest;",
            ")V"
        }
    .end annotation

    .line 90
    .local p3, "matchingList":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;>;"
    iget-object v0, p4, Lorg/mapsforge/map/datastore/PointOfInterest;->tags:Ljava/util/List;

    iget-object v1, p2, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v1, v1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v1, v1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-virtual {p0, v0, v1}, Lorg/mapsforge/map/rendertheme/rule/Rule;->matchesNode(Ljava/util/List;B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 92
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;

    invoke-virtual {v2, p1, p2, p4}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;->renderNode(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/PointOfInterest;)V

    .line 93
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .restart local v1    # "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 96
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/mapsforge/map/rendertheme/rule/Rule;->matchNode(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Ljava/util/List;Lorg/mapsforge/map/datastore/PointOfInterest;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-void
.end method

.method matchWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/layer/renderer/PolylineContainer;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/rendertheme/rule/Closed;Ljava/util/List;Lorg/mapsforge/map/rendertheme/RenderContext;)V
    .locals 16
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;
    .param p3, "tile"    # Lorg/mapsforge/core/model/Tile;
    .param p4, "closed"    # Lorg/mapsforge/map/rendertheme/rule/Closed;
    .param p6, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/map/rendertheme/RenderCallback;",
            "Lorg/mapsforge/map/layer/renderer/PolylineContainer;",
            "Lorg/mapsforge/core/model/Tile;",
            "Lorg/mapsforge/map/rendertheme/rule/Closed;",
            "Ljava/util/List<",
            "Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;",
            ">;",
            "Lorg/mapsforge/map/rendertheme/RenderContext;",
            ")V"
        }
    .end annotation

    .line 103
    .local p5, "matchingList":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getTags()Ljava/util/List;

    move-result-object v1

    move-object/from16 v9, p3

    iget-byte v2, v9, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    move-object/from16 v10, p4

    invoke-virtual {v0, v1, v2, v10}, Lorg/mapsforge/map/rendertheme/rule/Rule;->matchesWay(Ljava/util/List;BLorg/mapsforge/map/rendertheme/rule/Closed;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, v0, Lorg/mapsforge/map/rendertheme/rule/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 105
    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/rule/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    invoke-virtual {v3, v11, v13, v12}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;->renderWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V

    .line 106
    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/rule/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v14, p5

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v14, p5

    move-object/from16 v13, p6

    .line 108
    .end local v1    # "i":I
    .end local v2    # "n":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v2, v0, Lorg/mapsforge/map/rendertheme/rule/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "n":I
    :goto_1
    if-ge v1, v15, :cond_2

    .line 109
    iget-object v2, v0, Lorg/mapsforge/map/rendertheme/rule/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/rule/Rule;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lorg/mapsforge/map/rendertheme/rule/Rule;->matchWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/layer/renderer/PolylineContainer;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/rendertheme/rule/Closed;Ljava/util/List;Lorg/mapsforge/map/rendertheme/RenderContext;)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    .end local v1    # "i":I
    .end local v15    # "n":I
    :cond_1
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v14, p5

    move-object/from16 v13, p6

    .line 112
    :cond_2
    return-void
.end method

.method abstract matchesNode(Ljava/util/List;B)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;B)Z"
        }
    .end annotation
.end method

.method abstract matchesWay(Ljava/util/List;BLorg/mapsforge/map/rendertheme/rule/Closed;)Z
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
.end method

.method onComplete()V
    .locals 3

    .line 115
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/Rule;->MATCHERS_CACHE_KEY:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 116
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/Rule;->MATCHERS_CACHE_VALUE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 118
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 119
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 121
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {v2}, Lorg/mapsforge/map/rendertheme/rule/Rule;->onComplete()V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method scaleStrokeWidth(FB)V
    .locals 3
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 127
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;

    invoke-virtual {v2, p1, p2}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;->scaleStrokeWidth(FB)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .restart local v1    # "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 130
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {v2, p1, p2}, Lorg/mapsforge/map/rendertheme/rule/Rule;->scaleStrokeWidth(FB)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-void
.end method

.method scaleTextSize(FB)V
    .locals 3
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 136
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;

    invoke-virtual {v2, p1, p2}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;->scaleTextSize(FB)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .restart local v1    # "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 139
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {v2, p1, p2}, Lorg/mapsforge/map/rendertheme/rule/Rule;->scaleTextSize(FB)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-void
.end method
