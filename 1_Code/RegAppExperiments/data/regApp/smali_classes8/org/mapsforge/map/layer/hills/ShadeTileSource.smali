.class public interface abstract Lorg/mapsforge/map/layer/hills/ShadeTileSource;
.super Ljava/lang/Object;
.source "ShadeTileSource.java"


# virtual methods
.method public abstract applyConfiguration(Z)V
.end method

.method public abstract getHillshadingBitmap(IIDD)Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract prepareOnThread()V
.end method

.method public abstract setDemFolder(Ljava/io/File;)V
.end method

.method public abstract setShadingAlgorithm(Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;)V
.end method
