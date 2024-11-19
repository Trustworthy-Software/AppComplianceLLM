.class public Lorg/mapsforge/map/android/util/ExternalRenderThemeUsingJarResources;
.super Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;
.source "ExternalRenderThemeUsingJarResources.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "renderThemeFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lorg/mapsforge/map/rendertheme/ExternalRenderTheme;-><init>(Ljava/io/File;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getRelativePathPrefix()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "/assets/"

    return-object v0
.end method
