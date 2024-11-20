.class Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;
.super Ljava/lang/Object;
.source "FrameBufferBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/view/FrameBufferBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapRequest"
.end annotation


# instance fields
.field private final color:I

.field private final dimension:Lorg/mapsforge/core/model/Dimension;

.field private final factory:Lorg/mapsforge/core/graphics/GraphicFactory;

.field private final isTransparent:Z


# direct methods
.method constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/core/model/Dimension;IZ)V
    .locals 0
    .param p1, "factory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "dimension"    # Lorg/mapsforge/core/model/Dimension;
    .param p3, "color"    # I
    .param p4, "isTransparent"    # Z

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;->factory:Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 33
    iput-object p2, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;->dimension:Lorg/mapsforge/core/model/Dimension;

    .line 34
    iput p3, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;->color:I

    .line 35
    iput-boolean p4, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;->isTransparent:Z

    .line 36
    return-void
.end method


# virtual methods
.method create()Lorg/mapsforge/core/graphics/Bitmap;
    .locals 4

    .line 39
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;->dimension:Lorg/mapsforge/core/model/Dimension;

    iget v0, v0, Lorg/mapsforge/core/model/Dimension;->width:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;->dimension:Lorg/mapsforge/core/model/Dimension;

    iget v0, v0, Lorg/mapsforge/core/model/Dimension;->height:I

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;->factory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;->dimension:Lorg/mapsforge/core/model/Dimension;

    iget v1, v1, Lorg/mapsforge/core/model/Dimension;->width:I

    iget-object v2, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;->dimension:Lorg/mapsforge/core/model/Dimension;

    iget v2, v2, Lorg/mapsforge/core/model/Dimension;->height:I

    iget-boolean v3, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;->isTransparent:Z

    invoke-interface {v0, v1, v2, v3}, Lorg/mapsforge/core/graphics/GraphicFactory;->createBitmap(IIZ)Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v0

    .line 41
    .local v0, "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    iget v1, p0, Lorg/mapsforge/map/view/FrameBufferBitmap$BitmapRequest;->color:I

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Bitmap;->setBackgroundColor(I)V

    .line 42
    return-object v0

    .line 44
    .end local v0    # "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
