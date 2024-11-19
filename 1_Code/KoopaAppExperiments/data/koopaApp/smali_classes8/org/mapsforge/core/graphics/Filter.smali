.class public final enum Lorg/mapsforge/core/graphics/Filter;
.super Ljava/lang/Enum;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/core/graphics/Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/core/graphics/Filter;

.field public static final enum GRAYSCALE:Lorg/mapsforge/core/graphics/Filter;

.field public static final enum GRAYSCALE_INVERT:Lorg/mapsforge/core/graphics/Filter;

.field public static final enum INVERT:Lorg/mapsforge/core/graphics/Filter;

.field public static final enum NONE:Lorg/mapsforge/core/graphics/Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    new-instance v0, Lorg/mapsforge/core/graphics/Filter;

    const-string v1, "GRAYSCALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/core/graphics/Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/core/graphics/Filter;->GRAYSCALE:Lorg/mapsforge/core/graphics/Filter;

    new-instance v1, Lorg/mapsforge/core/graphics/Filter;

    const-string v2, "GRAYSCALE_INVERT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/core/graphics/Filter;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mapsforge/core/graphics/Filter;->GRAYSCALE_INVERT:Lorg/mapsforge/core/graphics/Filter;

    new-instance v2, Lorg/mapsforge/core/graphics/Filter;

    const-string v3, "INVERT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mapsforge/core/graphics/Filter;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mapsforge/core/graphics/Filter;->INVERT:Lorg/mapsforge/core/graphics/Filter;

    new-instance v3, Lorg/mapsforge/core/graphics/Filter;

    const-string v4, "NONE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/mapsforge/core/graphics/Filter;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    .line 17
    filled-new-array {v0, v1, v2, v3}, [Lorg/mapsforge/core/graphics/Filter;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/core/graphics/Filter;->$VALUES:[Lorg/mapsforge/core/graphics/Filter;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/core/graphics/Filter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lorg/mapsforge/core/graphics/Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/Filter;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/core/graphics/Filter;
    .locals 1

    .line 17
    sget-object v0, Lorg/mapsforge/core/graphics/Filter;->$VALUES:[Lorg/mapsforge/core/graphics/Filter;

    invoke-virtual {v0}, [Lorg/mapsforge/core/graphics/Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/core/graphics/Filter;

    return-object v0
.end method
