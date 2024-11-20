.class public Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingRanges;
.super Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;
.source "ColorMappingRanges.java"


# instance fields
.field private final mColorRanges:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrictComparison:Z


# direct methods
.method public constructor <init>(Ljava/util/SortedMap;Z)V
    .locals 0
    .param p2, "pStrictComparison"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 20
    .local p1, "pColorArray":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Float;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingForScalar;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingRanges;->mColorRanges:Ljava/util/SortedMap;

    .line 22
    iput-boolean p2, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingRanges;->mStrictComparison:Z

    .line 23
    return-void
.end method


# virtual methods
.method protected computeColor(F)I
    .locals 4
    .param p1, "pScalar"    # F

    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, "lastArrayIndexFromLoop":I
    iget-object v1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingRanges;->mColorRanges:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 31
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Ljava/lang/Integer;>;"
    iget-boolean v3, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingRanges;->mStrictComparison:Z

    if-eqz v3, :cond_0

    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 36
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 40
    :cond_1
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Ljava/lang/Integer;>;"
    add-int/lit8 v0, v0, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    iget-object v1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingRanges;->mColorRanges:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 45
    iget-object v1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingRanges;->mColorRanges:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 47
    :cond_3
    const/4 v1, 0x0

    return v1
.end method
