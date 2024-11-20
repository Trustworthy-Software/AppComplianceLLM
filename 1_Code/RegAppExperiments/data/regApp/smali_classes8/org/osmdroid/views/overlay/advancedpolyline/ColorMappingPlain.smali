.class public Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingPlain;
.super Ljava/lang/Object;
.source "ColorMappingPlain.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;


# instance fields
.field private final mColorPlain:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "color"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingPlain;->mColorPlain:I

    .line 17
    return-void
.end method


# virtual methods
.method public getColorForIndex(I)I
    .locals 1
    .param p1, "pSegmentIndex"    # I

    .line 21
    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingPlain;->mColorPlain:I

    return v0
.end method
