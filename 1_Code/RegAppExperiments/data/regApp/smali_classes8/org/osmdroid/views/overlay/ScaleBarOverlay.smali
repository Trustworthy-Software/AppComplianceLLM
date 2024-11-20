.class public Lorg/osmdroid/views/overlay/ScaleBarOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "ScaleBarOverlay.java"

# interfaces
.implements Lorg/osmdroid/util/constants/GeoConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;
    }
.end annotation


# static fields
.field private static final sTextBoundsRect:Landroid/graphics/Rect;


# instance fields
.field private adjustLength:Z

.field protected alignBottom:Z

.field protected alignRight:Z

.field private barPaint:Landroid/graphics/Paint;

.field protected final barPath:Landroid/graphics/Path;

.field private bgPaint:Landroid/graphics/Paint;

.field private centred:Z

.field private context:Landroid/content/Context;

.field private lastLatitude:D

.field private lastZoomLevel:D

.field latitudeBar:Z

.field protected final latitudeBarRect:Landroid/graphics/Rect;

.field longitudeBar:Z

.field protected final longitudeBarRect:Landroid/graphics/Rect;

.field private mMapHeight:I

.field private mMapView:Lorg/osmdroid/views/MapView;

.field private mMapWidth:I

.field private maxLength:F

.field minZoom:D

.field public screenHeight:I

.field public screenWidth:I

.field private textPaint:Landroid/graphics/Paint;

.field unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

.field xOffset:I

.field public xdpi:F

.field yOffset:I

.field public ydpi:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pMapWidth"    # I
    .param p3, "pMapHeight"    # I

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;-><init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;II)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 118
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;-><init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;II)V

    .line 119
    return-void
.end method

.method private constructor <init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;II)V
    .locals 9
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;
    .param p2, "pContext"    # Landroid/content/Context;
    .param p3, "pMapWidth"    # I
    .param p4, "pMapHeight"    # I

    .line 132
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 65
    const/16 v0, 0xa

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    .line 66
    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:D

    .line 69
    sget-object v2, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    iput-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    .line 72
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    .line 74
    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    .line 75
    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    .line 83
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    .line 84
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    .line 85
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    .line 87
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    .line 88
    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:D

    .line 99
    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    .line 100
    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    .line 133
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 134
    iput-object p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    .line 135
    iput p3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapWidth:I

    .line 136
    iput p4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapHeight:I

    .line 138
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 140
    .local v0, "dm":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    .line 141
    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 145
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v5

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    .line 148
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    .line 149
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 153
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41200000    # 10.0f

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 155
    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 156
    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    .line 158
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    .line 159
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    .line 162
    const/4 v2, 0x0

    .line 164
    .local v2, "manufacturer":Ljava/lang/String;
    :try_start_0
    const-class v3, Landroid/os/Build;

    const-string v4, "MANUFACTURER"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 165
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 167
    .end local v3    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 169
    :goto_0
    const-string v1, "motorola"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "DROIDX"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    .line 173
    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 174
    .local v1, "windowManager":Landroid/view/WindowManager;
    const-wide/high16 v3, 0x400e000000000000L    # 3.75

    const-wide v5, 0x4000cccccccccccdL    # 2.1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getOrientation()I

    move-result v7

    if-lez v7, :cond_0

    .line 175
    iget v7, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    int-to-double v7, v7

    div-double/2addr v7, v3

    double-to-float v3, v7

    iput v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 176
    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    goto :goto_1

    .line 178
    :cond_0
    iget v7, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    int-to-double v7, v7

    div-double/2addr v7, v5

    double-to-float v5, v7

    iput v5, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 179
    iget v5, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    int-to-double v5, v5

    div-double/2addr v5, v3

    double-to-float v3, v5

    iput v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    goto :goto_1

    .line 182
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Droid"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    const/high16 v1, 0x43840000    # 264.0f

    iput v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 185
    iput v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    goto :goto_2

    .line 182
    :cond_2
    :goto_1
    nop

    .line 189
    :goto_2
    const v1, 0x40228f5c    # 2.54f

    iput v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    .line 190
    return-void
