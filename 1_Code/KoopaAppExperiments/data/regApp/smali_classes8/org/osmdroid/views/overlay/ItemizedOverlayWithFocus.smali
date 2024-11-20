.class public Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;
.super Lorg/osmdroid/views/overlay/ItemizedIconOverlay;
.source "ItemizedOverlayWithFocus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">",
        "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<",
        "TItem;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final DEFAULTMARKER_BACKGROUNDCOLOR:I

.field private DESCRIPTION_BOX_CORNERWIDTH:I

.field private DESCRIPTION_BOX_PADDING:I

.field private DESCRIPTION_LINE_HEIGHT:I

.field private DESCRIPTION_MAXWIDTH:I

.field private DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

.field private FONT_SIZE_DP:I

.field private UNKNOWN:Ljava/lang/String;

.field private fontSizePixels:I

.field private mContext:Landroid/content/Context;

.field protected mDescriptionPaint:Landroid/graphics/Paint;

.field protected mFocusItemsOnTap:Z

.field protected mFocusedItemIndex:I

.field private final mFocusedScreenCoords:Landroid/graphics/Point;

.field protected mMarkerBackgroundPaint:Landroid/graphics/Paint;

.field protected mMarkerFocusedBackgroundColor:I

.field protected mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

.field private final mRect:Landroid/graphics/Rect;

