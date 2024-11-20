.class public final enum Lorg/mapsforge/core/graphics/Join;
.super Ljava/lang/Enum;
.source "Join.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/core/graphics/Join;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/core/graphics/Join;

.field public static final enum BEVEL:Lorg/mapsforge/core/graphics/Join;

.field public static final enum MITER:Lorg/mapsforge/core/graphics/Join;

.field public static final enum ROUND:Lorg/mapsforge/core/graphics/Join;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lorg/mapsforge/core/graphics/Join;

    const-string v1, "BEVEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/core/graphics/Join;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/core/graphics/Join;->BEVEL:Lorg/mapsforge/core/graphics/Join;

    new-instance v1, Lorg/mapsforge/core/graphics/Join;

    const-string v2, "MITER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/core/graphics/Join;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mapsforge/core/graphics/Join;->MITER:Lorg/mapsforge/core/graphics/Join;

    new-instance v2, Lorg/mapsforge/core/graphics/Join;

    const-string v3, "ROUND"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mapsforge/core/graphics/Join;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mapsforge/core/graphics/Join;->ROUND:Lorg/mapsforge/core/graphics/Join;

    .line 20
    filled-new-array {v0, v1, v2}, [Lorg/mapsforge/core/graphics/Join;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/core/graphics/Join;->$VALUES:[Lorg/mapsforge/core/graphics/Join;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/mapsforge/core/graphics/Join;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 24
    const-string v0, "bevel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lorg/mapsforge/core/graphics/Join;->BEVEL:Lorg/mapsforge/core/graphics/Join;

    return-object v0

    .line 26
    :cond_0
    const-string v0, "round"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lorg/mapsforge/core/graphics/Join;->ROUND:Lorg/mapsforge/core/graphics/Join;

    return-object v0

    .line 28
    :cond_1
    const-string v0, "miter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    sget-object v0, Lorg/mapsforge/core/graphics/Join;->MITER:Lorg/mapsforge/core/graphics/Join;

    return-object v0

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for Join: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/core/graphics/Join;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lorg/mapsforge/core/graphics/Join;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/Join;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/core/graphics/Join;
    .locals 1

    .line 20
    sget-object v0, Lorg/mapsforge/core/graphics/Join;->$VALUES:[Lorg/mapsforge/core/graphics/Join;

    invoke-virtual {v0}, [Lorg/mapsforge/core/graphics/Join;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/core/graphics/Join;

    return-object v0
.end method
