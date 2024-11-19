.class public Lorg/mapsforge/map/rendertheme/rule/RenderTheme;
.super Ljava/lang/Object;
.source "RenderTheme.java"


# static fields
.field private static final MATCHING_CACHE_SIZE:I = 0x400


# instance fields
.field private final baseStrokeWidth:F

.field private final baseTextSize:F

.field private final hasBackgroundOutside:Z

.field private hillShadings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;",
            ">;"
        }
    .end annotation
.end field

.field private levels:I

.field private final mapBackground:I

.field private final mapBackgroundOutside:I

.field private final poiMatchingCache:Lorg/mapsforge/core/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapsforge/core/util/LRUCache<",
            "Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;",
            "Ljava/util/List<",
            "Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rulesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mapsforge/map/rendertheme/rule/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private final strokeScales:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final textScales:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final wayMatchingCache:Lorg/mapsforge/core/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapsforge/core/util/LRUCache<",
            "Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;",
            "Ljava/util/List<",
            "Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/mapsforge/map/rendertheme/rule/RenderThemeBuilder;)V
    .locals 2
    .param p1, "renderThemeBuilder"    # Lorg/mapsforge/map/rendertheme/rule/RenderThemeBuilder;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->hillShadings:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->strokeScales:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->textScales:Ljava/util/Map;

    .line 55
    iget v0, p1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeBuilder;->baseStrokeWidth:F

    iput v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->baseStrokeWidth:F

    .line 56
    iget v0, p1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeBuilder;->baseTextSize:F

    iput v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->baseTextSize:F

    .line 57
    iget-boolean v0, p1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeBuilder;->hasBackgroundOutside:Z

    iput-boolean v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->hasBackgroundOutside:Z

    .line 58
    iget v0, p1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeBuilder;->mapBackground:I

    iput v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->mapBackground:I

    .line 59
    iget v0, p1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeBuilder;->mapBackgroundOutside:I

    iput v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->mapBackgroundOutside:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->rulesList:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Lorg/mapsforge/core/util/LRUCache;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/mapsforge/core/util/LRUCache;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->poiMatchingCache:Lorg/mapsforge/core/util/LRUCache;

    .line 62
    new-instance v0, Lorg/mapsforge/core/util/LRUCache;

    invoke-direct {v0, v1}, Lorg/mapsforge/core/util/LRUCache;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->wayMatchingCache:Lorg/mapsforge/core/util/LRUCache;

    .line 63
    return-void
.end method

.method private declared-synchronized matchWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/rendertheme/rule/Closed;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 11
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "closed"    # Lorg/mapsforge/map/rendertheme/rule/Closed;
    .param p4, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    monitor-enter p0

    .line 211
    :try_start_0
    new-instance v0, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;

    invoke-virtual {p4}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p4}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getUpperLeft()Lorg/mapsforge/core/model/Tile;

    move-result-object v2

    iget-byte v2, v2, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-direct {v0, v1, v2, p3}, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;-><init>(Ljava/util/List;BLorg/mapsforge/map/rendertheme/rule/Closed;)V

    .line 213
    .local v0, "matchingCacheKey":Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->wayMatchingCache:Lorg/mapsforge/core/util/LRUCache;

    invoke-virtual {v1, v0}, Lorg/mapsforge/core/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 214
    .local v1, "matchingList":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;>;"
    if-eqz v1, :cond_1

    .line 216
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 217
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;

    invoke-virtual {v4, p1, p2, p4}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;->renderWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local p0    # "this":Lorg/mapsforge/map/rendertheme/rule/RenderTheme;
    :cond_0
    monitor-exit p0

    return-void

    .line 223
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 224
    const/4 v2, 0x0

    .restart local v2    # "i":I
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v10, v3

    .local v10, "n":I
    :goto_1
    if-ge v2, v10, :cond_2

    .line 225
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {p4}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getUpperLeft()Lorg/mapsforge/core/model/Tile;

    move-result-object v6

    move-object v4, p1

    move-object v5, p4

    move-object v7, p3

    move-object v8, v1

    move-object v9, p2

    invoke-virtual/range {v3 .. v9}, Lorg/mapsforge/map/rendertheme/rule/Rule;->matchWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/layer/renderer/PolylineContainer;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/rendertheme/rule/Closed;Ljava/util/List;Lorg/mapsforge/map/rendertheme/RenderContext;)V

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 228
    .end local v2    # "i":I
    .end local v10    # "n":I
    :cond_2
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->wayMatchingCache:Lorg/mapsforge/core/util/LRUCache;

    invoke-virtual {v2, v0, v1}, Lorg/mapsforge/core/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 210
    .end local v0    # "matchingCacheKey":Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;
    .end local v1    # "matchingList":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;>;"
    .end local p1    # "renderCallback":Lorg/mapsforge/map/rendertheme/RenderCallback;
    .end local p2    # "renderContext":Lorg/mapsforge/map/rendertheme/RenderContext;
    .end local p3    # "closed":Lorg/mapsforge/map/rendertheme/rule/Closed;
    .end local p4    # "way":Lorg/mapsforge/map/layer/renderer/PolylineContainer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method addHillShadings(Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;)V
    .locals 1
    .param p1, "hillshading"    # Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;

    .line 195
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->hillShadings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method addRule(Lorg/mapsforge/map/rendertheme/rule/Rule;)V
    .locals 1
    .param p1, "rule"    # Lorg/mapsforge/map/rendertheme/rule/Rule;

    .line 191
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method complete()V
    .locals 3

    .line 199
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 200
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->hillShadings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 202
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {v2}, Lorg/mapsforge/map/rendertheme/rule/Rule;->onComplete()V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->poiMatchingCache:Lorg/mapsforge/core/util/LRUCache;

    invoke-virtual {v0}, Lorg/mapsforge/core/util/LRUCache;->clear()V

    .line 70
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->wayMatchingCache:Lorg/mapsforge/core/util/LRUCache;

    invoke-virtual {v0}, Lorg/mapsforge/core/util/LRUCache;->clear()V

    .line 71
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/rendertheme/rule/Rule;

    .line 72
    .local v1, "r":Lorg/mapsforge/map/rendertheme/rule/Rule;
    invoke-virtual {v1}, Lorg/mapsforge/map/rendertheme/rule/Rule;->destroy()V

    .line 73
    .end local v1    # "r":Lorg/mapsforge/map/rendertheme/rule/Rule;
    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public getLevels()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->levels:I

    return v0
