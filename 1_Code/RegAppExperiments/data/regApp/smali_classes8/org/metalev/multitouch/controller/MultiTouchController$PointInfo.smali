.class public Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/metalev/multitouch/controller/MultiTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointInfo"
.end annotation


# instance fields
.field private action:I

.field private angle:F

.field private angleIsCalculated:Z

.field private diameter:F

.field private diameterIsCalculated:Z

.field private diameterSq:F

.field private diameterSqIsCalculated:Z

.field private dx:F

.field private dy:F

.field private eventTime:J

.field private isDown:Z

.field private isMultiTouch:Z

.field private numPoints:I

.field private pointerIds:[I

.field private pressureMid:F

.field private pressures:[F

.field private xMid:F

.field private xs:[F

.field private yMid:F

.field private ys:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    const/16 v0, 0x14

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xs:[F

    .line 497
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->ys:[F

    .line 498
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressures:[F

    .line 499
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pointerIds:[I

    return-void
.end method

.method static synthetic access$1000(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)J
    .locals 2
    .param p0, "x0"    # Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 493
    iget-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->eventTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;I[F[F[F[IIZJ)V
    .locals 0
    .param p0, "x0"    # Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # [F
    .param p3, "x3"    # [F
    .param p4, "x4"    # [F
    .param p5, "x5"    # [I
    .param p6, "x6"    # I
    .param p7, "x7"    # Z
    .param p8, "x8"    # J

    .line 493
    invoke-direct/range {p0 .. p9}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->set(I[F[F[F[IIZJ)V

    return-void
.end method

.method private julery_isqrt(I)I
    .locals 5
    .param p1, "val"    # I

    .line 602
    const/4 v0, 0x0

    .local v0, "g":I
    const v1, 0x8000

    .local v1, "b":I
    const/16 v2, 0xf

    .line 604
    .local v2, "bshft":I
    :goto_0
    shl-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v1

    add-int/lit8 v4, v2, -0x1

    .end local v2    # "bshft":I
    .local v4, "bshft":I
    shl-int v2, v3, v2

    move v3, v2

    .local v3, "temp":I
    if-lt p1, v2, :cond_0

    .line 605
    add-int/2addr v0, v1

    .line 606
    sub-int/2addr p1, v3

    .line 608
    :cond_0
    shr-int/lit8 v2, v1, 0x1

    move v1, v2

    if-gtz v2, :cond_1

    .line 609
    return v0

    .line 608
    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method private set(I[F[F[F[IIZJ)V
    .locals 5
    .param p1, "numPoints"    # I
    .param p2, "x"    # [F
    .param p3, "y"    # [F
    .param p4, "pressure"    # [F
    .param p5, "pointerIds"    # [I
    .param p6, "action"    # I
    .param p7, "isDown"    # Z
    .param p8, "eventTime"    # J

    .line 524
    iput-wide p8, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->eventTime:J

    .line 525
    iput p6, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->action:I

    .line 526
    iput p1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->numPoints:I

    .line 527
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 528
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xs:[F

    aget v2, p2, v0

    aput v2, v1, v0

    .line 529
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->ys:[F

    aget v2, p3, v0

    aput v2, v1, v0

    .line 530
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressures:[F

    aget v2, p4, v0

    aput v2, v1, v0

    .line 531
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pointerIds:[I

    aget v2, p5, v0

    aput v2, v1, v0

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    .end local v0    # "i":I
    :cond_0
    iput-boolean p7, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown:Z

    .line 534
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    .line 536
    if-eqz v0, :cond_2

    .line 537
    aget v0, p2, v2

    aget v3, p2, v1

    add-float/2addr v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xMid:F

    .line 538
    aget v0, p3, v2

    aget v4, p3, v1

    add-float/2addr v0, v4

    mul-float/2addr v0, v3

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->yMid:F

    .line 539
    aget v0, p4, v2

    aget v4, p4, v1

    add-float/2addr v0, v4

    mul-float/2addr v0, v3

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressureMid:F

    .line 540
    aget v0, p2, v1

    aget v3, p2, v2

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    .line 541
    aget v0, p3, v1

    aget v1, p3, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    goto :goto_2

    .line 545
    :cond_2
    aget v0, p2, v2

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xMid:F

    .line 546
    aget v0, p3, v2

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->yMid:F

    .line 547
    aget v0, p4, v2

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressureMid:F

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    .line 551
    :goto_2
    iput-boolean v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angleIsCalculated:Z

    iput-boolean v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    iput-boolean v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    .line 552
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 712
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->action:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .line 716
    iget-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->eventTime:J

    return-wide v0
.end method

.method public getMultiTouchAngle()F
    .locals 6

    .line 648
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angleIsCalculated:Z

    if-nez v0, :cond_1

    .line 649
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 650
    const/4 v0, 0x0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angle:F

    goto :goto_0

    .line 652
    :cond_0
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->ys:[F

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v0, v0, v3

    sub-float/2addr v2, v0

    float-to-double v4, v2

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xs:[F

    aget v2, v0, v1

    aget v0, v0, v3

    sub-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angle:F

    .line 653
    :goto_0
    iput-boolean v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angleIsCalculated:Z

    .line 655
    :cond_1
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angle:F

    return v0
.end method

.method public getMultiTouchDiameter()F
    .locals 3

    .line 623
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    if-nez v0, :cond_4

    .line 624
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 625
    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    goto :goto_1

    .line 630
    :cond_0
    invoke-virtual {p0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchDiameterSq()F

    move-result v0

    .line 631
    .local v0, "diamSq":F
    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->julery_isqrt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    :goto_0
    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    .line 633
    iget v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 634
    iput v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    .line 635
    :cond_2
    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    iget v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 636
    iput v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    .line 638
    .end local v0    # "diamSq":F
    :cond_3
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    .line 640
    :cond_4
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    return v0
.end method

.method public getMultiTouchDiameterSq()F
    .locals 2

    .line 614
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    if-nez v0, :cond_1

    .line 615
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    mul-float/2addr v0, v0

    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSq:F

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    .line 618
    :cond_1
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSq:F

    return v0
.end method

.method public getMultiTouchHeight()F
    .locals 1

    .line 597
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMultiTouchWidth()F
    .locals 1

    .line 592
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNumTouchPoints()I
    .locals 1

    .line 662
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->numPoints:I

    return v0
.end method

.method public getPointerIds()[I
    .locals 1

    .line 692
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pointerIds:[I

    return-object v0
.end method

.method public getPressure()F
    .locals 1

    .line 697
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressureMid:F

    return v0
.end method

.method public getPressures()[F
    .locals 1

    .line 702
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressures:[F

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 667
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xMid:F

    return v0
.end method

.method public getXs()[F
    .locals 1

    .line 672
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xs:[F

    return-object v0
.end method

.method public getY()F
    .locals 1

    .line 677
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->yMid:F

    return v0
.end method

.method public getYs()[F
    .locals 1

    .line 682
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->ys:[F

    return-object v0
.end method

.method public isDown()Z
    .locals 1

    .line 708
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown:Z

    return v0
.end method

.method public isMultiTouch()Z
    .locals 1

    .line 587
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    return v0
.end method

.method public set(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)V
    .locals 3
    .param p1, "other"    # Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 559
    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->numPoints:I

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->numPoints:I

    .line 560
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->numPoints:I

    if-ge v0, v1, :cond_0

    .line 561
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xs:[F

    iget-object v2, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xs:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 562
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->ys:[F

    iget-object v2, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->ys:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 563
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressures:[F

    iget-object v2, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressures:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 564
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pointerIds:[I

    iget-object v2, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pointerIds:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    .end local v0    # "i":I
    :cond_0
    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xMid:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xMid:F

    .line 567
    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->yMid:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->yMid:F

    .line 568
    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressureMid:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressureMid:F

    .line 569
    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    .line 570
    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    .line 571
    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    .line 572
    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSq:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSq:F

    .line 573
    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angle:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angle:F

    .line 574
    iget-boolean v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown:Z

    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown:Z

    .line 575
    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->action:I

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->action:I

    .line 576
    iget-boolean v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    .line 577
    iget-boolean v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    .line 578
    iget-boolean v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    .line 579
    iget-boolean v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angleIsCalculated:Z

    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angleIsCalculated:Z

    .line 580
    iget-wide v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->eventTime:J

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->eventTime:J

    .line 581
    return-void
.end method
