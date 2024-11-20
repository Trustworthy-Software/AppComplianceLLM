.class public Lorg/metalev/multitouch/controller/MultiTouchController;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;,
        Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;,
        Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static ACTION_POINTER_INDEX_SHIFT:I = 0x0

.field private static ACTION_POINTER_UP:I = 0x0

.field public static final DEBUG:Z = false

.field private static final EVENT_SETTLE_TIME_INTERVAL:J = 0x14L

.field private static final MAX_MULTITOUCH_DIM_JUMP_SIZE:F = 40.0f

.field private static final MAX_MULTITOUCH_POS_JUMP_SIZE:F = 30.0f

.field public static final MAX_TOUCH_POINTS:I = 0x14

.field private static final MIN_MULTITOUCH_SEPARATION:F = 30.0f

.field private static final MODE_DRAG:I = 0x1

.field private static final MODE_NOTHING:I = 0x0

.field private static final MODE_PINCH:I = 0x2

.field private static m_getHistoricalPressure:Ljava/lang/reflect/Method;

.field private static m_getHistoricalX:Ljava/lang/reflect/Method;

.field private static m_getHistoricalY:Ljava/lang/reflect/Method;

.field private static m_getPointerCount:Ljava/lang/reflect/Method;

.field private static m_getPointerId:Ljava/lang/reflect/Method;

.field private static m_getPressure:Ljava/lang/reflect/Method;

.field private static m_getX:Ljava/lang/reflect/Method;

.field private static m_getY:Ljava/lang/reflect/Method;

.field public static final multiTouchSupported:Z

