.class public Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;
.super Ljava/lang/Object;
.source "ColorMappingForScalarContainer.java"


# instance fields
.field private final mInnerMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;

.field private mScalarMax:F

.field private mScalarMin:F

.field private final mScalars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;)V
    .locals 1
    .param p1, "pInnerMapping"    # Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalars:Ljava/util/List;

    .line 26
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMin:F

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMax:F

    .line 30
    iput-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mInnerMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;

    .line 31
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 2
    .param p1, "pScalar"    # F

    .line 50
    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mInnerMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;->add(F)V

    .line 51
    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalars:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMin:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    .line 53
    iput p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMin:F

    .line 55
    :cond_0
    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMax:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    .line 56
    iput p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMax:F

    .line 58
    :cond_1
    return-void
.end method

.method public getMappingForScalar()Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mInnerMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;

    return-object v0
.end method

.method public getScalarMax()F
    .locals 1

    .line 46
    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMax:F

    return v0
.end method

.method public getScalarMin()F
    .locals 1

    .line 42
    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalarMin:F

    return v0
.end method

.method public refresh()V
    .locals 4

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "i":I
    iget-object v1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalars:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 63
    .local v2, "scalar":F
    iget-object v3, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mInnerMapping:Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;

    invoke-virtual {v3, v0, v2}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;->set(IF)V

    .line 64
    nop

    .end local v2    # "scalar":F
    add-int/lit8 v0, v0, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalarContainer;->mScalars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
