.class public interface abstract Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;
.super Ljava/lang/Object;
.source "ShadingAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawHillTileSource;,
        Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;
    }
.end annotation


# virtual methods
.method public abstract getAxisLenght(Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;)I
.end method

.method public abstract transformToByteBuffer(Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;I)Lorg/mapsforge/map/layer/hills/ShadingAlgorithm$RawShadingResult;
.end method
