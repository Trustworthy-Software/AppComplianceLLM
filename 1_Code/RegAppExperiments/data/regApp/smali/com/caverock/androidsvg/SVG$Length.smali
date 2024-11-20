.class Lcom/caverock/androidsvg/SVG$Length;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Length"
.end annotation


# instance fields
.field unit:Lcom/caverock/androidsvg/SVG$Unit;

.field value:F


# direct methods
.method constructor <init>(F)V
    .locals 1
    .param p1, "value"    # F

    .line 1403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1393
    const/4 v0, 0x0

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 1394
    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    .line 1404
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 1405
    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    .line 1406
    return-void
.end method

.method constructor <init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    .locals 1
    .param p1, "value"    # F
    .param p2, "unit"    # Lcom/caverock/androidsvg/SVG$Unit;

    .line 1397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1393
    const/4 v0, 0x0

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 1394
    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    .line 1398
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 1399
    iput-object p2, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    .line 1400
    return-void
.end method


# virtual methods
.method floatValue()F
    .locals 1

    .line 1410
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v0
.end method

.method floatValue(F)F
    .locals 2
    .param p1, "dpi"    # F

    .line 1490
    sget-object v0, Lcom/caverock/androidsvg/SVG$1;->$SwitchMap$com$caverock$androidsvg$SVG$Unit:[I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1508
    :pswitch_0
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v0

    .line 1503
    :pswitch_1
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    return v0

    .line 1501
    :pswitch_2
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x42900000    # 72.0f

    div-float/2addr v0, v1

    return v0

    .line 1499
    :pswitch_3
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const v1, 0x41cb3333    # 25.4f

    div-float/2addr v0, v1

    return v0

    .line 1497
    :pswitch_4
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const v1, 0x40228f5c    # 2.54f

    div-float/2addr v0, v1

    return v0

    .line 1495
    :pswitch_5
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    return v0

    .line 1493
    :pswitch_6
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .locals 9
    .param p1, "renderer"    # Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1460
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_2

    .line 1462
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    .line 1463
    .local v0, "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    if-nez v0, :cond_0

    .line 1464
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v1

    .line 1465
    :cond_0
    iget v1, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 1466
    .local v1, "w":F
    iget v2, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 1467
    .local v2, "h":F
    cmpl-float v3, v1, v2

    const/high16 v4, 0x42c80000    # 100.0f

    if-nez v3, :cond_1

    .line 1468
    iget v3, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v3, v1

    div-float/2addr v3, v4

    return v3

    .line 1469
    :cond_1
    mul-float v3, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide v7, 0x3ff6a09e667f3bccL    # 1.414213562373095

    div-double/2addr v5, v7

    double-to-float v3, v5

    .line 1470
    .local v3, "n":F
    iget v5, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v5, v3

    div-float/2addr v5, v4

    return v5

    .line 1472
    .end local v0    # "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    .end local v1    # "w":F
    .end local v2    # "h":F
    .end local v3    # "n":F
    :cond_2
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    return v0
.end method

.method floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F
    .locals 2
    .param p1, "renderer"    # Lcom/caverock/androidsvg/SVGAndroidRenderer;
    .param p2, "max"    # F

    .line 1479
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_0

    .line 1481
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0

    .line 1483
    :cond_0
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    return v0
.end method

.method floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .locals 3
    .param p1, "renderer"    # Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1416
    sget-object v0, Lcom/caverock/androidsvg/SVG$1;->$SwitchMap$com$caverock$androidsvg$SVG$Unit:[I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1440
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v0

    .line 1435
    :pswitch_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    .line 1436
    .local v0, "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    if-nez v0, :cond_0

    .line 1437
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v1

    .line 1438
    :cond_0
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget v2, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    return v1

    .line 1433
    .end local v0    # "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    :pswitch_1
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    return v0

    .line 1431
    :pswitch_2
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42900000    # 72.0f

    div-float/2addr v0, v1

    return v0

    .line 1429
    :pswitch_3
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v1

    mul-float/2addr v0, v1

    const v1, 0x41cb3333    # 25.4f

    div-float/2addr v0, v1

    return v0

    .line 1427
    :pswitch_4
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v1

    mul-float/2addr v0, v1

    const v1, 0x40228f5c    # 2.54f

    div-float/2addr v0, v1

    return v0

    .line 1425
    :pswitch_5
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v1

    mul-float/2addr v0, v1

    return v0

    .line 1423
    :pswitch_6
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontXHeight()F

    move-result v1

    mul-float/2addr v0, v1

    return v0

    .line 1421
    :pswitch_7
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontSize()F

    move-result v1

    mul-float/2addr v0, v1

    return v0

    .line 1419
    :pswitch_8
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .locals 3
    .param p1, "renderer"    # Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1447
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_1

    .line 1448
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    .line 1449
    .local v0, "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    if-nez v0, :cond_0

    .line 1450
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v1

    .line 1451
    :cond_0
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget v2, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    return v1

    .line 1453
    .end local v0    # "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    return v0
.end method

.method isNegative()Z
    .locals 2

    .line 1519
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isZero()Z
    .locals 2

    .line 1514
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
