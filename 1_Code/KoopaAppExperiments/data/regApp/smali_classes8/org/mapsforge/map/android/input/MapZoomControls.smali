.class public Lorg/mapsforge/map/android/input/MapZoomControls;
.super Landroid/widget/LinearLayout;
.source "MapZoomControls.java"

# interfaces
.implements Lorg/mapsforge/map/model/common/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;
    }
.end annotation


# static fields
.field private static final DEFAULT_HORIZONTAL_MARGIN:I = 0x5

.field private static final DEFAULT_VERTICAL_MARGIN:I = 0x0

.field private static final DEFAULT_ZOOM_CONTROLS_GRAVITY:I = 0x55

.field private static final DEFAULT_ZOOM_LEVEL_MAX:B = 0x16t

.field private static final DEFAULT_ZOOM_LEVEL_MIN:B = 0x0t

.field private static final DEFAULT_ZOOM_SPEED:J = 0x1f4L

.field private static final MSG_ZOOM_CONTROLS_HIDE:I

.field private static final ZOOM_CONTROLS_TIMEOUT:J


# instance fields
.field private autoHide:Z

.field private final buttonZoomIn:Landroid/widget/ZoomButton;

.field private final buttonZoomOut:Landroid/widget/ZoomButton;

.field private final mapView:Lorg/mapsforge/map/android/view/MapView;

.field private showMapZoomControls:Z

.field private zoomControlsGravity:I

.field private final zoomControlsHideHandler:Landroid/os/Handler;

.field private zoomLevelMax:B

.field private zoomLevelMin:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 111
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Lorg/mapsforge/map/android/input/MapZoomControls;->ZOOM_CONTROLS_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/mapsforge/map/android/view/MapView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapView"    # Lorg/mapsforge/map/android/view/MapView;

    .line 122
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 123
    iput-object p2, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->mapView:Lorg/mapsforge/map/android/view/MapView;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->autoHide:Z

    .line 125
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lorg/mapsforge/map/android/input/MapZoomControls;->setMarginHorizontal(I)V

    .line 126
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/mapsforge/map/android/input/MapZoomControls;->setMarginVertical(I)V

    .line 127
    iput-boolean v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->showMapZoomControls:Z

    .line 128
    const/16 v2, 0x16

    iput-byte v2, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomLevelMax:B

    .line 129
    iput-byte v1, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomLevelMin:B

    .line 130
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/mapsforge/map/android/input/MapZoomControls;->setVisibility(I)V

    .line 131
    const/16 v2, 0x55

    iput v2, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomControlsGravity:I

    .line 133
    new-instance v2, Lorg/mapsforge/map/android/input/MapZoomControls$1;

    invoke-direct {v2, p0}, Lorg/mapsforge/map/android/input/MapZoomControls$1;-><init>(Lorg/mapsforge/map/android/input/MapZoomControls;)V

    iput-object v2, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomControlsHideHandler:Landroid/os/Handler;

    .line 141
    new-instance v2, Landroid/widget/ZoomControls;

    invoke-direct {v2, p1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    .line 142
    .local v2, "defaultZoomControls":Landroid/widget/ZoomControls;
    invoke-virtual {v2, v0}, Landroid/widget/ZoomControls;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ZoomButton;

    iput-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->buttonZoomIn:Landroid/widget/ZoomButton;

    .line 143
    invoke-virtual {v2, v1}, Landroid/widget/ZoomControls;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ZoomButton;

    iput-object v3, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->buttonZoomOut:Landroid/widget/ZoomButton;

    .line 144
    invoke-virtual {v2}, Landroid/widget/ZoomControls;->removeAllViews()V

    .line 145
    invoke-virtual {v2}, Landroid/widget/ZoomControls;->getOrientation()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/mapsforge/map/android/input/MapZoomControls;->setOrientation(I)V

    .line 146
    invoke-virtual {p0, v1}, Lorg/mapsforge/map/android/input/MapZoomControls;->setZoomInFirst(Z)V

    .line 148
    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v4, v5}, Lorg/mapsforge/map/android/input/MapZoomControls;->setZoomSpeed(J)V

    .line 149
    new-instance v1, Lorg/mapsforge/map/android/input/MapZoomControls$2;

    invoke-direct {v1, p0, p2}, Lorg/mapsforge/map/android/input/MapZoomControls$2;-><init>(Lorg/mapsforge/map/android/input/MapZoomControls;Lorg/mapsforge/map/android/view/MapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance v0, Lorg/mapsforge/map/android/input/MapZoomControls$3;

    invoke-direct {v0, p0, p2}, Lorg/mapsforge/map/android/input/MapZoomControls$3;-><init>(Lorg/mapsforge/map/android/input/MapZoomControls;Lorg/mapsforge/map/android/view/MapView;)V

    invoke-virtual {v3, v0}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {p2}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0, p0}, Lorg/mapsforge/map/model/IMapViewPosition;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lorg/mapsforge/map/android/input/MapZoomControls;)Lorg/mapsforge/map/android/view/MapView;
    .locals 1
    .param p0, "x0"    # Lorg/mapsforge/map/android/input/MapZoomControls;

    .line 39
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->mapView:Lorg/mapsforge/map/android/view/MapView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/mapsforge/map/android/input/MapZoomControls;I)V
    .locals 0
    .param p0, "x0"    # Lorg/mapsforge/map/android/input/MapZoomControls;
    .param p1, "x1"    # I

    .line 39
    invoke-direct {p0, p1}, Lorg/mapsforge/map/android/input/MapZoomControls;->changeZoomControls(I)V

    return-void
