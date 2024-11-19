.class Lorg/mapsforge/map/android/graphics/AndroidPaint;
.super Ljava/lang/Object;
.source "AndroidPaint.java"

# interfaces
.implements Lorg/mapsforge/core/graphics/Paint;


# instance fields
.field final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/Rect;

.field private shaderHeight:I

.field private shaderWidth:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->rect:Landroid/graphics/Rect;

    .line 131
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    .line 132
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    sget-object v1, Lorg/mapsforge/core/graphics/Cap;->ROUND:Lorg/mapsforge/core/graphics/Cap;

    invoke-static {v1}, Lorg/mapsforge/map/android/graphics/AndroidPaint;->getAndroidCap(Lorg/mapsforge/core/graphics/Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 134
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 135
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->FILL:Lorg/mapsforge/core/graphics/Style;

    invoke-static {v1}, Lorg/mapsforge/map/android/graphics/AndroidPaint;->getAndroidStyle(Lorg/mapsforge/core/graphics/Style;)Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    return-void
.end method

.method constructor <init>(Lorg/mapsforge/core/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Lorg/mapsforge/core/graphics/Paint;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->rect:Landroid/graphics/Rect;

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    move-object v1, p1

    check-cast v1, Lorg/mapsforge/map/android/graphics/AndroidPaint;

    iget-object v1, v1, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    .line 140
    return-void
.end method

.method private static getAndroidAlign(Lorg/mapsforge/core/graphics/Align;)Landroid/graphics/Paint$Align;
    .locals 3
    .param p0, "align"    # Lorg/mapsforge/core/graphics/Align;

    .line 42
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$Align:[I

    invoke-virtual {p0}, Lorg/mapsforge/core/graphics/Align;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown align: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    return-object v0

    .line 46
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    return-object v0

    .line 44
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getAndroidCap(Lorg/mapsforge/core/graphics/Cap;)Landroid/graphics/Paint$Cap;
    .locals 3
    .param p0, "cap"    # Lorg/mapsforge/core/graphics/Cap;

    .line 55
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$Cap:[I

    invoke-virtual {p0}, Lorg/mapsforge/core/graphics/Cap;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown cap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 59
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 57
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getAndroidJoin(Lorg/mapsforge/core/graphics/Join;)Landroid/graphics/Paint$Join;
    .locals 3
    .param p0, "join"    # Lorg/mapsforge/core/graphics/Join;

    .line 68
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$Join:[I

    invoke-virtual {p0}, Lorg/mapsforge/core/graphics/Join;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown join: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object v0

    .line 72
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object v0

    .line 70
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getAndroidStyle(Lorg/mapsforge/core/graphics/Style;)Landroid/graphics/Paint$Style;
    .locals 3
    .param p0, "style"    # Lorg/mapsforge/core/graphics/Style;

    .line 81
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$Style:[I

    invoke-virtual {p0}, Lorg/mapsforge/core/graphics/Style;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    return-object v0

    .line 83
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getFontStyle(Lorg/mapsforge/core/graphics/FontStyle;)I
    .locals 3
    .param p0, "fontStyle"    # Lorg/mapsforge/core/graphics/FontStyle;

    .line 92
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$FontStyle:[I

    invoke-virtual {p0}, Lorg/mapsforge/core/graphics/FontStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown font style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 98
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 96
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 94
    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTypeface(Lorg/mapsforge/core/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "fontFamily"    # Lorg/mapsforge/core/graphics/FontFamily;

    .line 107
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$FontFamily:[I

    invoke-virtual {p0}, Lorg/mapsforge/core/graphics/FontFamily;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown font family: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    return-object v0

    .line 113
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    return-object v0

    .line 111
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    return-object v0

    .line 109
    :pswitch_3
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getTextHeight(Ljava/lang/String;)I
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->rect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 155
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getTextWidth(Ljava/lang/String;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBitmapShader(Lorg/mapsforge/core/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Lorg/mapsforge/core/graphics/Bitmap;

    .line 172
    if-nez p1, :cond_0

    .line 173
    return-void

    .line 175
    :cond_0
    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getBitmap(Lorg/mapsforge/core/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    .local v0, "androidBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 177
    return-void

    .line 180
    :cond_1
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->shaderWidth:I

    .line 181
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->shaderHeight:I

    .line 189
    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    sget-object v2, Lorg/mapsforge/core/graphics/Color;->WHITE:Lorg/mapsforge/core/graphics/Color;

    invoke-static {v2}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getColor(Lorg/mapsforge/core/graphics/Color;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 192
    return-void
.end method

.method public setBitmapShaderShift(Lorg/mapsforge/core/model/Point;)V
    .locals 6
    .param p1, "origin"    # Lorg/mapsforge/core/model/Point;

    .line 203
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    .line 204
    .local v0, "shader":Landroid/graphics/Shader;
    if-eqz v0, :cond_0

    .line 205
    iget-wide v1, p1, Lorg/mapsforge/core/model/Point;->x:D

    neg-double v1, v1

    double-to-int v1, v1

    iget v2, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->shaderWidth:I

    rem-int/2addr v1, v2

    .line 206
    .local v1, "relativeDx":I
    iget-wide v2, p1, Lorg/mapsforge/core/model/Point;->y:D

    neg-double v2, v2

    double-to-int v2, v2

    iget v3, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->shaderHeight:I

    rem-int/2addr v2, v3

    .line 208
    .local v2, "relativeDy":I
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 209
    .local v3, "localMatrix":Landroid/graphics/Matrix;
    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 210
    invoke-virtual {v0, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 212
    .end local v1    # "relativeDx":I
    .end local v2    # "relativeDy":I
    .end local v3    # "localMatrix":Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 221
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    return-void
.end method

.method public setColor(Lorg/mapsforge/core/graphics/Color;)V
    .locals 2
    .param p1, "color"    # Lorg/mapsforge/core/graphics/Color;

    .line 216
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidGraphicFactory;->getColor(Lorg/mapsforge/core/graphics/Color;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    return-void
.end method

.method public setDashPathEffect([F)V
    .locals 2
    .param p1, "strokeDasharray"    # [F

    .line 226
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 227
    .local v0, "pathEffect":Landroid/graphics/PathEffect;
    iget-object v1, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 228
    return-void
.end method

.method public setStrokeCap(Lorg/mapsforge/core/graphics/Cap;)V
    .locals 2
    .param p1, "cap"    # Lorg/mapsforge/core/graphics/Cap;

    .line 232
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidPaint;->getAndroidCap(Lorg/mapsforge/core/graphics/Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 233
    return-void
.end method

.method public setStrokeJoin(Lorg/mapsforge/core/graphics/Join;)V
    .locals 2
    .param p1, "join"    # Lorg/mapsforge/core/graphics/Join;

    .line 237
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidPaint;->getAndroidJoin(Lorg/mapsforge/core/graphics/Join;)Landroid/graphics/Paint$Join;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 238
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .line 242
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 243
    return-void
.end method

.method public setStyle(Lorg/mapsforge/core/graphics/Style;)V
    .locals 2
    .param p1, "style"    # Lorg/mapsforge/core/graphics/Style;

    .line 247
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidPaint;->getAndroidStyle(Lorg/mapsforge/core/graphics/Style;)Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 248
    return-void
.end method

.method public setTextAlign(Lorg/mapsforge/core/graphics/Align;)V
    .locals 2
    .param p1, "align"    # Lorg/mapsforge/core/graphics/Align;

    .line 252
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidPaint;->getAndroidAlign(Lorg/mapsforge/core/graphics/Align;)Landroid/graphics/Paint$Align;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 253
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .line 257
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 258
    return-void
.end method

.method public setTypeface(Lorg/mapsforge/core/graphics/FontFamily;Lorg/mapsforge/core/graphics/FontStyle;)V
    .locals 3
    .param p1, "fontFamily"    # Lorg/mapsforge/core/graphics/FontFamily;
    .param p2, "fontStyle"    # Lorg/mapsforge/core/graphics/FontStyle;

    .line 262
    iget-object v0, p0, Lorg/mapsforge/map/android/graphics/AndroidPaint;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/mapsforge/map/android/graphics/AndroidPaint;->getTypeface(Lorg/mapsforge/core/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {p2}, Lorg/mapsforge/map/android/graphics/AndroidPaint;->getFontStyle(Lorg/mapsforge/core/graphics/FontStyle;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 263
    return-void
.end method
