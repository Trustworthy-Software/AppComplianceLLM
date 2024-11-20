.class public Lorg/osmdroid/views/CustomZoomButtonsController;
.super Ljava/lang/Object;
.source "CustomZoomButtonsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;,
        Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;
    }
.end annotation


# instance fields
.field private detached:Z

.field private mAlpha01:F

.field private mDisplay:Lorg/osmdroid/views/CustomZoomButtonsDisplay;

.field private final mFadeOutAnimation:Landroid/animation/ValueAnimator;

.field private mFadeOutAnimationDurationInMillis:I

.field private mJustActivated:Z

.field private mLatestActivation:J

.field private mListener:Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;

.field private final mMapView:Lorg/osmdroid/views/MapView;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mShowDelayInMillis:I

.field private mThread:Ljava/lang/Thread;

.field private final mThreadSync:Ljava/lang/Object;

.field private mVisibility:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

.field private mZoomInEnabled:Z

.field private mZoomOutEnabled:Z


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 3
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mThreadSync:Ljava/lang/Object;

    .line 26
    sget-object v0, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;->NEVER:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    iput-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mVisibility:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    .line 27
    const/16 v0, 0x1f4

    iput v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mFadeOutAnimationDurationInMillis:I

    .line 28
    const/16 v0, 0xdac

    iput v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mShowDelayInMillis:I

    .line 35
    iput-object p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mMapView:Lorg/osmdroid/views/MapView;

    .line 36
    new-instance v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;

    invoke-direct {v0, p1}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mDisplay:Lorg/osmdroid/views/CustomZoomButtonsDisplay;

    .line 37
    nop

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 39
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 40
    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mFadeOutAnimationDurationInMillis:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 41
    new-instance v1, Lorg/osmdroid/views/CustomZoomButtonsController$1;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/CustomZoomButtonsController$1;-><init>(Lorg/osmdroid/views/CustomZoomButtonsController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 57
    new-instance v0, Lorg/osmdroid/views/CustomZoomButtonsController$2;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/CustomZoomButtonsController$2;-><init>(Lorg/osmdroid/views/CustomZoomButtonsController;)V

    iput-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mRunnable:Ljava/lang/Runnable;

    .line 74
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/osmdroid/views/CustomZoomButtonsController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/CustomZoomButtonsController;

    .line 13
    iget-boolean v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->detached:Z

    return v0
.end method

.method static synthetic access$100(Lorg/osmdroid/views/CustomZoomButtonsController;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/CustomZoomButtonsController;

    .line 13
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mFadeOutAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$202(Lorg/osmdroid/views/CustomZoomButtonsController;F)F
    .locals 0
    .param p0, "x0"    # Lorg/osmdroid/views/CustomZoomButtonsController;
    .param p1, "x1"    # F

    .line 13
    iput p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mAlpha01:F

    return p1
.end method

.method static synthetic access$300(Lorg/osmdroid/views/CustomZoomButtonsController;)V
    .locals 0
    .param p0, "x0"    # Lorg/osmdroid/views/CustomZoomButtonsController;

    .line 13
    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->invalidate()V

    return-void
.end method

.method static synthetic access$400(Lorg/osmdroid/views/CustomZoomButtonsController;)J
    .locals 2
    .param p0, "x0"    # Lorg/osmdroid/views/CustomZoomButtonsController;

    .line 13
    iget-wide v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mLatestActivation:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/osmdroid/views/CustomZoomButtonsController;)I
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/CustomZoomButtonsController;

    .line 13
    iget v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mShowDelayInMillis:I

    return v0
.end method

.method static synthetic access$600(Lorg/osmdroid/views/CustomZoomButtonsController;)J
    .locals 2
    .param p0, "x0"    # Lorg/osmdroid/views/CustomZoomButtonsController;

    .line 13
    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->nowInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lorg/osmdroid/views/CustomZoomButtonsController;)V
    .locals 0
    .param p0, "x0"    # Lorg/osmdroid/views/CustomZoomButtonsController;

    .line 13
    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->startFadeOut()V

    return-void
.end method

.method private checkJustActivated()Z
    .locals 2

    .line 180
    iget-boolean v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mJustActivated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 181
    iput-boolean v1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mJustActivated:Z

    .line 182
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_0
    return v1
.end method

.method private invalidate()V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->detached:Z

    if-eqz v0, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 149
    return-void
.end method