.end method

.method private changeZoomControls(I)V
    .locals 4
    .param p1, "newZoomLevel"    # I

    .line 168
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->buttonZoomIn:Landroid/widget/ZoomButton;

    iget-byte v1, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomLevelMax:B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ZoomButton;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->buttonZoomOut:Landroid/widget/ZoomButton;

    iget-byte v1, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomLevelMin:B

    if-le p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ZoomButton;->setEnabled(Z)V

    .line 170
    return-void
.end method

.method private fade(IFF)V
    .locals 3
    .param p1, "visibility"    # I
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F

    .line 177
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 178
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 179
    invoke-virtual {p0, v0}, Lorg/mapsforge/map/android/input/MapZoomControls;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    invoke-virtual {p0, p1}, Lorg/mapsforge/map/android/input/MapZoomControls;->setVisibility(I)V

    .line 181
    return-void
.end method

.method private showZoomControls()V
    .locals 2

    .line 391
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomControlsHideHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    invoke-virtual {p0}, Lorg/mapsforge/map/android/input/MapZoomControls;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lorg/mapsforge/map/android/input/MapZoomControls;->show()V

    .line 395
    :cond_0
    return-void
.end method

.method private showZoomControlsWithTimeout()V
    .locals 4

    .line 398
    invoke-direct {p0}, Lorg/mapsforge/map/android/input/MapZoomControls;->showZoomControls()V

    .line 399
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomControlsHideHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    sget-wide v2, Lorg/mapsforge/map/android/input/MapZoomControls;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 400
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0, p0}, Lorg/mapsforge/map/model/IMapViewPosition;->removeObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 174
    return-void
.end method

.method public getZoomControlsGravity()I
    .locals 1

    .line 188
    iget v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomControlsGravity:I

    return v0
.end method

.method public getZoomLevelMax()B
    .locals 1

    .line 195
    iget-byte v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomLevelMax:B

    return v0
.end method

.method public getZoomLevelMin()B
    .locals 1

    .line 202
    iget-byte v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomLevelMin:B

    return v0
.end method

.method public hide()V
    .locals 3

    .line 206
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, v2, v0, v1}, Lorg/mapsforge/map/android/input/MapZoomControls;->fade(IFF)V

    .line 207
    return-void
.end method

.method public isAutoHide()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->autoHide:Z

    return v0
.end method

.method public isShowMapZoomControls()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->showMapZoomControls:Z

    return v0
.end method

.method public onChange()V
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->getModel()Lorg/mapsforge/map/model/Model;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0}, Lorg/mapsforge/map/model/IMapViewPosition;->getZoomLevel()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/android/input/MapZoomControls;->onZoomLevelChange(I)V

    .line 226
    return-void
.end method

.method public onMapViewTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    iget-boolean v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->showMapZoomControls:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->autoHide:Z

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 239
    :pswitch_1
    invoke-direct {p0}, Lorg/mapsforge/map/android/input/MapZoomControls;->showZoomControlsWithTimeout()V

    .line 240
    goto :goto_0

    .line 242
    :pswitch_2
    invoke-direct {p0}, Lorg/mapsforge/map/android/input/MapZoomControls;->showZoomControlsWithTimeout()V

    goto :goto_0

    .line 236
    :pswitch_3
    invoke-direct {p0}, Lorg/mapsforge/map/android/input/MapZoomControls;->showZoomControls()V

    .line 237
    nop

    .line 246
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onZoomLevelChange(I)V
    .locals 2
    .param p1, "newZoomLevel"    # I

    .line 251
    invoke-static {}, Lorg/mapsforge/map/android/util/AndroidUtil;->currentThreadIsUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0, p1}, Lorg/mapsforge/map/android/input/MapZoomControls;->changeZoomControls(I)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->mapView:Lorg/mapsforge/map/android/view/MapView;

    new-instance v1, Lorg/mapsforge/map/android/input/MapZoomControls$4;

    invoke-direct {v1, p0, p1}, Lorg/mapsforge/map/android/input/MapZoomControls$4;-><init>(Lorg/mapsforge/map/android/input/MapZoomControls;I)V

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/android/view/MapView;->post(Ljava/lang/Runnable;)Z

    .line 261
    :goto_0
    return-void
