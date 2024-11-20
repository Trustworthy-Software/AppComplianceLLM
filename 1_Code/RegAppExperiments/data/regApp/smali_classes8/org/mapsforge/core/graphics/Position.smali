.class public final enum Lorg/mapsforge/core/graphics/Position;
.super Ljava/lang/Enum;
.source "Position.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/core/graphics/Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/core/graphics/Position;

.field public static final enum ABOVE:Lorg/mapsforge/core/graphics/Position;

.field public static final enum ABOVE_LEFT:Lorg/mapsforge/core/graphics/Position;

.field public static final enum ABOVE_RIGHT:Lorg/mapsforge/core/graphics/Position;

.field public static final enum AUTO:Lorg/mapsforge/core/graphics/Position;

.field public static final enum BELOW:Lorg/mapsforge/core/graphics/Position;

.field public static final enum BELOW_LEFT:Lorg/mapsforge/core/graphics/Position;

.field public static final enum BELOW_RIGHT:Lorg/mapsforge/core/graphics/Position;

.field public static final enum CENTER:Lorg/mapsforge/core/graphics/Position;

.field public static final enum LEFT:Lorg/mapsforge/core/graphics/Position;

.field public static final enum RIGHT:Lorg/mapsforge/core/graphics/Position;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 19
    new-instance v0, Lorg/mapsforge/core/graphics/Position;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/core/graphics/Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/core/graphics/Position;->AUTO:Lorg/mapsforge/core/graphics/Position;

    new-instance v1, Lorg/mapsforge/core/graphics/Position;

    const-string v2, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/core/graphics/Position;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mapsforge/core/graphics/Position;->CENTER:Lorg/mapsforge/core/graphics/Position;

    new-instance v2, Lorg/mapsforge/core/graphics/Position;

    const-string v3, "BELOW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mapsforge/core/graphics/Position;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mapsforge/core/graphics/Position;->BELOW:Lorg/mapsforge/core/graphics/Position;

    new-instance v3, Lorg/mapsforge/core/graphics/Position;

    const-string v4, "BELOW_LEFT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/mapsforge/core/graphics/Position;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/mapsforge/core/graphics/Position;->BELOW_LEFT:Lorg/mapsforge/core/graphics/Position;

    new-instance v4, Lorg/mapsforge/core/graphics/Position;

    const-string v5, "BELOW_RIGHT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/mapsforge/core/graphics/Position;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/mapsforge/core/graphics/Position;->BELOW_RIGHT:Lorg/mapsforge/core/graphics/Position;

    new-instance v5, Lorg/mapsforge/core/graphics/Position;

    const-string v6, "ABOVE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/mapsforge/core/graphics/Position;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/mapsforge/core/graphics/Position;->ABOVE:Lorg/mapsforge/core/graphics/Position;

    new-instance v6, Lorg/mapsforge/core/graphics/Position;

    const-string v7, "ABOVE_LEFT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/mapsforge/core/graphics/Position;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/mapsforge/core/graphics/Position;->ABOVE_LEFT:Lorg/mapsforge/core/graphics/Position;

    new-instance v7, Lorg/mapsforge/core/graphics/Position;

    const-string v8, "ABOVE_RIGHT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/mapsforge/core/graphics/Position;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/mapsforge/core/graphics/Position;->ABOVE_RIGHT:Lorg/mapsforge/core/graphics/Position;

    new-instance v8, Lorg/mapsforge/core/graphics/Position;

    const-string v9, "LEFT"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/mapsforge/core/graphics/Position;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/mapsforge/core/graphics/Position;->LEFT:Lorg/mapsforge/core/graphics/Position;

    new-instance v9, Lorg/mapsforge/core/graphics/Position;

    const-string v10, "RIGHT"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/mapsforge/core/graphics/Position;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/mapsforge/core/graphics/Position;->RIGHT:Lorg/mapsforge/core/graphics/Position;

    .line 18
    filled-new-array/range {v0 .. v9}, [Lorg/mapsforge/core/graphics/Position;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/core/graphics/Position;->$VALUES:[Lorg/mapsforge/core/graphics/Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/mapsforge/core/graphics/Position;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 22
    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lorg/mapsforge/core/graphics/Position;->BELOW:Lorg/mapsforge/core/graphics/Position;

    return-object v0

    .line 26
    :cond_0
    const-string v0, "center"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lorg/mapsforge/core/graphics/Position;->CENTER:Lorg/mapsforge/core/graphics/Position;

    return-object v0

    .line 28
    :cond_1
    const-string v0, "below"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    sget-object v0, Lorg/mapsforge/core/graphics/Position;->BELOW:Lorg/mapsforge/core/graphics/Position;

    return-object v0

    .line 30
    :cond_2
    const-string v0, "below_left"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    sget-object v0, Lorg/mapsforge/core/graphics/Position;->BELOW_LEFT:Lorg/mapsforge/core/graphics/Position;

    return-object v0

    .line 32
    :cond_3
    const-string v0, "below_right"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    sget-object v0, Lorg/mapsforge/core/graphics/Position;->BELOW_RIGHT:Lorg/mapsforge/core/graphics/Position;

    return-object v0

    .line 34
    :cond_4
    const-string v0, "above"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35
    sget-object v0, Lorg/mapsforge/core/graphics/Position;->ABOVE:Lorg/mapsforge/core/graphics/Position;

    return-object v0

    .line 36
    :cond_5
    const-string v0, "above_left"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37
    sget-object v0, Lorg/mapsforge/core/graphics/Position;->ABOVE_LEFT:Lorg/mapsforge/core/graphics/Position;

    return-object v0

    .line 38
    :cond_6
    const-string v0, "above_right"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    sget-object v0, Lorg/mapsforge/core/graphics/Position;->ABOVE_RIGHT:Lorg/mapsforge/core/graphics/Position;

    return-object v0

    .line 40
    :cond_7
    const-string v0, "left"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41
    sget-object v0, Lorg/mapsforge/core/graphics/Position;->LEFT:Lorg/mapsforge/core/graphics/Position;

    return-object v0

    .line 42
    :cond_8
    const-string v0, "right"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 43
    sget-object v0, Lorg/mapsforge/core/graphics/Position;->RIGHT:Lorg/mapsforge/core/graphics/Position;

    return-object v0

    .line 45
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for Position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/core/graphics/Position;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lorg/mapsforge/core/graphics/Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/core/graphics/Position;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/core/graphics/Position;
    .locals 1

    .line 18
    sget-object v0, Lorg/mapsforge/core/graphics/Position;->$VALUES:[Lorg/mapsforge/core/graphics/Position;

    invoke-virtual {v0}, [Lorg/mapsforge/core/graphics/Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/core/graphics/Position;

    return-object v0
.end method
