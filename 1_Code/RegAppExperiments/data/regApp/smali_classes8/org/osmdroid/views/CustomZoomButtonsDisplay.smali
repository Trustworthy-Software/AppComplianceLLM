.class public Lorg/osmdroid/views/CustomZoomButtonsDisplay;
.super Ljava/lang/Object;
.source "CustomZoomButtonsDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;,
        Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;
    }
.end annotation


# instance fields
.field private mAdditionalPixelMarginBottom:F

.field private mAdditionalPixelMarginLeft:F

.field private mAdditionalPixelMarginRight:F

.field private mAdditionalPixelMarginTop:F

.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mBitmapSize:I

.field private mHorizontalOrVertical:Z

.field private mHorizontalPosition:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

.field private final mMapView:Lorg/osmdroid/views/MapView;

.field private mMargin:F

.field private mPadding:F

.field private mPixelMarginBottom:F

.field private mPixelMarginLeft:F

.field private mPixelMarginRight:F

.field private mPixelMarginTop:F

.field private final mUnrotatedPoint:Landroid/graphics/Point;

.field private mVerticalPosition:Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;

.field private mZoomInBitmapDisabled:Landroid/graphics/Bitmap;

.field private mZoomInBitmapEnabled:Landroid/graphics/Bitmap;

.field private mZoomOutBitmapDisabled:Landroid/graphics/Bitmap;

.field private mZoomOutBitmapEnabled:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 3
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mUnrotatedPoint:Landroid/graphics/Point;

    .line 46
    iput-object p1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 48
    sget-object v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->CENTER:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    sget-object v1, Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;->BOTTOM:Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->setPositions(ZLorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;)V

    .line 49
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0, v0}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->setMarginPadding(FF)V

    .line 50
    return-void
.end method

.method private getBitmap(ZZ)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "pInOrOut"    # Z
    .param p2, "pEnabled"    # Z

    .line 202
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mZoomInBitmapEnabled:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 203
    nop

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->getZoomBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 205
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->getZoomBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 206
    invoke-virtual {p0, v2, v0}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->getZoomBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    invoke-virtual {p0, v2, v2}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->getZoomBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 203
    invoke-virtual {p0, v1, v3, v0, v2}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 210
    :cond_0
    if-eqz p1, :cond_2

    .line 211
    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mZoomInBitmapEnabled:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mZoomInBitmapDisabled:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    .line 213
    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mZoomOutBitmapEnabled:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mZoomOutBitmapDisabled:Landroid/graphics/Bitmap;

    :goto_1
    return-object v0
.end method

