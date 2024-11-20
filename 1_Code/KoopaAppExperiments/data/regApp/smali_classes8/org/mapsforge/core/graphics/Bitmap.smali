.class public interface abstract Lorg/mapsforge/core/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"


# virtual methods
.method public abstract compress(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract decrementRefCount()V
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract incrementRefCount()V
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract scaleTo(II)V
.end method

.method public abstract setBackgroundColor(I)V
.end method
