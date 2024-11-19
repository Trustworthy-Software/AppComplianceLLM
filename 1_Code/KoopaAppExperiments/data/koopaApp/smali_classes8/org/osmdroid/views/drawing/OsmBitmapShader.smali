.class public Lorg/osmdroid/views/drawing/OsmBitmapShader;
.super Landroid/graphics/BitmapShader;
.source "OsmBitmapShader.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final sPoint:Lorg/osmdroid/util/PointL;


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    sput-object v0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->sPoint:Lorg/osmdroid/util/PointL;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # Landroid/graphics/Shader$TileMode;
    .param p3, "tileY"    # Landroid/graphics/Shader$TileMode;

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mMatrix:Landroid/graphics/Matrix;

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapWidth:I

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapHeight:I

    .line 22
    return-void
.end method


# virtual methods
.method public onDrawCycle(Lorg/osmdroid/views/Projection;)V
    .locals 7
    .param p1, "projection"    # Lorg/osmdroid/views/Projection;

    .line 25
    sget-object v0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->sPoint:Lorg/osmdroid/util/PointL;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    .line 26
    iget-object v1, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mMatrix:Landroid/graphics/Matrix;

    iget-wide v2, v0, Lorg/osmdroid/util/PointL;->x:J

    neg-long v2, v2

    iget v4, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapWidth:I

    int-to-long v4, v4

    rem-long/2addr v2, v4

    long-to-float v2, v2

    iget-wide v3, v0, Lorg/osmdroid/util/PointL;->y:J

    neg-long v3, v3

    iget v0, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapHeight:I

    int-to-long v5, v0

    rem-long/2addr v3, v5

    long-to-float v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 27
    iget-object v0, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/drawing/OsmBitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 28
    return-void
.end method