.method private getFirstLeft(I)F
    .locals 5
    .param p1, "pMapViewWidth"    # I

    .line 174
    sget-object v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay$1;->$SwitchMap$org$osmdroid$views$CustomZoomButtonsDisplay$HorizontalPosition:[I

    iget-object v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mHorizontalPosition:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    invoke-virtual {v1}, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 181
    :pswitch_0
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 182
    iget-boolean v2, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mHorizontalOrVertical:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mPadding:F

    iget v3, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mBitmapSize:I

    int-to-float v4, v3

    mul-float/2addr v2, v4

    div-float/2addr v2, v1

    int-to-float v1, v3

    add-float/2addr v2, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mBitmapSize:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    :goto_0
    sub-float/2addr v0, v2

    .line 181
    return v0

    .line 178
    :pswitch_1
    int-to-float v0, p1

    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mPixelMarginRight:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mBitmapSize:I

    int-to-float v2, v1

    sub-float/2addr v0, v2

    .line 179
    iget-boolean v2, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mHorizontalOrVertical:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mPadding:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    int-to-float v1, v1

    add-float/2addr v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sub-float/2addr v0, v2

    .line 178
    return v0

    .line 176
    :pswitch_2
    iget v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mPixelMarginLeft:F

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFirstTop(I)F
    .locals 5
    .param p1, "pMapViewHeight"    # I

    .line 188
    sget-object v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay$1;->$SwitchMap$org$osmdroid$views$CustomZoomButtonsDisplay$VerticalPosition:[I

    iget-object v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mVerticalPosition:Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;

    invoke-virtual {v1}, Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 195
    :pswitch_0
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 196
    iget-boolean v2, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mHorizontalOrVertical:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mBitmapSize:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mPadding:F

    iget v3, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mBitmapSize:I

    int-to-float v4, v3

    mul-float/2addr v2, v4

    div-float/2addr v2, v1

    int-to-float v1, v3

    add-float/2addr v2, v1

    :goto_0
    sub-float/2addr v0, v2

    .line 195
    return v0

    .line 192
    :pswitch_1
    int-to-float v0, p1

    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mPixelMarginBottom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mBitmapSize:I

    int-to-float v2, v1

    sub-float/2addr v0, v2

    .line 193
    iget-boolean v2, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mHorizontalOrVertical:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget v2, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mPadding:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    int-to-float v1, v1

    add-float/2addr v1, v2

    :goto_1
    sub-float/2addr v0, v1

    .line 192
    return v0

    .line 190
    :pswitch_2
    iget v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mPixelMarginTop:F

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTopLeft(ZZ)F
    .locals 4
    .param p1, "pInOrOut"    # Z
    .param p2, "pXOrY"    # Z

    .line 153
    if-eqz p2, :cond_2

    .line 154
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->getFirstLeft(I)F

    move-result v0

    .line 155
    .local v0, "topLeft":F
    iget-boolean v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mHorizontalOrVertical:Z

    if-nez v1, :cond_0

    .line 156
    return v0

    .line 158
    :cond_0
    if-nez p1, :cond_1

    .line 159
    return v0

    .line 161
    :cond_1
    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mBitmapSize:I

    int-to-float v2, v1

    add-float/2addr v2, v0

    iget v3, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mPadding:F

    int-to-float v1, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    return v2

    .line 163
    .end local v0    # "topLeft":F
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->getFirstTop(I)F

    move-result v0

    .line 164
    .restart local v0    # "topLeft":F
    iget-boolean v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mHorizontalOrVertical:Z

    if-eqz v1, :cond_3

    .line 165
    return v0

    .line 167
    :cond_3
    if-eqz p1, :cond_4

    .line 168
    return v0

    .line 170
    :cond_4
    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mBitmapSize:I

    int-to-float v2, v1

    add-float/2addr v2, v0

    iget v3, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mPadding:F

    int-to-float v1, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private isTouched(IIZ)Z
    .locals 3
    .param p1, "pEventX"    # I
    .param p2, "pEventY"    # I
    .param p3, "pInOrOut"    # Z

    .line 239
    int-to-float v0, p1

    const/4 v1, 0x1

    invoke-direct {p0, p3, v1, v0}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->isTouched(ZZF)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    int-to-float v0, p2

    .line 240
    invoke-direct {p0, p3, v2, v0}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->isTouched(ZZF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 239
    :goto_0
    return v1
.end method

.method private isTouched(ZZF)Z
    .locals 2
    .param p1, "pInOrOut"    # Z
    .param p2, "pXOrY"    # Z
    .param p3, "pEvent"    # F

    .line 244
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->getTopLeft(ZZ)F

    move-result v0

    .line 245
    .local v0, "topLeft":F
    cmpl-float v1, p3, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mBitmapSize:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private refreshPixelMargins()V
    .locals 2

    .line 88
    iget v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mMargin:F

    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mBitmapSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 89
    .local v0, "bitmapFractionMarginInPixels":F
    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mAdditionalPixelMarginLeft:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mPixelMarginLeft:F

    .line 90
    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mAdditionalPixelMarginTop:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mPixelMarginTop:F

    .line 91
    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mAdditionalPixelMarginRight:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mPixelMarginRight:F

    .line 92
    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mAdditionalPixelMarginBottom:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mPixelMarginBottom:F

    .line 93
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FZZ)V
    .locals 6
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pAlpha01"    # F
    .param p3, "pZoomInEnabled"    # Z
    .param p4, "pZoomOutEnabled"    # Z

    .line 126
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 131
    const/4 v0, 0x0

    .local v0, "paint":Landroid/graphics/Paint;
    goto :goto_0

    .line 133
    .end local v0    # "paint":Landroid/graphics/Paint;
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mAlphaPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mAlphaPaint:Landroid/graphics/Paint;

    .line 136
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mAlphaPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 137
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mAlphaPaint:Landroid/graphics/Paint;

    .line 139
    .restart local v0    # "paint":Landroid/graphics/Paint;
    :goto_0
    nop

    .line 140
    const/4 v1, 0x1

    invoke-direct {p0, v1, p3}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->getBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 141
    invoke-direct {p0, v1, v1}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->getTopLeft(ZZ)F

    move-result v3

    .line 142
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->getTopLeft(ZZ)F

    move-result v5

    .line 139
    invoke-virtual {p1, v2, v3, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 144
    nop

    .line 145
    invoke-direct {p0, v4, p4}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->getBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 146
    invoke-direct {p0, v4, v1}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->getTopLeft(ZZ)F

    move-result v1

    .line 147
    invoke-direct {p0, v4, v4}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->getTopLeft(ZZ)F

    move-result v3

    .line 144
    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 149
    return-void
.end method

.method protected getIcon(Z)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "pInOrOut"    # Z

    .line 120
    if-eqz p1, :cond_0

    sget v0, Lorg/osmdroid/library/R$drawable;->sharp_add_black_36:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/osmdroid/library/R$drawable;->sharp_remove_black_36:I

    .line 121
    .local v0, "resourceId":I
    :goto_0
    iget-object v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected getZoomBitmap(ZZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "pInOrOut"    # Z
    .param p2, "pEnabled"    # Z

    .line 106
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->getIcon(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    .local v0, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mBitmapSize:I

    .line 108
    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->refreshPixelMargins()V

    .line 109
    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mBitmapSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 110
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 111
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object v9, v3

    .line 112
    .local v9, "backgroundPaint":Landroid/graphics/Paint;
    if-eqz p2, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    const v3, -0x333334

    :goto_0
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v3, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mBitmapSize:I

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    add-int/lit8 v3, v3, -0x1

    int-to-float v7, v3

    move-object v3, v2

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 115
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 116
    return-object v1
.end method

.method public isTouched(Landroid/view/MotionEvent;Z)Z
    .locals 2
    .param p1, "pMotionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pInOrOut"    # Z

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, p2}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->isTouched(IIZ)Z

    move-result v0

    return v0

    .line 234
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTouchedRotated(Landroid/view/MotionEvent;Z)Z
    .locals 4
    .param p1, "pMotionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pInOrOut"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mUnrotatedPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mUnrotatedPoint:Landroid/graphics/Point;

    .line 221
    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->rotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 224
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mUnrotatedPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mUnrotatedPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1, p2}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->isTouched(IIZ)Z

    move-result v0

    return v0
.end method

.method public setAdditionalPixelMargins(FFFF)V
    .locals 0
    .param p1, "pLeft"    # F
    .param p2, "pTop"    # F
    .param p3, "pRight"    # F
    .param p4, "pBottom"    # F

    .line 75
    iput p1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mAdditionalPixelMarginLeft:F

    .line 76
    iput p2, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mAdditionalPixelMarginTop:F

    .line 77
    iput p3, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mAdditionalPixelMarginRight:F

    .line 78
    iput p4, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mAdditionalPixelMarginBottom:F

    .line 79
    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->refreshPixelMargins()V

    .line 80
    return-void
.end method

.method public setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "pInEnabled"    # Landroid/graphics/Bitmap;
    .param p2, "pInDisabled"    # Landroid/graphics/Bitmap;
    .param p3, "pOutEnabled"    # Landroid/graphics/Bitmap;
    .param p4, "pOutDisabled"    # Landroid/graphics/Bitmap;

    .line 97
    iput-object p1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mZoomInBitmapEnabled:Landroid/graphics/Bitmap;

    .line 98
    iput-object p2, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mZoomInBitmapDisabled:Landroid/graphics/Bitmap;

    .line 99
    iput-object p3, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mZoomOutBitmapEnabled:Landroid/graphics/Bitmap;

    .line 100
    iput-object p4, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mZoomOutBitmapDisabled:Landroid/graphics/Bitmap;

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mBitmapSize:I

    .line 102
    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->refreshPixelMargins()V

    .line 103
    return-void
.end method

.method public setMarginPadding(FF)V
    .locals 0
    .param p1, "pMargin"    # F
    .param p2, "pPadding"    # F

    .line 64
    iput p1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mMargin:F

    .line 65
    iput p2, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mPadding:F

    .line 66
    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->refreshPixelMargins()V

    .line 67
    return-void
.end method

.method public setPositions(ZLorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;)V
    .locals 0
    .param p1, "pHorizontalOrVertical"    # Z
    .param p2, "pHorizontalPosition"    # Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;
    .param p3, "pVerticalPosition"    # Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;

    .line 55
    iput-boolean p1, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mHorizontalOrVertical:Z

    .line 56
    iput-object p2, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mHorizontalPosition:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    .line 57
    iput-object p3, p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->mVerticalPosition:Lorg/osmdroid/views/CustomZoomButtonsDisplay$VerticalPosition;

    .line 58
    return-void
.end method