.method private nowInMillis()J
    .locals 2

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private startFadeOut()V
    .locals 3

    .line 121
    iget-boolean v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->detached:Z

    if-eqz v0, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    nop

    .line 125
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mFadeOutAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 126
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mMapView:Lorg/osmdroid/views/MapView;

    new-instance v1, Lorg/osmdroid/views/CustomZoomButtonsController$3;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/CustomZoomButtonsController$3;-><init>(Lorg/osmdroid/views/CustomZoomButtonsController;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method private stopFadeOut()V
    .locals 1

    .line 139
    nop

    .line 140
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 142
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 5

    .line 152
    iget-boolean v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->detached:Z

    if-eqz v0, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mVisibility:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    sget-object v1, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;->SHOW_AND_FADEOUT:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    if-eq v0, v1, :cond_1

    .line 156
    return-void

    .line 158
    :cond_1
    iget v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mAlpha01:F

    .line 159
    .local v0, "alpha":F
    iget-boolean v1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mJustActivated:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 160
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mJustActivated:Z

    goto :goto_0

    .line 162
    :cond_3
    iput-boolean v2, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mJustActivated:Z

    .line 164
    :goto_0
    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->stopFadeOut()V

    .line 165
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mAlpha01:F

    .line 166
    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->nowInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mLatestActivation:J

    .line 167
    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->invalidate()V

    .line 168
    iget-object v1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_7

    .line 169
    :cond_4
    iget-object v1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mThreadSync:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mThread:Ljava/lang/Thread;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v2, v3, :cond_6

    .line 171
    :cond_5
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mThread:Ljava/lang/Thread;

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 175
    :cond_6
    monitor-exit v1

    .line 177
    :cond_7
    return-void

    .line 175
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;

    .line 226
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mDisplay:Lorg/osmdroid/views/CustomZoomButtonsDisplay;

    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mAlpha01:F

    iget-boolean v2, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mZoomInEnabled:Z

    iget-boolean v3, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mZoomOutEnabled:Z

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->draw(Landroid/graphics/Canvas;FZZ)V

    .line 227
    return-void
.end method

.method public getDisplay()Lorg/osmdroid/views/CustomZoomButtonsDisplay;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mDisplay:Lorg/osmdroid/views/CustomZoomButtonsDisplay;

    return-object v0
.end method

.method public isTouched(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "pMotionEvent"    # Landroid/view/MotionEvent;

    .line 188
    iget v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mAlpha01:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 189
    return v1

    .line 191
    :cond_0
    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->checkJustActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    return v1

    .line 194
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mDisplay:Lorg/osmdroid/views/CustomZoomButtonsDisplay;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->isTouched(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iget-boolean v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mZoomInEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mListener:Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;

    if-eqz v0, :cond_2

    .line 196
    invoke-interface {v0, v2}, Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;->onZoom(Z)V

    .line 198
    :cond_2
    return v2

    .line 200
    :cond_3
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mDisplay:Lorg/osmdroid/views/CustomZoomButtonsDisplay;

    invoke-virtual {v0, p1, v1}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->isTouched(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 201
    iget-boolean v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mZoomOutEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mListener:Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;

    if-eqz v0, :cond_4

    .line 202
    invoke-interface {v0, v1}, Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;->onZoom(Z)V

    .line 204
    :cond_4
    return v2

    .line 206
    :cond_5
    return v1
.end method

.method public onDetach()V
    .locals 1

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->detached:Z

    .line 113
    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->stopFadeOut()V

    .line 114
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "pMotionEvent"    # Landroid/view/MotionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/CustomZoomButtonsController;->isTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "pMotionEvent"    # Landroid/view/MotionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/CustomZoomButtonsController;->isTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnZoomListener(Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;)V
    .locals 0
    .param p1, "pListener"    # Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;

    .line 89
    iput-object p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mListener:Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;

    .line 90
    return-void
.end method

.method public setShowFadeOutDelays(II)V
    .locals 0
    .param p1, "pShowDelayInMillis"    # I
    .param p2, "pFadeOutAnimationDurationInMillis"    # I

    .line 107
    iput p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mShowDelayInMillis:I

    .line 108
    iput p2, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mFadeOutAnimationDurationInMillis:I

    .line 109
    return-void
.end method

.method public setVisibility(Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;)V
    .locals 2
    .param p1, "pVisibility"    # Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    .line 93
    iput-object p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mVisibility:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    .line 94
    sget-object v0, Lorg/osmdroid/views/CustomZoomButtonsController$4;->$SwitchMap$org$osmdroid$views$CustomZoomButtonsController$Visibility:[I

    iget-object v1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mVisibility:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    invoke-virtual {v1}, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mAlpha01:F

    goto :goto_0

    .line 96
    :pswitch_1
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mAlpha01:F

    .line 97
    nop

    .line 103
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setZoomInEnabled(Z)V
    .locals 0
    .param p1, "pEnabled"    # Z

    .line 77
    iput-boolean p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mZoomInEnabled:Z

    .line 78
    return-void
.end method

.method public setZoomOutEnabled(Z)V
    .locals 0
    .param p1, "pEnabled"    # Z

    .line 81
    iput-boolean p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mZoomOutEnabled:Z

    .line 82
    return-void
.end method