.end method

.method public setAutoHide(Z)V
    .locals 0
    .param p1, "autoHide"    # Z

    .line 267
    iput-boolean p1, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->autoHide:Z

    .line 268
    if-nez p1, :cond_0

    .line 269
    invoke-direct {p0}, Lorg/mapsforge/map/android/input/MapZoomControls;->showZoomControls()V

    .line 271
    :cond_0
    return-void
.end method

.method public setMarginHorizontal(I)V
    .locals 2
    .param p1, "marginHorizontal"    # I

    .line 274
    invoke-virtual {p0}, Lorg/mapsforge/map/android/input/MapZoomControls;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lorg/mapsforge/map/android/input/MapZoomControls;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p1, v1}, Lorg/mapsforge/map/android/input/MapZoomControls;->setPadding(IIII)V

    .line 275
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->requestLayout()V

    .line 276
    return-void
.end method

.method public setMarginVertical(I)V
    .locals 2
    .param p1, "marginVertical"    # I

    .line 279
    invoke-virtual {p0}, Lorg/mapsforge/map/android/input/MapZoomControls;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lorg/mapsforge/map/android/input/MapZoomControls;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p1}, Lorg/mapsforge/map/android/input/MapZoomControls;->setPadding(IIII)V

    .line 280
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->requestLayout()V

    .line 281
    return-void
.end method

.method public setShowMapZoomControls(Z)V
    .locals 0
    .param p1, "showMapZoomControls"    # Z

    .line 287
    iput-boolean p1, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->showMapZoomControls:Z

    .line 288
    return-void
.end method

.method public setZoomControlsGravity(I)V
    .locals 1
    .param p1, "zoomControlsGravity"    # I

    .line 296
    iput p1, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomControlsGravity:I

    .line 297
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->mapView:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->requestLayout()V

    .line 298
    return-void
.end method

.method public setZoomControlsOrientation(Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;)V
    .locals 1
    .param p1, "orientation"    # Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

    .line 306
    iget v0, p1, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;->layoutOrientation:I

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/android/input/MapZoomControls;->setOrientation(I)V

    .line 307
    iget-boolean v0, p1, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;->zoomInFirst:Z

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/android/input/MapZoomControls;->setZoomInFirst(Z)V

    .line 308
    return-void
.end method

.method public setZoomInFirst(Z)V
    .locals 2
    .param p1, "zoomInFirst"    # Z

    .line 318
    invoke-virtual {p0}, Lorg/mapsforge/map/android/input/MapZoomControls;->removeAllViews()V

    .line 319
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 320
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 321
    iget-object v1, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->buttonZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {p0, v1, v0}, Lorg/mapsforge/map/android/input/MapZoomControls;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget-object v1, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->buttonZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {p0, v1, v0}, Lorg/mapsforge/map/android/input/MapZoomControls;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 324
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->buttonZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {p0, v1, v0}, Lorg/mapsforge/map/android/input/MapZoomControls;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v1, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->buttonZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {p0, v1, v0}, Lorg/mapsforge/map/android/input/MapZoomControls;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    :goto_0
    return-void
.end method

.method public setZoomInResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 335
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->buttonZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setBackgroundResource(I)V

    .line 336
    return-void
.end method

.method public setZoomLevelMax(B)V
    .locals 1
    .param p1, "zoomLevelMax"    # B

    .line 348
    iget-byte v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomLevelMin:B

    if-lt p1, v0, :cond_0

    .line 351
    iput-byte p1, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomLevelMax:B

    .line 352
    return-void

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setZoomLevelMin(B)V
    .locals 1
    .param p1, "zoomLevelMin"    # B

    .line 361
    iget-byte v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomLevelMax:B

    if-gt p1, v0, :cond_0

    .line 364
    iput-byte p1, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->zoomLevelMin:B

    .line 365
    return-void

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setZoomOutResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 373
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->buttonZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setBackgroundResource(I)V

    .line 374
    return-void
.end method

.method public setZoomSpeed(J)V
    .locals 1
    .param p1, "ms"    # J

    .line 382
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->buttonZoomIn:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomButton;->setZoomSpeed(J)V

    .line 383
    iget-object v0, p0, Lorg/mapsforge/map/android/input/MapZoomControls;->buttonZoomOut:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomButton;->setZoomSpeed(J)V

    .line 384
    return-void
.end method

.method public show()V
    .locals 3

    .line 387
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/mapsforge/map/android/input/MapZoomControls;->fade(IFF)V

    .line 388
    return-void
.end method
