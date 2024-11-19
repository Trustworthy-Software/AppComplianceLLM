.class public Lorg/mapsforge/map/android/rotation/RotateView;
.super Landroid/view/ViewGroup;
.source "RotateView.java"


# instance fields
.field private heading:F

.field private final matrix:Landroid/graphics/Matrix;

.field private final points:[F

.field private saveCount:I

.field private final smoothCanvas:Lorg/mapsforge/map/android/rotation/SmoothCanvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mapsforge/map/android/rotation/RotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/mapsforge/map/android/rotation/RotateView;->heading:F

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/rotation/RotateView;->matrix:Landroid/graphics/Matrix;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/mapsforge/map/android/rotation/RotateView;->points:[F

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lorg/mapsforge/map/android/rotation/RotateView;->saveCount:I

    .line 32
    new-instance v0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;

    invoke-direct {v0}, Lorg/mapsforge/map/android/rotation/SmoothCanvas;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/android/rotation/RotateView;->smoothCanvas:Lorg/mapsforge/map/android/rotation/SmoothCanvas;

    .line 40
    return-void
.end method

.method private rotateEvent(Landroid/view/MotionEvent;FFF)Landroid/view/MotionEvent;
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "degrees"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 106
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 107
    return-object p1

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/RotateView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2, p3, p4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 112
    nop

    .line 113
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 114
    .local v0, "rotatedEvent":Landroid/view/MotionEvent;
    iget-object v1, p0, Lorg/mapsforge/map/android/rotation/RotateView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 122
    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 44
    iget v0, p0, Lorg/mapsforge/map/android/rotation/RotateView;->heading:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 45
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 46
    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, Lorg/mapsforge/map/android/rotation/RotateView;->saveCount:I

    .line 50
    iget v0, p0, Lorg/mapsforge/map/android/rotation/RotateView;->heading:F

    neg-float v0, v0

    invoke-virtual {p0}, Lorg/mapsforge/map/android/rotation/RotateView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/mapsforge/map/android/rotation/RotateView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 51
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/RotateView;->smoothCanvas:Lorg/mapsforge/map/android/rotation/SmoothCanvas;

    iput-object p1, v0, Lorg/mapsforge/map/android/rotation/SmoothCanvas;->delegate:Landroid/graphics/Canvas;

    .line 52
    iget-object v0, p0, Lorg/mapsforge/map/android/rotation/RotateView;->smoothCanvas:Lorg/mapsforge/map/android/rotation/SmoothCanvas;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 53
    iget v0, p0, Lorg/mapsforge/map/android/rotation/RotateView;->saveCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 54
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 55
    iput v1, p0, Lorg/mapsforge/map/android/rotation/RotateView;->saveCount:I

    .line 57
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 61
    iget v0, p0, Lorg/mapsforge/map/android/rotation/RotateView;->heading:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 62
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lorg/mapsforge/map/android/rotation/RotateView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/mapsforge/map/android/rotation/RotateView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-direct {p0, p1, v0, v1, v3}, Lorg/mapsforge/map/android/rotation/RotateView;->rotateEvent(Landroid/view/MotionEvent;FFF)Landroid/view/MotionEvent;

    move-result-object v0

    .line 67
    .local v0, "rotatedEvent":Landroid/view/MotionEvent;
    :try_start_0
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-eq v0, p1, :cond_1

    .line 70
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 67
    :cond_1
    return v1

    .line 69
    :catchall_0
    move-exception v1

    if-eq v0, p1, :cond_2

    .line 70
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 71
    :cond_2
    throw v1
.end method

.method public getHeading()F
    .locals 1

    .line 75
    iget v0, p0, Lorg/mapsforge/map/android/rotation/RotateView;->heading:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 80
    invoke-virtual {p0}, Lorg/mapsforge/map/android/rotation/RotateView;->getWidth()I

    move-result v0

    .line 81
    .local v0, "width":I
    invoke-virtual {p0}, Lorg/mapsforge/map/android/rotation/RotateView;->getHeight()I

    move-result v1

    .line 82
    .local v1, "height":I
    invoke-virtual {p0}, Lorg/mapsforge/map/android/rotation/RotateView;->getChildCount()I

    move-result v2

    .line 83
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 84
    move-object v4, p0

    invoke-virtual {p0, v3}, Lorg/mapsforge/map/android/rotation/RotateView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 85
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 86
    .local v6, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 87
    .local v7, "childHeight":I
    sub-int v8, v0, v6

    div-int/lit8 v8, v8, 0x2

    .line 88
    .local v8, "childLeft":I
    sub-int v9, v1, v7

    div-int/lit8 v9, v9, 0x2

    .line 89
    .local v9, "childTop":I
    add-int v10, v8, v6

    add-int v11, v9, v7

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 83
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "childWidth":I
    .end local v7    # "childHeight":I
    .end local v8    # "childLeft":I
    .end local v9    # "childTop":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v4, p0

    .line 91
    .end local v3    # "i":I
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 95
    invoke-virtual {p0}, Lorg/mapsforge/map/android/rotation/RotateView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lorg/mapsforge/map/android/rotation/RotateView;->getDefaultSize(II)I

    move-result v0

    .line 96
    .local v0, "w":I
    invoke-virtual {p0}, Lorg/mapsforge/map/android/rotation/RotateView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lorg/mapsforge/map/android/rotation/RotateView;->getDefaultSize(II)I

    move-result v1

    .line 97
    .local v1, "h":I
    int-to-double v2, v0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-int v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 98
    .local v2, "sizeSpec":I
    invoke-virtual {p0}, Lorg/mapsforge/map/android/rotation/RotateView;->getChildCount()I

    move-result v3

    .line 99
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 100
    invoke-virtual {p0, v4}, Lorg/mapsforge/map/android/rotation/RotateView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2, v2}, Landroid/view/View;->measure(II)V

    .line 99
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    .end local v4    # "i":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 103
    return-void
.end method

.method public setHeading(F)V
    .locals 0
    .param p1, "heading"    # F

    .line 126
    iput p1, p0, Lorg/mapsforge/map/android/rotation/RotateView;->heading:F

    .line 127
    return-void
.end method
