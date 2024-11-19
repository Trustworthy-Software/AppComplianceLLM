.class public Lorg/mapsforge/map/layer/renderer/HillshadingContainer;
.super Ljava/lang/Object;
.source "HillshadingContainer.java"

# interfaces
.implements Lorg/mapsforge/map/layer/renderer/ShapeContainer;


# instance fields
.field public final bitmap:Lorg/mapsforge/core/graphics/Bitmap;

.field public final hillsRect:Lorg/mapsforge/core/model/Rectangle;

.field public final magnitude:F

.field public final tileRect:Lorg/mapsforge/core/model/Rectangle;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/graphics/HillshadingBitmap;FLorg/mapsforge/core/model/Rectangle;Lorg/mapsforge/core/model/Rectangle;)V
    .locals 0
    .param p1, "bitmap"    # Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .param p2, "magnitude"    # F
    .param p3, "hillsRect"    # Lorg/mapsforge/core/model/Rectangle;
    .param p4, "tileRect"    # Lorg/mapsforge/core/model/Rectangle;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p2, p0, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;->magnitude:F

    .line 30
    iput-object p1, p0, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 31
    iput-object p3, p0, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;->hillsRect:Lorg/mapsforge/core/model/Rectangle;

    .line 32
    iput-object p4, p0, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;->tileRect:Lorg/mapsforge/core/model/Rectangle;

    .line 33
    return-void
.end method


# virtual methods
.method public getShapeType()Lorg/mapsforge/map/layer/renderer/ShapeType;
    .locals 1

    .line 37
    sget-object v0, Lorg/mapsforge/map/layer/renderer/ShapeType;->HILLSHADING:Lorg/mapsforge/map/layer/renderer/ShapeType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Hillshading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;->magnitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;->bitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n @# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;->hillsRect:Lorg/mapsforge/core/model/Rectangle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;->tileRect:Lorg/mapsforge/core/model/Rectangle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
