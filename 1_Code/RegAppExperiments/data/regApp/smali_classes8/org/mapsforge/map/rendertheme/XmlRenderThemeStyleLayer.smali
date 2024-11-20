.class public Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;
.super Ljava/lang/Object;
.source "XmlRenderThemeStyleLayer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final categories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultLanguage:Ljava/lang/String;

.field private final enabled:Z

.field private final id:Ljava/lang/String;

.field private final overlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final titles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final visible:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "enabled"    # Z
    .param p4, "defaultLanguage"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->id:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->titles:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->categories:Ljava/util/Set;

    .line 45
    iput-boolean p2, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->visible:Z

    .line 46
    iput-object p4, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->defaultLanguage:Ljava/lang/String;

    .line 47
    iput-boolean p3, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->enabled:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->overlays:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->categories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public addOverlay(Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;)V
    .locals 1
    .param p1, "overlay"    # Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;

    .line 56
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->overlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public addTranslation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->titles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->categories:Ljava/util/Set;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->overlays:Ljava/util/List;

    return-object v0
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->titles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 78
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->titles:Ljava/util/Map;

    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->defaultLanguage:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 80
    :cond_0
    return-object v0
.end method

.method public getTitles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->titles:Ljava/util/Map;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->enabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->visible:Z

    return v0
.end method
