.class public Lorg/mapsforge/map/android/view/MapView;
.super Landroid/view/ViewGroup;
.source "MapView.java"

# interfaces
.implements Lorg/mapsforge/map/view/MapView;
.implements Lorg/mapsforge/map/model/common/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/android/view/MapView$LayoutParams;
    }
.end annotation


# static fields
.field private static final GRAPHIC_FACTORY:Lorg/mapsforge/core/graphics/GraphicFactory;


# instance fields
.field private final fpsCounter:Lorg/mapsforge/map/view/FpsCounter;

.field private final frameBuffer:Lorg/mapsforge/map/view/FrameBuffer;

.field private final frameBufferController:Lorg/mapsforge/map/controller/FrameBufferController;

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private gestureDetectorExternal:Landroid/view/GestureDetector;

.field private final inputListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/map/view/InputListener;",
            ">;"
        }
    .end annotation
.end field

.field private final layerManager:Lorg/mapsforge/map/layer/LayerManager;

.field private final layoutHandler:Landroid/os/Handler;

.field private mapScaleBar:Lorg/mapsforge/map/scalebar/MapScaleBar;

.field private final mapViewProjection:Lorg/mapsforge/map/util/MapViewProjection;

.field private final mapZoomControls:Lorg/mapsforge/map/android/input/MapZoomControls;

.field private final model:Lorg/mapsforge/map/model/Model;

