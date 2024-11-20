.class public interface abstract Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawHillTileSource;
.super Ljava/lang/Object;
.source "ShadingAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RawHillTileSource"
.end annotation


# virtual methods
.method public abstract eastLng()D
.end method

.method public abstract getFile()Ljava/io/File;
.end method

.method public abstract getFinishedConverted()Lorg/mapsforge/core/graphics/HillshadingBitmap;
.end method

.method public abstract getSize()J
.end method

.method public abstract northLat()D
.end method

.method public abstract southLat()D
.end method

.method public abstract westLng()D
.end method
