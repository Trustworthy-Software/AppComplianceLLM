.class public final enum Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;
.super Ljava/lang/Enum;
.source "HillshadingBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/core/graphics/HillshadingBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Border"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

.field public static final enum EAST:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

.field public static final enum NORTH:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

.field public static final enum SOUTH:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

.field public static final enum WEST:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;


# instance fields
.field public final vertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    const-string v1, "WEST"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->WEST:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    new-instance v1, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    const-string v4, "NORTH"

    invoke-direct {v1, v4, v3, v2}, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->NORTH:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    new-instance v4, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    const-string v5, "EAST"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->EAST:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    new-instance v3, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    const-string v5, "SOUTH"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v2}, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->SOUTH:Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    .line 20
    filled-new-array {v0, v1, v4, v3}, [Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->$VALUES:[Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "vertical"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-boolean p3, p0, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->vertical:Z

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;
    .locals 1

    .line 20
    sget-object v0, Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->$VALUES:[Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    invoke-virtual {v0}, [Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/core/graphics/HillshadingBitmap$Border;

    return-object v0
.end method
