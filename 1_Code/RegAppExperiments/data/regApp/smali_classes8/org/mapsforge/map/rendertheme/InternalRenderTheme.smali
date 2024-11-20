.class public final enum Lorg/mapsforge/map/rendertheme/InternalRenderTheme;
.super Ljava/lang/Enum;
.source "InternalRenderTheme.java"

# interfaces
.implements Lorg/mapsforge/map/rendertheme/XmlRenderTheme;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/map/rendertheme/InternalRenderTheme;",
        ">;",
        "Lorg/mapsforge/map/rendertheme/XmlRenderTheme;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/map/rendertheme/InternalRenderTheme;

.field public static final enum DEFAULT:Lorg/mapsforge/map/rendertheme/InternalRenderTheme;

.field public static final enum OSMARENDER:Lorg/mapsforge/map/rendertheme/InternalRenderTheme;


# instance fields
.field private final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;

    const/4 v1, 0x0

    const-string v2, "/assets/mapsforge/default.xml"

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;->DEFAULT:Lorg/mapsforge/map/rendertheme/InternalRenderTheme;

    .line 26
    new-instance v1, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;

    const/4 v2, 0x1

    const-string v3, "/assets/mapsforge/osmarender.xml"

    const-string v4, "OSMARENDER"

    invoke-direct {v1, v4, v2, v3}, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;->OSMARENDER:Lorg/mapsforge/map/rendertheme/InternalRenderTheme;

    .line 23
    filled-new-array {v0, v1}, [Lorg/mapsforge/map/rendertheme/InternalRenderTheme;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;->$VALUES:[Lorg/mapsforge/map/rendertheme/InternalRenderTheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;->path:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/InternalRenderTheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/map/rendertheme/InternalRenderTheme;
    .locals 1

    .line 23
    sget-object v0, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;->$VALUES:[Lorg/mapsforge/map/rendertheme/InternalRenderTheme;

    invoke-virtual {v0}, [Lorg/mapsforge/map/rendertheme/InternalRenderTheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/map/rendertheme/InternalRenderTheme;

    return-object v0
.end method


# virtual methods
.method public getMenuCallback()Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;
    .locals 1

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRelativePathPrefix()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "/assets/"

    return-object v0
.end method

.method public getRenderThemeAsStream()Ljava/io/InputStream;
    .locals 2

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/InternalRenderTheme;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public setMenuCallback(Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;)V
    .locals 0
    .param p1, "menuCallback"    # Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    .line 54
    return-void
.end method
