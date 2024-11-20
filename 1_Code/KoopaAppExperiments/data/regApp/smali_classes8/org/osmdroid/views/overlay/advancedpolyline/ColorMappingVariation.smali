.class public abstract Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;
.super Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;
.source "ColorMappingVariation.java"


# instance fields
.field private mEnd:F

.field private mScalarEnd:F

.field private mScalarStart:F

.field private mSlope:F

.field private mStart:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeColor(F)I
    .locals 3
    .param p1, "pScalar"    # F

    .line 41
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->getHue(F)F

    move-result v0

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->getSaturation(F)F

    move-result v1

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->getLuminance(F)F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->HSLToColor(FFF)I

    move-result v0

    return v0
.end method

.method protected abstract getHue(F)F
.end method

.method protected abstract getLuminance(F)F
.end method

.method protected abstract getSaturation(F)F
.end method

.method public init(FFFF)V
    .locals 2
    .param p1, "scalarStart"    # F
    .param p2, "scalarEnd"    # F
    .param p3, "start"    # F
    .param p4, "end"    # F

    .line 30
    iput p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mScalarStart:F

    .line 31
    iput p2, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mScalarEnd:F

    .line 32
    iput p3, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mStart:F

    .line 33
    iput p4, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mEnd:F

    .line 36
    cmpl-float v0, p2, p1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    sub-float v0, p4, p3

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mSlope:F

    .line 37
    return-void
.end method

.method protected mapScalar(F)F
    .locals 2
    .param p1, "scalar"    # F

    .line 54
    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mScalarEnd:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 55
    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mEnd:F

    return v0

    .line 56
    :cond_0
    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mScalarStart:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_1

    .line 57
    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mStart:F

    return v0

    .line 61
    :cond_1
    sub-float v0, p1, v0

    iget v1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mSlope:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;->mStart:F

    add-float/2addr v0, v1

    return v0
.end method
