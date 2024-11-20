.class public final Lorg/mapsforge/map/scalebar/NauticalUnitAdapter;
.super Ljava/lang/Object;
.source "NauticalUnitAdapter.java"

# interfaces
.implements Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;


# static fields
.field public static final INSTANCE:Lorg/mapsforge/map/scalebar/NauticalUnitAdapter;

.field private static final ONE_MILE:I = 0x73c

.field private static final SCALE_BAR_VALUES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lorg/mapsforge/map/scalebar/NauticalUnitAdapter;

    invoke-direct {v0}, Lorg/mapsforge/map/scalebar/NauticalUnitAdapter;-><init>()V

    sput-object v0, Lorg/mapsforge/map/scalebar/NauticalUnitAdapter;->INSTANCE:Lorg/mapsforge/map/scalebar/NauticalUnitAdapter;

    .line 21
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mapsforge/map/scalebar/NauticalUnitAdapter;->SCALE_BAR_VALUES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8d4be0
        0x3884c0
        0x1c4260
        0xe2130
        0x5a6e0
        0x2d370
        0x169b8
        0x90b0
        0x4858
        0x242c
        0xe78
        0x73c
        0x39e
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getMeterRatio()D
    .locals 2

    .line 30
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public getScaleBarValues()[I
    .locals 1

    .line 35
    sget-object v0, Lorg/mapsforge/map/scalebar/NauticalUnitAdapter;->SCALE_BAR_VALUES:[I

    return-object v0
.end method

.method public getScaleText(I)Ljava/lang/String;
    .locals 2
    .param p1, "mapScaleValue"    # I

    .line 40
    const/16 v0, 0x39e

    if-ge p1, v0, :cond_0

    .line 41
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

    .line 43
    :cond_0
    if-ne p1, v0, :cond_1

    .line 44
    const-string v0, "0.5 nmi"

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v1, p1, 0x73c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nmi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
