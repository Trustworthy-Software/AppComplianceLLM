.class public Lorg/mapsforge/map/rendertheme/RenderContext;
.super Ljava/lang/Object;
.source "RenderContext.java"


# static fields
.field private static final LAYERS:B = 0xbt

.field private static final STROKE_INCREASE:D = 1.5

.field private static final STROKE_MIN_ZOOM_LEVEL:B = 0xct


# instance fields
.field public final canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

.field private drawingLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/core/mapelements/MapElementContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

.field public final rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

.field public final ways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/layer/renderer/RendererJob;Lorg/mapsforge/map/layer/renderer/CanvasRasterer;)V
    .locals 3
    .param p1, "rendererJob"    # Lorg/mapsforge/map/layer/renderer/RendererJob;
    .param p2, "canvasRasterer"    # Lorg/mapsforge/map/layer/renderer/CanvasRasterer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->labels:Ljava/util/List;

    .line 54
    iput-object p2, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    .line 55
    iget-object v0, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    .line 56
    iget v1, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->textScale:F

    iget-object v2, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v2, v2, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-virtual {v0, v1, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->scaleTextSize(FB)V

    .line 57
    invoke-direct {p0}, Lorg/mapsforge/map/rendertheme/RenderContext;->createWayLists()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->ways:Ljava/util/List;

    .line 58
    iget-object v0, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v0, v0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-direct {p0, v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->setScaleStrokeWidth(B)V

    .line 59
    return-void
.end method

.method private createWayLists()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;",
            ">;>;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;>;>;>;"
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v1}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->getLevels()I

    move-result v1

    .line 93
    .local v1, "levels":I
    const/16 v2, 0xa

    .local v2, "i":B
    :goto_0
    if-ltz v2, :cond_1

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v3, "innerWayList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;>;>;"
    add-int/lit8 v4, v1, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_0

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 98
    .end local v4    # "j":I
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v3    # "innerWayList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;>;>;"
    add-int/lit8 v3, v2, -0x1

    int-to-byte v2, v3

    goto :goto_0

    .line 100
    .end local v2    # "i":B
    :cond_1
    return-object v0
.end method

.method private setScaleStrokeWidth(B)V
    .locals 6
    .param p1, "zoomLevel"    # B

    .line 109
    add-int/lit8 v0, p1, -0xc

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 110
    .local v0, "zoomLevelDiff":I
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v3, v3, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-byte v3, v3, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-virtual {v1, v2, v3}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->scaleStrokeWidth(FB)V

    .line 111
    return-void
.end method


# virtual methods
.method public addToCurrentDrawingLayer(ILorg/mapsforge/map/layer/renderer/ShapePaintContainer;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "element"    # Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;

    .line 75
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->drawingLayers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->destroy()V

    .line 63
    return-void
.end method

.method public otherTile(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/layer/renderer/RendererJob;
    .locals 9
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 85
    new-instance v8, Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v2, v0, Lorg/mapsforge/map/layer/renderer/RendererJob;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v3, v0, Lorg/mapsforge/map/layer/renderer/RendererJob;->renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v4, v0, Lorg/mapsforge/map/layer/renderer/RendererJob;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget v5, v0, Lorg/mapsforge/map/layer/renderer/RendererJob;->textScale:F

    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-boolean v6, v0, Lorg/mapsforge/map/layer/renderer/RendererJob;->hasAlpha:Z

    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-boolean v7, v0, Lorg/mapsforge/map/layer/renderer/RendererJob;->labelsOnly:Z

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/mapsforge/map/layer/renderer/RendererJob;-><init>(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;Lorg/mapsforge/map/model/DisplayModel;FZZ)V

    return-object v8
.end method

.method public setDrawingLayers(B)V
    .locals 1
    .param p1, "layer"    # B

    .line 66
    if-gez p1, :cond_0

    .line 67
    const/4 p1, 0x0

    goto :goto_0

    .line 68
    :cond_0
    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    .line 69
    const/16 p1, 0xa

    .line 71
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->ways:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/RenderContext;->drawingLayers:Ljava/util/List;

    .line 72
    return-void
.end method