.field private static final pointerIds:[I

.field private static final pressureVals:[F

.field private static final xVals:[F

.field private static final yVals:[F


# instance fields
.field private handleSingleTouchEvents:Z

.field private mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

.field private mCurrPtAng:F

.field private mCurrPtDiam:F

.field private mCurrPtHeight:F

.field private mCurrPtWidth:F

.field private mCurrPtX:F

.field private mCurrPtY:F

.field private mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

.field private mMode:I

.field private mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

.field private mSettleEndTime:J

.field private mSettleStartTime:J

.field objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas<",
            "TT;>;"
        }
    .end annotation
.end field

.field private selectedObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private startAngleMinusPinchAngle:F

.field private startPosX:F

.field private startPosY:F

.field private startScaleOverPinchDiam:F

.field private startScaleXOverPinchWidth:F

.field private startScaleYOverPinchHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 211
    const/4 v0, 0x6

    sput v0, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_UP:I

    .line 212
    const/16 v0, 0x8

    sput v0, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I

    .line 215
    const/4 v0, 0x0

    .line 218
    .local v0, "succeeded":Z
    :try_start_0
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getPointerCount"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPointerCount:Ljava/lang/reflect/Method;

    .line 219
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getPointerId"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPointerId:Ljava/lang/reflect/Method;

    .line 220
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getPressure"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPressure:Ljava/lang/reflect/Method;

    .line 221
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getHistoricalX"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalX:Ljava/lang/reflect/Method;

    .line 222
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getHistoricalY"

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalY:Ljava/lang/reflect/Method;

    .line 223
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getHistoricalPressure"

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalPressure:Ljava/lang/reflect/Method;

    .line 224
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getX"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getX:Ljava/lang/reflect/Method;

    .line 225
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getY"

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getY:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    const/4 v0, 0x1

    .line 229
    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MultiTouchController"

    const-string v3, "static initializer failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sput-boolean v0, Lorg/metalev/multitouch/controller/MultiTouchController;->multiTouchSupported:Z

    .line 231
    if-eqz v0, :cond_0

    .line 235
    :try_start_1
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "ACTION_POINTER_UP"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_UP:I

    .line 236
    const-class v1, Landroid/view/MotionEvent;

    const-string v3, "ACTION_POINTER_INDEX_SHIFT"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    goto :goto_1

    .line 237
    :catch_1
    move-exception v1

    .line 244
    .end local v0    # "succeeded":Z
    :cond_0
    :goto_1
    const/16 v0, 0x14

    new-array v1, v0, [F

    sput-object v1, Lorg/metalev/multitouch/controller/MultiTouchController;->xVals:[F

    .line 245
    new-array v1, v0, [F

    sput-object v1, Lorg/metalev/multitouch/controller/MultiTouchController;->yVals:[F

    .line 246
    new-array v1, v0, [F

    sput-object v1, Lorg/metalev/multitouch/controller/MultiTouchController;->pressureVals:[F

    .line 247
    new-array v0, v0, [I

    sput-object v0, Lorg/metalev/multitouch/controller/MultiTouchController;->pointerIds:[I

    return-void
.end method

.method public constructor <init>(Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas<",
            "TT;>;)V"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    .local p1, "objectCanvas":Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;, "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/metalev/multitouch/controller/MultiTouchController;-><init>(Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;Z)V

    .line 174
    return-void
.end method

.method public constructor <init>(Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;Z)V
    .locals 1
    .param p2, "handleSingleTouchEvents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    .local p1, "objectCanvas":Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;, "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    .line 141
    new-instance v0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-direct {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;-><init>()V

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    .line 178
    new-instance v0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-direct {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;-><init>()V

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 179
    new-instance v0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-direct {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;-><init>()V

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 180
    iput-boolean p2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->handleSingleTouchEvents:Z

    .line 181
    iput-object p1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    .line 182
    return-void
.end method

.method private anchorAtThisPositionAndScale()V
    .locals 3

    .line 332
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 333
    return-void

    .line 336
    :cond_0
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-interface {v1, v0, v2}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->getPositionAndScale(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)V

    .line 343
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$000(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v0

    :goto_1
    div-float/2addr v1, v0

    .line 344
    .local v1, "currScaleInv":F
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->extractCurrPtInfo()V

    .line 345
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtX:F

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v2}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$500(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startPosX:F

    .line 346
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtY:F

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v2}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$600(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startPosY:F

    .line 347
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v0

    iget v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtDiam:F

    div-float/2addr v0, v2

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleOverPinchDiam:F

    .line 348
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$700(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v0

    iget v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtWidth:F

    div-float/2addr v0, v2

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleXOverPinchWidth:F

    .line 349
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$800(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v0

    iget v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtHeight:F

    div-float/2addr v0, v2

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleYOverPinchHeight:F

    .line 350
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$900(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v0

    iget v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtAng:F

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startAngleMinusPinchAngle:F

    .line 351
    return-void
.end method

.method private decodeTouchEvent(I[F[F[F[IIZJ)V
    .locals 12
    .param p1, "pointerCount"    # I
    .param p2, "x"    # [F
    .param p3, "y"    # [F
    .param p4, "pressure"    # [F
    .param p5, "pointerIds"    # [I
    .param p6, "action"    # I
    .param p7, "down"    # Z
    .param p8, "eventTime"    # J

    .line 318
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    move-object v0, p0

    iget-object v11, v0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 319
    .local v11, "tmp":Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;
    iget-object v1, v0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    iput-object v1, v0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 320
    iput-object v11, v0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 322
    move-object v1, v11

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-static/range {v1 .. v10}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->access$300(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;I[F[F[F[IIZJ)V

    .line 323
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->multiTouchController()V

    .line 324
    return-void
.end method

.method private extractCurrPtInfo()V
    .locals 3

    .line 124
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getX()F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtX:F

    .line 125
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getY()F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtY:F

    .line 126
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$000(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchDiameter()F

    move-result v0

    :goto_0
    const v2, 0x41aa6666    # 21.3f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtDiam:F

    .line 127
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$100(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v0

    :goto_1
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtWidth:F

    .line 128
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$100(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v0

    :goto_2
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtHeight:F

    .line 129
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$200(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchAngle()F

    move-result v1

    :goto_3
    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtAng:F

    .line 130
    return-void
.end method

.method private multiTouchController()V
    .locals 6

    .line 391
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x14

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 445
    :pswitch_0
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 466
    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v2}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 467
    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v0

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/high16 v2, 0x42200000    # 40.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_3

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 468
    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v0

    iget-object v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v3}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    .line 474
    :cond_1
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->access$1000(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 476
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    goto/16 :goto_2

    .line 479
    :cond_2
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->performDragOrPinch()V

    goto/16 :goto_2

    .line 470
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 471
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    .line 472
    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    goto/16 :goto_2

    .line 448
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-nez v0, :cond_5

    .line 450
    iput v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    .line 451
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    iput-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-interface {v0, v2, v1}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->selectObject(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)V

    goto/16 :goto_2

    .line 455
    :cond_5
    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    .line 457
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 459
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    .line 460
    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    goto :goto_2

    .line 414
    :pswitch_1
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-nez v0, :cond_6

    .line 416
    iput v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    .line 417
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    iput-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-interface {v0, v2, v1}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->selectObject(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)V

    goto :goto_2

    .line 419
    :cond_6
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 421
    const/4 v0, 0x2

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    .line 423
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 425
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    .line 426
    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    goto :goto_2

    .line 430
    :cond_7
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    .line 433
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    goto :goto_2

    .line 436
    :cond_8
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->performDragOrPinch()V

    .line 439
    goto :goto_2

    .line 396
    :pswitch_2
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 398
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-interface {v0, v2}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->getDraggableObjectAtPoint(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    .line 399
    if-eqz v0, :cond_9

    .line 401
    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    .line 402
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-interface {v1, v0, v2}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->selectObject(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)V

    .line 403
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 405
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    .line 486
    :cond_9
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private performDragOrPinch()V
    .locals 14

    .line 356
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 357
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$000(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v1

    :goto_1
    move v0, v1

    .line 361
    .local v0, "currScale":F
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->extractCurrPtInfo()V

    .line 362
    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtX:F

    iget v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startPosX:F

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    .line 363
    .local v1, "newPosX":F
    iget v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtY:F

    iget v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startPosY:F

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    .line 364
    .local v2, "newPosY":F
    iget v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleOverPinchDiam:F

    iget v4, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtDiam:F

    mul-float v10, v3, v4

    .line 365
    .local v10, "newScale":F
    iget v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleXOverPinchWidth:F

    iget v4, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtWidth:F

    mul-float v11, v3, v4

    .line 366
    .local v11, "newScaleX":F
    iget v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleYOverPinchHeight:F

    iget v4, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtHeight:F

    mul-float v12, v3, v4

    .line 367
    .local v12, "newScaleY":F
    iget v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startAngleMinusPinchAngle:F

    iget v4, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtAng:F

    add-float v13, v3, v4

    .line 370
    .local v13, "newAngle":F
    iget-object v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    move v4, v1

    move v5, v2

    move v6, v10

    move v7, v11

    move v8, v12

    move v9, v13

    invoke-virtual/range {v3 .. v9}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->set(FFFFFF)V

    .line 372
    iget-object v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v4, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v5, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    iget-object v6, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-interface {v3, v4, v5, v6}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->setPositionAndScale(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)Z

    move-result v3

    .line 373
    .local v3, "success":Z
    nop

    .line 375
    return-void
.end method


# virtual methods
.method protected getHandleSingleTouchEvents()Z
    .locals 1

    .line 197
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->handleSingleTouchEvents:Z

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 489
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    return v0
.end method

.method public isPinching()Z
    .locals 2

    .line 379
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 253
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const/4 v13, 0x0

    :try_start_0
    sget-boolean v0, Lorg/metalev/multitouch/controller/MultiTouchController;->multiTouchSupported:Z

    const/4 v14, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPointerCount:Ljava/lang/reflect/Method;

    new-array v1, v13, [Ljava/lang/Object;

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v14

    .line 256
    .local v0, "pointerCount":I
    :goto_0
    iget v1, v11, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    if-nez v1, :cond_1

    iget-boolean v1, v11, Lorg/metalev/multitouch/controller/MultiTouchController;->handleSingleTouchEvents:Z

    if-nez v1, :cond_1

    if-ne v0, v14, :cond_1

    .line 258
    return v13

    .line 263
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    move v15, v1

    .line 264
    .local v15, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    div-int/2addr v1, v0

    move v9, v1

    .line 265
    .local v9, "histLen":I
    const/4 v1, 0x0

    move v10, v1

    .local v10, "histIdx":I
    :goto_1
    if-gt v10, v9, :cond_10

    .line 267
    if-ge v10, v9, :cond_2

    move v1, v14

    goto :goto_2

    :cond_2
    move v1, v13

    :goto_2
    move/from16 v16, v1

    .line 268
    .local v16, "processingHist":Z
    sget-boolean v1, Lorg/metalev/multitouch/controller/MultiTouchController;->multiTouchSupported:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_7

    if-ne v0, v14, :cond_3

    goto/16 :goto_7

    .line 281
    :cond_3
    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 284
    .local v1, "numPointers":I
    const/4 v3, 0x0

    .local v3, "ptrIdx":I
    :goto_3
    if-ge v3, v1, :cond_b

    .line 285
    sget-object v4, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPointerId:Ljava/lang/reflect/Method;

    new-array v5, v14, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-virtual {v4, v12, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 286
    .local v4, "ptrId":I
    sget-object v5, Lorg/metalev/multitouch/controller/MultiTouchController;->pointerIds:[I

    aput v4, v5, v3

    .line 290
    sget-object v5, Lorg/metalev/multitouch/controller/MultiTouchController;->xVals:[F

    if-eqz v16, :cond_4

    sget-object v6, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalX:Ljava/lang/reflect/Method;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v14

    invoke-virtual {v6, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_4

    :cond_4
    sget-object v6, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getX:Ljava/lang/reflect/Method;

    new-array v7, v14, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-virtual {v6, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_4
    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v5, v3

    .line 291
    sget-object v5, Lorg/metalev/multitouch/controller/MultiTouchController;->yVals:[F

    if-eqz v16, :cond_5

    sget-object v6, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalY:Ljava/lang/reflect/Method;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v14

    invoke-virtual {v6, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_5

    :cond_5
    sget-object v6, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getY:Ljava/lang/reflect/Method;

    new-array v7, v14, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-virtual {v6, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_5
    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v5, v3

    .line 292
    sget-object v5, Lorg/metalev/multitouch/controller/MultiTouchController;->pressureVals:[F

    if-eqz v16, :cond_6

    sget-object v6, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalPressure:Ljava/lang/reflect/Method;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v14

    invoke-virtual {v6, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_6

    .line 293
    :cond_6
    sget-object v6, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPressure:Ljava/lang/reflect/Method;

    new-array v7, v14, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-virtual {v6, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_6
    check-cast v6, Ljava/lang/Float;

    .line 292
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v5, v3

    .line 284
    .end local v4    # "ptrId":I
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 274
    .end local v1    # "numPointers":I
    .end local v3    # "ptrIdx":I
    :cond_7
    :goto_7
    sget-object v1, Lorg/metalev/multitouch/controller/MultiTouchController;->xVals:[F

    if-eqz v16, :cond_8

    invoke-virtual {v12, v10}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v3

    goto :goto_8

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    :goto_8
    aput v3, v1, v13

    .line 275
    sget-object v1, Lorg/metalev/multitouch/controller/MultiTouchController;->yVals:[F

    if-eqz v16, :cond_9

    invoke-virtual {v12, v10}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    goto :goto_9

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    :goto_9
    aput v3, v1, v13

    .line 276
    sget-object v1, Lorg/metalev/multitouch/controller/MultiTouchController;->pressureVals:[F

    if-eqz v16, :cond_a

    invoke-virtual {v12, v10}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v3

    goto :goto_a

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    :goto_a
    aput v3, v1, v13

    .line 297
    :cond_b
    sget-object v3, Lorg/metalev/multitouch/controller/MultiTouchController;->xVals:[F

    sget-object v4, Lorg/metalev/multitouch/controller/MultiTouchController;->yVals:[F

    sget-object v5, Lorg/metalev/multitouch/controller/MultiTouchController;->pressureVals:[F

    sget-object v6, Lorg/metalev/multitouch/controller/MultiTouchController;->pointerIds:[I

    .line 298
    if-eqz v16, :cond_c

    move v7, v2

    goto :goto_b

    :cond_c
    move v7, v15

    .line 299
    :goto_b
    if-eqz v16, :cond_d

    move v8, v14

    goto :goto_c

    .line 301
    :cond_d
    if-eq v15, v14, :cond_e

    sget v1, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I

    shl-int v1, v14, v1

    sub-int/2addr v1, v14

    and-int/2addr v1, v15

    sget v2, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_UP:I

    if-eq v1, v2, :cond_e

    const/4 v1, 0x3

    if-eq v15, v1, :cond_e

    move v8, v14

    goto :goto_c

    :cond_e
    move v8, v13

    .line 302
    :goto_c
    if-eqz v16, :cond_f

    invoke-virtual {v12, v10}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v1

    goto :goto_d

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    :goto_d
    move-wide/from16 v17, v1

    .line 297
    move-object/from16 v1, p0

    move v2, v0

    move/from16 v19, v9

    move/from16 v20, v10

    .end local v9    # "histLen":I
    .end local v10    # "histIdx":I
    .local v19, "histLen":I
    .local v20, "histIdx":I
    move-wide/from16 v9, v17

    invoke-direct/range {v1 .. v10}, Lorg/metalev/multitouch/controller/MultiTouchController;->decodeTouchEvent(I[F[F[F[IIZJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v16    # "processingHist":Z
    add-int/lit8 v10, v20, 0x1

    move/from16 v9, v19

    .end local v20    # "histIdx":I
    .restart local v10    # "histIdx":I
    goto/16 :goto_1

    .line 305
    .end local v10    # "histIdx":I
    .end local v19    # "histLen":I
    .restart local v9    # "histLen":I
    :cond_10
    return v14

    .line 306
    .end local v0    # "pointerCount":I
    .end local v9    # "histLen":I
    .end local v15    # "action":I
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiTouchController"

    const-string v2, "onTouchEvent() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    return v13
.end method

.method protected setHandleSingleTouchEvents(Z)V
    .locals 0
    .param p1, "handleSingleTouchEvents"    # Z

    .line 190
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    iput-boolean p1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->handleSingleTouchEvents:Z

    .line 191
    return-void
.end method
