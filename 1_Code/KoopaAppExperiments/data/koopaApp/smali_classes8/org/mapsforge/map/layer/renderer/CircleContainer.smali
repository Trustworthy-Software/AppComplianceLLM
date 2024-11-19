.class Lorg/mapsforge/map/layer/renderer/CircleContainer;
.super Ljava/lang/Object;
.source "CircleContainer.java"

# interfaces
.implements Lorg/mapsforge/map/layer/renderer/ShapeContainer;


# instance fields
.field final point:Lorg/mapsforge/core/model/Point;

.field final radius:F


# direct methods
.method constructor <init>(Lorg/mapsforge/core/model/Point;F)V
    .locals 0
    .param p1, "point"    # Lorg/mapsforge/core/model/Point;
    .param p2, "radius"    # F

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/mapsforge/map/layer/renderer/CircleContainer;->point:Lorg/mapsforge/core/model/Point;

    .line 25
    iput p2, p0, Lorg/mapsforge/map/layer/renderer/CircleContainer;->radius:F

    .line 26
    return-void
.end method


# virtual methods
.method public getShapeType()Lorg/mapsforge/map/layer/renderer/ShapeType;
    .locals 1

    .line 30
    sget-object v0, Lorg/mapsforge/map/layer/renderer/ShapeType;->CIRCLE:Lorg/mapsforge/map/layer/renderer/ShapeType;

    return-object v0
.end method
