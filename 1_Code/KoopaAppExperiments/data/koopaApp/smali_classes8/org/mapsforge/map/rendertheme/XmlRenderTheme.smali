.class public interface abstract Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
.super Ljava/lang/Object;
.source "XmlRenderTheme.java"


# virtual methods
.method public abstract getMenuCallback()Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;
.end method

.method public abstract getRelativePathPrefix()Ljava/lang/String;
.end method

.method public abstract getRenderThemeAsStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract setMenuCallback(Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;)V
.end method
