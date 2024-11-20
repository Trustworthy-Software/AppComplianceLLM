.class public final Lorg/mapsforge/map/scalebar/MetricUnitAdapter;
.super Ljava/lang/Object;
.source "MetricUnitAdapter.java"

# interfaces
.implements Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;


# static fields
.field public static final INSTANCE:Lorg/mapsforge/map/scalebar/MetricUnitAdapter;

.field private static final ONE_KILOMETER:I = 0x3e8

.field private static final SCALE_BAR_VALUES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lorg/mapsforge/map/scalebar/MetricUnitAdapter;

    invoke-direct {v0}, Lorg/mapsforge/map/scalebar/MetricUnitAdapter;-><init>()V

    sput-object v0, Lorg/mapsforge/map/scalebar/MetricUnitAdapter;->INSTANCE:Lorg/mapsforge/map/scalebar/MetricUnitAdapter;

    .line 20
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mapsforge/map/scalebar/MetricUnitAdapter;->SCALE_BAR_VALUES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x989680
        0x4c4b40
        0x1e8480
        0xf4240
        0x7a120
        0x30d40
        0x186a0
        0xc350
        0x4e20
        0x2710
        0x1388
        0x7d0
        0x3e8
        0x1f4
        0xc8
        0x64
        0x32
        0x14
        0xa
        0x5
        0x2
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getMeterRatio()D
    .locals 2

    .line 29
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public getScaleBarValues()[I
    .locals 1

    .line 34
    sget-object v0, Lorg/mapsforge/map/scalebar/MetricUnitAdapter;->SCALE_BAR_VALUES:[I

    return-object v0
.end method

.method public getScaleText(I)Ljava/lang/String;
    .locals 2
    .param p1, "mapScaleValue"    # I

    .line 39
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " km"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
