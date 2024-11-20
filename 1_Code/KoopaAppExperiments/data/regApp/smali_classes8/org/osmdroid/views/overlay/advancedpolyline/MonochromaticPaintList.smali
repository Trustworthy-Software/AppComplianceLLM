.class public Lorg/osmdroid/views/overlay/advancedpolyline/MonochromaticPaintList;
.super Ljava/lang/Object;
.source "MonochromaticPaintList.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/PaintList;


# instance fields
.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "pPaint"    # Landroid/graphics/Paint;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/MonochromaticPaintList;->mPaint:Landroid/graphics/Paint;

    .line 19
    return-void
.end method


# virtual methods
.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/MonochromaticPaintList;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaint(IFFFF)Landroid/graphics/Paint;
    .locals 1
    .param p1, "pIndex"    # I
    .param p2, "pX0"    # F
    .param p3, "pY0"    # F
    .param p4, "pX1"    # F
    .param p5, "pY1"    # F

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method
