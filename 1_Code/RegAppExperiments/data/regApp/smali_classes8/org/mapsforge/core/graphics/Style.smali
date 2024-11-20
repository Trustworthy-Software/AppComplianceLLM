.class public final enum Lorg/mapsforge/core/graphics/Style;
.super Ljava/lang/Enum;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/core/graphics/Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/core/graphics/Style;

.field public static final enum FILL:Lorg/mapsforge/core/graphics/Style;

.field public static final enum STROKE:Lorg/mapsforge/core/graphics/Style;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lorg/mapsforge/core/graphics/Style;

    const-string v1, "FILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/core/graphics/Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/core/graphics/Style;->FILL:Lorg/mapsforge/core/graphics/Style;

    new-instance v1, Lorg/mapsforge/core/graphics/Style;

    const-string v2, "STROKE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/core/graphics/Style;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    .line 17
    filled-new-array {v0, v1}, [Lorg/mapsforge/core/graphics/Style;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/core/graphics/Style;->$VALUES:[Lorg/mapsforge/core/graphics/Style;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/core/graphics/Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lorg/mapsforge/core/graphics/Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/Style;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/core/graphics/Style;
    .locals 1

    .line 17
    sget-object v0, Lorg/mapsforge/core/graphics/Style;->$VALUES:[Lorg/mapsforge/core/graphics/Style;

    invoke-virtual {v0}, [Lorg/mapsforge/core/graphics/Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/core/graphics/Style;

    return-object v0
.end method