.end method

.method private adjustScaleBarLength(D)D
    .locals 19
    .param p1, "length"    # D

    .line 611
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 612
    .local v1, "pow":J
    const/4 v3, 0x0

    .line 613
    .local v3, "feet":Z
    iget-object v4, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v5, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    const-wide v6, 0x409cf00000000000L    # 1852.0

    const-wide v8, 0x409925604189374cL    # 1609.344

    const-wide v10, 0x400a3f28fd4f4b98L    # 3.2808399

    if-ne v4, v5, :cond_1

    .line 614
    const-wide v4, 0x40741de69ad42c3dL    # 321.8688

    cmpl-double v4, p1, v4

    if-ltz v4, :cond_0

    .line 615
    div-double v4, p1, v8

    .end local p1    # "length":D
    .local v4, "length":D
    goto :goto_0

    .line 617
    .end local v4    # "length":D
    .restart local p1    # "length":D
    :cond_0
    mul-double v4, p1, v10

    .line 618
    .end local p1    # "length":D
    .restart local v4    # "length":D
    const/4 v3, 0x1

    goto :goto_0

    .line 620
    .end local v4    # "length":D
    .restart local p1    # "length":D
    :cond_1
    iget-object v4, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v5, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->nautical:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v4, v5, :cond_3

    .line 621
    const-wide v4, 0x4077266666666666L    # 370.4

    cmpl-double v4, p1, v4

    if-ltz v4, :cond_2

    .line 622
    div-double v4, p1, v6

    .end local p1    # "length":D
    .restart local v4    # "length":D
    goto :goto_0

    .line 624
    .end local v4    # "length":D
    .restart local p1    # "length":D
    :cond_2
    mul-double v4, p1, v10

    .line 625
    .end local p1    # "length":D
    .restart local v4    # "length":D
    const/4 v3, 0x1

    goto :goto_0

    .line 620
    .end local v4    # "length":D
    .restart local p1    # "length":D
    :cond_3
    move-wide/from16 v4, p1

    .line 629
    .end local p1    # "length":D
    .restart local v4    # "length":D
    :goto_0
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    cmpl-double v14, v4, v12

    const-wide/16 v15, 0x1

    if-ltz v14, :cond_4

    .line 630
    add-long/2addr v1, v15

    .line 631
    div-double/2addr v4, v12

    goto :goto_0

    .line 633
    :cond_4
    :goto_1
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v4, v17

    if-gez v14, :cond_5

    const-wide/16 v17, 0x0

    cmpl-double v14, v4, v17

    if-lez v14, :cond_5

    .line 634
    sub-long/2addr v1, v15

    .line 635
    mul-double/2addr v4, v12

    goto :goto_1

    .line 638
    :cond_5
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    cmpg-double v14, v4, v14

    if-gez v14, :cond_6

    .line 639
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    .line 640
    :cond_6
    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    cmpg-double v14, v4, v14

    if-gez v14, :cond_7

    .line 641
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    goto :goto_2

    .line 643
    :cond_7
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    .line 645
    :goto_2
    if-eqz v3, :cond_8

    .line 646
    div-double/2addr v4, v10

    goto :goto_3

    .line 647
    :cond_8
    iget-object v10, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v11, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v10, v11, :cond_9

    .line 648
    mul-double/2addr v4, v8

    goto :goto_3

    .line 649
    :cond_9
    iget-object v8, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v9, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->nautical:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v8, v9, :cond_a

    .line 650
    mul-double/2addr v4, v6

    .line 651
    :cond_a
    :goto_3
    long-to-double v6, v1

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 652
    return-wide v4
.end method

