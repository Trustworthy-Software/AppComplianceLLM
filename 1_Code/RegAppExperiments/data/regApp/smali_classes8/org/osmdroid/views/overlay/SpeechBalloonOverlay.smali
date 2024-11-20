.class public Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SpeechBalloonOverlay.java"


# instance fields
.field private mBackground:Landroid/graphics/Paint;

.field private mDragBackground:Landroid/graphics/Paint;

.field private mDragDeltaX:F

.field private mDragDeltaY:F

.field private mDragForeground:Landroid/graphics/Paint;

.field private mDragStartX:F

.field private mDragStartY:F

.field private mDraggable:Z

.field private mForeground:Landroid/graphics/Paint;

.field private mGeoPoint:Lorg/osmdroid/util/GeoPoint;

.field private final mHelper:Lorg/osmdroid/util/SpeechBalloonHelper;

.field private final mIntersection1:Lorg/osmdroid/util/PointL;

.field private final mIntersection2:Lorg/osmdroid/util/PointL;

.field private mIsDragged:Z

.field private mMargin:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private final mPath:Landroid/graphics/Path;

.field private final mPixel:Landroid/graphics/Point;

.field private final mPoint:Lorg/osmdroid/util/PointL;

.field private mRadius:D

.field private final mRect:Lorg/osmdroid/util/RectL;

.field private final mTextRect:Landroid/graphics/Rect;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 25
    new-instance v0, Lorg/osmdroid/util/SpeechBalloonHelper;

    invoke-direct {v0}, Lorg/osmdroid/util/SpeechBalloonHelper;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mHelper:Lorg/osmdroid/util/SpeechBalloonHelper;

    .line 26
    new-instance v0, Lorg/osmdroid/util/RectL;

    invoke-direct {v0}, Lorg/osmdroid/util/RectL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRect:Lorg/osmdroid/util/RectL;

    .line 27
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    .line 28
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection1:Lorg/osmdroid/util/PointL;

    .line 29
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection2:Lorg/osmdroid/util/PointL;

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPixel:Landroid/graphics/Point;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDraggable:Z

    return-void
.end method

