.class public Lorg/osmdroid/views/overlay/CopyrightOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "CopyrightOverlay.java"


# instance fields
.field protected alignBottom:Z

.field protected alignRight:Z

.field final dm:Landroid/util/DisplayMetrics;

.field private mCopyrightNotice:Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;

.field xOffset:I

.field yOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->xOffset:I

    .line 54
    iput v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->yOffset:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignBottom:Z

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignRight:Z

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 68
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->dm:Landroid/util/DisplayMetrics;

    .line 71
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "map"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .line 108
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getCopyrightNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/CopyrightOverlay;->setCopyrightNotice(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/views/overlay/CopyrightOverlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 110
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 117
    iget-object v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->mCopyrightNotice:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 121
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 123
    .local v1, "height":I
    const/4 v2, 0x0

    .line 124
    .local v2, "x":F
    const/4 v3, 0x0

    .line 126
    .local v3, "y":F
    iget-boolean v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignRight:Z

    if-eqz v4, :cond_1

    .line 127
    iget v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->xOffset:I

    sub-int v4, v0, v4

    int-to-float v2, v4

    .line 128
    iget-object v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 130
    :cond_1
    iget v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->xOffset:I

    int-to-float v2, v4

    .line 131
    iget-object v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 134
    :goto_0
    iget-boolean v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignBottom:Z

    if-eqz v4, :cond_2

    .line 135
    iget v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->yOffset:I

    sub-int v4, v1, v4

    int-to-float v3, v4

    goto :goto_1

    .line 137
    :cond_2
    iget-object v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    iget v5, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->yOffset:I

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 140
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p2, p1, v4, v4}, Lorg/osmdroid/views/Projection;->save(Landroid/graphics/Canvas;ZZ)V

    .line 141
    iget-object v5, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->mCopyrightNotice:Ljava/lang/String;

    iget-object v6, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 142
    invoke-virtual {p2, p1, v4}, Lorg/osmdroid/views/Projection;->restore(Landroid/graphics/Canvas;Z)V

    .line 143
    return-void

    .line 118
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_3
    :goto_2
    return-void
.end method

.method public setAlignBottom(Z)V
    .locals 0
    .param p1, "alignBottom"    # Z

    .line 86
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignBottom:Z

    .line 87
    return-void
.end method

.method public setAlignRight(Z)V
    .locals 0
    .param p1, "alignRight"    # Z

    .line 92
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignRight:Z

    .line 93
    return-void
.end method

.method public setCopyrightNotice(Ljava/lang/String;)V
    .locals 0
    .param p1, "pCopyrightNotice"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->mCopyrightNotice:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 102
    iput p1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->xOffset:I

    .line 103
    iput p2, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->yOffset:I

    .line 104
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 81
    iget-object v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "fontSize"    # I

    .line 77
    iget-object v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 78
    return-void
.end method