.method private drawLatitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "projection"    # Lorg/osmdroid/views/Projection;

    .line 440
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    float-to-double v2, v2

    const-wide v4, 0x400451eb851eb852L    # 2.54

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 443
    .local v2, "xdpcm":I
    iget v3, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 446
    .local v3, "xLen":I
    iget v4, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    iget v5, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v4

    .line 447
    .local v4, "p1":Lorg/osmdroid/api/IGeoPoint;
    iget v5, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v7, v3, 0x2

    add-int/2addr v5, v7

    iget v7, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    invoke-virtual {v1, v5, v7, v6}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v5

    .line 450
    .local v5, "p2":Lorg/osmdroid/api/IGeoPoint;
    move-object v6, v4

    check-cast v6, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v6, v5}, Lorg/osmdroid/util/GeoPoint;->distanceToAsDouble(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v6

    .line 452
    .local v6, "xMeters":D
    iget-boolean v8, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v8, :cond_0

    invoke-direct {v0, v6, v7}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v8

    goto :goto_0

    :cond_0
    move-wide v8, v6

    .line 454
    .local v8, "xMetersAdjusted":D
    :goto_0
    int-to-double v10, v3

    mul-double/2addr v10, v8

    div-double/2addr v10, v6

    double-to-int v10, v10

    .line 457
    .local v10, "xBarLengthPixels":I
    invoke-virtual {v0, v8, v9}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(D)Ljava/lang/String;

    move-result-object v11

    .line 458
    .local v11, "xMsg":Ljava/lang/String;
    iget-object v12, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    sget-object v14, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    invoke-virtual {v12, v11, v15, v13, v14}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 459
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-double v12, v12

    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    div-double/2addr v12, v15

    double-to-int v12, v12

    .line 461
    .local v12, "xTextSpacing":I
    div-int/lit8 v13, v10, 0x2

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v13, v15

    int-to-float v13, v13

    .line 462
    .local v13, "x":F
    iget-boolean v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v15, :cond_1

    iget v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    sub-int/2addr v15, v10

    int-to-float v15, v15

    add-float/2addr v13, v15

    .line 464
    :cond_1
    iget-boolean v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v15, :cond_2

    .line 465
    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    mul-int/lit8 v15, v12, 0x2

    sub-int/2addr v14, v15

    int-to-float v14, v14

    .local v14, "y":F
    goto :goto_1

    .line 466
    .end local v14    # "y":F
    :cond_2
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v14, v12

    int-to-float v14, v14

    .line 467
    .restart local v14    # "y":F
    :goto_1
    iget-object v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 468
    return-void
.end method

.method private drawLongitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "projection"    # Lorg/osmdroid/views/Projection;

    .line 472
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    float-to-double v3, v3

    const-wide v5, 0x400451eb851eb852L    # 2.54

    div-double/2addr v3, v5

    double-to-int v3, v3

    .line 475
    .local v3, "ydpcm":I
    iget v4, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v5, v3

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 478
    .local v4, "yLen":I
    iget v5, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v5, v5, 0x2

    iget v6, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    .line 479
    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v5

    .line 480
    .local v5, "p1":Lorg/osmdroid/api/IGeoPoint;
    iget v6, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v6, v6, 0x2

    iget v8, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    .line 481
    invoke-virtual {v2, v6, v8, v7}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v6

    .line 484
    .local v6, "p2":Lorg/osmdroid/api/IGeoPoint;
    move-object v7, v5

    check-cast v7, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v7, v6}, Lorg/osmdroid/util/GeoPoint;->distanceToAsDouble(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v7

    .line 486
    .local v7, "yMeters":D
    iget-boolean v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v9, :cond_0

    invoke-direct {v0, v7, v8}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v9

    goto :goto_0

    :cond_0
    move-wide v9, v7

    .line 488
    .local v9, "yMetersAdjusted":D
    :goto_0
    int-to-double v11, v4

    mul-double/2addr v11, v9

    div-double/2addr v11, v7

    double-to-int v11, v11

    .line 491
    .local v11, "yBarLengthPixels":I
    invoke-virtual {v0, v9, v10}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(D)Ljava/lang/String;

    move-result-object v12

    .line 492
    .local v12, "yMsg":Ljava/lang/String;
    iget-object v13, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    sget-object v15, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v13, v12, v2, v14, v15}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 493
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v13, v2

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    div-double v13, v13, v16

    double-to-int v2, v13

    .line 496
    .local v2, "yTextSpacing":I
    iget-boolean v13, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v13, :cond_1

    .line 497
    iget v13, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    mul-int/lit8 v14, v2, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    .local v13, "x":F
    goto :goto_1

    .line 498
    .end local v13    # "x":F
    :cond_1
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v13

    add-int/2addr v13, v2

    int-to-float v13, v13

    .line 499
    .restart local v13    # "x":F
    :goto_1
    div-int/lit8 v14, v11, 0x2

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    int-to-float v14, v14

    .line 500
    .local v14, "y":F
    iget-boolean v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v15, :cond_2

    iget v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    sub-int/2addr v15, v11

    int-to-float v15, v15

    add-float/2addr v14, v15

    .line 501
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 502
    const/high16 v15, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v15, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 503
    iget-object v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 504
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 505
    return-void
