.class public interface abstract Lorg/mapsforge/core/graphics/GraphicFactory;
.super Ljava/lang/Object;
.source "GraphicFactory.java"


# virtual methods
.method public abstract createBitmap(II)Lorg/mapsforge/core/graphics/Bitmap;
.end method

.method public abstract createBitmap(IIZ)Lorg/mapsforge/core/graphics/Bitmap;
.end method

.method public abstract createCanvas()Lorg/mapsforge/core/graphics/Canvas;
.end method

.method public abstract createColor(IIII)I
.end method

.method public abstract createColor(Lorg/mapsforge/core/graphics/Color;)I
.end method

.method public abstract createMatrix()Lorg/mapsforge/core/graphics/Matrix;
.end method

.method public abstract createMonoBitmap(II[BILorg/mapsforge/core/model/BoundingBox;)Lorg/mapsforge/core/graphics/HillshadingBitmap;
.end method

.method public abstract createPaint()Lorg/mapsforge/core/graphics/Paint;
.end method

.method public abstract createPaint(Lorg/mapsforge/core/graphics/Paint;)Lorg/mapsforge/core/graphics/Paint;
.end method

.method public abstract createPath()Lorg/mapsforge/core/graphics/Path;
.end method

.method public abstract createPointTextContainer(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/mapelements/SymbolContainer;Lorg/mapsforge/core/graphics/Position;I)Lorg/mapsforge/core/mapelements/PointTextContainer;
.end method

.method public abstract createResourceBitmap(Ljava/io/InputStream;FIIII)Lorg/mapsforge/core/graphics/ResourceBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTileBitmap(IZ)Lorg/mapsforge/core/graphics/TileBitmap;
.end method

.method public abstract createTileBitmap(Ljava/io/InputStream;IZ)Lorg/mapsforge/core/graphics/TileBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract platformSpecificSources(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract renderSvg(Ljava/io/InputStream;FIIII)Lorg/mapsforge/core/graphics/ResourceBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