.method private hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 179
    iget-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRect:Lorg/osmdroid/util/RectL;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/RectL;->contains(JJ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 22
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 99
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIsDragged:Z

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragBackground:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mBackground:Landroid/graphics/Paint;

    .line 101
    .local v1, "background":Landroid/graphics/Paint;
    :goto_0
    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragForeground:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mForeground:Landroid/graphics/Paint;

    :goto_1
    move-object v8, v1

    move-object v9, v2

    .local v2, "foreground":Landroid/graphics/Paint;
    goto :goto_2

    .line 103
    .end local v1    # "background":Landroid/graphics/Paint;
    .end local v2    # "foreground":Landroid/graphics/Paint;
    :cond_2
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mBackground:Landroid/graphics/Paint;

    .line 104
    .restart local v1    # "background":Landroid/graphics/Paint;
    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mForeground:Landroid/graphics/Paint;

    move-object v8, v1

    move-object v9, v2

    .line 106
    .end local v1    # "background":Landroid/graphics/Paint;
    .local v8, "background":Landroid/graphics/Paint;
    .local v9, "foreground":Landroid/graphics/Paint;
    :goto_2
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    if-nez v1, :cond_3

    .line 107
    return-void

    .line 109
    :cond_3
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v10, p2

    goto/16 :goto_4

    .line 112
    :cond_4
    if-eqz v9, :cond_7

    if-nez v8, :cond_5

    move-object/from16 v10, p2

    goto/16 :goto_3

    .line 115
    :cond_5
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPixel:Landroid/graphics/Point;

    move-object/from16 v10, p2

    invoke-virtual {v10, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 116
    iget-object v11, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTitle:Ljava/lang/String;

    .line 117
    .local v11, "text":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v9, v11, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 118
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPixel:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-long v2, v2

    iget-object v4, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPixel:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/PointL;->set(JJ)V

    .line 119
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->x:J

    iget v4, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetX:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->y:J

    iget v5, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetY:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    long-to-float v3, v3

    iget v4, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaY:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 120
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 121
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 122
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 123
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 124
    iget-object v12, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRect:Lorg/osmdroid/util/RectL;

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-long v13, v1

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-long v1, v1

    iget-object v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-long v3, v3

    iget-object v5, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-long v5, v5

    move-wide v15, v1

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    invoke-virtual/range {v12 .. v20}, Lorg/osmdroid/util/RectL;->set(JJJJ)V

    .line 125
    iget-object v15, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mHelper:Lorg/osmdroid/util/SpeechBalloonHelper;

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRect:Lorg/osmdroid/util/RectL;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRadius:D

    iget-object v5, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection1:Lorg/osmdroid/util/PointL;

    iget-object v6, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection2:Lorg/osmdroid/util/PointL;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    invoke-virtual/range {v15 .. v21}, Lorg/osmdroid/util/SpeechBalloonHelper;->compute(Lorg/osmdroid/util/RectL;Lorg/osmdroid/util/PointL;DLorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;)I

    move-result v12

    .line 126
    .local v12, "corner":I
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 127
    const/4 v1, -0x1

    if-eq v12, v1, :cond_6

    .line 128
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 129
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->x:J

    long-to-float v2, v2

    iget-object v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->y:J

    long-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 130
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection1:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->x:J

    long-to-float v2, v2

    iget-object v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection1:Lorg/osmdroid/util/PointL;

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->y:J

    long-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection2:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->x:J

    long-to-float v2, v2

    iget-object v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection2:Lorg/osmdroid/util/PointL;

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->y:J

    long-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 133
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 135
    :cond_6
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v7, v11, v1, v2, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 136
    return-void

    .line 112
    .end local v11    # "text":Ljava/lang/String;
    .end local v12    # "corner":I
    :cond_7
    move-object/from16 v10, p2

    .line 113
    :goto_3
    return-void

    .line 109
    :cond_8
    move-object/from16 v10, p2

    .line 110
    :goto_4
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 140
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 141
    .local v0, "touched":Z
    if-eqz v0, :cond_0

    .line 142
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDraggable:Z

    if-eqz v1, :cond_0

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIsDragged:Z

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartX:F

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartY:F

    .line 147
    const/4 v1, 0x0

    iput v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    .line 148
    iput v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaY:F

    .line 149
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 152
    :cond_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 157
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDraggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIsDragged:Z

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartX:F

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartY:F

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaY:F

    .line 161
    iget v3, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetX:I

    int-to-float v3, v3

    iget v4, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetX:I

    .line 162
    iget v3, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetY:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetY:I

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    .line 164
    iput v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaY:F

    .line 165
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIsDragged:Z

    .line 166
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 167
    return v2

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaY:F

    .line 171
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 172
    return v2

    .line 175
    :cond_1
    return v1
.end method

.method public setBackground(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "pBackground"    # Landroid/graphics/Paint;

    .line 67
    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mBackground:Landroid/graphics/Paint;

    .line 68
    return-void
.end method

.method public setDragBackground(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "pDragBackground"    # Landroid/graphics/Paint;

    .line 75
    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragBackground:Landroid/graphics/Paint;

    .line 76
    return-void
.end method

.method public setDragForeground(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "pDragForeground"    # Landroid/graphics/Paint;

    .line 79
    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragForeground:Landroid/graphics/Paint;

    .line 80
    return-void
.end method

.method public setForeground(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "pForeground"    # Landroid/graphics/Paint;

    .line 71
    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mForeground:Landroid/graphics/Paint;

    .line 72
    return-void
.end method

.method public setGeoPoint(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0
    .param p1, "pGeoPoint"    # Lorg/osmdroid/util/GeoPoint;

    .line 63
    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    .line 64
    return-void
.end method

.method public setMargin(I)V
    .locals 0
    .param p1, "pMargin"    # I

    .line 83
    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    .line 84
    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .param p1, "pOffsetX"    # I
    .param p2, "pOffsetY"    # I

    .line 91
    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetX:I

    .line 92
    iput p2, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetY:I

    .line 93
    return-void
.end method

.method public setRadius(J)V
    .locals 2
    .param p1, "pRadius"    # J

    .line 87
    long-to-double v0, p1

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRadius:D

    .line 88
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "pTitle"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTitle:Ljava/lang/String;

    .line 60
    return-void
.end method
