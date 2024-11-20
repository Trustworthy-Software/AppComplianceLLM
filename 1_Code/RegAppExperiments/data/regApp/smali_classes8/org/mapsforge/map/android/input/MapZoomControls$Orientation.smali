.class public final enum Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;
.super Ljava/lang/Enum;
.source "MapZoomControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/android/input/MapZoomControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

.field public static final enum HORIZONTAL_IN_OUT:Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

.field public static final enum HORIZONTAL_OUT_IN:Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

.field public static final enum VERTICAL_IN_OUT:Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

.field public static final enum VERTICAL_OUT_IN:Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;


# instance fields
.field public final layoutOrientation:I

.field public final zoomInFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 45
    new-instance v0, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

    const-string v1, "HORIZONTAL_IN_OUT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;->HORIZONTAL_IN_OUT:Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

    .line 50
    new-instance v1, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

    const-string v4, "HORIZONTAL_OUT_IN"

    invoke-direct {v1, v4, v3, v2, v2}, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;->HORIZONTAL_OUT_IN:Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

    .line 55
    new-instance v4, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

    const-string v5, "VERTICAL_IN_OUT"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3, v3}, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v4, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;->VERTICAL_IN_OUT:Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

    .line 60
    new-instance v5, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

    const-string v6, "VERTICAL_OUT_IN"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v3, v2}, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v5, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;->VERTICAL_OUT_IN:Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

    .line 41
    filled-new-array {v0, v1, v4, v5}, [Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;->$VALUES:[Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "layoutOrientation"    # I
    .param p4, "zoomInFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;->layoutOrientation:I

    .line 67
    iput-boolean p4, p0, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;->zoomInFirst:Z

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 41
    const-class v0, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;
    .locals 1

    .line 41
    sget-object v0, Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;->$VALUES:[Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

    invoke-virtual {v0}, [Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/map/android/input/MapZoomControls$Orientation;

    return-object v0
.end method
