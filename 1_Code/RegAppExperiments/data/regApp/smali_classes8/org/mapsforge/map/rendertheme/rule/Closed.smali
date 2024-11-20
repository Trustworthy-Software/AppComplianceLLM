.class final enum Lorg/mapsforge/map/rendertheme/rule/Closed;
.super Ljava/lang/Enum;
.source "Closed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/map/rendertheme/rule/Closed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/map/rendertheme/rule/Closed;

.field public static final enum ANY:Lorg/mapsforge/map/rendertheme/rule/Closed;

.field public static final enum NO:Lorg/mapsforge/map/rendertheme/rule/Closed;

.field public static final enum YES:Lorg/mapsforge/map/rendertheme/rule/Closed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lorg/mapsforge/map/rendertheme/rule/Closed;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/map/rendertheme/rule/Closed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/map/rendertheme/rule/Closed;->ANY:Lorg/mapsforge/map/rendertheme/rule/Closed;

    new-instance v1, Lorg/mapsforge/map/rendertheme/rule/Closed;

    const-string v2, "NO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/map/rendertheme/rule/Closed;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mapsforge/map/rendertheme/rule/Closed;->NO:Lorg/mapsforge/map/rendertheme/rule/Closed;

    new-instance v2, Lorg/mapsforge/map/rendertheme/rule/Closed;

    const-string v3, "YES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mapsforge/map/rendertheme/rule/Closed;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mapsforge/map/rendertheme/rule/Closed;->YES:Lorg/mapsforge/map/rendertheme/rule/Closed;

    .line 17
    filled-new-array {v0, v1, v2}, [Lorg/mapsforge/map/rendertheme/rule/Closed;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/rendertheme/rule/Closed;->$VALUES:[Lorg/mapsforge/map/rendertheme/rule/Closed;

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

.method public static fromString(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/rule/Closed;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 21
    const-string v0, "any"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/Closed;->ANY:Lorg/mapsforge/map/rendertheme/rule/Closed;

    return-object v0

    .line 23
    :cond_0
    const-string v0, "no"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/Closed;->NO:Lorg/mapsforge/map/rendertheme/rule/Closed;

    return-object v0

    .line 25
    :cond_1
    const-string v0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/Closed;->YES:Lorg/mapsforge/map/rendertheme/rule/Closed;

    return-object v0

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for Closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/rule/Closed;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lorg/mapsforge/map/rendertheme/rule/Closed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/rendertheme/rule/Closed;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/map/rendertheme/rule/Closed;
    .locals 1

    .line 17
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/Closed;->$VALUES:[Lorg/mapsforge/map/rendertheme/rule/Closed;

    invoke-virtual {v0}, [Lorg/mapsforge/map/rendertheme/rule/Closed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/map/rendertheme/rule/Closed;

    return-object v0
.end method
