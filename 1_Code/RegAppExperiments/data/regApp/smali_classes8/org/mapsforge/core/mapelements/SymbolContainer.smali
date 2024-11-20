.class public Lorg/mapsforge/core/mapelements/SymbolContainer;
.super Lorg/mapsforge/core/mapelements/MapElementContainer;
.source "SymbolContainer.java"


# instance fields
.field final alignCenter:Z

.field public symbol:Lorg/mapsforge/core/graphics/Bitmap;

.field public final theta:F


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILorg/mapsforge/core/graphics/Bitmap;)V
    .locals 7
    .param p1, "point"    # Lorg/mapsforge/core/model/Point;
    .param p2, "display"    # Lorg/mapsforge/core/graphics/Display;
    .param p3, "priority"    # I
    .param p4, "symbol"    # Lorg/mapsforge/core/graphics/Bitmap;

    .line 33
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/mapsforge/core/mapelements/SymbolContainer;-><init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILorg/mapsforge/core/graphics/Bitmap;FZ)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILorg/mapsforge/core/graphics/Bitmap;FZ)V
    .locals 24
    .param p1, "point"    # Lorg/mapsforge/core/model/Point;
    .param p2, "display"    # Lorg/mapsforge/core/graphics/Display;
    .param p3, "priority"    # I
    .param p4, "symbol"    # Lorg/mapsforge/core/graphics/Bitmap;
    .param p5, "theta"    # F
    .param p6, "alignCenter"    # Z

    .line 37
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct/range {p0 .. p3}, Lorg/mapsforge/core/mapelements/MapElementContainer;-><init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;I)V

    .line 38
    move-object/from16 v2, p4

    iput-object v2, v0, Lorg/mapsforge/core/mapelements/SymbolContainer;->symbol:Lorg/mapsforge/core/graphics/Bitmap;

    .line 39
    move/from16 v3, p5

    iput v3, v0, Lorg/mapsforge/core/mapelements/SymbolContainer;->theta:F

    .line 40
    iput-boolean v1, v0, Lorg/mapsforge/core/mapelements/SymbolContainer;->alignCenter:Z

    .line 41
    if-eqz v1, :cond_0

    .line 42
    invoke-interface/range {p4 .. p4}, Lorg/mapsforge/core/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 43
    .local v4, "halfWidth":D
    iget-object v8, v0, Lorg/mapsforge/core/mapelements/SymbolContainer;->symbol:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v8}, Lorg/mapsforge/core/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-double v8, v8

    div-double v6, v8, v6

    .line 44
    .local v6, "halfHeight":D
    new-instance v15, Lorg/mapsforge/core/model/Rectangle;

    neg-double v9, v4

    neg-double v11, v6

    move-object v8, v15

    move-wide v13, v4

    move-object v1, v15

    move-wide v15, v6

    invoke-direct/range {v8 .. v16}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    iput-object v1, v0, Lorg/mapsforge/core/mapelements/SymbolContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    .line 45
    .end local v4    # "halfWidth":D
    .end local v6    # "halfHeight":D
    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Lorg/mapsforge/core/model/Rectangle;

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    iget-object v4, v0, Lorg/mapsforge/core/mapelements/SymbolContainer;->symbol:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v4}, Lorg/mapsforge/core/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    iget-object v6, v0, Lorg/mapsforge/core/mapelements/SymbolContainer;->symbol:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v6}, Lorg/mapsforge/core/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    move-object v15, v1

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    invoke-direct/range {v15 .. v23}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    iput-object v1, v0, Lorg/mapsforge/core/mapelements/SymbolContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    .line 49
    :goto_0
    iget-object v1, v0, Lorg/mapsforge/core/mapelements/SymbolContainer;->symbol:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v1}, Lorg/mapsforge/core/graphics/Bitmap;->incrementRefCount()V

    .line 50
    return-void
.end method


# virtual methods
.method public draw(Lorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Matrix;Lorg/mapsforge/core/graphics/Filter;)V
    .locals 5
    .param p1, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p2, "origin"    # Lorg/mapsforge/core/model/Point;
    .param p3, "matrix"    # Lorg/mapsforge/core/graphics/Matrix;
    .param p4, "filter"    # Lorg/mapsforge/core/graphics/Filter;

    .line 76
    invoke-interface {p3}, Lorg/mapsforge/core/graphics/Matrix;->reset()V

    .line 78
    iget-object v0, p0, Lorg/mapsforge/core/mapelements/SymbolContainer;->xy:Lorg/mapsforge/core/model/Point;

    iget-wide v0, v0, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v2, p2, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lorg/mapsforge/core/mapelements/SymbolContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    iget-wide v2, v2, Lorg/mapsforge/core/model/Rectangle;->left:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/mapsforge/core/mapelements/SymbolContainer;->xy:Lorg/mapsforge/core/model/Point;

    iget-wide v1, v1, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v3, p2, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v1, v3

    iget-object v3, p0, Lorg/mapsforge/core/mapelements/SymbolContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    iget-wide v3, v3, Lorg/mapsforge/core/model/Rectangle;->top:D

    add-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float v1, v1

    invoke-interface {p3, v0, v1}, Lorg/mapsforge/core/graphics/Matrix;->translate(FF)V

    .line 79
    iget v0, p0, Lorg/mapsforge/core/mapelements/SymbolContainer;->theta:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/mapsforge/core/mapelements/SymbolContainer;->alignCenter:Z

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lorg/mapsforge/core/mapelements/SymbolContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    iget-wide v1, v1, Lorg/mapsforge/core/model/Rectangle;->left:D

    neg-double v1, v1

    double-to-float v1, v1

    iget-object v2, p0, Lorg/mapsforge/core/mapelements/SymbolContainer;->boundary:Lorg/mapsforge/core/model/Rectangle;

    iget-wide v2, v2, Lorg/mapsforge/core/model/Rectangle;->top:D

    neg-double v2, v2

    double-to-float v2, v2

    invoke-interface {p3, v0, v1, v2}, Lorg/mapsforge/core/graphics/Matrix;->rotate(FFF)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-interface {p3, v0}, Lorg/mapsforge/core/graphics/Matrix;->rotate(F)V

    .line 84
    :goto_0
    iget-object v0, p0, Lorg/mapsforge/core/mapelements/SymbolContainer;->symbol:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {p1, v0, p3, p4}, Lorg/mapsforge/core/graphics/Canvas;->drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/core/graphics/Matrix;Lorg/mapsforge/core/graphics/Filter;)V

    .line 85
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 54
    invoke-super {p0, p1}, Lorg/mapsforge/core/mapelements/MapElementContainer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 55
    return v1

    .line 57
    :cond_0
    instance-of v0, p1, Lorg/mapsforge/core/mapelements/SymbolContainer;

    if-nez v0, :cond_1

    .line 58
    return v1

    .line 60
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/mapsforge/core/mapelements/SymbolContainer;

    .line 61
    .local v0, "other":Lorg/mapsforge/core/mapelements/SymbolContainer;
    iget-object v2, p0, Lorg/mapsforge/core/mapelements/SymbolContainer;->symbol:Lorg/mapsforge/core/graphics/Bitmap;

    iget-object v3, v0, Lorg/mapsforge/core/mapelements/SymbolContainer;->symbol:Lorg/mapsforge/core/graphics/Bitmap;

    if-eq v2, v3, :cond_2

    .line 62
    return v1

    .line 64
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 69
    invoke-super {p0}, Lorg/mapsforge/core/mapelements/MapElementContainer;->hashCode()I

    move-result v0

    .line 70
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/mapsforge/core/mapelements/SymbolContainer;->symbol:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 71
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
