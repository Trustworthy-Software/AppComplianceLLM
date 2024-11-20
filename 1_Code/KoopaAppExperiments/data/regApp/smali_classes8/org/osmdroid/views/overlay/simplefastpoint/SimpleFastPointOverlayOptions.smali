.class public Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
.super Ljava/lang/Object;
.source "SimpleFastPointOverlayOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;,
        Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;,
        Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;
    }
.end annotation


# instance fields
.field protected mAlgorithm:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

.field protected mCellSize:I

.field protected mCircleRadius:F

.field protected mClickable:Z

.field protected mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

.field protected mMaxNShownLabels:I

.field protected mMinZoomShowLabels:I

.field protected mPointStyle:Landroid/graphics/Paint;

.field protected mSelectedCircleRadius:F

.field protected mSelectedPointStyle:Landroid/graphics/Paint;

.field protected mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

.field protected mTextStyle:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    .line 22
    const/high16 v1, 0x41500000    # 13.0f

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    .line 23
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mClickable:Z

    .line 24
    const/16 v1, 0xa

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    .line 25
    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;->MAXIMUM_OPTIMIZATION:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    iput-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mAlgorithm:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    .line 26
    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;->SQUARE:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    iput-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    .line 27
    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    iput-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    .line 28
    const/16 v1, 0xfa

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMaxNShownLabels:I

    .line 29
    const/16 v1, 0xb

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMinZoomShowLabels:I

    .line 32
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    .line 33
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    const-string v2, "#ff7700"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    .line 37
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    const-string v1, "#ffff00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    .line 42
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 45
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    return-void
.end method

.method public static getDefaultStyle()Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
    .locals 1

    .line 54
    new-instance v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mAlgorithm:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    return-object v0
.end method

.method public getCellSize()I
    .locals 1

    .line 232
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    return v0
.end method

.method public getCircleRadius()F
    .locals 1

    .line 220
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    return v0
.end method

.method public getLabelPolicy()Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    return-object v0
.end method

.method public getMaxNShownLabels()I
    .locals 1

    .line 248
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMaxNShownLabels:I

    return v0
.end method

.method public getMinZoomShowLabels()I
    .locals 1

    .line 252
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMinZoomShowLabels:I

    return v0
.end method

.method public getPointStyle()Landroid/graphics/Paint;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getSelectedCircleRadius()F
    .locals 1

    .line 224
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    return v0
.end method

.method public getSelectedPointStyle()Landroid/graphics/Paint;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getSymbol()Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    return-object v0
.end method

.method public getTextStyle()Landroid/graphics/Paint;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isClickable()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mClickable:Z

    return v0
.end method

.method public setAlgorithm(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;)Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
    .locals 0
    .param p1, "algorithm"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    .line 138
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mAlgorithm:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    .line 139
    return-object p0
.end method

.method public setCellSize(I)Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
    .locals 0
    .param p1, "cellSize"    # I

    .line 122
    iput p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    .line 123
    return-object p0
.end method

.method public setIsClickable(Z)Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
    .locals 0
    .param p1, "clickable"    # Z

    .line 110
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mClickable:Z

    .line 111
    return-object p0
.end method

.method public setLabelPolicy(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;)Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
    .locals 0
    .param p1, "labelPolicy"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    .line 201
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    .line 202
    return-object p0
.end method

.method public setMaxNShownLabels(I)Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
    .locals 0
    .param p1, "maxNShownLabels"    # I

    .line 186
    iput p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMaxNShownLabels:I

    .line 187
    return-object p0
.end method

.method public setMinZoomShowLabels(I)Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
    .locals 0
    .param p1, "minZoomShowLabels"    # I

    .line 173
    iput p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMinZoomShowLabels:I

    .line 174
    return-object p0
.end method

.method public setPointStyle(Landroid/graphics/Paint;)Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
    .locals 0
    .param p1, "style"    # Landroid/graphics/Paint;

    .line 65
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    .line 66
    return-object p0
.end method

.method public setRadius(F)Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
    .locals 0
    .param p1, "radius"    # F

    .line 87
    iput p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    .line 88
    return-object p0
.end method

.method public setSelectedPointStyle(Landroid/graphics/Paint;)Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
    .locals 0
    .param p1, "style"    # Landroid/graphics/Paint;

    .line 76
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    .line 77
    return-object p0
.end method

.method public setSelectedRadius(F)Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
    .locals 0
    .param p1, "radius"    # F

    .line 98
    iput p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    .line 99
    return-object p0
.end method

.method public setSymbol(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;)Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
    .locals 0
    .param p1, "symbol"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    .line 149
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    .line 150
    return-object p0
.end method

.method public setTextStyle(Landroid/graphics/Paint;)Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
    .locals 0
    .param p1, "textStyle"    # Landroid/graphics/Paint;

    .line 161
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    .line 162
    return-object p0
.end method
