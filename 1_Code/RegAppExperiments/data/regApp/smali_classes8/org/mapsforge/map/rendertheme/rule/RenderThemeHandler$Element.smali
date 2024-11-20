.class final enum Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;
.super Ljava/lang/Enum;
.source "RenderThemeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

.field public static final enum RENDERING_INSTRUCTION:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

.field public static final enum RENDERING_STYLE:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

.field public static final enum RENDER_THEME:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

.field public static final enum RULE:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 55
    new-instance v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    const-string v1, "RENDER_THEME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDER_THEME:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    new-instance v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    const-string v2, "RENDERING_INSTRUCTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    new-instance v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    const-string v3, "RULE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RULE:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    new-instance v3, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    const-string v4, "RENDERING_STYLE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDERING_STYLE:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    .line 54
    filled-new-array {v0, v1, v2, v3}, [Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->$VALUES:[Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    const-class v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;
    .locals 1

    .line 54
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->$VALUES:[Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-virtual {v0}, [Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    return-object v0
.end method
