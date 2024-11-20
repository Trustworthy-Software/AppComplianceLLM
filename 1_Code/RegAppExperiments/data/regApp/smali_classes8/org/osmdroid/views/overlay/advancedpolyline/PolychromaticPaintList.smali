.class public Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;
.super Ljava/lang/Object;
.source "PolychromaticPaintList.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/PaintList;


# instance fields
.field private final mColorMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mUseGradient:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;Z)V
    .locals 0
    .param p1, "pPaint"    # Landroid/graphics/Paint;
    .param p2, "pColorMapping"    # Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;
    .param p3, "pUseGradient"    # Z

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mPaint:Landroid/graphics/Paint;

    .line 28
    iput-object p2, p0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mColorMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;

    .line 29
    iput-boolean p3, p0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mUseGradient:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPaint(IFFFF)Landroid/graphics/Paint;
    .locals 13
    .param p1, "pIndex"    # I
    .param p2, "pX0"    # F
    .param p3, "pY0"    # F
    .param p4, "pX1"    # F
    .param p5, "pY1"    # F

    .line 39
    move-object v0, p0

    move v1, p1

    iget-object v2, v0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mColorMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;

    invoke-interface {v2, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;->getColorForIndex(I)I

    move-result v2

    .line 40
    .local v2, "startColor":I
    iget-boolean v3, v0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mUseGradient:Z

    if-eqz v3, :cond_1

    .line 41
    iget-object v3, v0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mColorMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;->getColorForIndex(I)I

    move-result v11

    .line 42
    .local v11, "endColor":I
    if-eq v2, v11, :cond_0

    .line 43
    new-instance v12, Landroid/graphics/LinearGradient;

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v12

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, v2

    move v9, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 44
    .local v3, "shader":Landroid/graphics/Shader;
    iget-object v4, v0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 45
    iget-object v4, v0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mPaint:Landroid/graphics/Paint;

    return-object v4

    .line 47
    .end local v3    # "shader":Landroid/graphics/Shader;
    :cond_0
    iget-object v3, v0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 49
    .end local v11    # "endColor":I
    :cond_1
    iget-object v3, v0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v3, v0, Lorg/osmdroid/views/overlay/advancedpolyline/PolychromaticPaintList;->mPaint:Landroid/graphics/Paint;

    return-object v3
.end method
