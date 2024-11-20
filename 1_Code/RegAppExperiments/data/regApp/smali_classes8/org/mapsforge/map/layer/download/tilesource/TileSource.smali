.class public interface abstract Lorg/mapsforge/map/layer/download/tilesource/TileSource;
.super Ljava/lang/Object;
.source "TileSource.java"


# virtual methods
.method public abstract getAuthorization()Ljava/lang/String;
.end method

.method public abstract getDefaultTimeToLive()J
.end method

.method public abstract getParallelRequestsLimit()I
.end method

.method public abstract getReferer()Ljava/lang/String;
.end method

.method public abstract getTileUrl(Lorg/mapsforge/core/model/Tile;)Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation
.end method

.method public abstract getTimeoutConnect()I
.end method

.method public abstract getTimeoutRead()I
.end method

.method public abstract getUserAgent()Ljava/lang/String;
.end method

.method public abstract getZoomLevelMax()B
.end method

.method public abstract getZoomLevelMin()B
.end method

.method public abstract hasAlpha()Z
.end method

.method public abstract isFollowRedirects()Z
.end method
