.class Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;
.super Ljava/lang/Object;
.source "ThreadedLabelLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->getData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;

.field final synthetic val$lowerRight:Lorg/mapsforge/core/model/Tile;

.field final synthetic val$upperLeft:Lorg/mapsforge/core/model/Tile;


# direct methods
.method constructor <init>(Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;

    .line 81
    iput-object p1, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;->this$0:Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;

    iput-object p2, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;->val$upperLeft:Lorg/mapsforge/core/model/Tile;

    iput-object p3, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;->val$lowerRight:Lorg/mapsforge/core/model/Tile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 83
    iget-object v0, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;->this$0:Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;

    iget-object v0, v0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->labelStore:Lorg/mapsforge/map/layer/labels/LabelStore;

    iget-object v1, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;->val$upperLeft:Lorg/mapsforge/core/model/Tile;

    iget-object v2, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;->val$lowerRight:Lorg/mapsforge/core/model/Tile;

    invoke-interface {v0, v1, v2}, Lorg/mapsforge/map/layer/labels/LabelStore;->getVisibleItems(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "visibleItems":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    iget-object v1, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;->this$0:Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;

    invoke-static {v0}, Lorg/mapsforge/map/util/LayerUtil;->collisionFreeOrdered(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->elementsToDraw:Ljava/util/List;

    .line 92
    iget-object v1, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;->this$0:Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;

    iget-object v1, v1, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->elementsToDraw:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 93
    iget-object v1, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;->this$0:Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;

    iget-object v2, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;->val$upperLeft:Lorg/mapsforge/core/model/Tile;

    iput-object v2, v1, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->upperLeft:Lorg/mapsforge/core/model/Tile;

    .line 94
    iget-object v1, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;->this$0:Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;

    iget-object v2, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;->val$lowerRight:Lorg/mapsforge/core/model/Tile;

    iput-object v2, v1, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->lowerRight:Lorg/mapsforge/core/model/Tile;

    .line 95
    iget-object v1, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;->this$0:Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;

    iget-object v2, v1, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->labelStore:Lorg/mapsforge/map/layer/labels/LabelStore;

    invoke-interface {v2}, Lorg/mapsforge/map/layer/labels/LabelStore;->getVersion()I

    move-result v2

    iput v2, v1, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->lastLabelStoreVersion:I

    .line 96
    iget-object v1, p0, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer$1;->this$0:Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;

    invoke-virtual {v1}, Lorg/mapsforge/map/layer/labels/ThreadedLabelLayer;->requestRedraw()V

    .line 98
    return-void
.end method
