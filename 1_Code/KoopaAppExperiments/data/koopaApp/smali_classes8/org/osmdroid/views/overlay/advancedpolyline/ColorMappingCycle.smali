.class public Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;
.super Ljava/lang/Object;
.source "ColorMappingCycle.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;


# instance fields
.field private final mColorArray:[I

.field private final mColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGeoPointNumber:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 16
    .local p1, "pColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mColorList:Ljava/util/List;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mColorArray:[I

    .line 19
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "pColors"    # [I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mColorList:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mColorArray:[I

    .line 24
    return-void
.end method


# virtual methods
.method public getColorForIndex(I)I
    .locals 2
    .param p1, "pSegmentIndex"    # I

    .line 44
    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mGeoPointNumber:I

    if-lez v0, :cond_0

    if-lt p1, v0, :cond_0

    .line 45
    const/4 p1, 0x0

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mColorArray:[I

    if-eqz v0, :cond_1

    .line 48
    array-length v1, v0

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0

    .line 50
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mColorList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setGeoPointNumber(I)V
    .locals 0
    .param p1, "pGeoPointNumber"    # I

    .line 39
    iput p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mGeoPointNumber:I

    .line 40
    return-void
.end method
