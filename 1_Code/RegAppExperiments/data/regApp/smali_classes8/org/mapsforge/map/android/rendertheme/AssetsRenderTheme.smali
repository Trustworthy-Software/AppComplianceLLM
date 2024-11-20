.class public Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;
.super Ljava/lang/Object;
.source "AssetsRenderTheme.java"

# interfaces
.implements Lorg/mapsforge/map/rendertheme/XmlRenderTheme;


# instance fields
.field private final assetName:Ljava/lang/String;

.field private final inputStream:Ljava/io/InputStream;

.field private menuCallback:Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

.field private final relativePathPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "relativePathPrefix"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "relativePathPrefix"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "menuCallback"    # Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p3, p0, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;->assetName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;->relativePathPrefix:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;->inputStream:Ljava/io/InputStream;

    .line 49
    iput-object p4, p0, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;->menuCallback:Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 54
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 55
    return v0

    .line 56
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 57
    return v2

    .line 59
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;

    .line 60
    .local v1, "other":Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;
    iget-object v3, p0, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;->assetName:Ljava/lang/String;

    iget-object v4, v1, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;->assetName:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/mapsforge/core/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 61
    return v2

    .line 63
    :cond_2
    iget-object v3, p0, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;->relativePathPrefix:Ljava/lang/String;

    iget-object v4, v1, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;->relativePathPrefix:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/mapsforge/core/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 64
    return v2

    .line 66
    :cond_3
    return v0
.end method

.method public getMenuCallback()Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;->menuCallback:Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    return-object v0
.end method

.method public getRelativePathPrefix()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;->relativePathPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderThemeAsStream()Ljava/io/InputStream;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 87
    const/16 v0, 0x1f

    .line 88
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 89
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;->assetName:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 90
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;->relativePathPrefix:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 91
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public setMenuCallback(Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;)V
    .locals 0
    .param p1, "menuCallback"    # Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    .line 96
    iput-object p1, p0, Lorg/mapsforge/map/android/rendertheme/AssetsRenderTheme;->menuCallback:Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    .line 97
    return-void
.end method
