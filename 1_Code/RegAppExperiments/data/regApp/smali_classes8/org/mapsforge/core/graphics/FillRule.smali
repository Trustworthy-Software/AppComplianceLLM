.class public final enum Lorg/mapsforge/core/graphics/FillRule;
.super Ljava/lang/Enum;
.source "FillRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/core/graphics/FillRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/core/graphics/FillRule;

.field public static final enum EVEN_ODD:Lorg/mapsforge/core/graphics/FillRule;

.field public static final enum NON_ZERO:Lorg/mapsforge/core/graphics/FillRule;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lorg/mapsforge/core/graphics/FillRule;

    const-string v1, "EVEN_ODD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/core/graphics/FillRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/core/graphics/FillRule;->EVEN_ODD:Lorg/mapsforge/core/graphics/FillRule;

    new-instance v1, Lorg/mapsforge/core/graphics/FillRule;

    const-string v2, "NON_ZERO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/core/graphics/FillRule;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mapsforge/core/graphics/FillRule;->NON_ZERO:Lorg/mapsforge/core/graphics/FillRule;

    .line 17
    filled-new-array {v0, v1}, [Lorg/mapsforge/core/graphics/FillRule;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/core/graphics/FillRule;->$VALUES:[Lorg/mapsforge/core/graphics/FillRule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/core/graphics/FillRule;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lorg/mapsforge/core/graphics/FillRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/FillRule;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/core/graphics/FillRule;
    .locals 1

    .line 17
    sget-object v0, Lorg/mapsforge/core/graphics/FillRule;->$VALUES:[Lorg/mapsforge/core/graphics/FillRule;

    invoke-virtual {v0}, [Lorg/mapsforge/core/graphics/FillRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/core/graphics/FillRule;

    return-object v0
.end method
