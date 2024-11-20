.class public final enum Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;
.super Ljava/lang/Enum;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/android/view/MapView$LayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

.field public static final enum BOTTOM_CENTER:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

.field public static final enum BOTTOM_LEFT:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

.field public static final enum BOTTOM_RIGHT:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

.field public static final enum CENTER:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

.field public static final enum CENTER_LEFT:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

.field public static final enum CENTER_RIGHT:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

.field public static final enum TOP_CENTER:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

.field public static final enum TOP_LEFT:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

.field public static final enum TOP_RIGHT:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 74
    new-instance v0, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;->TOP_LEFT:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    new-instance v1, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    const-string v2, "TOP_CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;->TOP_CENTER:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    new-instance v2, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    const-string v3, "TOP_RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;->TOP_RIGHT:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    new-instance v3, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    const-string v4, "CENTER_LEFT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;->CENTER_LEFT:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    new-instance v4, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    const-string v5, "CENTER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;->CENTER:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    new-instance v5, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    const-string v6, "CENTER_RIGHT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;->CENTER_RIGHT:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    new-instance v6, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    const-string v7, "BOTTOM_LEFT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;->BOTTOM_LEFT:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    new-instance v7, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    const-string v8, "BOTTOM_CENTER"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;->BOTTOM_CENTER:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    new-instance v8, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    const-string v9, "BOTTOM_RIGHT"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;->BOTTOM_RIGHT:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    .line 73
    filled-new-array/range {v0 .. v8}, [Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;->$VALUES:[Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 73
    const-class v0, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;
    .locals 1

    .line 73
    sget-object v0, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;->$VALUES:[Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    invoke-virtual {v0}, [Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    return-object v0
.end method
