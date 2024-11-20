.class public Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;
.super Landroid/graphics/Point;
.source "SimpleFastPointOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StyledLabelledPoint"
.end annotation


# instance fields
.field private mPointStyle:Landroid/graphics/Paint;

.field private mTextStyle:Landroid/graphics/Paint;

.field private mlabel:Ljava/lang/String;

.field final synthetic this$0:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;Landroid/graphics/Point;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;
    .param p2, "point"    # Landroid/graphics/Point;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "pointStyle"    # Landroid/graphics/Paint;
    .param p5, "textStyle"    # Landroid/graphics/Paint;

    .line 57
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->this$0:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;

    .line 58
    invoke-direct {p0, p2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 59
    iput-object p3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->mlabel:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->mPointStyle:Landroid/graphics/Paint;

    .line 61
    iput-object p5, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->mTextStyle:Landroid/graphics/Paint;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;

    .line 53
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->mlabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;

    .line 53
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->mPointStyle:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;

    .line 53
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->mTextStyle:Landroid/graphics/Paint;

    return-object v0
.end method