.end method

.method public getMapBackground()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->mapBackground:I

    return v0
.end method

.method public getMapBackgroundOutside()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->mapBackgroundOutside:I

    return v0
.end method

.method public hasMapBackgroundOutside()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->hasBackgroundOutside:Z

    return v0
.end method

.method public matchClosedWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 1
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 112
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/Closed;->YES:Lorg/mapsforge/map/rendertheme/rule/Closed;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->matchWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/rendertheme/rule/Closed;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V

    .line 113
    return-void
.end method

.method public matchHillShadings(Lorg/mapsforge/map/layer/renderer/StandardRenderer;Lorg/mapsforge/map/rendertheme/RenderContext;)V
    .locals 3
    .param p1, "renderer"    # Lorg/mapsforge/map/layer/renderer/StandardRenderer;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;

    .line 238
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->hillShadings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;

    .line 239
    .local v1, "hillShading":Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;
    iget-object v2, p1, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->hillsRenderConfig:Lorg/mapsforge/map/layer/hills/HillsRenderConfig;

    invoke-virtual {v1, p2, v2}, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->render(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/hills/HillsRenderConfig;)V

    .end local v1    # "hillShading":Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;
    goto :goto_0

    .line 240
    :cond_0
    return-void
.end method

.method public matchLinearWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 1
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 123
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/Closed;->NO:Lorg/mapsforge/map/rendertheme/rule/Closed;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->matchWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/rendertheme/rule/Closed;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V

    .line 124
    return-void
.end method

