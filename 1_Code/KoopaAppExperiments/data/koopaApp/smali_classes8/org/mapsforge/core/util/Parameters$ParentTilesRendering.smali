.class public final enum Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;
.super Ljava/lang/Enum;
.source "Parameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/core/util/Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParentTilesRendering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

.field public static final enum OFF:Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

.field public static final enum QUALITY:Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

.field public static final enum SPEED:Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    const-string v1, "QUALITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;->QUALITY:Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    new-instance v1, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    const-string v2, "SPEED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;->SPEED:Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    new-instance v2, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    const-string v3, "OFF"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;->OFF:Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    filled-new-array {v0, v1, v2}, [Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;->$VALUES:[Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;
    .locals 1

    .line 19
    sget-object v0, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;->$VALUES:[Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    invoke-virtual {v0}, [Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    return-object v0
.end method
