.class Lorg/mapsforge/map/android/graphics/AndroidPath;
.super Ljava/lang/Object;
.source "AndroidPath.java"

# interfaces
.implements Lorg/mapsforge/core/graphics/Path;


# instance fields
.field final path:Landroid/graphics/Path;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPath;->path:Landroid/graphics/Path;

    return-void
.end method

.method private static getWindingRule(Lorg/mapsforge/core/graphics/FillRule;)Landroid/graphics/Path$FillType;
    .locals 3
    .param p0, "fillRule"    # Lorg/mapsforge/core/graphics/FillRule;

    .line 25
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidPath$1;->$SwitchMap$org$mapsforge$core$graphics$FillRule:[I

    invoke-virtual {p0}, Lorg/mapsforge/core/graphics/FillRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown fill rule:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :pswitch_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    .line 27
    :pswitch_1
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPath;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 40
    return-void
.end method

.method public close()V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPath;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 45
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPath;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 54
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPath;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 55
    return-void
.end method

.method public moveTo(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 59
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPath;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 60
    return-void
.end method

.method public setFillRule(Lorg/mapsforge/core/graphics/FillRule;)V
    .locals 2
    .param p1, "fillRule"    # Lorg/mapsforge/core/graphics/FillRule;

    .line 64
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPath;->path:Landroid/graphics/Path;

    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidPath;->getWindingRule(Lorg/mapsforge/core/graphics/FillRule;)Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 65
    return-void
.end method
