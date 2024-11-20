.class public final enum Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;
.super Ljava/lang/Enum;
.source "MapScaleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/scalebar/MapScaleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleBarPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

.field public static final enum BOTTOM_CENTER:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

.field public static final enum BOTTOM_LEFT:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

.field public static final enum BOTTOM_RIGHT:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

.field public static final enum TOP_CENTER:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

.field public static final enum TOP_LEFT:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

.field public static final enum TOP_RIGHT:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 35
    new-instance v0, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    const-string v1, "BOTTOM_CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;->BOTTOM_CENTER:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    new-instance v1, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    const-string v2, "BOTTOM_LEFT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;->BOTTOM_LEFT:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    new-instance v2, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    const-string v3, "BOTTOM_RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;->BOTTOM_RIGHT:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    new-instance v3, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    const-string v4, "TOP_CENTER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;->TOP_CENTER:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    new-instance v4, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    const-string v5, "TOP_LEFT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;->TOP_LEFT:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    new-instance v5, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    const-string v6, "TOP_RIGHT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;->TOP_RIGHT:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    filled-new-array/range {v0 .. v5}, [Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;->$VALUES:[Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;
    .locals 1

    .line 35
    sget-object v0, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;->$VALUES:[Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    invoke-virtual {v0}, [Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    return-object v0
.end method