.field private final scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final touchGestureHandler:Lorg/mapsforge/map/android/input/TouchGestureHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->INSTANCE:Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;

    sput-object v0, Lorg/mapsforge/map/android/view/MapView;->GRAPHIC_FACTORY:Lorg/mapsforge/core/graphics/GraphicFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mapsforge/map/android/view/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->inputListeners:Ljava/util/List;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->layoutHandler:Landroid/os/Handler;

    .line 135
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/android/view/MapView;->setDescendantFocusability(I)V

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/android/view/MapView;->setWillNotDraw(Z)V

    .line 138
    new-instance v0, Lorg/mapsforge/map/model/Model;

    invoke-direct {v0}, Lorg/mapsforge/map/model/Model;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->model:Lorg/mapsforge/map/model/Model;

    .line 140
    new-instance v1, Lorg/mapsforge/map/view/FpsCounter;

    sget-object v2, Lorg/mapsforge/map/android/view/MapView;->GRAPHIC_FACTORY:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v3, v0, Lorg/mapsforge/map/model/Model;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/map/view/FpsCounter;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V

    iput-object v1, p0, Lorg/mapsforge/map/android/view/MapView;->fpsCounter:Lorg/mapsforge/map/view/FpsCounter;

    .line 141
    new-instance v1, Lorg/mapsforge/map/view/FrameBufferHA2;

    iget-object v3, v0, Lorg/mapsforge/map/model/Model;->frameBufferModel:Lorg/mapsforge/map/model/FrameBufferModel;

    iget-object v4, v0, Lorg/mapsforge/map/model/Model;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-direct {v1, v3, v4, v2}, Lorg/mapsforge/map/view/FrameBufferHA2;-><init>(Lorg/mapsforge/map/model/FrameBufferModel;Lorg/mapsforge/map/model/DisplayModel;Lorg/mapsforge/core/graphics/GraphicFactory;)V

    iput-object v1, p0, Lorg/mapsforge/map/android/view/MapView;->frameBuffer:Lorg/mapsforge/map/view/FrameBuffer;

    .line 142
    invoke-static {v1, v0}, Lorg/mapsforge/map/controller/FrameBufferController;->create(Lorg/mapsforge/map/view/FrameBuffer;Lorg/mapsforge/map/model/Model;)Lorg/mapsforge/map/controller/FrameBufferController;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/android/view/MapView;->frameBufferController:Lorg/mapsforge/map/controller/FrameBufferController;

    .line 144
    new-instance v1, Lorg/mapsforge/map/layer/LayerManager;

    iget-object v3, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-direct {v1, p0, v3, v2}, Lorg/mapsforge/map/layer/LayerManager;-><init>(Lorg/mapsforge/map/view/MapView;Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/core/graphics/GraphicFactory;)V

    iput-object v1, p0, Lorg/mapsforge/map/android/view/MapView;->layerManager:Lorg/mapsforge/map/layer/LayerManager;

    .line 145
    invoke-virtual {v1}, Lorg/mapsforge/map/layer/LayerManager;->start()V

    .line 146
    invoke-static {v1, v0}, Lorg/mapsforge/map/controller/LayerManagerController;->create(Lorg/mapsforge/map/layer/LayerManager;Lorg/mapsforge/map/model/Model;)Lorg/mapsforge/map/controller/LayerManagerController;

    .line 148
    invoke-static {p0, v0}, Lorg/mapsforge/map/controller/MapViewController;->create(Lorg/mapsforge/map/view/MapView;Lorg/mapsforge/map/model/Model;)Lorg/mapsforge/map/controller/MapViewController;

    .line 150
    new-instance v1, Lorg/mapsforge/map/android/input/TouchGestureHandler;

    invoke-direct {v1, p0}, Lorg/mapsforge/map/android/input/TouchGestureHandler;-><init>(Lorg/mapsforge/map/android/view/MapView;)V

    iput-object v1, p0, Lorg/mapsforge/map/android/view/MapView;->touchGestureHandler:Lorg/mapsforge/map/android/input/TouchGestureHandler;

    .line 151
    new-instance v3, Landroid/view/GestureDetector;

    invoke-direct {v3, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lorg/mapsforge/map/android/view/MapView;->gestureDetector:Landroid/view/GestureDetector;

    .line 152
    new-instance v3, Landroid/view/ScaleGestureDetector;

    invoke-direct {v3, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Lorg/mapsforge/map/android/view/MapView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 154
    new-instance v1, Lorg/mapsforge/map/android/input/MapZoomControls;

    invoke-direct {v1, p1, p0}, Lorg/mapsforge/map/android/input/MapZoomControls;-><init>(Landroid/content/Context;Lorg/mapsforge/map/android/view/MapView;)V

    iput-object v1, p0, Lorg/mapsforge/map/android/view/MapView;->mapZoomControls:Lorg/mapsforge/map/android/input/MapZoomControls;

    .line 155
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Lorg/mapsforge/map/android/view/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance v1, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;

    iget-object v3, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    iget-object v4, v0, Lorg/mapsforge/map/model/Model;->mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

    iget-object v5, v0, Lorg/mapsforge/map/model/Model;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-direct {v1, v3, v4, v2, v5}, Lorg/mapsforge/map/scalebar/DefaultMapScaleBar;-><init>(Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/map/model/MapViewDimension;Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V

    iput-object v1, p0, Lorg/mapsforge/map/android/view/MapView;->mapScaleBar:Lorg/mapsforge/map/scalebar/MapScaleBar;

    .line 158
    new-instance v1, Lorg/mapsforge/map/util/MapViewProjection;

    invoke-direct {v1, p0}, Lorg/mapsforge/map/util/MapViewProjection;-><init>(Lorg/mapsforge/map/view/MapView;)V

    iput-object v1, p0, Lorg/mapsforge/map/android/view/MapView;->mapViewProjection:Lorg/mapsforge/map/util/MapViewProjection;

    .line 160
    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0, p0}, Lorg/mapsforge/map/model/IMapViewPosition;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 161
    return-void
.end method


# virtual methods
.method public addInputListener(Lorg/mapsforge/map/view/InputListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/mapsforge/map/view/InputListener;

    .line 164
    if-eqz p1, :cond_1

    .line 166
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->inputListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->inputListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    return-void

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener is already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addLayer(Lorg/mapsforge/map/layer/Layer;)V
    .locals 1
    .param p1, "layer"    # Lorg/mapsforge/map/layer/Layer;

    .line 174
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->layerManager:Lorg/mapsforge/map/layer/LayerManager;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/LayerManager;->getLayers()Lorg/mapsforge/map/layer/Layers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/layer/Layers;->add(Lorg/mapsforge/map/layer/Layer;)V

    .line 175
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 179
    instance-of v0, p1, Lorg/mapsforge/map/android/view/MapView$LayoutParams;

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 187
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->touchGestureHandler:Lorg/mapsforge/map/android/input/TouchGestureHandler;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/input/TouchGestureHandler;->destroy()V

    .line 188
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->layoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->layerManager:Lorg/mapsforge/map/layer/LayerManager;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/LayerManager;->finish()V

    .line 190
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->frameBufferController:Lorg/mapsforge/map/controller/FrameBufferController;

    invoke-virtual {v0}, Lorg/mapsforge/map/controller/FrameBufferController;->destroy()V

    .line 191
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->frameBuffer:Lorg/mapsforge/map/view/FrameBuffer;

    invoke-virtual {v0}, Lorg/mapsforge/map/view/FrameBuffer;->destroy()V

    .line 192
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->mapScaleBar:Lorg/mapsforge/map/scalebar/MapScaleBar;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lorg/mapsforge/map/scalebar/MapScaleBar;->destroy()V

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->mapZoomControls:Lorg/mapsforge/map/android/input/MapZoomControls;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/input/MapZoomControls;->destroy()V

    .line 196
    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0}, Lorg/mapsforge/map/model/IMapViewPosition;->destroy()V

    .line 197
    return-void
.end method

.method public destroyAll()V
    .locals 3

    .line 205
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->layerManager:Lorg/mapsforge/map/layer/LayerManager;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/LayerManager;->getLayers()Lorg/mapsforge/map/layer/Layers;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/Layers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/layer/Layer;

    .line 206
    .local v1, "layer":Lorg/mapsforge/map/layer/Layer;
    iget-object v2, p0, Lorg/mapsforge/map/android/view/MapView;->layerManager:Lorg/mapsforge/map/layer/LayerManager;

    invoke-virtual {v2}, Lorg/mapsforge/map/layer/LayerManager;->getLayers()Lorg/mapsforge/map/layer/Layers;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mapsforge/map/layer/Layers;->remove(Lorg/mapsforge/map/layer/Layer;)Z

    .line 207
    invoke-virtual {v1}, Lorg/mapsforge/map/layer/Layer;->onDestroy()V

    .line 208
    instance-of v2, v1, Lorg/mapsforge/map/layer/TileLayer;

    if-eqz v2, :cond_0

    .line 209
    move-object v2, v1

    check-cast v2, Lorg/mapsforge/map/layer/TileLayer;

    invoke-virtual {v2}, Lorg/mapsforge/map/layer/TileLayer;->getTileCache()Lorg/mapsforge/map/layer/cache/TileCache;

    move-result-object v2

    invoke-interface {v2}, Lorg/mapsforge/map/layer/cache/TileCache;->destroy()V

    .line 211
    :cond_0
    instance-of v2, v1, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;

    if-eqz v2, :cond_1

    .line 212
    move-object v2, v1

    check-cast v2, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;

    invoke-virtual {v2}, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->getLabelStore()Lorg/mapsforge/map/layer/labels/LabelStore;

    move-result-object v2

    .line 213
    .local v2, "labelStore":Lorg/mapsforge/map/layer/labels/LabelStore;
    if-eqz v2, :cond_1

    .line 214
    invoke-interface {v2}, Lorg/mapsforge/map/layer/labels/LabelStore;->clear()V

    .line 217
    .end local v1    # "layer":Lorg/mapsforge/map/layer/Layer;
    .end local v2    # "labelStore":Lorg/mapsforge/map/layer/labels/LabelStore;
    :cond_1
    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->destroy()V

    .line 219
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 223
    new-instance v0, Lorg/mapsforge/map/android/view/MapView$LayoutParams;

    const/4 v1, 0x0

    sget-object v2, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;->BOTTOM_CENTER:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3, v1, v2}, Lorg/mapsforge/map/android/view/MapView$LayoutParams;-><init>(IILorg/mapsforge/core/model/LatLong;Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 229
    new-instance v0, Lorg/mapsforge/map/android/view/MapView$LayoutParams;

    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/mapsforge/map/android/view/MapView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 234
    new-instance v0, Lorg/mapsforge/map/android/view/MapView$LayoutParams;

    invoke-direct {v0, p1}, Lorg/mapsforge/map/android/view/MapView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBoundingBox()Lorg/mapsforge/core/model/BoundingBox;
    .locals 3

    .line 239
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->model:Lorg/mapsforge/map/model/Model;

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0}, Lorg/mapsforge/map/model/IMapViewPosition;->getMapPosition()Lorg/mapsforge/core/model/MapPosition;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->getDimension()Lorg/mapsforge/core/model/Dimension;

    move-result-object v1

    iget-object v2, p0, Lorg/mapsforge/map/android/view/MapView;->model:Lorg/mapsforge/map/model/Model;

    iget-object v2, v2, Lorg/mapsforge/map/model/Model;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v2}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v2

    .line 239
    invoke-static {v0, v1, v2}, Lorg/mapsforge/map/util/MapPositionUtil;->getBoundingBox(Lorg/mapsforge/core/model/MapPosition;Lorg/mapsforge/core/model/Dimension;I)Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getDimension()Lorg/mapsforge/core/model/Dimension;
    .locals 3

    .line 245
    new-instance v0, Lorg/mapsforge/core/model/Dimension;

    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/core/model/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getFpsCounter()Lorg/mapsforge/map/view/FpsCounter;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->fpsCounter:Lorg/mapsforge/map/view/FpsCounter;

    return-object v0
