.class public Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;
.super Ljava/lang/Object;
.source "ExternalRenderTheme.java"

# interfaces
.implements Lorg/mapsforge/map/rendertheme/XmlRenderTheme;


# instance fields
.field private final lastModifiedTime:J

.field private menuCallback:Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

.field private final renderThemeFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "renderThemeFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;-><init>(Ljava/io/File;Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;)V
    .locals 4
    .param p1, "renderThemeFile"    # Ljava/io/File;
    .param p2, "menuCallback"    # Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;->lastModifiedTime:J

    .line 54
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 57
    iput-object p1, p0, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;->renderThemeFile:Ljava/io/File;

    .line 58
    iput-object p2, p0, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;->menuCallback:Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    .line 59
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot read last modified time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot read file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "renderThemePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;-><init>(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;)V
    .locals 1
    .param p1, "renderThemePath"    # Ljava/lang/String;
    .param p2, "menuCallback"    # Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;-><init>(Ljava/io/File;Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;)V

    .line 75
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 79
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 80
    return v0

    .line 81
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 82
    return v2

    .line 84
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;

    .line 85
    .local v1, "other":Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;
    iget-wide v3, p0, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;->lastModifiedTime:J

    iget-wide v5, v1, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;->lastModifiedTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 86
    return v2

    .line 88
    :cond_2
    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;->renderThemeFile:Ljava/io/File;

    if-nez v3, :cond_3

    .line 89
    iget-object v3, v1, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;->renderThemeFile:Ljava/io/File;

    if-eqz v3, :cond_4

    .line 90
    return v2

    .line 92
    :cond_3
    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;->renderThemeFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 93
    return v2

    .line 95
    :cond_4
    return v0
.end method

.method public getMenuCallback()Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;->menuCallback:Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    return-object v0
.end method

.method public getRelativePathPrefix()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;->renderThemeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRenderThemeAsStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;->renderThemeFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 115
    const/16 v0, 0x1f

    .line 116
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 117
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;->lastModifiedTime:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 118
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;->renderThemeFile:Ljava/io/File;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v1, v3

    .line 119
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public setMenuCallback(Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;)V
    .locals 0
    .param p1, "menuCallback"    # Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    .line 124
    iput-object p1, p0, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;->menuCallback:Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    .line 125
    return-void
.end method
