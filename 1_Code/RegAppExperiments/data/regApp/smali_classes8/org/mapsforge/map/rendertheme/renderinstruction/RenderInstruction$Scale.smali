.class final enum Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;
.super Ljava/lang/Enum;
.source "RenderInstruction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Scale"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

.field public static final enum ALL:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

.field public static final enum NONE:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

.field public static final enum STROKE:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;->ALL:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    .line 70
    new-instance v1, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    const-string v2, "NONE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;->NONE:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    .line 71
    new-instance v2, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    const-string v3, "STROKE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;->STROKE:Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    .line 68
    filled-new-array {v0, v1, v2}, [Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;->$VALUES:[Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 68
    const-class v0, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;
    .locals 1

    .line 68
    sget-object v0, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;->$VALUES:[Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    invoke-virtual {v0}, [Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction$Scale;

    return-object v0
.end method