.end method

.method public getFrameBuffer()Lorg/mapsforge/map/view/FrameBuffer;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->frameBuffer:Lorg/mapsforge/map/view/FrameBuffer;

    return-object v0
.end method

.method public getLayerManager()Lorg/mapsforge/map/layer/LayerManager;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->layerManager:Lorg/mapsforge/map/layer/LayerManager;

    return-object v0
.end method

.method public getMapScaleBar()Lorg/mapsforge/map/scalebar/MapScaleBar;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->mapScaleBar:Lorg/mapsforge/map/scalebar/MapScaleBar;

    return-object v0
.end method

.method public getMapViewProjection()Lorg/mapsforge/map/util/MapViewProjection;
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->mapViewProjection:Lorg/mapsforge/map/util/MapViewProjection;

    return-object v0
.end method

.method public getMapZoomControls()Lorg/mapsforge/map/android/input/MapZoomControls;
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->mapZoomControls:Lorg/mapsforge/map/android/input/MapZoomControls;

    return-object v0
.end method

.method public getModel()Lorg/mapsforge/map/model/Model;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->model:Lorg/mapsforge/map/model/Model;

    return-object v0
.end method

.method public getTouchGestureHandler()Lorg/mapsforge/map/android/input/TouchGestureHandler;
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->touchGestureHandler:Lorg/mapsforge/map/android/input/TouchGestureHandler;

    return-object v0