.method public declared-synchronized matchNode(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/PointOfInterest;)V
    .locals 5
    .param p1, "renderCallback"    # Lorg/mapsforge/map/rendertheme/RenderCallback;
    .param p2, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p3, "poi"    # Lorg/mapsforge/map/datastore/PointOfInterest;

    monitor-enter p0

    .line 134
    :try_start_0
    new-instance v0, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;

    iget-object v1, p3, Lorg/mapsforge/map/datastore/PointOfInterest;->tags:Ljava/util/List;

    iget-object v2, p2, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v2, v2, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v2, v2, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    sget-object v3, Lorg/mapsforge/map/rendertheme/rule/Closed;->NO:Lorg/mapsforge/map/rendertheme/rule/Closed;

    invoke-direct {v0, v1, v2, v3}, Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;-><init>(Ljava/util/List;BLorg/mapsforge/map/rendertheme/rule/Closed;)V

    .line 136
    .local v0, "matchingCacheKey":Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->poiMatchingCache:Lorg/mapsforge/core/util/LRUCache;

    invoke-virtual {v1, v0}, Lorg/mapsforge/core/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 137
    .local v1, "matchingList":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;>;"
    if-eqz v1, :cond_1

    .line 139
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 140
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;

    invoke-virtual {v4, p1, p2, p3}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;->renderNode(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/PointOfInterest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local p0    # "this":Lorg/mapsforge/map/rendertheme/rule/RenderTheme;
    :cond_0
    monitor-exit p0

    return-void

    .line 146
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 148
    const/4 v2, 0x0

    .restart local v2    # "i":I
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .restart local v3    # "n":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 149
    iget-object v4, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {v4, p1, p2, v1, p3}, Lorg/mapsforge/map/rendertheme/rule/Rule;->matchNode(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Ljava/util/List;Lorg/mapsforge/map/datastore/PointOfInterest;)V

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 151
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_2
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->poiMatchingCache:Lorg/mapsforge/core/util/LRUCache;

    invoke-virtual {v2, v0, v1}, Lorg/mapsforge/core/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 133
    .end local v0    # "matchingCacheKey":Lorg/mapsforge/map/rendertheme/rule/MatchingCacheKey;
    .end local v1    # "matchingList":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;>;"
    .end local p1    # "renderCallback":Lorg/mapsforge/map/rendertheme/RenderCallback;
    .end local p2    # "renderContext":Lorg/mapsforge/map/rendertheme/RenderContext;
    .end local p3    # "poi":Lorg/mapsforge/map/datastore/PointOfInterest;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scaleStrokeWidth(FB)V
    .locals 4
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->strokeScales:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->strokeScales:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    .line 162
    .end local p0    # "this":Lorg/mapsforge/map/rendertheme/rule/RenderTheme;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 163
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/rule/Rule;

    .line 164
    .local v2, "rule":Lorg/mapsforge/map/rendertheme/rule/Rule;
    iget-byte v3, v2, Lorg/mapsforge/map/rendertheme/rule/Rule;->zoomMin:B

    if-gt v3, p2, :cond_1

    iget-byte v3, v2, Lorg/mapsforge/map/rendertheme/rule/Rule;->zoomMax:B

    if-lt v3, p2, :cond_1

    .line 165
    iget v3, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->baseStrokeWidth:F

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3, p2}, Lorg/mapsforge/map/rendertheme/rule/Rule;->scaleStrokeWidth(FB)V

    .line 162
    .end local v2    # "rule":Lorg/mapsforge/map/rendertheme/rule/Rule;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->strokeScales:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_3
    monitor-exit p0

    return-void

    .line 160
    .end local p1    # "scaleFactor":F
    .end local p2    # "zoomLevel":B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scaleTextSize(FB)V
    .locals 4
    .param p1, "scaleFactor"    # F
    .param p2, "zoomLevel"    # B

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->textScales:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->textScales:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    .line 180
    .end local p0    # "this":Lorg/mapsforge/map/rendertheme/rule/RenderTheme;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 181
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/rendertheme/rule/Rule;

    .line 182
    .local v2, "rule":Lorg/mapsforge/map/rendertheme/rule/Rule;
    iget-byte v3, v2, Lorg/mapsforge/map/rendertheme/rule/Rule;->zoomMin:B

    if-gt v3, p2, :cond_1

    iget-byte v3, v2, Lorg/mapsforge/map/rendertheme/rule/Rule;->zoomMax:B

    if-lt v3, p2, :cond_1

    .line 183
    iget v3, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->baseTextSize:F

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3, p2}, Lorg/mapsforge/map/rendertheme/rule/Rule;->scaleTextSize(FB)V

    .line 180
    .end local v2    # "rule":Lorg/mapsforge/map/rendertheme/rule/Rule;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->textScales:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_3
    monitor-exit p0

    return-void

    .line 178
    .end local p1    # "scaleFactor":F
    .end local p2    # "zoomLevel":B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setLevels(I)V
    .locals 0
    .param p1, "levels"    # I

    .line 207
    iput p1, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->levels:I

    .line 208
    return-void
.end method

.method public traverseRules(Lorg/mapsforge/map/rendertheme/rule/Rule$RuleVisitor;)V
    .locals 2
    .param p1, "visitor"    # Lorg/mapsforge/map/rendertheme/rule/Rule$RuleVisitor;

    .line 232
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/rendertheme/rule/Rule;

    .line 233
    .local v1, "rule":Lorg/mapsforge/map/rendertheme/rule/Rule;
    invoke-virtual {v1, p1}, Lorg/mapsforge/map/rendertheme/rule/Rule;->apply(Lorg/mapsforge/map/rendertheme/rule/Rule$RuleVisitor;)V

    .line 234
    .end local v1    # "rule":Lorg/mapsforge/map/rendertheme/rule/Rule;
    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method