.field protected mTitlePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;)V
    .locals 0
    .param p1, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<",
            "TItem;>;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    .local p2, "aList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p3, "aOnItemTapListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    invoke-direct {p0, p2, p3, p1}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V
    .locals 3
    .param p2, "pMarker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "pMarkerFocused"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pFocusedBackgroundColor"    # I
    .param p6, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<",
            "TItem;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    .local p1, "aList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p5, "aOnItemTapListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    invoke-direct {p0, p1, p2, p5, p6}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    .line 34
    const/16 v0, 0xb9

    const/16 v1, 0x4a

    const/16 v2, 0x65

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DEFAULTMARKER_BACKGROUNDCOLOR:I

    .line 41
    const/4 v1, 0x3

    iput v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    .line 42
    iput v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    .line 47
    const/4 v1, 0x2

    iput v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    .line 49
    const/16 v1, 0xe

    iput v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->FONT_SIZE_DP:I

    .line 50
    const/16 v1, 0x258

    iput v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    .line 51
    const/16 v1, 0x1e

    iput v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    .line 61
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    .line 247
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    .line 89
    iput-object p6, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    .line 90
    if-nez p3, :cond_0

    .line 91
    nop

    .line 92
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/osmdroid/library/R$drawable;->marker_default_focused_base:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .line 91
    invoke-virtual {p0, v1, v2}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 96
    :cond_0
    iput-object p3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

    .line 98
    :goto_0
    const/high16 v1, -0x80000000

    if-eq p4, v1, :cond_1

    move v0, p4

    goto :goto_1

    .line 99
    :cond_1
    nop

    :goto_1
    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBackgroundColor:I

    .line 101
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    .line 103
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->unSetFocusedItem()V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V
    .locals 9
    .param p3, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<",
            "TItem;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    .local p1, "aList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p2, "aOnItemTapListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    nop

    .line 79
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->marker_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    .line 78
    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method private calculateDrawSettings()V
    .locals 5

    .line 108
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->FONT_SIZE_DP:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 108
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->fontSizePixels:I

    .line 110
    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    .line 113
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    .line 114
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->UNKNOWN:Ljava/lang/String;

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    .line 119
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->fontSizePixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    .line 122
    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->fontSizePixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 123
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 124
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 31
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 252
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 254
    iget v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 255
    return-void

    .line 259
    :cond_0
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 260
    return-void

    .line 262
    :cond_1
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    iget v2, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/osmdroid/views/overlay/OverlayItem;

    .line 263
    .local v8, "focusedItem":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    const/4 v1, 0x4

    invoke-virtual {v8, v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 264
    .local v1, "markerFocusedBase":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2

    .line 265
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

    move-object v9, v1

    goto :goto_0

    .line 264
    :cond_2
    move-object v9, v1

    .line 269
    .end local v1    # "markerFocusedBase":Landroid/graphics/drawable/Drawable;
    .local v9, "markerFocusedBase":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v8}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    move-object/from16 v10, p2

    invoke-virtual {v10, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 271
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 272
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 275
    invoke-virtual {v8}, Lorg/osmdroid/views/overlay/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->UNKNOWN:Ljava/lang/String;

    goto :goto_1

    .line 276
    :cond_3
    invoke-virtual {v8}, Lorg/osmdroid/views/overlay/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v11, v1

    .line 277
    .local v11, "itemTitle":Ljava/lang/String;
    invoke-virtual {v8}, Lorg/osmdroid/views/overlay/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->UNKNOWN:Ljava/lang/String;

    goto :goto_2

    .line 278
    :cond_4
    invoke-virtual {v8}, Lorg/osmdroid/views/overlay/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v12, v1

    .line 284
    .local v12, "itemDescription":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    new-array v13, v1, [F

    .line 285
    .local v13, "widths":[F
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v1

    .line 288
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 289
    .local v1, "maxWidth":I
    const/4 v2, 0x0

    .line 290
    .local v2, "curLineWidth":I
    const/4 v3, 0x0

    .line 292
    .local v3, "lastStop":I
    const/4 v4, 0x0

    .line 297
    .local v4, "lastwhitespace":I
    const/4 v5, 0x0

    move v15, v2

    move v6, v3

    move/from16 v16, v4

    .end local v2    # "curLineWidth":I
    .end local v3    # "lastStop":I
    .end local v4    # "lastwhitespace":I
    .local v5, "i":I
    .local v6, "lastStop":I
    .local v15, "curLineWidth":I
    .local v16, "lastwhitespace":I
    :goto_3
    array-length v2, v13

    if-ge v5, v2, :cond_a

    .line 298
    invoke-virtual {v12, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_5

    .line 299
    move/from16 v16, v5

    move/from16 v2, v16

    goto :goto_4

    .line 298
    :cond_5
    move/from16 v2, v16

    .line 302
    .end local v16    # "lastwhitespace":I
    .local v2, "lastwhitespace":I
    :goto_4
    aget v4, v13, v5

    .line 304
    .local v4, "charwidth":F
    invoke-virtual {v12, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move-object/from16 v18, v8

    .end local v8    # "focusedItem":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    .local v18, "focusedItem":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    const/16 v8, 0xa

    if-ne v3, v8, :cond_6

    .line 305
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v12, v6, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 306
    add-int/lit8 v3, v5, 0x1

    .line 307
    .end local v6    # "lastStop":I
    .restart local v3    # "lastStop":I
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 308
    const/4 v6, 0x0

    .line 309
    .end local v15    # "curLineWidth":I
    .local v6, "curLineWidth":I
    move v2, v3

    .line 310
    move/from16 v16, v2

    move v15, v6

    move v6, v3

    goto :goto_6

    .line 311
    .end local v3    # "lastStop":I
    .local v6, "lastStop":I
    .restart local v15    # "curLineWidth":I
    :cond_6
    int-to-float v3, v15

    add-float/2addr v3, v4

    iget v8, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    int-to-float v8, v8

    cmpl-float v3, v3, v8

    if-lez v3, :cond_9

    .line 312
    if-ne v6, v2, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    .line 313
    .local v3, "noSpace":Z
    :goto_5
    if-nez v3, :cond_8

    .line 314
    move v5, v2

    .line 317
    :cond_8
    invoke-virtual {v12, v6, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 318
    const/16 v8, 0xa

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    move v6, v5

    .line 321
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 322
    const/4 v15, 0x0

    .line 323
    move v2, v6

    .line 324
    if-eqz v3, :cond_9

    .line 325
    add-int/lit8 v5, v5, -0x1

    .line 326
    move/from16 v16, v2

    goto :goto_6

    .line 330
    .end local v3    # "noSpace":Z
    :cond_9
    int-to-float v3, v15

    add-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v16, v2

    move v15, v3

    .line 297
    .end local v2    # "lastwhitespace":I
    .end local v4    # "charwidth":F
    .restart local v16    # "lastwhitespace":I
    :goto_6
    const/4 v2, 0x1

    add-int/2addr v5, v2

    move-object/from16 v8, v18

    goto :goto_3

    .line 333
    .end local v18    # "focusedItem":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    .restart local v8    # "focusedItem":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    :cond_a
    move-object/from16 v18, v8

    .end local v8    # "focusedItem":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    .restart local v18    # "focusedItem":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    if-eq v5, v6, :cond_b

    .line 334
    invoke-virtual {v12, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "rest":Ljava/lang/String;
    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 336
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .end local v2    # "rest":Ljava/lang/String;
    :cond_b
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 343
    .local v8, "lines":[Ljava/lang/String;
    iget-object v2, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v4, v2

    .line 345
    .local v4, "titleWidth":I
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 346
    .end local v1    # "maxWidth":I
    .local v3, "maxWidth":I
    iget v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 349
    .local v19, "descWidth":I
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v19, 0x2

    sub-int/2addr v1, v2

    iget v2, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    sub-int/2addr v1, v2

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    .line 350
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 351
    .local v2, "descBoxLeft":I
    add-int v1, v2, v19

    move/from16 v20, v3

    .end local v3    # "maxWidth":I
    .local v20, "maxWidth":I
    iget v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    .line 352
    .local v3, "descBoxRight":I
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 353
    .local v1, "descBoxBottom":I
    move/from16 v21, v4

    .end local v4    # "titleWidth":I
    .local v21, "titleWidth":I
    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    sub-int v4, v1, v4

    move/from16 v22, v5

    .end local v5    # "i":I
    .local v22, "i":I
    array-length v5, v8

    const/16 v17, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v23, v6

    .end local v6    # "lastStop":I
    .local v23, "lastStop":I
    iget v6, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v6, v4, v5

    .line 357
    .local v6, "descBoxTop":I
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v4

    const/16 v24, 0x0

    cmpl-float v4, v4, v24

    if-eqz v4, :cond_c

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 359
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v4

    neg-float v4, v4

    iget-object v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v10, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v7, v4, v5, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 363
    :cond_c
    iget-object v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    new-instance v4, Landroid/graphics/RectF;

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    add-int/lit8 v10, v6, -0x1

    int-to-float v10, v10

    move-object/from16 v25, v12

    .end local v12    # "itemDescription":Ljava/lang/String;
    .local v25, "itemDescription":Ljava/lang/String;
    add-int/lit8 v12, v3, 0x1

    int-to-float v12, v12

    move-object/from16 v26, v13

    .end local v13    # "widths":[F
    .local v26, "widths":[F
    add-int/lit8 v13, v1, 0x1

    int-to-float v13, v13

    invoke-direct {v4, v5, v10, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    int-to-float v10, v5

    int-to-float v5, v5

    iget-object v12, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v10, v5, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 367
    iget-object v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    iget v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v10, v6

    int-to-float v12, v3

    int-to-float v13, v1

    invoke-direct {v4, v5, v10, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    int-to-float v10, v5

    int-to-float v5, v5

    iget-object v12, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v10, v5, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 372
    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    add-int v10, v2, v4

    .line 373
    .local v10, "descLeft":I
    sub-int v4, v1, v4

    .line 376
    .local v4, "descTextLineBottom":I
    array-length v5, v8

    const/4 v12, 0x1

    sub-int/2addr v5, v12

    move v12, v4

    .end local v4    # "descTextLineBottom":I
    .local v5, "j":I
    .local v12, "descTextLineBottom":I
    :goto_7
    if-ltz v5, :cond_d

    .line 377
    aget-object v4, v8, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    int-to-float v13, v10

    move/from16 v17, v1

    .end local v1    # "descBoxBottom":I
    .local v17, "descBoxBottom":I
    int-to-float v1, v12

    move/from16 v27, v6

    .end local v6    # "descBoxTop":I
    .local v27, "descBoxTop":I
    iget-object v6, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v13, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 378
    iget v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    sub-int/2addr v12, v1

    .line 376
    add-int/lit8 v5, v5, -0x1

    move/from16 v1, v17

    move/from16 v6, v27

    goto :goto_7

    .end local v17    # "descBoxBottom":I
    .end local v27    # "descBoxTop":I
    .restart local v1    # "descBoxBottom":I
    .restart local v6    # "descBoxTop":I
    :cond_d
    move/from16 v17, v1

    move/from16 v27, v6

    .line 381
    .end local v1    # "descBoxBottom":I
    .end local v5    # "j":I
    .end local v6    # "descBoxTop":I
    .restart local v17    # "descBoxBottom":I
    .restart local v27    # "descBoxTop":I
    int-to-float v1, v10

    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    sub-int v4, v12, v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 383
    int-to-float v4, v2

    int-to-float v5, v12

    int-to-float v6, v3

    int-to-float v13, v12

    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move/from16 v29, v2

    .end local v2    # "descBoxLeft":I
    .local v29, "descBoxLeft":I
    move v2, v4

    move/from16 v30, v3

    .end local v3    # "descBoxRight":I
    .local v30, "descBoxRight":I
    move v3, v5

    move v4, v6

    move v5, v13

    move/from16 v13, v23

    move/from16 v23, v27

    .end local v27    # "descBoxTop":I
    .local v13, "lastStop":I
    .local v23, "descBoxTop":I
    move-object/from16 v6, v28

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 389
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 390
    invoke-virtual {v9, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 391
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 392
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v1

    cmpl-float v1, v1, v24

    if-eqz v1, :cond_e

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 397
    :cond_e
    return-void
.end method

.method public getFocusedItem()Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 208
    const/4 v0, 0x0

    return-object v0

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mItemList:Ljava/util/List;

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 401
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    .line 403
    return-void
.end method

.method protected onSingleTapUpHelper(ILorg/osmdroid/views/overlay/OverlayItem;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "index"    # I
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;",
            "Lorg/osmdroid/views/MapView;",
            ")Z"
        }
    .end annotation

    .line 240
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    .local p2, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusItemsOnTap:Z

    if-eqz v0, :cond_0

    .line 241
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    .line 242
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;->onItemSingleTapUp(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDescriptionBoxCornerWidth(I)V
    .locals 0
    .param p1, "value"    # I

    .line 147
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    .line 148
    return-void
.end method

.method public setDescriptionBoxPadding(I)V
    .locals 0
    .param p1, "value"    # I

    .line 138
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    .line 139
    return-void
.end method

.method public setDescriptionLineHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .line 202
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    .line 203
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    .line 204
    return-void
.end method

.method public setDescriptionMaxWidth(I)V
    .locals 0
    .param p1, "value"    # I

    .line 192
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    .line 193
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    .line 194
    return-void
.end method

.method public setDescriptionTitleExtraLineHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .line 156
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    .line 157
    return-void
.end method

.method public setFocusItemsOnTap(Z)V
    .locals 0
    .param p1, "doit"    # Z

    .line 231
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusItemsOnTap:Z

    .line 232
    return-void
.end method

.method public setFocusedItem(I)V
    .locals 0
    .param p1, "pIndex"    # I

    .line 214
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    .line 215
    return-void
.end method

.method public setFocusedItem(Lorg/osmdroid/views/overlay/OverlayItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .line 222
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    .local p1, "pItem":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 223
    .local v0, "indexFound":I
    if-ltz v0, :cond_0

    .line 227
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->setFocusedItem(I)V

    .line 228
    return-void

    .line 224
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public setFontSize(I)V
    .locals 0
    .param p1, "value"    # I

    .line 182
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->FONT_SIZE_DP:I

    .line 183
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    .line 184
    return-void
.end method

.method public setMarkerBackgroundColor(I)V
    .locals 0
    .param p1, "value"    # I

    .line 165
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBackgroundColor:I

    .line 166
    return-void
.end method

.method public setMarkerDescriptionForegroundColor(I)V
    .locals 1
    .param p1, "value"    # I

    .line 173
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    return-void
.end method

.method public setMarkerTitleForegroundColor(I)V
    .locals 1
    .param p1, "value"    # I

    .line 169
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    return-void
.end method

.method public unSetFocusedItem()V
    .locals 1

    .line 218
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    .line 219
    return-void
.end method