.end method

.method public onChange()V
    .locals 5

    .line 292
    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->getChildCount()I

    move-result v0

    .line 293
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 294
    invoke-virtual {p0, v1}, Lorg/mapsforge/map/android/view/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 295
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lorg/mapsforge/map/android/view/MapView;->mapZoomControls:Lorg/mapsforge/map/android/input/MapZoomControls;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    iget-object v3, p0, Lorg/mapsforge/map/android/view/MapView;->layoutHandler:Landroid/os/Handler;

    new-instance v4, Lorg/mapsforge/map/android/view/MapView$1;

    invoke-direct {v4, p0}, Lorg/mapsforge/map/android/view/MapView$1;-><init>(Lorg/mapsforge/map/android/view/MapView;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    goto :goto_1

    .line 293
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "androidCanvas"    # Landroid/graphics/Canvas;

    .line 309
    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->createGraphicContext(Landroid/graphics/Canvas;)Lorg/mapsforge/core/graphics/Canvas;

    move-result-object v0

    .line 310
    .local v0, "graphicContext":Lorg/mapsforge/core/graphics/Canvas;
    iget-object v1, p0, Lorg/mapsforge/map/android/view/MapView;->frameBuffer:Lorg/mapsforge/map/view/FrameBuffer;

    invoke-virtual {v1, v0}, Lorg/mapsforge/map/view/FrameBuffer;->draw(Lorg/mapsforge/core/graphics/GraphicContext;)V

    .line 311
    iget-object v1, p0, Lorg/mapsforge/map/android/view/MapView;->mapScaleBar:Lorg/mapsforge/map/scalebar/MapScaleBar;

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {v1, v0}, Lorg/mapsforge/map/scalebar/MapScaleBar;->draw(Lorg/mapsforge/core/graphics/GraphicContext;)V

    .line 314
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/map/android/view/MapView;->fpsCounter:Lorg/mapsforge/map/view/FpsCounter;

    invoke-virtual {v1, v0}, Lorg/mapsforge/map/view/FpsCounter;->draw(Lorg/mapsforge/core/graphics/GraphicContext;)V

    .line 315
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Canvas;->destroy()V

    .line 316
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 321
    move-object v0, p0

    iget-object v1, v0, Lorg/mapsforge/map/android/view/MapView;->mapZoomControls:Lorg/mapsforge/map/android/input/MapZoomControls;

    invoke-virtual {v1}, Lorg/mapsforge/map/android/input/MapZoomControls;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 322
    iget-object v1, v0, Lorg/mapsforge/map/android/view/MapView;->mapZoomControls:Lorg/mapsforge/map/android/input/MapZoomControls;

    invoke-virtual {v1}, Lorg/mapsforge/map/android/input/MapZoomControls;->getZoomControlsGravity()I

    move-result v1

    .line 323
    .local v1, "childGravity":I
    iget-object v3, v0, Lorg/mapsforge/map/android/view/MapView;->mapZoomControls:Lorg/mapsforge/map/android/input/MapZoomControls;

    invoke-virtual {v3}, Lorg/mapsforge/map/android/input/MapZoomControls;->getMeasuredWidth()I

    move-result v3

    .line 324
    .local v3, "childWidth":I
    iget-object v4, v0, Lorg/mapsforge/map/android/view/MapView;->mapZoomControls:Lorg/mapsforge/map/android/input/MapZoomControls;

    invoke-virtual {v4}, Lorg/mapsforge/map/android/input/MapZoomControls;->getMeasuredHeight()I

    move-result v4

    .line 327
    .local v4, "childHeight":I
    and-int/lit8 v5, v1, 0x7

    packed-switch v5, :pswitch_data_0

    .line 336
    :pswitch_0
    sub-int v5, p4, v3

    .local v5, "childLeft":I
    goto :goto_0

    .line 329
    .end local v5    # "childLeft":I
    :pswitch_1
    move v5, p2

    .line 330
    .restart local v5    # "childLeft":I
    goto :goto_0

    .line 332
    .end local v5    # "childLeft":I
    :pswitch_2
    sub-int v5, p4, p2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    .line 333
    .restart local v5    # "childLeft":I
    nop

    .line 341
    :goto_0
    and-int/lit8 v6, v1, 0x70

    sparse-switch v6, :sswitch_data_0

    .line 350
    sub-int v6, p5, v4

    .local v6, "childTop":I
    goto :goto_1

    .line 343
    .end local v6    # "childTop":I
    :sswitch_0
    move/from16 v6, p3

    .line 344
    .restart local v6    # "childTop":I
    goto :goto_1

    .line 346
    .end local v6    # "childTop":I
    :sswitch_1
    sub-int v6, p5, p3

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int v6, p3, v6

    .line 347
    .restart local v6    # "childTop":I
    nop

    .line 354
    :goto_1
    iget-object v7, v0, Lorg/mapsforge/map/android/view/MapView;->mapZoomControls:Lorg/mapsforge/map/android/input/MapZoomControls;

    add-int v8, v5, v3

    add-int v9, v6, v4

    invoke-virtual {v7, v5, v6, v8, v9}, Lorg/mapsforge/map/android/input/MapZoomControls;->layout(IIII)V

    .line 358
    .end local v1    # "childGravity":I
    .end local v3    # "childWidth":I
    .end local v4    # "childHeight":I
    .end local v5    # "childLeft":I
    .end local v6    # "childTop":I
    :cond_0
    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->getChildCount()I

    move-result v1

    .line 359
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 360
    invoke-virtual {p0, v3}, Lorg/mapsforge/map/android/view/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 361
    .local v4, "child":Landroid/view/View;
    iget-object v5, v0, Lorg/mapsforge/map/android/view/MapView;->mapZoomControls:Lorg/mapsforge/map/android/input/MapZoomControls;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 362
    goto/16 :goto_4

    .line 364
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/mapsforge/map/android/view/MapView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 365
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/map/android/view/MapView$LayoutParams;

    .line 366
    .local v5, "params":Lorg/mapsforge/map/android/view/MapView$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 367
    .local v6, "childWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 368
    .local v7, "childHeight":I
    iget-object v8, v0, Lorg/mapsforge/map/android/view/MapView;->mapViewProjection:Lorg/mapsforge/map/util/MapViewProjection;

    iget-object v9, v5, Lorg/mapsforge/map/android/view/MapView$LayoutParams;->latLong:Lorg/mapsforge/core/model/LatLong;

    invoke-virtual {v8, v9}, Lorg/mapsforge/map/util/MapViewProjection;->toPixels(Lorg/mapsforge/core/model/LatLong;)Lorg/mapsforge/core/model/Point;

    move-result-object v8

    .line 369
    .local v8, "point":Lorg/mapsforge/core/model/Point;
    if-eqz v8, :cond_2

    .line 370
    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->getPaddingLeft()I

    move-result v9

    iget-wide v10, v8, Lorg/mapsforge/core/model/Point;->x:D

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    add-int/2addr v9, v10

    .line 371
    .local v9, "childLeft":I
    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->getPaddingTop()I

    move-result v10

    iget-wide v11, v8, Lorg/mapsforge/core/model/Point;->y:D

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v11, v11

    add-int/2addr v10, v11

    .line 372
    .local v10, "childTop":I
    sget-object v11, Lorg/mapsforge/map/android/view/MapView$2;->$SwitchMap$org$mapsforge$map$android$view$MapView$LayoutParams$Alignment:[I

    iget-object v12, v5, Lorg/mapsforge/map/android/view/MapView$LayoutParams;->alignment:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    invoke-virtual {v12}, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_1

    goto :goto_3

    .line 400
    :pswitch_3
    sub-int/2addr v9, v6

    .line 401
    sub-int/2addr v10, v7

    goto :goto_3

    .line 396
    :pswitch_4
    div-int/lit8 v11, v6, 0x2

    sub-int/2addr v9, v11

    .line 397
    sub-int/2addr v10, v7

    .line 398
    goto :goto_3

    .line 393
    :pswitch_5
    sub-int/2addr v10, v7

    .line 394
    goto :goto_3

    .line 389
    :pswitch_6
    sub-int/2addr v9, v6

    .line 390
    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v10, v11

    .line 391
    goto :goto_3

    .line 385
    :pswitch_7
    div-int/lit8 v11, v6, 0x2

    sub-int/2addr v9, v11

    .line 386
    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v10, v11

    .line 387
    goto :goto_3

    .line 382
    :pswitch_8
    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v10, v11

    .line 383
    goto :goto_3

    .line 379
    :pswitch_9
    sub-int/2addr v9, v6

    .line 380
    goto :goto_3

    .line 376
    :pswitch_a
    div-int/lit8 v11, v6, 0x2

    sub-int/2addr v9, v11

    .line 377
    goto :goto_3

    .line 374
    :pswitch_b
    nop

    .line 404
    :goto_3
    add-int v11, v9, v6

    add-int v12, v10, v7

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 359
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "params":Lorg/mapsforge/map/android/view/MapView$LayoutParams;
    .end local v6    # "childWidth":I
    .end local v7    # "childHeight":I
    .end local v8    # "point":Lorg/mapsforge/core/model/Point;
    .end local v9    # "childLeft":I
    .end local v10    # "childTop":I
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 408
    .end local v3    # "i":I
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 412
    invoke-virtual {p0, p1, p2}, Lorg/mapsforge/map/android/view/MapView;->measureChildren(II)V

    .line 413
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 414
    return-void
.end method

.method public onMoveEvent()V
    .locals 2

    .line 423
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->inputListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/view/InputListener;

    .line 424
    .local v1, "listener":Lorg/mapsforge/map/view/InputListener;
    invoke-interface {v1}, Lorg/mapsforge/map/view/InputListener;->onMoveEvent()V

    .line 425
    .end local v1    # "listener":Lorg/mapsforge/map/view/InputListener;
    goto :goto_0

    .line 426
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .line 430
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->model:Lorg/mapsforge/map/model/Model;

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

    new-instance v1, Lorg/mapsforge/core/model/Dimension;

    invoke-direct {v1, p1, p2}, Lorg/mapsforge/core/model/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/model/MapViewDimension;->setDimension(Lorg/mapsforge/core/model/Dimension;)V

    .line 431
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 435
    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    const/4 v0, 0x0

    return v0

    .line 439
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->mapZoomControls:Lorg/mapsforge/map/android/input/MapZoomControls;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/android/input/MapZoomControls;->onMapViewTouchEvent(Landroid/view/MotionEvent;)V

    .line 440
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->gestureDetectorExternal:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    const/4 v0, 0x1

    return v0

    .line 444
    :cond_1
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 445
    .local v0, "retVal":Z
    iget-object v1, p0, Lorg/mapsforge/map/android/view/MapView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_2

    .line 446
    iget-object v1, p0, Lorg/mapsforge/map/android/view/MapView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 448
    :cond_2
    return v0
.end method

.method public onZoomEvent()V
    .locals 2

    .line 458
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->inputListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/view/InputListener;

    .line 459
    .local v1, "listener":Lorg/mapsforge/map/view/InputListener;
    invoke-interface {v1}, Lorg/mapsforge/map/view/InputListener;->onZoomEvent()V

    .line 460
    .end local v1    # "listener":Lorg/mapsforge/map/view/InputListener;
    goto :goto_0

    .line 461
    :cond_0
    return-void
.end method

.method public removeInputListener(Lorg/mapsforge/map/view/InputListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/mapsforge/map/view/InputListener;

    .line 464
    if-eqz p1, :cond_1

    .line 466
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->inputListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->inputListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 470
    return-void

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener is not registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public repaint()V
    .locals 2

    .line 474
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 475
    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->invalidate()V

    goto :goto_0

    .line 477
    :cond_0
    invoke-virtual {p0}, Lorg/mapsforge/map/android/view/MapView;->postInvalidate()V

    .line 479
    :goto_0
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1
    .param p1, "showZoomControls"    # Z

    .line 487
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->mapZoomControls:Lorg/mapsforge/map/android/input/MapZoomControls;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/android/input/MapZoomControls;->setShowMapZoomControls(Z)V

    .line 488
    return-void
.end method

.method public setCenter(Lorg/mapsforge/core/model/LatLong;)V
    .locals 1
    .param p1, "center"    # Lorg/mapsforge/core/model/LatLong;

    .line 492
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->model:Lorg/mapsforge/map/model/Model;

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0, p1}, Lorg/mapsforge/map/model/IMapViewPosition;->setCenter(Lorg/mapsforge/core/model/LatLong;)V

    .line 493
    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "gestureDetector"    # Landroid/view/GestureDetector;

    .line 496
    iput-object p1, p0, Lorg/mapsforge/map/android/view/MapView;->gestureDetectorExternal:Landroid/view/GestureDetector;

    .line 497
    return-void
.end method

.method public setMapScaleBar(Lorg/mapsforge/map/scalebar/MapScaleBar;)V
    .locals 1
    .param p1, "mapScaleBar"    # Lorg/mapsforge/map/scalebar/MapScaleBar;

    .line 501
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->mapScaleBar:Lorg/mapsforge/map/scalebar/MapScaleBar;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Lorg/mapsforge/map/scalebar/MapScaleBar;->destroy()V

    .line 504
    :cond_0
    iput-object p1, p0, Lorg/mapsforge/map/android/view/MapView;->mapScaleBar:Lorg/mapsforge/map/scalebar/MapScaleBar;

    .line 505
    return-void
.end method

.method public setZoomLevel(B)V
    .locals 1
    .param p1, "zoomLevel"    # B

    .line 509
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->model:Lorg/mapsforge/map/model/Model;

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0, p1}, Lorg/mapsforge/map/model/IMapViewPosition;->setZoomLevel(B)V

    .line 510
    return-void
.end method

.method public setZoomLevelMax(B)V
    .locals 1
    .param p1, "zoomLevelMax"    # B

    .line 514
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->model:Lorg/mapsforge/map/model/Model;

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0, p1}, Lorg/mapsforge/map/model/IMapViewPosition;->setZoomLevelMax(B)V

    .line 515
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->mapZoomControls:Lorg/mapsforge/map/android/input/MapZoomControls;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/android/input/MapZoomControls;->setZoomLevelMax(B)V

    .line 516
    return-void
.end method

.method public setZoomLevelMin(B)V
    .locals 1
    .param p1, "zoomLevelMin"    # B

    .line 520
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->model:Lorg/mapsforge/map/model/Model;

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0, p1}, Lorg/mapsforge/map/model/IMapViewPosition;->setZoomLevelMin(B)V

    .line 521
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView;->mapZoomControls:Lorg/mapsforge/map/android/input/MapZoomControls;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/android/input/MapZoomControls;->setZoomLevelMin(B)V

    .line 522
    return-void
.end method
