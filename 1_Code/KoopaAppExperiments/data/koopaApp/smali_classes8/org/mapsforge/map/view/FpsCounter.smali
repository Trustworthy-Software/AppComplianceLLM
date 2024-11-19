.class public Lorg/mapsforge/map/view/FpsCounter;
.super Ljava/lang/Object;
.source "FpsCounter.java"


# static fields
.field private static final ONE_SECOND:J


# instance fields
.field private final displayModel:Lorg/mapsforge/map/model/DisplayModel;

.field private fps:Ljava/lang/String;

.field private frameCounter:I

.field private lastTime:J

.field private final paintBack:Lorg/mapsforge/core/graphics/Paint;

.field private final paintFront:Lorg/mapsforge/core/graphics/Paint;

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lorg/mapsforge/map/view/FpsCounter;->ONE_SECOND:J

    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V
    .locals 1
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lorg/mapsforge/map/view/FpsCounter;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 63
    invoke-static {p1, p2}, Lorg/mapsforge/map/view/FpsCounter;->createPaintBack(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/view/FpsCounter;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    .line 64
    invoke-static {p1, p2}, Lorg/mapsforge/map/view/FpsCounter;->createPaintFront(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/view/FpsCounter;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/model/DisplayModel;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;)V
    .locals 0
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p2, "paintBack"    # Lorg/mapsforge/core/graphics/Paint;
    .param p3, "paintFront"    # Lorg/mapsforge/core/graphics/Paint;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/mapsforge/map/view/FpsCounter;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 69
    iput-object p2, p0, Lorg/mapsforge/map/view/FpsCounter;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    .line 70
    iput-object p3, p0, Lorg/mapsforge/map/view/FpsCounter;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    .line 71
    return-void
.end method

.method private static createPaintBack(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;
    .locals 3
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 44
    invoke-interface {p0}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 45
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->WHITE:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 46
    sget-object v1, Lorg/mapsforge/core/graphics/FontFamily;->DEFAULT:Lorg/mapsforge/core/graphics/FontFamily;

    sget-object v2, Lorg/mapsforge/core/graphics/FontStyle;->BOLD:Lorg/mapsforge/core/graphics/FontStyle;

    invoke-interface {v0, v1, v2}, Lorg/mapsforge/core/graphics/Paint;->setTypeface(Lorg/mapsforge/core/graphics/FontFamily;Lorg/mapsforge/core/graphics/FontStyle;)V

    .line 47
    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {p1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-interface {v0, v2}, Lorg/mapsforge/core/graphics/Paint;->setTextSize(F)V

    .line 48
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-interface {v0, v2}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 50
    return-object v0
.end method

.method private static createPaintFront(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;
    .locals 3
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 36
    invoke-interface {p0}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 37
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->RED:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 38
    sget-object v1, Lorg/mapsforge/core/graphics/FontFamily;->DEFAULT:Lorg/mapsforge/core/graphics/FontFamily;

    sget-object v2, Lorg/mapsforge/core/graphics/FontStyle;->BOLD:Lorg/mapsforge/core/graphics/FontStyle;

    invoke-interface {v0, v1, v2}, Lorg/mapsforge/core/graphics/Paint;->setTypeface(Lorg/mapsforge/core/graphics/FontFamily;Lorg/mapsforge/core/graphics/FontStyle;)V

    .line 39
    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {p1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-interface {v0, v2}, Lorg/mapsforge/core/graphics/Paint;->setTextSize(F)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public draw(Lorg/mapsforge/core/graphics/GraphicContext;)V
    .locals 8
    .param p1, "graphicContext"    # Lorg/mapsforge/core/graphics/GraphicContext;

    .line 74
    iget-boolean v0, p0, Lorg/mapsforge/map/view/FpsCounter;->visible:Z

    if-nez v0, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 79
    .local v0, "currentTime":J
    iget-wide v2, p0, Lorg/mapsforge/map/view/FpsCounter;->lastTime:J

    sub-long v2, v0, v2

    .line 80
    .local v2, "elapsedTime":J
    sget-wide v4, Lorg/mapsforge/map/view/FpsCounter;->ONE_SECOND:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 81
    iget v6, p0, Lorg/mapsforge/map/view/FpsCounter;->frameCounter:I

    int-to-long v6, v6

    mul-long/2addr v6, v4

    long-to-float v4, v6

    long-to-float v5, v2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mapsforge/map/view/FpsCounter;->fps:Ljava/lang/String;

    .line 82
    iput-wide v0, p0, Lorg/mapsforge/map/view/FpsCounter;->lastTime:J

    .line 83
    const/4 v4, 0x0

    iput v4, p0, Lorg/mapsforge/map/view/FpsCounter;->frameCounter:I

    .line 86
    :cond_1
    iget-object v4, p0, Lorg/mapsforge/map/view/FpsCounter;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v4}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 87
    .local v4, "x":I
    iget-object v5, p0, Lorg/mapsforge/map/view/FpsCounter;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v5}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v5

    const/high16 v6, 0x42200000    # 40.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 88
    .local v5, "y":I
    iget-object v6, p0, Lorg/mapsforge/map/view/FpsCounter;->fps:Ljava/lang/String;

    iget-object v7, p0, Lorg/mapsforge/map/view/FpsCounter;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {p1, v6, v4, v5, v7}, Lorg/mapsforge/core/graphics/GraphicContext;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 89
    iget-object v6, p0, Lorg/mapsforge/map/view/FpsCounter;->fps:Ljava/lang/String;

    iget-object v7, p0, Lorg/mapsforge/map/view/FpsCounter;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {p1, v6, v4, v5, v7}, Lorg/mapsforge/core/graphics/GraphicContext;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 90
    iget v6, p0, Lorg/mapsforge/map/view/FpsCounter;->frameCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/mapsforge/map/view/FpsCounter;->frameCounter:I

    .line 91
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/mapsforge/map/view/FpsCounter;->visible:Z

    return v0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 98
    iput-boolean p1, p0, Lorg/mapsforge/map/view/FpsCounter;->visible:Z

    .line 99
    return-void
.end method
