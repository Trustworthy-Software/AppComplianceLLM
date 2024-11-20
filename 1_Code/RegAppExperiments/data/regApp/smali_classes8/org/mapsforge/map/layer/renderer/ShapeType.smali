.class final enum Lorg/mapsforge/map/layer/renderer/ShapeType;
.super Ljava/lang/Enum;
.source "ShapeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/map/layer/renderer/ShapeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/map/layer/renderer/ShapeType;

.field public static final enum CIRCLE:Lorg/mapsforge/map/layer/renderer/ShapeType;

.field public static final enum HILLSHADING:Lorg/mapsforge/map/layer/renderer/ShapeType;

.field public static final enum POLYLINE:Lorg/mapsforge/map/layer/renderer/ShapeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lorg/mapsforge/map/layer/renderer/ShapeType;

    const-string v1, "CIRCLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/map/layer/renderer/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/map/layer/renderer/ShapeType;->CIRCLE:Lorg/mapsforge/map/layer/renderer/ShapeType;

    new-instance v1, Lorg/mapsforge/map/layer/renderer/ShapeType;

    const-string v2, "HILLSHADING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/map/layer/renderer/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mapsforge/map/layer/renderer/ShapeType;->HILLSHADING:Lorg/mapsforge/map/layer/renderer/ShapeType;

    new-instance v2, Lorg/mapsforge/map/layer/renderer/ShapeType;

    const-string v3, "POLYLINE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mapsforge/map/layer/renderer/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mapsforge/map/layer/renderer/ShapeType;->POLYLINE:Lorg/mapsforge/map/layer/renderer/ShapeType;

    .line 18
    filled-new-array {v0, v1, v2}, [Lorg/mapsforge/map/layer/renderer/ShapeType;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/layer/renderer/ShapeType;->$VALUES:[Lorg/mapsforge/map/layer/renderer/ShapeType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/map/layer/renderer/ShapeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lorg/mapsforge/map/layer/renderer/ShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/layer/renderer/ShapeType;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/map/layer/renderer/ShapeType;
    .locals 1

    .line 18
    sget-object v0, Lorg/mapsforge/map/layer/renderer/ShapeType;->$VALUES:[Lorg/mapsforge/map/layer/renderer/ShapeType;

    invoke-virtual {v0}, [Lorg/mapsforge/map/layer/renderer/ShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/map/layer/renderer/ShapeType;

    return-object v0
.end method