.end method

.method private getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pMeters"    # D
    .param p3, "pConversion"    # Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;
    .param p4, "pFormat"    # Ljava/lang/String;

    .line 703
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    .line 705
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 706
    invoke-virtual {p3}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->getConversionFactorToMeters()D

    move-result-wide v2

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 705
    invoke-static {v1, p4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-static {v0, v1, p3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getScaleString(Landroid/content/Context;Ljava/lang/String;Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMapHeight()I
    .locals 1

    .line 732
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapHeight:I

    :goto_0
    return v0
.end method

.method private getMapWidth()I
    .locals 1

    .line 725
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapWidth:I

    :goto_0
    return v0
.end method

.method public static getScaleString(Landroid/content/Context;Ljava/lang/String;Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;)Ljava/lang/String;
    .locals 2
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pValue"    # Ljava/lang/String;
    .param p2, "pUnitOfMeasure"    # Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    .line 716
    sget v0, Lorg/osmdroid/library/R$string;->format_distance_value_unit:I

    .line 718
    invoke-virtual {p2}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->getStringResId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 716
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableScaleBar()V
    .locals 1

    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setEnabled(Z)V

    .line 432
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 20
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "projection"    # Lorg/osmdroid/views/Projection;

    .line 378
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v9

    .line 380
    .local v9, "zoomLevel":D
    iget-wide v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:D

    cmpg-double v1, v9, v1

    if-gez v1, :cond_0

    .line 381
    return-void

    .line 383
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getIntrinsicScreenRect()Landroid/graphics/Rect;

    move-result-object v11

    .line 384
    .local v11, "rect":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 385
    .local v12, "_screenWidth":I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 386
    .local v13, "_screenHeight":I
    iget v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    const/4 v2, 0x0

    const/4 v14, 0x1

    if-ne v13, v1, :cond_2

    iget v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    if-eq v12, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v14

    :goto_1
    move v15, v1

    .line 387
    .local v15, "screenSizeChanged":Z
    iput v13, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    .line 388
    iput v12, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    .line 389
    div-int/lit8 v1, v12, 0x2

    div-int/lit8 v3, v13, 0x2

    const/4 v4, 0x0

    invoke-virtual {v8, v1, v3, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v16

    .line 390
    .local v16, "center":Lorg/osmdroid/api/IGeoPoint;
    iget-wide v3, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    cmpl-double v1, v9, v3

    if-nez v1, :cond_3

    invoke-interface/range {v16 .. v16}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v3

    iget-wide v5, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_3

    if-eqz v15, :cond_4

    .line 391
    :cond_3
    iput-wide v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    .line 392
    invoke-interface/range {v16 .. v16}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v3

    iput-wide v3, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:D

    .line 393
    invoke-virtual {v0, v8}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->rebuildBarPath(Lorg/osmdroid/views/Projection;)V

    .line 396
    :cond_4
    iget v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    .line 397
    .local v1, "offsetX":I
    iget v3, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    .line 398
    .local v3, "offsetY":I
    iget-boolean v4, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v4, :cond_5

    mul-int/lit8 v3, v3, -0x1

    .line 399
    :cond_5
    iget-boolean v4, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v4, :cond_6

    mul-int/lit8 v1, v1, -0x1

    .line 400
    :cond_6
    iget-boolean v4, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v4, :cond_7

    .line 401
    iget-object v4, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    move v6, v1

    goto :goto_2

    .line 402
    :cond_7
    move v6, v1

    .end local v1    # "offsetX":I
    .local v6, "offsetX":I
    :goto_2
    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v1, :cond_8

    .line 403
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    move v5, v3

    goto :goto_3

    .line 405
    :cond_8
    move v5, v3

    .end local v3    # "offsetY":I
    .local v5, "offsetY":I
    :goto_3
    invoke-virtual {v8, v7, v2, v14}, Lorg/osmdroid/views/Projection;->save(Landroid/graphics/Canvas;ZZ)V

    .line 406
    int-to-float v1, v6

    int-to-float v3, v5

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 408
    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_9

    .line 409
    iget-object v3, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 410
    :cond_9
    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_b

    .line 412
    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    :cond_a
    move/from16 v17, v2

    .line 413
    .local v17, "offsetTop":I
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget-object v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int v1, v1, v17

    int-to-float v3, v1

    iget-object v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget-object v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    move/from16 v18, v1

    move-object/from16 v1, p1

    move/from16 v19, v5

    .end local v5    # "offsetY":I
    .local v19, "offsetY":I
    move/from16 v5, v18

    move/from16 v18, v6

    .end local v6    # "offsetX":I
    .local v18, "offsetX":I
    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 410
    .end local v17    # "offsetTop":I
    .end local v18    # "offsetX":I
    .end local v19    # "offsetY":I
    .restart local v5    # "offsetY":I
    .restart local v6    # "offsetX":I
    :cond_b
    move/from16 v19, v5

    move/from16 v18, v6

    .line 416
    .end local v5    # "offsetY":I
    .end local v6    # "offsetX":I
    .restart local v18    # "offsetX":I
    .restart local v19    # "offsetY":I
    :goto_4
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 417
    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v1, :cond_c

    .line 418
    invoke-direct/range {p0 .. p2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->drawLatitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 420
    :cond_c
    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v1, :cond_d

    .line 421
    invoke-direct/range {p0 .. p2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->drawLongitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 423
    :cond_d
    const/4 v1, 0x1

    invoke-virtual {v8, v7, v1}, Lorg/osmdroid/views/Projection;->restore(Landroid/graphics/Canvas;Z)V

    .line 424
    return-void
.end method

.method public drawLatitudeScale(Z)V
    .locals 2
    .param p1, "latitude"    # Z

    .line 256
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    .line 257
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    .line 258
    return-void
.end method

.method public drawLongitudeScale(Z)V
    .locals 2
    .param p1, "longitude"    # Z

    .line 266
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    .line 267
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    .line 268
    return-void
.end method

.method public enableScaleBar()V
    .locals 1

    .line 435
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setEnabled(Z)V

    .line 436
    return-void
.end method

.method public getBarPaint()Landroid/graphics/Paint;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getUnitsOfMeasure()Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 690
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    .line 691
    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 692
    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    .line 693
    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    .line 694
    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    .line 695
    return-void
.end method

.method protected rebuildBarPath(Lorg/osmdroid/views/Projection;)V
    .locals 36
    .param p1, "projection"    # Lorg/osmdroid/views/Projection;

    .line 512
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    float-to-double v2, v2

    const-wide v4, 0x400451eb851eb852L    # 2.54

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 513
    .local v2, "xdpcm":I
    iget v3, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    float-to-double v6, v3

    div-double/2addr v6, v4

    double-to-int v3, v6

    .line 516
    .local v3, "ydpcm":I
    iget v4, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v5, v2

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 517
    .local v5, "xLen":I
    int-to-float v6, v3

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 520
    .local v4, "yLen":I
    iget v6, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    iget v7, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v6

    .line 521
    .local v6, "p1":Lorg/osmdroid/api/IGeoPoint;
    iget v7, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v9, v5, 0x2

    add-int/2addr v7, v9

    iget v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    invoke-virtual {v1, v7, v9, v8}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v7

    .line 524
    .local v7, "p2":Lorg/osmdroid/api/IGeoPoint;
    move-object v9, v6

    check-cast v9, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v9, v7}, Lorg/osmdroid/util/GeoPoint;->distanceToAsDouble(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v9

    .line 526
    .local v9, "xMeters":D
    iget-boolean v11, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v11, :cond_0

    invoke-direct {v0, v9, v10}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v11

    goto :goto_0

    :cond_0
    move-wide v11, v9

    .line 528
    .local v11, "xMetersAdjusted":D
    :goto_0
    int-to-double v13, v5

    mul-double/2addr v13, v11

    div-double/2addr v13, v9

    double-to-int v13, v13

    .line 531
    .local v13, "xBarLengthPixels":I
    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v14, v14, 0x2

    iget v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v15, v15, 0x2

    div-int/lit8 v16, v4, 0x2

    sub-int v15, v15, v16

    invoke-virtual {v1, v14, v15, v8}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v6

    .line 532
    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v14, v14, 0x2

    iget v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v15, v15, 0x2

    div-int/lit8 v16, v4, 0x2

    add-int v15, v15, v16

    invoke-virtual {v1, v14, v15, v8}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v7

    .line 535
    move-object v8, v6

    check-cast v8, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v8, v7}, Lorg/osmdroid/util/GeoPoint;->distanceToAsDouble(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v14

    .line 537
    .local v14, "yMeters":D
    iget-boolean v8, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v8, :cond_1

    invoke-direct {v0, v14, v15}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v16

    goto :goto_1

    :cond_1
    move-wide/from16 v16, v14

    :goto_1
    move-wide/from16 v18, v16

    .line 539
    .local v18, "yMetersAdjusted":D
    move v8, v2

    .end local v2    # "xdpcm":I
    .local v8, "xdpcm":I
    int-to-double v1, v4

    move/from16 v16, v3

    move/from16 v17, v4

    move-wide/from16 v3, v18

    .end local v4    # "yLen":I
    .end local v18    # "yMetersAdjusted":D
    .local v3, "yMetersAdjusted":D
    .local v16, "ydpcm":I
    .local v17, "yLen":I
    mul-double/2addr v1, v3

    div-double/2addr v1, v14

    double-to-int v1, v1

    .line 542
    .local v1, "yBarLengthPixels":I
    invoke-virtual {v0, v11, v12}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(D)Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "xMsg":Ljava/lang/String;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v19, v18

    .line 544
    .local v19, "xTextRect":Landroid/graphics/Rect;
    move/from16 v18, v5

    .end local v5    # "xLen":I
    .local v18, "xLen":I
    iget-object v5, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v6

    .end local v6    # "p1":Lorg/osmdroid/api/IGeoPoint;
    .local v20, "p1":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v21, v7

    .end local v7    # "p2":Lorg/osmdroid/api/IGeoPoint;
    .local v21, "p2":Lorg/osmdroid/api/IGeoPoint;
    const/4 v7, 0x0

    move/from16 v22, v8

    move-object/from16 v8, v19

    .end local v19    # "xTextRect":Landroid/graphics/Rect;
    .local v8, "xTextRect":Landroid/graphics/Rect;
    .local v22, "xdpcm":I
    invoke-virtual {v5, v2, v7, v6, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 545
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v23, 0x4014000000000000L    # 5.0

    div-double v5, v5, v23

    double-to-int v5, v5

    .line 548
    .local v5, "xTextSpacing":I
    invoke-virtual {v0, v3, v4}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(D)Ljava/lang/String;

    move-result-object v6

    .line 549
    .local v6, "yMsg":Ljava/lang/String;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v25, v19

    .line 550
    .local v25, "yTextRect":Landroid/graphics/Rect;
    move-object/from16 v19, v2

    .end local v2    # "xMsg":Ljava/lang/String;
    .local v19, "xMsg":Ljava/lang/String;
    iget-object v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    move-wide/from16 v26, v3

    .end local v3    # "yMetersAdjusted":D
    .local v26, "yMetersAdjusted":D
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v4, v25

    .end local v25    # "yTextRect":Landroid/graphics/Rect;
    .local v4, "yTextRect":Landroid/graphics/Rect;
    invoke-virtual {v2, v6, v7, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 551
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v2, v23

    double-to-int v2, v2

    .line 552
    .local v2, "yTextSpacing":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 553
    .local v3, "xTextHeight":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 555
    .local v7, "yTextHeight":I
    move-object/from16 v23, v4

    .end local v4    # "yTextRect":Landroid/graphics/Rect;
    .local v23, "yTextRect":Landroid/graphics/Rect;
    iget-object v4, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 558
    const/4 v4, 0x0

    .line 559
    .local v4, "barOriginX":I
    const/16 v24, 0x0

    .line 560
    .local v24, "barOriginY":I
    move/from16 v25, v13

    .line 561
    .local v25, "barToX":I
    move/from16 v28, v1

    .line 562
    .local v28, "barToY":I
    move/from16 v29, v4

    .end local v4    # "barOriginX":I
    .local v29, "barOriginX":I
    iget-boolean v4, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v4, :cond_2

    .line 563
    mul-int/lit8 v5, v5, -0x1

    .line 564
    mul-int/lit8 v3, v3, -0x1

    .line 565
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getMapHeight()I

    move-result v24

    .line 566
    sub-int v28, v24, v1

    move/from16 v4, v24

    move/from16 v24, v1

    move/from16 v1, v28

    goto :goto_2

    .line 562
    :cond_2
    move/from16 v4, v24

    move/from16 v24, v1

    move/from16 v1, v28

    .line 569
    .end local v28    # "barToY":I
    .local v1, "barToY":I
    .local v4, "barOriginY":I
    .local v24, "yBarLengthPixels":I
    :goto_2
    move-object/from16 v28, v6

    .end local v6    # "yMsg":Ljava/lang/String;
    .local v28, "yMsg":Ljava/lang/String;
    iget-boolean v6, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v6, :cond_3

    .line 570
    mul-int/lit8 v2, v2, -0x1

    .line 571
    mul-int/lit8 v7, v7, -0x1

    .line 572
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getMapWidth()I

    move-result v6

    .line 573
    .end local v29    # "barOriginX":I
    .local v6, "barOriginX":I
    sub-int v25, v6, v13

    move/from16 v35, v25

    move-object/from16 v25, v8

    move/from16 v8, v35

    goto :goto_3

    .line 569
    .end local v6    # "barOriginX":I
    .restart local v29    # "barOriginX":I
    :cond_3
    move/from16 v6, v29

    move/from16 v35, v25

    move-object/from16 v25, v8

    move/from16 v8, v35

    .line 576
    .end local v29    # "barOriginX":I
    .restart local v6    # "barOriginX":I
    .local v8, "barToX":I
    .local v25, "xTextRect":Landroid/graphics/Rect;
    :goto_3
    move-wide/from16 v29, v9

    .end local v9    # "xMeters":D
    .local v29, "xMeters":D
    iget-boolean v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v9, :cond_5

    .line 578
    iget-object v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v10, v8

    add-int v31, v4, v3

    mul-int/lit8 v32, v5, 0x2

    move-wide/from16 v33, v11

    .end local v11    # "xMetersAdjusted":D
    .local v33, "xMetersAdjusted":D
    add-int v11, v31, v32

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 579
    iget-object v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v10, v8

    int-to-float v11, v4

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 580
    iget-object v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v10, v6

    int-to-float v11, v4

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 582
    iget-boolean v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-nez v9, :cond_4

    .line 583
    iget-object v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v10, v6

    add-int v11, v4, v3

    mul-int/lit8 v12, v5, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 585
    :cond_4
    iget-object v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    add-int v10, v4, v3

    mul-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    invoke-virtual {v9, v6, v4, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    .line 576
    .end local v33    # "xMetersAdjusted":D
    .restart local v11    # "xMetersAdjusted":D
    :cond_5
    move-wide/from16 v33, v11

    .line 588
    .end local v11    # "xMetersAdjusted":D
    .restart local v33    # "xMetersAdjusted":D
    :goto_4
    iget-boolean v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v9, :cond_7

    .line 590
    iget-boolean v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-nez v9, :cond_6

    .line 591
    iget-object v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    add-int v10, v6, v7

    mul-int/lit8 v11, v2, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    int-to-float v11, v4

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 592
    iget-object v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v10, v6

    int-to-float v11, v4

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 595
    :cond_6
    iget-object v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v10, v6

    int-to-float v11, v1

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 596
    iget-object v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    add-int v10, v6, v7

    mul-int/lit8 v11, v2, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    int-to-float v11, v1

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 598
    iget-object v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    add-int v10, v6, v7

    mul-int/lit8 v11, v2, 0x2

    add-int/2addr v10, v11

    invoke-virtual {v9, v6, v4, v10, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 600
    :cond_7
    return-void
.end method

.method protected scaleBarLengthText(D)Ljava/lang/String;
    .locals 5
    .param p1, "meters"    # D

    .line 656
    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "%.1f"

    const-string v2, "%.0f"

    packed-switch v0, :pswitch_data_0

    .line 659
    const-wide v3, 0x40b3880000000000L    # 5000.0

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_4

    .line 660
    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->kilometer:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 678
    :pswitch_0
    const-wide v3, 0x40c2160000000000L    # 9260.0

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_0

    .line 679
    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->nauticalMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 680
    :cond_0
    const-wide v3, 0x4077266666666666L    # 370.4

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_1

    .line 681
    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->nauticalMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 683
    :cond_1
    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->foot:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 669
    :pswitch_1
    const-wide v3, 0x40bf6eb851eb851fL    # 8046.72

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_2

    .line 670
    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->statuteMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 672
    :cond_2
    const-wide v3, 0x40741de69ad42c3dL    # 321.8688

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_3

    .line 673
    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->statuteMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 675
    :cond_3
    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->foot:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 661
    :cond_4
    const-wide/high16 v3, 0x4069000000000000L    # 200.0

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_5

    .line 662
    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->kilometer:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 663
    :cond_5
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_6

    .line 664
    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->meter:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 666
    :cond_6
    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->meter:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const-string v1, "%.2f"

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAlignBottom(Z)V
    .locals 2
    .param p1, "alignBottom"    # Z

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    .line 285
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    .line 286
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    .line 287
    return-void
.end method

.method public setAlignRight(Z)V
    .locals 2
    .param p1, "alignRight"    # Z

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    .line 291
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    .line 292
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    .line 293
    return-void
.end method

.method public setBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "pBgPaint"    # Landroid/graphics/Paint;

    .line 345
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    .line 346
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    .line 347
    return-void
.end method

.method public setBarPaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "pBarPaint"    # Landroid/graphics/Paint;

    .line 310
    if-eqz p1, :cond_0

    .line 313
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    .line 314
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    .line 315
    return-void

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pBarPaint argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCentred(Z)V
    .locals 2
    .param p1, "centred"    # Z

    .line 277
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    .line 278
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    .line 279
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    .line 280
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    .line 281
    return-void
.end method

.method public setEnableAdjustLength(Z)V
    .locals 2
    .param p1, "adjustLength"    # Z

    .line 355
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    .line 356
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    .line 357
    return-void
.end method

.method public setLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .line 223
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 224
    return-void
.end method

.method public setMaxLength(F)V
    .locals 2
    .param p1, "pMaxLengthInCm"    # F

    .line 367
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    .line 368
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    .line 369
    return-void
.end method

.method public setMinZoom(D)V
    .locals 0
    .param p1, "zoom"    # D

    .line 202
    iput-wide p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:D

    .line 203
    return-void
.end method

.method public setScaleBarOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 213
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    .line 214
    iput p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    .line 215
    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "pTextPaint"    # Landroid/graphics/Paint;

    .line 332
    if-eqz p1, :cond_0

    .line 335
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    .line 336
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    .line 337
    return-void

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pTextPaint argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .line 232
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 233
    return-void
.end method

.method public setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V
    .locals 2
    .param p1, "unitsOfMeasure"    # Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    .line 239
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    .line 240
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    .line 241
    return-void
.end method
