.class public Lorg/mapsforge/map/rendertheme/StreamRenderTheme;
.super Ljava/lang/Object;
.source "StreamRenderTheme.java"

# interfaces
.implements Lorg/mapsforge/map/rendertheme/XmlRenderTheme;


# instance fields
.field private final inputStream:Ljava/io/InputStream;

.field private menuCallback:Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

.field private final relativePathPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "relativePathPrefix"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;)V
    .locals 0
    .param p1, "relativePathPrefix"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "menuCallback"    # Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;->relativePathPrefix:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;->inputStream:Ljava/io/InputStream;

    .line 47
    iput-object p3, p0, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;->menuCallback:Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 53
    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 55
    return v2

    .line 57
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;

    .line 58
    .local v1, "other":Lorg/mapsforge/map/rendertheme/StreamRenderTheme;
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;->inputStream:Ljava/io/InputStream;

    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;->inputStream:Ljava/io/InputStream;

    if-eq v3, v4, :cond_2

    .line 59
    return v2

    .line 61
    :cond_2
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;->relativePathPrefix:Ljava/lang/String;

    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;->relativePathPrefix:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/mapsforge/core/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 62
    return v2

    .line 64
    :cond_3
    return v0
.end method

.method public getMenuCallback()Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;->menuCallback:Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    return-object v0
.end method

.method public getRelativePathPrefix()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;->relativePathPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderThemeAsStream()Ljava/io/InputStream;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 84
    const/16 v0, 0x1f

    .line 85
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 86
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;->inputStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 87
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;->relativePathPrefix:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 88
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public setMenuCallback(Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;)V
    .locals 0
    .param p1, "menuCallback"    # Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    .line 93
    iput-object p1, p0, Lorg/mapsforge/map/rendertheme/StreamRenderTheme;->menuCallback:Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    .line 94
    return-void
.end method
